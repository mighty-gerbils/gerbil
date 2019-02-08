(declare (block) (standard-bindings) (extended-bindings))
(begin
  (declare (inlining-limit 200))
  (define gxc#&optmize-annotated
    (make-promise
     (lambda ()
       (let ((_tbl41014_ (make-table 'test: eq?)))
         (hash-copy! _tbl41014_ (force gxc#&basic-xform))
         (table-set! _tbl41014_ '%#begin-annotation gxc#optimize-annotation%)
         _tbl41014_))))
  (define gxc#apply-optimize-annotated
    (lambda (_stx41007_ . _args41009_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx41007_ _args41009_))
       gxc#current-compile-methods
       (force gxc#&optmize-annotated))))
  (define gxc#&generate-runtime-repr
    (make-promise
     (lambda ()
       (let ((_tbl41004_ (make-table 'test: eq?)))
         (hash-copy! _tbl41004_ (force gxc#&generate-runtime))
         (table-set! _tbl41004_ '%#quote-syntax identity)
         _tbl41004_))))
  (define gxc#apply-generate-runtime-repr
    (lambda (_stx40997_ . _args40999_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx40997_ _args40999_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime-repr))))
  (define gxc#&push-match-vars
    (make-promise
     (lambda ()
       (let ((_tbl40994_ (make-table 'test: eq?)))
         (table-set! _tbl40994_ '%#lambda gxc#xform-lambda%)
         (table-set! _tbl40994_ '%#let-values gxc#push-match-vars-let-values%)
         (table-set! _tbl40994_ '%#letrec-values gxc#push-match-vars-stop)
         (table-set! _tbl40994_ '%#if gxc#push-match-vars-if%)
         (table-set! _tbl40994_ '%#call gxc#push-match-vars-call%)
         _tbl40994_))))
  (define gxc#apply-push-match-vars
    (lambda (_stx40987_ . _args40989_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx40987_ _args40989_))
       gxc#current-compile-methods
       (force gxc#&push-match-vars))))
  (define gxc#current-annotation-optimizer (make-parameter '()))
  (define gxc#optimize-annotation%
    (lambda (_stx40905_)
      (let* ((___stx4103041031_ _stx40905_)
             (_g4090840925_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx4103041031_))))
        (let ((___kont4103241033_
               (lambda (_L40961_ _L40962_)
                 (let ((_ann40978_ (gx#stx-e _L40962_)))
                   (call-with-parameters
                    (lambda ()
                      (let ((_$e40981_ _ann40978_))
                        (if (eq? '@match _$e40981_)
                            (begin
                              (gxc#verbose '"Optimizing match expansion")
                              (gxc#optimize-match _L40961_))
                            (if (eq? '@syntax-case _$e40981_)
                                (begin
                                  (gxc#verbose
                                   '"Optimizing syntax-case expansion")
                                  (gxc#optimize-syntax-case _L40961_))
                                (gxc#compile-e _L40961_)))))
                    gxc#current-annotation-optimizer
                    (cons _ann40978_ (gxc#current-annotation-optimizer))))))
              (___kont4103441035_
               (lambda () (gxc#xform-begin-annotation% _stx40905_))))
          (let ((___match4105541056_
                 (lambda (_e4091240937_
                          _hd4091340940_
                          _tl4091440942_
                          _e4091540945_
                          _hd4091640948_
                          _tl4091740950_
                          _e4091840953_
                          _hd4091940956_
                          _tl4092040958_)
                   (let ((_L40961_ _hd4091940956_) (_L40962_ _hd4091640948_))
                     (if (gx#identifier? _L40962_)
                         (___kont4103241033_ _L40961_ _L40962_)
                         (___kont4103441035_))))))
            (if (gx#stx-pair? ___stx4103041031_)
                (let ((_e4091240937_ (gx#stx-e ___stx4103041031_)))
                  (let ((_tl4091440942_ (##cdr _e4091240937_))
                        (_hd4091340940_ (##car _e4091240937_)))
                    (if (gx#stx-pair? _tl4091440942_)
                        (let ((_e4091540945_ (gx#stx-e _tl4091440942_)))
                          (let ((_tl4091740950_ (##cdr _e4091540945_))
                                (_hd4091640948_ (##car _e4091540945_)))
                            (if (gx#stx-pair? _tl4091740950_)
                                (let ((_e4091840953_
                                       (gx#stx-e _tl4091740950_)))
                                  (let ((_tl4092040958_ (##cdr _e4091840953_))
                                        (_hd4091940956_ (##car _e4091840953_)))
                                    (if (gx#stx-null? _tl4092040958_)
                                        (___match4105541056_
                                         _e4091240937_
                                         _hd4091340940_
                                         _tl4091440942_
                                         _e4091540945_
                                         _hd4091640948_
                                         _tl4091740950_
                                         _e4091840953_
                                         _hd4091940956_
                                         _tl4092040958_)
                                        (___kont4103441035_))))
                                (___kont4103441035_))))
                        (___kont4103441035_))))
                (___kont4103441035_)))))))
  (define gxc#optimize-match
    (lambda (_stx40204_)
      (let* ((_g4020640236_
              (lambda (_g4020740233_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4020740233_)))
             (_g4020540902_
              (lambda (_g4020740239_)
                (if (gx#stx-pair? _g4020740239_)
                    (let ((_e4021140241_ (gx#stx-e _g4020740239_)))
                      (let ((_hd4021240244_ (##car _e4021140241_))
                            (_tl4021340246_ (##cdr _e4021140241_)))
                        (if (gx#identifier? _hd4021240244_)
                            (if (gx#stx-eq? '%#let-values _hd4021240244_)
                                (if (gx#stx-pair? _tl4021340246_)
                                    (let ((_e4021440249_
                                           (gx#stx-e _tl4021340246_)))
                                      (let ((_hd4021540252_
                                             (##car _e4021440249_))
                                            (_tl4021640254_
                                             (##cdr _e4021440249_)))
                                        (if (gx#stx-pair? _hd4021540252_)
                                            (let ((_e4021740257_
                                                   (gx#stx-e _hd4021540252_)))
                                              (let ((_hd4021840260_
                                                     (##car _e4021740257_))
                                                    (_tl4021940262_
                                                     (##cdr _e4021740257_)))
                                                (if (gx#stx-pair?
                                                     _hd4021840260_)
                                                    (let ((_e4022040265_
                                                           (gx#stx-e
                                                            _hd4021840260_)))
                                                      (let ((_hd4022140268_
                                                             (##car _e4022040265_))
                                                            (_tl4022240270_
                                                             (##cdr _e4022040265_)))
                                                        (if (gx#stx-pair?
                                                             _hd4022140268_)
                                                            (let ((_e4022340273_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd4022140268_)))
                      (let ((_hd4022440276_ (##car _e4022340273_))
                            (_tl4022540278_ (##cdr _e4022340273_)))
                        (if (gx#stx-null? _tl4022540278_)
                            (if (gx#stx-pair? _tl4022240270_)
                                (let ((_e4022640281_
                                       (gx#stx-e _tl4022240270_)))
                                  (let ((_hd4022740284_ (##car _e4022640281_))
                                        (_tl4022840286_ (##cdr _e4022640281_)))
                                    (if (gx#stx-null? _tl4022840286_)
                                        (if (gx#stx-null? _tl4021940262_)
                                            (if (gx#stx-pair? _tl4021640254_)
                                                (let ((_e4022940289_
                                                       (gx#stx-e
                                                        _tl4021640254_)))
                                                  (let ((_hd4023040292_
                                                         (##car _e4022940289_))
                                                        (_tl4023140294_
                                                         (##cdr _e4022940289_)))
                                                    (if (gx#stx-null?
                                                         _tl4023140294_)
                                                        ((lambda (_L40297_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L40298_
                          _L40299_)
                   (let _lp40323_ ((_body40325_ _L40297_)
                                   (_negation40326_ (cons _L40299_ _L40298_))
                                   (_clauses40327_ '())
                                   (_konts40328_ '()))
                     (let* ((___stx4123841239_ _body40325_)
                            (_g4033140371_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                ___stx4123841239_))))
                       (let ((___kont4124041241_
                              (lambda (_L40701_)
                                (let* ((___stx4117441175_ _L40701_)
                                       (_g4071540745_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           ___stx4117441175_))))
                                  (let ((___kont4117641177_
                                         (lambda (_L40841_ _L40842_ _L40843_)
                                           (if (null? _clauses40327_)
                                               (let* ((_negation4086740874_
                                                       _negation40326_)
                                                      (_E4086940878_
                                                       (lambda ()
                                                         (error '"No clause matching"
                                                                _negation4086740874_)))
                                                      (_K4087040884_
                                                       (lambda (_negate40881_
                                                                _E40882_)
                                                         (gxc#xform-wrap-source
                                                          (cons '%#let-values
                                                                (cons (cons (cons (cons _E40882_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                                '())
                                          (cons _negate40881_ '()))
                                    '())
                              (cons (cons '%#let-values
                                          (cons (cons (cons (cons _L40843_ '())
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L40842_)
                          '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _L40841_ '())))
                                    '())))
                  _stx40204_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (##pair? _negation4086740874_)
                                                     (let ((_hd4087140887_
                                                            (##car _negation4086740874_))
                                                           (_tl4087240889_
                                                            (##cdr _negation4086740874_)))
                                                       (let* ((_E40892_
                                                               _hd4087140887_)
                                                              (_negate40894_
                                                               _tl4087240889_))
                                                         (_K4087040884_
                                                          _negate40894_
                                                          _E40892_)))
                                                     (_E4086940878_)))
                                               (gxc#optimize-match-body
                                                _stx40204_
                                                _negation40326_
                                                (cons (cons '#f
                                                            (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '%#lambda)
                          (cons '() (cons _L40841_ '()))))
              _clauses40327_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons _L40843_
                                                            (gxc#compile-e
                                                             _L40842_))
                                                      _konts40328_)))))
                                        (___kont4117841179_
                                         (lambda ()
                                           (let* ((_negation4075140758_
                                                   _negation40326_)
                                                  (_E4075340762_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _negation4075140758_)))
                                                  (_K4075440768_
                                                   (lambda (_negate40765_
                                                            _E40766_)
                                                     (gxc#xform-wrap-source
                                                      (cons '%#let-values
                                                            (cons (cons (cons (cons _E40766_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                            '())
                                      (cons _negate40765_ '()))
                                '())
                          (cons _L40701_ '())))
              _stx40204_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _negation4075140758_)
                                                 (let ((_hd4075540771_
                                                        (##car _negation4075140758_))
                                                       (_tl4075640773_
                                                        (##cdr _negation4075140758_)))
                                                   (let* ((_E40776_
                                                           _hd4075540771_)
                                                          (_negate40778_
                                                           _tl4075640773_))
                                                     (_K4075440768_
                                                      _negate40778_
                                                      _E40776_)))
                                                 (_E4075340762_))))))
                                    (let ((_g4071440780_
                                           (lambda ()
                                             (if (null? _clauses40327_)
                                                 (___kont4117841179_)
                                                 (_g4071540745_)))))
                                      (if (gx#stx-pair? ___stx4117441175_)
                                          (let ((_e4072040785_
                                                 (gx#stx-e ___stx4117441175_)))
                                            (let ((_tl4072240790_
                                                   (##cdr _e4072040785_))
                                                  (_hd4072140788_
                                                   (##car _e4072040785_)))
                                              (if (gx#identifier?
                                                   _hd4072140788_)
                                                  (if (gx#stx-eq?
                                                       '%#let-values
                                                       _hd4072140788_)
                                                      (if (gx#stx-pair?
                                                           _tl4072240790_)
                                                          (let ((_e4072340793_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl4072240790_)))
                    (let ((_tl4072540798_ (##cdr _e4072340793_))
                          (_hd4072440796_ (##car _e4072340793_)))
                      (if (gx#stx-pair? _hd4072440796_)
                          (let ((_e4072640801_ (gx#stx-e _hd4072440796_)))
                            (let ((_tl4072840806_ (##cdr _e4072640801_))
                                  (_hd4072740804_ (##car _e4072640801_)))
                              (if (gx#stx-pair? _hd4072740804_)
                                  (let ((_e4072940809_
                                         (gx#stx-e _hd4072740804_)))
                                    (let ((_tl4073140814_
                                           (##cdr _e4072940809_))
                                          (_hd4073040812_
                                           (##car _e4072940809_)))
                                      (if (gx#stx-pair? _hd4073040812_)
                                          (let ((_e4073240817_
                                                 (gx#stx-e _hd4073040812_)))
                                            (let ((_tl4073440822_
                                                   (##cdr _e4073240817_))
                                                  (_hd4073340820_
                                                   (##car _e4073240817_)))
                                              (if (gx#stx-null? _tl4073440822_)
                                                  (if (gx#stx-pair?
                                                       _tl4073140814_)
                                                      (let ((_e4073540825_
                                                             (gx#stx-e
                                                              _tl4073140814_)))
                                                        (let ((_tl4073740830_
                                                               (##cdr _e4073540825_))
                                                              (_hd4073640828_
                                                               (##car _e4073540825_)))
                                                          (if (gx#stx-null?
                                                               _tl4073740830_)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl4072840806_)
                          (if (gx#stx-pair? _tl4072540798_)
                              (let ((_e4073840833_ (gx#stx-e _tl4072540798_)))
                                (let ((_tl4074040838_ (##cdr _e4073840833_))
                                      (_hd4073940836_ (##car _e4073840833_)))
                                  (if (gx#stx-null? _tl4074040838_)
                                      (___kont4117641177_
                                       _hd4073940836_
                                       _hd4073640828_
                                       _hd4073340820_)
                                      (_g4071440780_))))
                              (_g4071440780_))
                          (_g4071440780_))
                      (_g4071440780_))))
              (_g4071440780_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g4071440780_))))
                                          (_g4071440780_))))
                                  (_g4071440780_))))
                          (_g4071440780_))))
                  (_g4071440780_))
              (_g4071440780_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g4071440780_))))
                                          (_g4071440780_)))))))
                             (___kont4124241243_
                              (lambda (_L40432_ _L40433_ _L40434_)
                                (let* ((___stx4105841059_ _L40433_)
                                       (_g4046140510_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           ___stx4105841059_))))
                                  (let ((___kont4106041061_
                                         (lambda (_L40638_ _L40639_ _L40640_)
                                           (_lp40323_
                                            _L40432_
                                            _negation40326_
                                            (cons (cons _L40434_
                                                        (cons (gx#datum->syntax__0
                                                               '#f
                                                               '%#lambda)
                                                              (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _L40638_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _clauses40327_)
                                            (cons (cons _L40640_
                                                        (gxc#compile-e
                                                         _L40639_))
                                                  _konts40328_))))
                                        (___kont4106241063_
                                         (lambda (_L40539_)
                                           (_lp40323_
                                            _L40432_
                                            (cons _L40434_
                                                  (gxc#compile-e _L40539_))
                                            _clauses40327_
                                            _konts40328_))))
                                    (if (gx#stx-pair? ___stx4105841059_)
                                        (let ((_e4046640558_
                                               (gx#stx-e ___stx4105841059_)))
                                          (let ((_tl4046840563_
                                                 (##cdr _e4046640558_))
                                                (_hd4046740561_
                                                 (##car _e4046640558_)))
                                            (if (gx#identifier? _hd4046740561_)
                                                (if (gx#stx-eq?
                                                     '%#lambda
                                                     _hd4046740561_)
                                                    (if (gx#stx-pair?
                                                         _tl4046840563_)
                                                        (let ((_e4046940566_
                                                               (gx#stx-e
                                                                _tl4046840563_)))
                                                          (let ((_tl4047140571_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e4046940566_))
                        (_hd4047040569_ (##car _e4046940566_)))
                    (if (gx#stx-null? _hd4047040569_)
                        (if (gx#stx-pair? _tl4047140571_)
                            (let ((_e4047240574_ (gx#stx-e _tl4047140571_)))
                              (let ((_tl4047440579_ (##cdr _e4047240574_))
                                    (_hd4047340577_ (##car _e4047240574_)))
                                (if (gx#stx-pair? _hd4047340577_)
                                    (let ((_e4047540582_
                                           (gx#stx-e _hd4047340577_)))
                                      (let ((_tl4047740587_
                                             (##cdr _e4047540582_))
                                            (_hd4047640585_
                                             (##car _e4047540582_)))
                                        (if (gx#identifier? _hd4047640585_)
                                            (if (gx#stx-eq?
                                                 '%#let-values
                                                 _hd4047640585_)
                                                (if (gx#stx-pair?
                                                     _tl4047740587_)
                                                    (let ((_e4047840590_
                                                           (gx#stx-e
                                                            _tl4047740587_)))
                                                      (let ((_tl4048040595_
                                                             (##cdr _e4047840590_))
                                                            (_hd4047940593_
                                                             (##car _e4047840590_)))
                                                        (if (gx#stx-pair?
                                                             _hd4047940593_)
                                                            (let ((_e4048140598_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd4047940593_)))
                      (let ((_tl4048340603_ (##cdr _e4048140598_))
                            (_hd4048240601_ (##car _e4048140598_)))
                        (if (gx#stx-pair? _hd4048240601_)
                            (let ((_e4048440606_ (gx#stx-e _hd4048240601_)))
                              (let ((_tl4048640611_ (##cdr _e4048440606_))
                                    (_hd4048540609_ (##car _e4048440606_)))
                                (if (gx#stx-pair? _hd4048540609_)
                                    (let ((_e4048740614_
                                           (gx#stx-e _hd4048540609_)))
                                      (let ((_tl4048940619_
                                             (##cdr _e4048740614_))
                                            (_hd4048840617_
                                             (##car _e4048740614_)))
                                        (if (gx#stx-null? _tl4048940619_)
                                            (if (gx#stx-pair? _tl4048640611_)
                                                (let ((_e4049040622_
                                                       (gx#stx-e
                                                        _tl4048640611_)))
                                                  (let ((_tl4049240627_
                                                         (##cdr _e4049040622_))
                                                        (_hd4049140625_
                                                         (##car _e4049040622_)))
                                                    (if (gx#stx-null?
                                                         _tl4049240627_)
                                                        (if (gx#stx-null?
                                                             _tl4048340603_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl4048040595_)
                        (let ((_e4049340630_ (gx#stx-e _tl4048040595_)))
                          (let ((_tl4049540635_ (##cdr _e4049340630_))
                                (_hd4049440633_ (##car _e4049340630_)))
                            (if (gx#stx-null? _tl4049540635_)
                                (if (gx#stx-null? _tl4047440579_)
                                    (___kont4106041061_
                                     _hd4049440633_
                                     _hd4049140625_
                                     _hd4048840617_)
                                    (_g4046140510_))
                                (_g4046140510_))))
                        (_g4046140510_))
                    (_g4046140510_))
                (_g4046140510_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g4046140510_))
                                            (_g4046140510_))))
                                    (_g4046140510_))))
                            (_g4046140510_))))
                    (_g4046140510_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g4046140510_))
                                                (_g4046140510_))
                                            (_g4046140510_))))
                                    (_g4046140510_))))
                            (_g4046140510_))
                        (_g4046140510_))))
                (_g4046140510_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-eq?
                                                         '%#begin-annotation
                                                         _hd4046740561_)
                                                        (if (gx#stx-pair?
                                                             _tl4046840563_)
                                                            (let ((_e4050040523_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl4046840563_)))
                      (let ((_tl4050240528_ (##cdr _e4050040523_))
                            (_hd4050140526_ (##car _e4050040523_)))
                        (if (gx#identifier? _hd4050140526_)
                            (if (gx#stx-eq? '@match-else _hd4050140526_)
                                (if (gx#stx-pair? _tl4050240528_)
                                    (let ((_e4050340531_
                                           (gx#stx-e _tl4050240528_)))
                                      (let ((_tl4050540536_
                                             (##cdr _e4050340531_))
                                            (_hd4050440534_
                                             (##car _e4050340531_)))
                                        (if (gx#stx-null? _tl4050540536_)
                                            (___kont4106241063_ _hd4050440534_)
                                            (_g4046140510_))))
                                    (_g4046140510_))
                                (_g4046140510_))
                            (_g4046140510_))))
                    (_g4046140510_))
                (_g4046140510_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g4046140510_))))
                                        (_g4046140510_)))))))
                         (if (gx#stx-pair? ___stx4123841239_)
                             (let ((_e4033440677_
                                    (gx#stx-e ___stx4123841239_)))
                               (let ((_tl4033640682_ (##cdr _e4033440677_))
                                     (_hd4033540680_ (##car _e4033440677_)))
                                 (if (gx#identifier? _hd4033540680_)
                                     (if (gx#stx-eq?
                                          '%#begin-annotation
                                          _hd4033540680_)
                                         (if (gx#stx-pair? _tl4033640682_)
                                             (let ((_e4033740685_
                                                    (gx#stx-e _tl4033640682_)))
                                               (let ((_tl4033940690_
                                                      (##cdr _e4033740685_))
                                                     (_hd4033840688_
                                                      (##car _e4033740685_)))
                                                 (if (gx#identifier?
                                                      _hd4033840688_)
                                                     (if (gx#stx-eq?
                                                          '@match-body
                                                          _hd4033840688_)
                                                         (if (gx#stx-pair?
                                                              _tl4033940690_)
                                                             (let ((_e4034040693_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl4033940690_)))
                       (let ((_tl4034240698_ (##cdr _e4034040693_))
                             (_hd4034140696_ (##car _e4034040693_)))
                         (if (gx#stx-null? _tl4034240698_)
                             (___kont4124041241_ _hd4034140696_)
                             (_g4033140371_))))
                     (_g4033140371_))
                 (_g4033140371_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g4033140371_))))
                                             (_g4033140371_))
                                         (if (gx#stx-eq?
                                              '%#let-values
                                              _hd4033540680_)
                                             (if (gx#stx-pair? _tl4033640682_)
                                                 (let ((_e4034940384_
                                                        (gx#stx-e
                                                         _tl4033640682_)))
                                                   (let ((_tl4035140389_
                                                          (##cdr _e4034940384_))
                                                         (_hd4035040387_
                                                          (##car _e4034940384_)))
                                                     (if (gx#stx-pair?
                                                          _hd4035040387_)
                                                         (let ((_e4035240392_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd4035040387_)))
                   (let ((_tl4035440397_ (##cdr _e4035240392_))
                         (_hd4035340395_ (##car _e4035240392_)))
                     (if (gx#stx-pair? _hd4035340395_)
                         (let ((_e4035540400_ (gx#stx-e _hd4035340395_)))
                           (let ((_tl4035740405_ (##cdr _e4035540400_))
                                 (_hd4035640403_ (##car _e4035540400_)))
                             (if (gx#stx-pair? _hd4035640403_)
                                 (let ((_e4035840408_
                                        (gx#stx-e _hd4035640403_)))
                                   (let ((_tl4036040413_ (##cdr _e4035840408_))
                                         (_hd4035940411_
                                          (##car _e4035840408_)))
                                     (if (gx#stx-null? _tl4036040413_)
                                         (if (gx#stx-pair? _tl4035740405_)
                                             (let ((_e4036140416_
                                                    (gx#stx-e _tl4035740405_)))
                                               (let ((_tl4036340421_
                                                      (##cdr _e4036140416_))
                                                     (_hd4036240419_
                                                      (##car _e4036140416_)))
                                                 (if (gx#stx-null?
                                                      _tl4036340421_)
                                                     (if (gx#stx-null?
                                                          _tl4035440397_)
                                                         (if (gx#stx-pair?
                                                              _tl4035140389_)
                                                             (let ((_e4036440424_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl4035140389_)))
                       (let ((_tl4036640429_ (##cdr _e4036440424_))
                             (_hd4036540427_ (##car _e4036440424_)))
                         (if (gx#stx-null? _tl4036640429_)
                             (___kont4124241243_
                              _hd4036540427_
                              _hd4036240419_
                              _hd4035940411_)
                             (_g4033140371_))))
                     (_g4033140371_))
                 (_g4033140371_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g4033140371_))))
                                             (_g4033140371_))
                                         (_g4033140371_))))
                                 (_g4033140371_))))
                         (_g4033140371_))))
                 (_g4033140371_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g4033140371_))
                                             (_g4033140371_)))
                                     (_g4033140371_))))
                             (_g4033140371_))))))
                 _hd4023040292_
                 _hd4022740284_
                 _hd4022440276_)
                (_g4020640236_ _g4020740239_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g4020640236_ _g4020740239_))
                                            (_g4020640236_ _g4020740239_))
                                        (_g4020640236_ _g4020740239_))))
                                (_g4020640236_ _g4020740239_))
                            (_g4020640236_ _g4020740239_))))
                    (_g4020640236_ _g4020740239_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g4020640236_
                                                     _g4020740239_))))
                                            (_g4020640236_ _g4020740239_))))
                                    (_g4020640236_ _g4020740239_))
                                (_g4020640236_ _g4020740239_))
                            (_g4020640236_ _g4020740239_))))
                    (_g4020640236_ _g4020740239_)))))
        (_g4020540902_ _stx40204_))))
  (define gxc#optimize-match-body
    (lambda (_stx39910_ _negation39911_ _clauses39912_ _konts39913_)
      (letrec ((_push-variables39915_
                (lambda (_clause40162_ _kont40163_)
                  (let ((_clause4016440174_ _clause40162_)
                        (_kont4016540176_ _kont40163_))
                    (let* ((_E4016740180_
                            (lambda ()
                              (error '"No clause matching"
                                     _clause4016440174_
                                     _kont4016540176_)))
                           (_K4016840187_
                            (lambda (_clause-lambda40183_
                                     _clause-name40184_
                                     _K40185_)
                              (cons _clause-name40184_
                                    (gxc#apply-push-match-vars
                                     _clause-lambda40183_
                                     '()
                                     _K40185_)))))
                      (if (##pair? _clause4016440174_)
                          (let ((_hd4017140190_ (##car _clause4016440174_))
                                (_tl4017240192_ (##cdr _clause4016440174_)))
                            (let* ((_clause-name40195_ _hd4017140190_)
                                   (_clause-lambda40197_ _tl4017240192_))
                              (if (##pair? _kont4016540176_)
                                  (let* ((_hd4016940199_
                                          (##car _kont4016540176_))
                                         (_K40202_ _hd4016940199_))
                                    (_K4016840187_
                                     _clause-lambda40197_
                                     _clause-name40195_
                                     _K40202_))
                                  (_E4016740180_))))
                          (_E4016740180_))))))
               (_start-match39916_
                (lambda (_kont40096_)
                  (let* ((_g4009840114_
                          (lambda (_g4009940111_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g4009940111_)))
                         (_g4009740159_
                          (lambda (_g4009940117_)
                            (if (gx#stx-pair? _g4009940117_)
                                (let ((_e4010140119_ (gx#stx-e _g4009940117_)))
                                  (let ((_hd4010240122_ (##car _e4010140119_))
                                        (_tl4010340124_ (##cdr _e4010140119_)))
                                    (if (gx#identifier? _hd4010240122_)
                                        (if (gx#stx-eq?
                                             '%#lambda
                                             _hd4010240122_)
                                            (if (gx#stx-pair? _tl4010340124_)
                                                (let ((_e4010440127_
                                                       (gx#stx-e
                                                        _tl4010340124_)))
                                                  (let ((_hd4010540130_
                                                         (##car _e4010440127_))
                                                        (_tl4010640132_
                                                         (##cdr _e4010440127_)))
                                                    (if (gx#stx-null?
                                                         _hd4010540130_)
                                                        (if (gx#stx-pair?
                                                             _tl4010640132_)
                                                            (let ((_e4010740135_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl4010640132_)))
                      (let ((_hd4010840138_ (##car _e4010740135_))
                            (_tl4010940140_ (##cdr _e4010740135_)))
                        (if (gx#stx-null? _tl4010940140_)
                            ((lambda (_L40143_) _L40143_) _hd4010840138_)
                            (_g4009840114_ _g4009940117_))))
                    (_g4009840114_ _g4009940117_))
                (_g4009840114_ _g4009940117_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g4009840114_ _g4009940117_))
                                            (_g4009840114_ _g4009940117_))
                                        (_g4009840114_ _g4009940117_))))
                                (_g4009840114_ _g4009940117_)))))
                    (_g4009740159_ _kont40096_))))
               (_match-body39917_
                (lambda (_blocks39993_)
                  (let* ((_blocks3999440003_ _blocks39993_)
                         (_E3999640007_
                          (lambda ()
                            (error '"No clause matching" _blocks3999440003_)))
                         (_K3999740079_
                          (lambda (_rest40010_ _start40011_)
                            (let _lp40013_ ((_rest40015_ _rest40010_)
                                            (_body40016_
                                             (_start-match39916_
                                              _start40011_)))
                              (let* ((_rest4001740025_ _rest40015_)
                                     (_else4001940033_ (lambda () _body40016_))
                                     (_K4002140067_
                                      (lambda (_rest40036_ _block40037_)
                                        (let* ((_block4003840045_ _block40037_)
                                               (_E4004040049_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _block4003840045_)))
                                               (_K4004140055_
                                                (lambda (_kont40052_ _K40053_)
                                                  (_lp40013_
                                                   _rest40036_
                                                   (cons '%#let-values
                                                         (cons (cons (cons (cons _K40053_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         '())
                                   (cons _kont40052_ '()))
                             '())
                       (cons _body40016_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _block4003840045_)
                                              (let ((_hd4004240058_
                                                     (##car _block4003840045_))
                                                    (_tl4004340060_
                                                     (##cdr _block4003840045_)))
                                                (let* ((_K40063_
                                                        _hd4004240058_)
                                                       (_kont40065_
                                                        _tl4004340060_))
                                                  (_K4004140055_
                                                   _kont40065_
                                                   _K40063_)))
                                              (_E4004040049_))))))
                                (if (##pair? _rest4001740025_)
                                    (let ((_hd4002240070_
                                           (##car _rest4001740025_))
                                          (_tl4002340072_
                                           (##cdr _rest4001740025_)))
                                      (let* ((_block40075_ _hd4002240070_)
                                             (_rest40077_ _tl4002340072_))
                                        (_K4002140067_
                                         _rest40077_
                                         _block40075_)))
                                    (_else4001940033_)))))))
                    (if (##pair? _blocks3999440003_)
                        (let ((_hd3999840082_ (##car _blocks3999440003_))
                              (_tl3999940084_ (##cdr _blocks3999440003_)))
                          (if (##pair? _hd3999840082_)
                              (let ((_hd4000040087_ (##car _hd3999840082_))
                                    (_tl4000140089_ (##cdr _hd3999840082_)))
                                (if (##eq? _hd4000040087_ '#f)
                                    (let* ((_start40092_ _tl4000140089_)
                                           (_rest40094_ _tl3999940084_))
                                      (_K3999740079_ _rest40094_ _start40092_))
                                    (_E3999640007_)))
                              (_E3999640007_)))
                        (_E3999640007_))))))
        (call-with-parameters
         (lambda ()
           (let* ((_clauses39920_
                   (map _push-variables39915_ _clauses39912_ _konts39913_))
                  (_blocks39922_
                   (gxc#optimize-match-basic-blocks _clauses39920_))
                  (_blocks39924_
                   (gxc#optimize-match-fold-basic-blocks _blocks39922_))
                  (_body39926_ (_match-body39917_ _blocks39924_))
                  (_bind39960_
                   (map (lambda (_e3992739929_)
                          (let* ((_g3993139938_ _e3992739929_)
                                 (_E3993339942_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _g3993139938_)))
                                 (_K3993439948_
                                  (lambda (_kont39945_ _K39946_)
                                    (cons (cons _K39946_ '())
                                          (cons _kont39945_ '())))))
                            (if (##pair? _g3993139938_)
                                (let ((_hd3993539951_ (##car _g3993139938_))
                                      (_tl3993639953_ (##cdr _g3993139938_)))
                                  (let* ((_K39956_ _hd3993539951_)
                                         (_kont39958_ _tl3993639953_))
                                    (_K3993439948_ _kont39958_ _K39956_)))
                                (_E3993339942_))))
                        _konts39913_))
                  (_negate39990_
                   (let* ((_negation3996139968_ _negation39911_)
                          (_E3996339972_
                           (lambda ()
                             (error '"No clause matching"
                                    _negation3996139968_)))
                          (_K3996439978_
                           (lambda (_kont39975_ _K39976_)
                             (cons (cons _K39976_ '())
                                   (cons _kont39975_ '())))))
                     (if (##pair? _negation3996139968_)
                         (let ((_hd3996539981_ (##car _negation3996139968_))
                               (_tl3996639983_ (##cdr _negation3996139968_)))
                           (let* ((_K39986_ _hd3996539981_)
                                  (_kont39988_ _tl3996639983_))
                             (_K3996439978_ _kont39988_ _K39986_)))
                         (_E3996339972_)))))
             (gxc#xform-wrap-source
              (cons '%#let-values
                    (cons (cons _negate39990_ '())
                          (cons (cons '%#let-values
                                      (cons _bind39960_
                                            (cons _body39926_ '())))
                                '())))
              _stx39910_)))
         gx#current-expander-context
         (let ((__obj44103 (make-object gx#local-context::t '5)))
           (gx#local-context:::init!__0 __obj44103)
           __obj44103)))))
  (define gxc#optimize-match-basic-blocks
    (lambda (_clauses39870_)
      (let _lp39872_ ((_rest39874_ _clauses39870_) (_blocks39875_ '()))
        (let* ((_rest3987639884_ _rest39874_)
               (_else3987839892_ (lambda () (reverse _blocks39875_)))
               (_K3988039898_
                (lambda (_rest39895_ _clause39896_)
                  (_lp39872_
                   _rest39895_
                   (gxc#optimize-match-lift-basic-blocks
                    _clause39896_
                    _blocks39875_)))))
          (if (##pair? _rest3987639884_)
              (let ((_hd3988139901_ (##car _rest3987639884_))
                    (_tl3988239903_ (##cdr _rest3987639884_)))
                (let* ((_clause39906_ _hd3988139901_)
                       (_rest39908_ _tl3988239903_))
                  (_K3988039898_ _rest39908_ _clause39906_)))
              (_else3987839892_))))))
  (define gxc#optimize-match-lift-basic-blocks
    (lambda (_clause39214_ _blocks39215_)
      (letrec ((_bind->args39217_
                (lambda (_bind39865_)
                  (foldl1 (lambda (_b39867_ _r39868_)
                            (cons (cons '%#ref (cons (car _b39867_) '()))
                                  _r39868_))
                          '()
                          _bind39865_)))
               (_create-block39218_
                (lambda (_body39814_ _let-bind39815_ _bind39816_ _assert39817_)
                  (let* ((_id39819_ (make-symbol (gensym '__match)))
                         (_id39821_ (gx#core-quote-syntax__0 _id39819_))
                         (_g44106_ (gx#core-bind-runtime!__0 _id39821_))
                         (_block39824_
                          (cons _id39821_
                                (cons _body39814_
                                      (cons _bind39816_
                                            (cons _assert39817_ '())))))
                         (_continue39826_
                          (cons '%#call
                                (cons (cons '%#ref (cons _id39821_ '()))
                                      (_bind->args39217_ _bind39816_))))
                         (_continue39862_
                          (if (null? _let-bind39815_)
                              _continue39826_
                              (let ((_locals39860_
                                     (map (lambda (_e3982739829_)
                                            (let* ((_g3983139838_
                                                    _e3982739829_)
                                                   (_E3983339842_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _g3983139838_)))
                                                   (_K3983439848_
                                                    (lambda (_expr39845_
                                                             _id39846_)
                                                      (cons (cons _id39846_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons _expr39845_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##pair? _g3983139838_)
                                                  (let ((_hd3983539851_
                                                         (##car _g3983139838_))
                                                        (_tl3983639853_
                                                         (##cdr _g3983139838_)))
                                                    (let* ((_id39856_
                                                            _hd3983539851_)
                                                           (_expr39858_
                                                            _tl3983639853_))
                                                      (_K3983439848_
                                                       _expr39858_
                                                       _id39856_)))
                                                  (_E3983339842_))))
                                          _let-bind39815_)))
                                (cons '%#let-values
                                      (cons _locals39860_
                                            (cons _continue39826_ '())))))))
                    (values _continue39862_ _block39824_))))
               (_basic-block39219_
                (lambda (_body39400_ _bind39401_ _assert39402_)
                  (let* ((___stx4134641347_ _body39400_)
                         (_g3940739491_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx4134641347_))))
                    (let ((___kont4134841349_
                           (lambda (_L39750_ _L39751_ _L39752_)
                             (let ((_g44107_
                                    (_create-block39218_
                                     _L39751_
                                     '()
                                     _bind39401_
                                     (cons (cons _L39752_ '#t)
                                           _assert39402_))))
                               (begin
                                 (let ((_g44108_
                                        (if (##values? _g44107_)
                                            (##vector-length _g44107_)
                                            1)))
                                   (if (not (##fx= _g44108_ 2))
                                       (error "Context expects 2 values"
                                              _g44108_)))
                                 (let ((_k-continue39770_
                                        (##vector-ref _g44107_ 0))
                                       (_k-block39771_
                                        (##vector-ref _g44107_ 1)))
                                   (let* ((___stx4132841329_ _L39750_)
                                          (_g3977439783_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              ___stx4132841329_))))
                                     (let ((___kont4133041331_
                                            (lambda ()
                                              (values (cons '%#if
                                                            (cons _L39752_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _k-continue39770_ (cons _L39750_ '()))))
              (cons _k-block39771_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4133241333_
                                            (lambda ()
                                              (let ((_g44109_
                                                     (_create-block39218_
                                                      _L39750_
                                                      '()
                                                      _bind39401_
                                                      (cons (cons _L39752_ '#f)
                                                            _assert39402_))))
                                                (begin
                                                  (let ((_g44110_
                                                         (if (##values?
                                                              _g44109_)
                                                             (##vector-length
                                                              _g44109_)
                                                             1)))
                                                    (if (not (##fx= _g44110_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                (error "Context expects 2 values" _g44110_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_e-continue39790_
                                                         (##vector-ref
                                                          _g44109_
                                                          0))
                                                        (_e-block39791_
                                                         (##vector-ref
                                                          _g44109_
                                                          1)))
                                                    (values (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L39752_
                                (cons _k-continue39770_
                                      (cons _e-continue39790_ '()))))
                    (cons _k-block39771_ (cons _e-block39791_ '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (gx#stx-pair? ___stx4132841329_)
                                           (let ((_e3977639798_
                                                  (gx#stx-e
                                                   ___stx4132841329_)))
                                             (let ((_tl3977839803_
                                                    (##cdr _e3977639798_))
                                                   (_hd3977739801_
                                                    (##car _e3977639798_)))
                                               (if (gx#identifier?
                                                    _hd3977739801_)
                                                   (if (gx#stx-eq?
                                                        '%#call
                                                        _hd3977739801_)
                                                       (___kont4133041331_)
                                                       (___kont4133241333_))
                                                   (___kont4133241333_))))
                                           (___kont4133241333_)))))))))
                          (___kont4135041351_
                           (lambda () (values _body39400_ '())))
                          (___kont4135441355_
                           (lambda (_L39579_ _L39580_ _L39581_)
                             (let* ((_let-bind39616_
                                     (map cons
                                          (foldr1 (lambda (_g3960139604_
                                                           _g3960239606_)
                                                    (cons _g3960139604_
                                                          _g3960239606_))
                                                  '()
                                                  _L39581_)
                                          (foldr1 (lambda (_g3960839611_
                                                           _g3960939613_)
                                                    (cons _g3960839611_
                                                          _g3960939613_))
                                                  '()
                                                  _L39580_)))
                                    (_g44111_
                                     (_create-block39218_
                                      _L39579_
                                      _let-bind39616_
                                      (foldl1 cons _bind39401_ _let-bind39616_)
                                      _assert39402_)))
                               (begin
                                 (let ((_g44112_
                                        (if (##values? _g44111_)
                                            (##vector-length _g44111_)
                                            1)))
                                   (if (not (##fx= _g44112_ 2))
                                       (error "Context expects 2 values"
                                              _g44112_)))
                                 (let ((_continue39618_
                                        (##vector-ref _g44111_ 0))
                                       (_block39619_
                                        (##vector-ref _g44111_ 1)))
                                   (let ()
                                     (values _continue39618_
                                             (cons _block39619_ '()))))))))
                          (___kont4135841359_
                           (lambda () (values _body39400_ '()))))
                      (let* ((___match4143741438_
                              (lambda (_e3945839503_
                                       _hd3945939506_
                                       _tl3946039508_
                                       _e3946139511_
                                       _hd3946239514_
                                       _tl3946339516_
                                       ___splice4135641357_
                                       _target3946439519_
                                       _tl3946639521_)
                                (letrec ((_loop3946739524_
                                          (lambda (_hd3946539527_
                                                   _expr3947139529_
                                                   _id3947239531_)
                                            (if (gx#stx-pair? _hd3946539527_)
                                                (let ((_e3946839534_
                                                       (gx#stx-e
                                                        _hd3946539527_)))
                                                  (let ((_lp-tl3947039539_
                                                         (##cdr _e3946839534_))
                                                        (_lp-hd3946939537_
                                                         (##car _e3946839534_)))
                                                    (if (gx#stx-pair?
                                                         _lp-hd3946939537_)
                                                        (let ((_e3947539542_
                                                               (gx#stx-e
                                                                _lp-hd3946939537_)))
                                                          (let ((_tl3947739547_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3947539542_))
                        (_hd3947639545_ (##car _e3947539542_)))
                    (if (gx#stx-pair? _hd3947639545_)
                        (let ((_e3947839550_ (gx#stx-e _hd3947639545_)))
                          (let ((_tl3948039555_ (##cdr _e3947839550_))
                                (_hd3947939553_ (##car _e3947839550_)))
                            (if (gx#stx-null? _tl3948039555_)
                                (if (gx#stx-pair? _tl3947739547_)
                                    (let ((_e3948139558_
                                           (gx#stx-e _tl3947739547_)))
                                      (let ((_tl3948339563_
                                             (##cdr _e3948139558_))
                                            (_hd3948239561_
                                             (##car _e3948139558_)))
                                        (if (gx#stx-null? _tl3948339563_)
                                            (_loop3946739524_
                                             _lp-tl3947039539_
                                             (cons _hd3948239561_
                                                   _expr3947139529_)
                                             (cons _hd3947939553_
                                                   _id3947239531_))
                                            (___kont4135841359_))))
                                    (___kont4135841359_))
                                (___kont4135841359_))))
                        (___kont4135841359_))))
                (___kont4135841359_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_id3947439568_
                                                       (reverse _id3947239531_))
                                                      (_expr3947339566_
                                                       (reverse _expr3947139529_)))
                                                  (if (gx#stx-pair?
                                                       _tl3946339516_)
                                                      (let ((_e3948439571_
                                                             (gx#stx-e
                                                              _tl3946339516_)))
                                                        (let ((_tl3948639576_
                                                               (##cdr _e3948439571_))
                                                              (_hd3948539574_
                                                               (##car _e3948439571_)))
                                                          (if (gx#stx-null?
                                                               _tl3948639576_)
                                                              (___kont4135441355_
                                                               _hd3948539574_
                                                               _expr3947339566_
                                                               _id3947439568_)
                                                              (___kont4135841359_))))
                                                      (___kont4135841359_)))))))
                                  (_loop3946739524_
                                   _target3946439519_
                                   '()
                                   '()))))
                             (___match4141341414_
                              (lambda (_e3942439627_
                                       _hd3942539630_
                                       _tl3942639632_
                                       _e3942739635_
                                       _hd3942839638_
                                       _tl3942939640_
                                       ___splice4135241353_
                                       _target3943039643_
                                       _tl3943239645_)
                                (letrec ((_loop3943339648_
                                          (lambda (_hd3943139651_)
                                            (if (gx#stx-pair? _hd3943139651_)
                                                (let ((_e3943439654_
                                                       (gx#stx-e
                                                        _hd3943139651_)))
                                                  (let ((_lp-tl3943639659_
                                                         (##cdr _e3943439654_))
                                                        (_lp-hd3943539657_
                                                         (##car _e3943439654_)))
                                                    (if (gx#stx-pair?
                                                         _lp-hd3943539657_)
                                                        (let ((_e3943739662_
                                                               (gx#stx-e
                                                                _lp-hd3943539657_)))
                                                          (let ((_tl3943939667_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3943739662_))
                        (_hd3943839665_ (##car _e3943739662_)))
                    (if (gx#stx-pair? _hd3943839665_)
                        (let ((_e3944039670_ (gx#stx-e _hd3943839665_)))
                          (let ((_tl3944239675_ (##cdr _e3944039670_))
                                (_hd3944139673_ (##car _e3944039670_)))
                            (if (gx#stx-null? _tl3944239675_)
                                (if (gx#stx-pair? _tl3943939667_)
                                    (let ((_e3944339678_
                                           (gx#stx-e _tl3943939667_)))
                                      (let ((_tl3944539683_
                                             (##cdr _e3944339678_))
                                            (_hd3944439681_
                                             (##car _e3944339678_)))
                                        (if (gx#stx-pair? _hd3944439681_)
                                            (let ((_e3944639686_
                                                   (gx#stx-e _hd3944439681_)))
                                              (let ((_tl3944839691_
                                                     (##cdr _e3944639686_))
                                                    (_hd3944739689_
                                                     (##car _e3944639686_)))
                                                (if (gx#identifier?
                                                     _hd3944739689_)
                                                    (if (gx#stx-eq?
                                                         '%#ref
                                                         _hd3944739689_)
                                                        (if (gx#stx-pair?
                                                             _tl3944839691_)
                                                            (let ((_e3944939694_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3944839691_)))
                      (let ((_tl3945139699_ (##cdr _e3944939694_))
                            (_hd3945039697_ (##car _e3944939694_)))
                        (if (gx#stx-null? _tl3945139699_)
                            (if (gx#stx-null? _tl3944539683_)
                                (_loop3943339648_ _lp-tl3943639659_)
                                (___match4143741438_
                                 _e3942439627_
                                 _hd3942539630_
                                 _tl3942639632_
                                 _e3942739635_
                                 _hd3942839638_
                                 _tl3942939640_
                                 ___splice4135241353_
                                 _target3943039643_
                                 _tl3943239645_))
                            (___match4143741438_
                             _e3942439627_
                             _hd3942539630_
                             _tl3942639632_
                             _e3942739635_
                             _hd3942839638_
                             _tl3942939640_
                             ___splice4135241353_
                             _target3943039643_
                             _tl3943239645_))))
                    (___match4143741438_
                     _e3942439627_
                     _hd3942539630_
                     _tl3942639632_
                     _e3942739635_
                     _hd3942839638_
                     _tl3942939640_
                     ___splice4135241353_
                     _target3943039643_
                     _tl3943239645_))
                (___match4143741438_
                 _e3942439627_
                 _hd3942539630_
                 _tl3942639632_
                 _e3942739635_
                 _hd3942839638_
                 _tl3942939640_
                 ___splice4135241353_
                 _target3943039643_
                 _tl3943239645_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match4143741438_
                                                     _e3942439627_
                                                     _hd3942539630_
                                                     _tl3942639632_
                                                     _e3942739635_
                                                     _hd3942839638_
                                                     _tl3942939640_
                                                     ___splice4135241353_
                                                     _target3943039643_
                                                     _tl3943239645_))))
                                            (___match4143741438_
                                             _e3942439627_
                                             _hd3942539630_
                                             _tl3942639632_
                                             _e3942739635_
                                             _hd3942839638_
                                             _tl3942939640_
                                             ___splice4135241353_
                                             _target3943039643_
                                             _tl3943239645_))))
                                    (___match4143741438_
                                     _e3942439627_
                                     _hd3942539630_
                                     _tl3942639632_
                                     _e3942739635_
                                     _hd3942839638_
                                     _tl3942939640_
                                     ___splice4135241353_
                                     _target3943039643_
                                     _tl3943239645_))
                                (___match4143741438_
                                 _e3942439627_
                                 _hd3942539630_
                                 _tl3942639632_
                                 _e3942739635_
                                 _hd3942839638_
                                 _tl3942939640_
                                 ___splice4135241353_
                                 _target3943039643_
                                 _tl3943239645_))))
                        (___match4143741438_
                         _e3942439627_
                         _hd3942539630_
                         _tl3942639632_
                         _e3942739635_
                         _hd3942839638_
                         _tl3942939640_
                         ___splice4135241353_
                         _target3943039643_
                         _tl3943239645_))))
                (___match4143741438_
                 _e3942439627_
                 _hd3942539630_
                 _tl3942639632_
                 _e3942739635_
                 _hd3942839638_
                 _tl3942939640_
                 ___splice4135241353_
                 _target3943039643_
                 _tl3943239645_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (if (gx#stx-pair?
                                                       _tl3942939640_)
                                                      (let ((_e3945239703_
                                                             (gx#stx-e
                                                              _tl3942939640_)))
                                                        (let ((_tl3945439708_
                                                               (##cdr _e3945239703_))
                                                              (_hd3945339706_
                                                               (##car _e3945239703_)))
                                                          (if (gx#stx-null?
                                                               _tl3945439708_)
                                                              (___kont4135041351_)
                                                              (___match4143741438_
                                                               _e3942439627_
                                                               _hd3942539630_
                                                               _tl3942639632_
                                                               _e3942739635_
                                                               _hd3942839638_
                                                               _tl3942939640_
                                                               ___splice4135241353_
                                                               _target3943039643_
                                                               _tl3943239645_))))
                                                      (___match4143741438_
                                                       _e3942439627_
                                                       _hd3942539630_
                                                       _tl3942639632_
                                                       _e3942739635_
                                                       _hd3942839638_
                                                       _tl3942939640_
                                                       ___splice4135241353_
                                                       _target3943039643_
                                                       _tl3943239645_)))))))
                                  (_loop3943339648_ _target3943039643_)))))
                        (if (gx#stx-pair? ___stx4134641347_)
                            (let ((_e3941239718_ (gx#stx-e ___stx4134641347_)))
                              (let ((_tl3941439723_ (##cdr _e3941239718_))
                                    (_hd3941339721_ (##car _e3941239718_)))
                                (if (gx#identifier? _hd3941339721_)
                                    (if (gx#stx-eq? '%#if _hd3941339721_)
                                        (if (gx#stx-pair? _tl3941439723_)
                                            (let ((_e3941539726_
                                                   (gx#stx-e _tl3941439723_)))
                                              (let ((_tl3941739731_
                                                     (##cdr _e3941539726_))
                                                    (_hd3941639729_
                                                     (##car _e3941539726_)))
                                                (if (gx#stx-pair?
                                                     _tl3941739731_)
                                                    (let ((_e3941839734_
                                                           (gx#stx-e
                                                            _tl3941739731_)))
                                                      (let ((_tl3942039739_
                                                             (##cdr _e3941839734_))
                                                            (_hd3941939737_
                                                             (##car _e3941839734_)))
                                                        (if (gx#stx-pair?
                                                             _tl3942039739_)
                                                            (let ((_e3942139742_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3942039739_)))
                      (let ((_tl3942339747_ (##cdr _e3942139742_))
                            (_hd3942239745_ (##car _e3942139742_)))
                        (if (gx#stx-null? _tl3942339747_)
                            (___kont4134841349_
                             _hd3942239745_
                             _hd3941939737_
                             _hd3941639729_)
                            (___kont4135841359_))))
                    (___kont4135841359_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4135841359_))))
                                            (___kont4135841359_))
                                        (if (gx#stx-eq?
                                             '%#let-values
                                             _hd3941339721_)
                                            (if (gx#stx-pair? _tl3941439723_)
                                                (let ((_e3942739635_
                                                       (gx#stx-e
                                                        _tl3941439723_)))
                                                  (let ((_tl3942939640_
                                                         (##cdr _e3942739635_))
                                                        (_hd3942839638_
                                                         (##car _e3942739635_)))
                                                    (if (gx#stx-pair/null?
                                                         _hd3942839638_)
                                                        (let ((___splice4135241353_
                                                               (gx#syntax-split-splice
                                                                _hd3942839638_
                                                                '0)))
                                                          (let ((_tl3943239645_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref ___splice4135241353_ '1))
                        (_target3943039643_
                         (##vector-ref ___splice4135241353_ '0)))
                    (if (gx#stx-null? _tl3943239645_)
                        (___match4141341414_
                         _e3941239718_
                         _hd3941339721_
                         _tl3941439723_
                         _e3942739635_
                         _hd3942839638_
                         _tl3942939640_
                         ___splice4135241353_
                         _target3943039643_
                         _tl3943239645_)
                        (___kont4135841359_))))
                (___kont4135841359_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4135841359_))
                                            (___kont4135841359_)))
                                    (___kont4135841359_))))
                            (___kont4135841359_)))))))
               (_fold-blocks39220_
                (lambda (_rest39319_ _blocks39320_)
                  (let* ((_rest3932139338_ _rest39319_)
                         (_E3932439342_
                          (lambda ()
                            (error '"No clause matching" _rest3932139338_))))
                    (let ((_K3932639362_
                           (lambda (_rest39353_
                                    _assert39354_
                                    _bind39355_
                                    _body39356_
                                    _name39357_)
                             (let ((_g44113_
                                    (_basic-block39219_
                                     _body39356_
                                     _bind39355_
                                     _assert39354_)))
                               (begin
                                 (let ((_g44114_
                                        (if (##values? _g44113_)
                                            (##vector-length _g44113_)
                                            1)))
                                   (if (not (##fx= _g44114_ 2))
                                       (error "Context expects 2 values"
                                              _g44114_)))
                                 (let ((_body39359_ (##vector-ref _g44113_ 0))
                                       (_body-blocks39360_
                                        (##vector-ref _g44113_ 1)))
                                   (_fold-blocks39220_
                                    (foldl1 cons
                                            _rest39353_
                                            _body-blocks39360_)
                                    (cons (cons _name39357_
                                                (cons 'continue:
                                                      (cons (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (reverse (map car _bind39355_))
                                (cons _body39359_ '())))
                    (cons _assert39354_ (cons _bind39355_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _blocks39320_)))))))
                          (_K3932539347_ (lambda () _blocks39320_)))
                      (let ((_try-match3932339350_
                             (lambda ()
                               (if (##null? _rest3932139338_)
                                   (_K3932539347_)
                                   (_E3932439342_)))))
                        (if (##pair? _rest3932139338_)
                            (let ((_tl3932839367_ (##cdr _rest3932139338_))
                                  (_hd3932739365_ (##car _rest3932139338_)))
                              (if (##pair? _hd3932739365_)
                                  (let ((_tl3933039372_ (##cdr _hd3932739365_))
                                        (_hd3932939370_
                                         (##car _hd3932739365_)))
                                    (if (##pair? _tl3933039372_)
                                        (let ((_tl3933239379_
                                               (##cdr _tl3933039372_))
                                              (_hd3933139377_
                                               (##car _tl3933039372_)))
                                          (if (##pair? _tl3933239379_)
                                              (let ((_tl3933439386_
                                                     (##cdr _tl3933239379_))
                                                    (_hd3933339384_
                                                     (##car _tl3933239379_)))
                                                (if (##pair? _tl3933439386_)
                                                    (let ((_tl3933639393_
                                                           (##cdr _tl3933439386_))
                                                          (_hd3933539391_
                                                           (##car _tl3933439386_)))
                                                      (if (##null? _tl3933639393_)
                                                          (let ((_name39375_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd3932939370_)
                        (_body39382_ _hd3933139377_)
                        (_bind39389_ _hd3933339384_)
                        (_assert39396_ _hd3933539391_)
                        (_rest39398_ _tl3932839367_))
                    (_K3932639362_
                     _rest39398_
                     _assert39396_
                     _bind39389_
                     _body39382_
                     _name39375_))
                  (_E3932439342_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E3932439342_)))
                                              (_E3932439342_)))
                                        (_E3932439342_)))
                                  (_E3932439342_)))
                            (_try-match3932339350_))))))))
        (let* ((_clause3922139228_ _clause39214_)
               (_E3922339232_
                (lambda () (error '"No clause matching" _clause3922139228_)))
               (_K3922439307_
                (lambda (_body39235_ _name39236_)
                  (let* ((_g3923839254_
                          (lambda (_g3923939251_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g3923939251_)))
                         (_g3923739304_
                          (lambda (_g3923939257_)
                            (if (gx#stx-pair? _g3923939257_)
                                (let ((_e3924139259_ (gx#stx-e _g3923939257_)))
                                  (let ((_hd3924239262_ (##car _e3924139259_))
                                        (_tl3924339264_ (##cdr _e3924139259_)))
                                    (if (gx#identifier? _hd3924239262_)
                                        (if (gx#stx-eq?
                                             '%#lambda
                                             _hd3924239262_)
                                            (if (gx#stx-pair? _tl3924339264_)
                                                (let ((_e3924439267_
                                                       (gx#stx-e
                                                        _tl3924339264_)))
                                                  (let ((_hd3924539270_
                                                         (##car _e3924439267_))
                                                        (_tl3924639272_
                                                         (##cdr _e3924439267_)))
                                                    (if (gx#stx-null?
                                                         _hd3924539270_)
                                                        (if (gx#stx-pair?
                                                             _tl3924639272_)
                                                            (let ((_e3924739275_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3924639272_)))
                      (let ((_hd3924839278_ (##car _e3924739275_))
                            (_tl3924939280_ (##cdr _e3924739275_)))
                        (if (gx#stx-null? _tl3924939280_)
                            ((lambda (_L39283_)
                               (let ((_g44115_
                                      (_basic-block39219_ _L39283_ '() '())))
                                 (begin
                                   (let ((_g44116_
                                          (if (##values? _g44115_)
                                              (##vector-length _g44115_)
                                              1)))
                                     (if (not (##fx= _g44116_ 2))
                                         (error "Context expects 2 values"
                                                _g44116_)))
                                   (let ((_body39301_
                                          (##vector-ref _g44115_ 0))
                                         (_body-blocks39302_
                                          (##vector-ref _g44115_ 1)))
                                     (_fold-blocks39220_
                                      _body-blocks39302_
                                      (cons (cons _name39236_
                                                  (cons 'restart:
                                                        (cons (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons '() (cons _body39301_ '())))
                      (cons '() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _blocks39215_))))))
                             _hd3924839278_)
                            (_g3923839254_ _g3923939257_))))
                    (_g3923839254_ _g3923939257_))
                (_g3923839254_ _g3923939257_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3923839254_ _g3923939257_))
                                            (_g3923839254_ _g3923939257_))
                                        (_g3923839254_ _g3923939257_))))
                                (_g3923839254_ _g3923939257_)))))
                    (_g3923739304_ _body39235_)))))
          (if (##pair? _clause3922139228_)
              (let ((_hd3922539310_ (##car _clause3922139228_))
                    (_tl3922639312_ (##cdr _clause3922139228_)))
                (let* ((_name39315_ _hd3922539310_)
                       (_body39317_ _tl3922639312_))
                  (_K3922439307_ _body39317_ _name39315_)))
              (_E3922339232_))))))
  (define gxc#optimize-match-fold-basic-blocks
    (lambda (_blocks38820_)
      (let _lp38822_ ((_rest38824_ _blocks38820_) (_blocks38825_ '()))
        (let* ((_rest3882638834_ _rest38824_)
               (_else3882838883_
                (lambda ()
                  (foldl1 (lambda (_block38842_ _r38843_)
                            (let* ((_block3884438855_ _block38842_)
                                   (_E3884638859_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _block3884438855_)))
                                   (_K3884738865_
                                    (lambda (_kont38862_ _name38863_)
                                      (cons (cons _name38863_ _kont38862_)
                                            _r38843_))))
                              (if (##pair? _block3884438855_)
                                  (let ((_hd3884838868_
                                         (##car _block3884438855_))
                                        (_tl3884938870_
                                         (##cdr _block3884438855_)))
                                    (let ((_name38873_ _hd3884838868_))
                                      (if (##pair? _tl3884938870_)
                                          (let ((_tl3885138875_
                                                 (##cdr _tl3884938870_)))
                                            (if (##pair? _tl3885138875_)
                                                (let* ((_hd3885238878_
                                                        (##car _tl3885138875_))
                                                       (_kont38881_
                                                        _hd3885238878_))
                                                  (_K3884738865_
                                                   _kont38881_
                                                   _name38873_))
                                                (_E3884638859_)))
                                          (_E3884638859_))))
                                  (_E3884638859_))))
                          '()
                          _blocks38825_)))
               (_K3883039202_
                (lambda (_rest38886_ _block38887_)
                  (let* ((_block3888838913_ _block38887_)
                         (_E3889138917_
                          (lambda ()
                            (error '"No clause matching" _block3888838913_))))
                    (let ((_K3890339173_
                           (lambda (_assert39095_ _kont39096_ _name39097_)
                             (let* ((_g3909939115_
                                     (lambda (_g3910039112_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g3910039112_)))
                                    (_g3909839170_
                                     (lambda (_g3910039118_)
                                       (if (gx#stx-pair? _g3910039118_)
                                           (let ((_e3910239120_
                                                  (gx#stx-e _g3910039118_)))
                                             (let ((_hd3910339123_
                                                    (##car _e3910239120_))
                                                   (_tl3910439125_
                                                    (##cdr _e3910239120_)))
                                               (if (gx#identifier?
                                                    _hd3910339123_)
                                                   (if (gx#stx-eq?
                                                        '%#lambda
                                                        _hd3910339123_)
                                                       (if (gx#stx-pair?
                                                            _tl3910439125_)
                                                           (let ((_e3910539128_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3910439125_)))
                     (let ((_hd3910639131_ (##car _e3910539128_))
                           (_tl3910739133_ (##cdr _e3910539128_)))
                       (if (gx#stx-null? _hd3910639131_)
                           (if (gx#stx-pair? _tl3910739133_)
                               (let ((_e3910839136_ (gx#stx-e _tl3910739133_)))
                                 (let ((_hd3910939139_ (##car _e3910839136_))
                                       (_tl3911039141_ (##cdr _e3910839136_)))
                                   (if (gx#stx-null? _tl3911039141_)
                                       ((lambda (_L39144_)
                                          (let* ((_body39159_
                                                  (gxc#optimize-match-block
                                                   _L39144_
                                                   _assert39095_
                                                   '()
                                                   _rest38886_))
                                                 (_block39161_
                                                  (cons _name39097_
                                                        (cons 'restart:
                                                              (cons (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '() (cons _body39159_ '())))
                            (cons _assert39095_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_blocks39163_
                                                  (cons _block39161_
                                                        _blocks38825_))
                                                 (_rest39165_
                                                  (gxc#optimize-match-prune-blocks
                                                   _rest38886_
                                                   _blocks39163_))
                                                 (_rest39167_
                                                  (gxc#optimize-match-fuse-restart-blocks
                                                   _rest39165_
                                                   _blocks39163_)))
                                            (_lp38822_
                                             _rest39167_
                                             _blocks39163_)))
                                        _hd3910939139_)
                                       (_g3909939115_ _g3910039118_))))
                               (_g3909939115_ _g3910039118_))
                           (_g3909939115_ _g3910039118_))))
                   (_g3909939115_ _g3910039118_))
               (_g3909939115_ _g3910039118_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g3909939115_
                                                    _g3910039118_))))
                                           (_g3909939115_ _g3910039118_)))))
                               (_g3909839170_ _kont39096_))))
                          (_K3889239056_
                           (lambda (_bind38921_
                                    _assert38922_
                                    _kont38923_
                                    _name38924_)
                             (let* ((_g3892638952_
                                     (lambda (_g3892738949_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g3892738949_)))
                                    (_g3892539053_
                                     (lambda (_g3892738955_)
                                       (if (gx#stx-pair? _g3892738955_)
                                           (let ((_e3893038957_
                                                  (gx#stx-e _g3892738955_)))
                                             (let ((_hd3893138960_
                                                    (##car _e3893038957_))
                                                   (_tl3893238962_
                                                    (##cdr _e3893038957_)))
                                               (if (gx#identifier?
                                                    _hd3893138960_)
                                                   (if (gx#stx-eq?
                                                        '%#lambda
                                                        _hd3893138960_)
                                                       (if (gx#stx-pair?
                                                            _tl3893238962_)
                                                           (let ((_e3893338965_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3893238962_)))
                     (let ((_hd3893438968_ (##car _e3893338965_))
                           (_tl3893538970_ (##cdr _e3893338965_)))
                       (if (gx#stx-pair/null? _hd3893438968_)
                           (let ((_g44117_
                                  (gx#syntax-split-splice _hd3893438968_ '0)))
                             (begin
                               (let ((_g44118_
                                      (if (##values? _g44117_)
                                          (##vector-length _g44117_)
                                          1)))
                                 (if (not (##fx= _g44118_ 2))
                                     (error "Context expects 2 values"
                                            _g44118_)))
                               (let ((_target3893638973_
                                      (##vector-ref _g44117_ 0))
                                     (_tl3893838975_
                                      (##vector-ref _g44117_ 1)))
                                 (if (gx#stx-null? _tl3893838975_)
                                     (letrec ((_loop3893938978_
                                               (lambda (_hd3893738981_
                                                        _id3894338983_)
                                                 (if (gx#stx-pair?
                                                      _hd3893738981_)
                                                     (let ((_e3894038986_
                                                            (gx#stx-e
                                                             _hd3893738981_)))
                                                       (let ((_lp-hd3894138989_
                                                              (##car _e3894038986_))
                                                             (_lp-tl3894238991_
                                                              (##cdr _e3894038986_)))
                                                         (_loop3893938978_
                                                          _lp-tl3894238991_
                                                          (cons _lp-hd3894138989_
                                                                _id3894338983_))))
                                                     (let ((_id3894438994_
                                                            (reverse _id3894338983_)))
                                                       (if (gx#stx-pair?
                                                            _tl3893538970_)
                                                           (let ((_e3894538997_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3893538970_)))
                     (let ((_hd3894639000_ (##car _e3894538997_))
                           (_tl3894739002_ (##cdr _e3894538997_)))
                       (if (gx#stx-null? _tl3894739002_)
                           ((lambda (_L39005_ _L39006_)
                              (let* ((_body39035_
                                      (gxc#optimize-match-block
                                       _L39005_
                                       _assert38922_
                                       _bind38921_
                                       _rest38886_))
                                     (_block39044_
                                      (cons _name38924_
                                            (cons 'continue:
                                                  (cons (cons '%#lambda
                                                              (cons (foldr1 (lambda (_g3903639039_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             _g3903739041_)
                                      (cons _g3903639039_ _g3903739041_))
                                    '()
                                    _L39006_)
                            (cons _body39035_ '())))
                (cons _assert38922_ (cons _bind38921_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_blocks39046_
                                      (cons _block39044_ _blocks38825_))
                                     (_rest39048_
                                      (gxc#optimize-match-prune-blocks
                                       _rest38886_
                                       _blocks39046_))
                                     (_rest39050_
                                      (gxc#optimize-match-fuse-restart-blocks
                                       _rest39048_
                                       _blocks39046_)))
                                (_lp38822_ _rest39050_ _blocks39046_)))
                            _hd3894639000_
                            _id3894438994_)
                           (_g3892638952_ _g3892738955_))))
                   (_g3892638952_ _g3892738955_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_loop3893938978_
                                        _target3893638973_
                                        '()))
                                     (_g3892638952_ _g3892738955_)))))
                           (_g3892638952_ _g3892738955_))))
                   (_g3892638952_ _g3892738955_))
               (_g3892638952_ _g3892738955_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g3892638952_
                                                    _g3892738955_))))
                                           (_g3892638952_ _g3892738955_)))))
                               (_g3892539053_ _kont38923_)))))
                      (if (##pair? _block3888838913_)
                          (let ((_tl3890539178_ (##cdr _block3888838913_))
                                (_hd3890439176_ (##car _block3888838913_)))
                            (if (##pair? _tl3890539178_)
                                (let ((_tl3890739185_ (##cdr _tl3890539178_))
                                      (_hd3890639183_ (##car _tl3890539178_)))
                                  (if (##eq? _hd3890639183_ 'restart:)
                                      (if (##pair? _tl3890739185_)
                                          (let ((_tl3890939190_
                                                 (##cdr _tl3890739185_))
                                                (_hd3890839188_
                                                 (##car _tl3890739185_)))
                                            (if (##pair? _tl3890939190_)
                                                (let ((_tl3891139197_
                                                       (##cdr _tl3890939190_))
                                                      (_hd3891039195_
                                                       (##car _tl3890939190_)))
                                                  (if (##null? _tl3891139197_)
                                                      (let ((_name39181_
                                                             _hd3890439176_)
                                                            (_kont39193_
                                                             _hd3890839188_)
                                                            (_assert39200_
                                                             _hd3891039195_))
                                                        (_K3890339173_
                                                         _assert39200_
                                                         _kont39193_
                                                         _name39181_))
                                                      (_E3889138917_)))
                                                (_E3889138917_)))
                                          (_E3889138917_))
                                      (if (##eq? _hd3890639183_ 'continue:)
                                          (if (##pair? _tl3890739185_)
                                              (let ((_tl3889839073_
                                                     (##cdr _tl3890739185_))
                                                    (_hd3889739071_
                                                     (##car _tl3890739185_)))
                                                (if (##pair? _tl3889839073_)
                                                    (let ((_tl3890039080_
                                                           (##cdr _tl3889839073_))
                                                          (_hd3889939078_
                                                           (##car _tl3889839073_)))
                                                      (if (##pair? _tl3890039080_)
                                                          (let ((_tl3890239087_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _tl3890039080_))
                        (_hd3890139085_ (##car _tl3890039080_)))
                    (if (##null? _tl3890239087_)
                        (let ((_name39064_ _hd3890439176_)
                              (_kont39076_ _hd3889739071_)
                              (_assert39083_ _hd3889939078_)
                              (_bind39090_ _hd3890139085_))
                          (_K3889239056_
                           _bind39090_
                           _assert39083_
                           _kont39076_
                           _name39064_))
                        (_E3889138917_)))
                  (_E3889138917_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E3889138917_)))
                                              (_E3889138917_))
                                          (_E3889138917_))))
                                (_E3889138917_)))
                          (_E3889138917_)))))))
          (if (##pair? _rest3882638834_)
              (let ((_hd3883139205_ (##car _rest3882638834_))
                    (_tl3883239207_ (##cdr _rest3882638834_)))
                (let* ((_block39210_ _hd3883139205_)
                       (_rest39212_ _tl3883239207_))
                  (_K3883039202_ _rest39212_ _block39210_)))
              (_else3882838883_))))))
  (define gxc#optimize-match-block
    (lambda (_body33443_ _assert33444_ _bind33445_ _blocks33446_)
      (letrec* ((_env-assert33681_ '())
                (_env-type33682_ '())
                (_env-bind33683_ '())
                (_in-splice?33684_ '#f)
                (_do-assert33685_
                 (lambda (_assert38743_ _K38744_)
                   (if (pair? _assert38743_)
                       (let _lp38746_ ((_rest38748_ _assert38743_)
                                       (_env-assert38749_ _env-assert33681_)
                                       (_env-type38750_ _env-type33682_))
                         (let* ((_rest3875138759_ _rest38748_)
                                (_else3875338767_
                                 (lambda ()
                                   (_do-assert!33691_
                                    _env-assert38749_
                                    _env-type38750_
                                    _K38744_)))
                                (_K3875538808_
                                 (lambda (_rest38770_ _assert38771_)
                                   (let* ((_assert3877238779_ _assert38771_)
                                          (_E3877438783_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _assert3877238779_)))
                                          (_K3877538796_
                                           (lambda (_val38786_ _expr38787_)
                                             (let* ((_sexpr38789_
                                                     (gxc#apply-generate-runtime-repr
                                                      _expr38787_))
                                                    (_env-assert38791_
                                                     (cons (cons _sexpr38789_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _val38786_)
                   _env-assert38749_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_env-type38793_
                                                     (_fold-assert-type33687_
                                                      _expr38787_
                                                      _val38786_
                                                      _env-type38750_)))
                                               (_lp38746_
                                                _rest38770_
                                                _env-assert38791_
                                                _env-type38793_)))))
                                     (if (##pair? _assert3877238779_)
                                         (let ((_hd3877638799_
                                                (##car _assert3877238779_))
                                               (_tl3877738801_
                                                (##cdr _assert3877238779_)))
                                           (let* ((_expr38804_ _hd3877638799_)
                                                  (_val38806_ _tl3877738801_))
                                             (_K3877538796_
                                              _val38806_
                                              _expr38804_)))
                                         (_E3877438783_))))))
                           (if (##pair? _rest3875138759_)
                               (let ((_hd3875638811_ (##car _rest3875138759_))
                                     (_tl3875738813_ (##cdr _rest3875138759_)))
                                 (let* ((_assert38816_ _hd3875638811_)
                                        (_rest38818_ _tl3875738813_))
                                   (_K3875538808_ _rest38818_ _assert38816_)))
                               (_else3875338767_))))
                       (_K38744_))))
                (_predicate-type33686_
                 (lambda (_id38688_)
                   (let* ((_sym38690_ (gxc#identifier-symbol _id38688_))
                          (_$e38692_ _sym38690_))
                     (let ((_default3869438725_
                            (lambda ()
                              (let* ((_g3869738704_
                                      (gxc#optimizer-resolve-type _sym38690_))
                                     (_else3869938712_ (lambda () '#f))
                                     (_K3870138717_
                                      (lambda (_struct-t38715_)
                                        (gxc#optimizer-resolve-type
                                         _struct-t38715_))))
                                (if (##structure-instance-of?
                                     _g3869738704_
                                     'gxc#!struct-pred::t)
                                    (let* ((_e3870238720_
                                            (##vector-ref _g3869738704_ '1))
                                           (_struct-t38723_ _e3870238720_))
                                      (gxc#optimizer-resolve-type
                                       _struct-t38723_))
                                    (_else3869938712_)))))
                           (_table3869538727_
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
                       (if (symbol? _$e38692_)
                           (let* ((_h38730_ (##symbol-hash _$e38692_))
                                  (_ix38733_ (##fxmodulo _h38730_ '63))
                                  (_q38736_
                                   (##vector-ref _table3869538727_ _ix38733_)))
                             (if _q38736_
                                 (if (eq? (##car _q38736_) _$e38692_)
                                     (let ((_x38740_ (##cdr _q38736_)))
                                       (if (##fx< _x38740_ '5)
                                           (if (##fx< _x38740_ '2)
                                               (if (##fx= _x38740_ '0)
                                                   'pair
                                                   'null)
                                               (if (##fx= _x38740_ '2)
                                                   'vector
                                                   (if (##fx= _x38740_ '3)
                                                       'box
                                                       'identifier)))
                                           (if (##fx< _x38740_ '7)
                                               (if (##fx= _x38740_ '5)
                                                   'stx-pair
                                                   'stx-null)
                                               (if (##fx= _x38740_ '7)
                                                   'stx-vector
                                                   (if (##fx= _x38740_ '8)
                                                       'stx-box
                                                       'stx-datum)))))
                                     (_default3869438725_))
                                 (_default3869438725_)))
                           (_default3869438725_))))))
                (_fold-assert-type33687_
                 (lambda (_expr37636_ _val37637_ _env37638_)
                   (let* ((___stx4160441605_ _expr37636_)
                          (_g3764637825_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              ___stx4160441605_))))
                     (let ((___kont4160641607_
                            (lambda (_L38657_ _L38658_)
                              (let ((_$e38680_
                                     (_predicate-type33686_ _L38658_)))
                                (if _$e38680_
                                    ((lambda (_t38683_)
                                       (cons (cons _L38657_
                                                   (cons _t38683_
                                                         (cons _val37637_
                                                               '())))
                                             _env37638_))
                                     _$e38680_)
                                    _env37638_))))
                           (___kont4160841609_
                            (lambda (_L38347_ _L38348_ _L38349_)
                              (let ((_$e38374_
                                     (gxc#identifier-symbol _L38349_)))
                                (if (or (eq? '##fx= _$e38374_)
                                        (eq? 'fx= _$e38374_))
                                    (let* ((___stx4151041511_ _L38348_)
                                           (_g3838138410_
                                            (lambda ()
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               ___stx4151041511_))))
                                      (let ((___kont4151241513_
                                             (lambda (_L38478_ _L38479_)
                                               (let ((_$e38504_
                                                      (_countf-symbol33688_
                                                       _L38479_)))
                                                 (if _$e38504_
                                                     ((lambda (_sym38507_)
                                                        (cons (cons _L38478_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _sym38507_
                                  (cons (gx#stx-e _L38347_)
                                        (cons _val37637_ '()))))
                      _env37638_))
              _$e38504_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _env37638_))))
                                            (___kont4151441515_
                                             (lambda () _env37638_)))
                                        (if (gx#stx-pair? ___stx4151041511_)
                                            (let ((_e3838538422_
                                                   (gx#stx-e
                                                    ___stx4151041511_)))
                                              (let ((_tl3838738427_
                                                     (##cdr _e3838538422_))
                                                    (_hd3838638425_
                                                     (##car _e3838538422_)))
                                                (if (gx#identifier?
                                                     _hd3838638425_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd3838638425_)
                                                        (if (gx#stx-pair?
                                                             _tl3838738427_)
                                                            (let ((_e3838838430_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3838738427_)))
                      (let ((_tl3839038435_ (##cdr _e3838838430_))
                            (_hd3838938433_ (##car _e3838838430_)))
                        (if (gx#stx-pair? _hd3838938433_)
                            (let ((_e3839138438_ (gx#stx-e _hd3838938433_)))
                              (let ((_tl3839338443_ (##cdr _e3839138438_))
                                    (_hd3839238441_ (##car _e3839138438_)))
                                (if (gx#identifier? _hd3839238441_)
                                    (if (gx#stx-eq? '%#ref _hd3839238441_)
                                        (if (gx#stx-pair? _tl3839338443_)
                                            (let ((_e3839438446_
                                                   (gx#stx-e _tl3839338443_)))
                                              (let ((_tl3839638451_
                                                     (##cdr _e3839438446_))
                                                    (_hd3839538449_
                                                     (##car _e3839438446_)))
                                                (if (gx#stx-null?
                                                     _tl3839638451_)
                                                    (if (gx#stx-pair?
                                                         _tl3839038435_)
                                                        (let ((_e3839738454_
                                                               (gx#stx-e
                                                                _tl3839038435_)))
                                                          (let ((_tl3839938459_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3839738454_))
                        (_hd3839838457_ (##car _e3839738454_)))
                    (if (gx#stx-pair? _hd3839838457_)
                        (let ((_e3840038462_ (gx#stx-e _hd3839838457_)))
                          (let ((_tl3840238467_ (##cdr _e3840038462_))
                                (_hd3840138465_ (##car _e3840038462_)))
                            (if (gx#identifier? _hd3840138465_)
                                (if (gx#stx-eq? '%#ref _hd3840138465_)
                                    (if (gx#stx-pair? _tl3840238467_)
                                        (let ((_e3840338470_
                                               (gx#stx-e _tl3840238467_)))
                                          (let ((_tl3840538475_
                                                 (##cdr _e3840338470_))
                                                (_hd3840438473_
                                                 (##car _e3840338470_)))
                                            (if (gx#stx-null? _tl3840538475_)
                                                (if (gx#stx-null?
                                                     _tl3839938459_)
                                                    (___kont4151241513_
                                                     _hd3840438473_
                                                     _hd3839538449_)
                                                    (___kont4151441515_))
                                                (___kont4151441515_))))
                                        (___kont4151441515_))
                                    (___kont4151441515_))
                                (___kont4151441515_))))
                        (___kont4151441515_))))
                (___kont4151441515_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4151441515_))))
                                            (___kont4151441515_))
                                        (___kont4151441515_))
                                    (___kont4151441515_))))
                            (___kont4151441515_))))
                    (___kont4151441515_))
                (___kont4151441515_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4151441515_))))
                                            (___kont4151441515_))))
                                    (if (or (eq? '##eq? _$e38374_)
                                            (eq? 'eq? _$e38374_)
                                            (eq? '##eqv? _$e38374_)
                                            (eq? 'eqv? _$e38374_)
                                            (eq? '##equal? _$e38374_)
                                            (eq? 'equal? _$e38374_)
                                            (eq? 'gx#free-identifier=?
                                                 _$e38374_)
                                            (eq? 'gx#stx-eq? _$e38374_))
                                        ((lambda (_sym38533_)
                                           (let* ((_sym38535_
                                                   (_eqf-symbol33689_
                                                    _sym38533_))
                                                  (___stx4157841579_ _L38348_)
                                                  (_g3853838551_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      ___stx4157841579_))))
                                             (let ((___kont4158041581_
                                                    (lambda (_L38579_)
                                                      (cons (cons _L38579_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _sym38535_
                                (cons (gx#stx-e _L38347_)
                                      (cons _val37637_ '()))))
                    _env37638_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4158241583_
                                                    (lambda () _env37638_)))
                                               (if (gx#stx-pair?
                                                    ___stx4157841579_)
                                                   (let ((_e3854138563_
                                                          (gx#stx-e
                                                           ___stx4157841579_)))
                                                     (let ((_tl3854338568_
                                                            (##cdr _e3854138563_))
                                                           (_hd3854238566_
                                                            (##car _e3854138563_)))
                                                       (if (gx#identifier?
                                                            _hd3854238566_)
                                                           (if (gx#stx-eq?
                                                                '%#ref
                                                                _hd3854238566_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3854338568_)
                           (let ((_e3854438571_ (gx#stx-e _tl3854338568_)))
                             (let ((_tl3854638576_ (##cdr _e3854438571_))
                                   (_hd3854538574_ (##car _e3854438571_)))
                               (if (gx#stx-null? _tl3854638576_)
                                   (___kont4158041581_ _hd3854538574_)
                                   (___kont4158241583_))))
                           (___kont4158241583_))
                       (___kont4158241583_))
                   (___kont4158241583_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4158241583_)))))
                                         _$e38374_)
                                        _env37638_)))))
                           (___kont4161041611_
                            (lambda (_L38251_ _L38252_ _L38253_)
                              (_fold-assert-type33687_
                               (cons (gx#datum->syntax__0 '#f '%#call)
                                     (cons (cons (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)
                                                 (cons _L38253_ '()))
                                           (cons _L38251_
                                                 (cons (cons (gx#datum->syntax__0
                                                              '#f
                                                              '%#quote)
                                                             (cons _L38252_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _val37637_
                               _env37638_)))
                           (___kont4161241613_
                            (lambda (_L38141_ _L38142_ _L38143_)
                              (let ((_$e38172_
                                     (gxc#identifier-symbol _L38143_)))
                                (if (or (eq? 'gx#free-identifier=? _$e38172_)
                                        (eq? 'gx#stx-eq? _$e38172_))
                                    ((lambda (_sym38178_)
                                       (let ((_sym38180_
                                              (_eqf-symbol33689_ _sym38178_)))
                                         (cons (cons _L38142_
                                                     (cons _sym38180_
                                                           (cons _L38141_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _val37637_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _env37638_)))
                                     _$e38172_)
                                    _env37638_))))
                           (___kont4161441615_
                            (lambda (_L38025_ _L38026_ _L38027_)
                              (_fold-assert-type33687_
                               (cons (gx#datum->syntax__0 '#f '%#call)
                                     (cons (cons (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)
                                                 (cons _L38027_ '()))
                                           (cons (cons (gx#datum->syntax__0
                                                        '#f
                                                        '%#ref)
                                                       (cons _L38025_ '()))
                                                 (cons (cons (gx#datum->syntax__0
                                                              '#f
                                                              '%#quote-syntax)
                                                             (cons _L38026_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _val37637_
                               _env37638_)))
                           (___kont4161641617_
                            (lambda (_L37909_ _L37910_ _L37911_)
                              (_fold-assert-type33687_
                               (gxc#apply-expression-subst
                                _L37910_
                                _L37911_
                                _L37909_)
                               _val37637_
                               _env37638_)))
                           (___kont4161841619_ (lambda () _env37638_)))
                       (if (gx#stx-pair? ___stx4160441605_)
                           (let ((_e3765038601_ (gx#stx-e ___stx4160441605_)))
                             (let ((_tl3765238606_ (##cdr _e3765038601_))
                                   (_hd3765138604_ (##car _e3765038601_)))
                               (if (gx#identifier? _hd3765138604_)
                                   (if (gx#stx-eq? '%#call _hd3765138604_)
                                       (if (gx#stx-pair? _tl3765238606_)
                                           (let ((_e3765338609_
                                                  (gx#stx-e _tl3765238606_)))
                                             (let ((_tl3765538614_
                                                    (##cdr _e3765338609_))
                                                   (_hd3765438612_
                                                    (##car _e3765338609_)))
                                               (if (gx#stx-pair?
                                                    _hd3765438612_)
                                                   (let ((_e3765638617_
                                                          (gx#stx-e
                                                           _hd3765438612_)))
                                                     (let ((_tl3765838622_
                                                            (##cdr _e3765638617_))
                                                           (_hd3765738620_
                                                            (##car _e3765638617_)))
                                                       (if (gx#identifier?
                                                            _hd3765738620_)
                                                           (if (gx#stx-eq?
                                                                '%#ref
                                                                _hd3765738620_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3765838622_)
                           (let ((_e3765938625_ (gx#stx-e _tl3765838622_)))
                             (let ((_tl3766138630_ (##cdr _e3765938625_))
                                   (_hd3766038628_ (##car _e3765938625_)))
                               (if (gx#stx-null? _tl3766138630_)
                                   (if (gx#stx-pair? _tl3765538614_)
                                       (let ((_e3766238633_
                                              (gx#stx-e _tl3765538614_)))
                                         (let ((_tl3766438638_
                                                (##cdr _e3766238633_))
                                               (_hd3766338636_
                                                (##car _e3766238633_)))
                                           (if (gx#stx-pair? _hd3766338636_)
                                               (let ((_e3766538641_
                                                      (gx#stx-e
                                                       _hd3766338636_)))
                                                 (let ((_tl3766738646_
                                                        (##cdr _e3766538641_))
                                                       (_hd3766638644_
                                                        (##car _e3766538641_)))
                                                   (if (gx#identifier?
                                                        _hd3766638644_)
                                                       (if (gx#stx-eq?
                                                            '%#ref
                                                            _hd3766638644_)
                                                           (if (gx#stx-pair?
                                                                _tl3766738646_)
                                                               (let ((_e3766838649_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl3766738646_)))
                         (let ((_tl3767038654_ (##cdr _e3766838649_))
                               (_hd3766938652_ (##car _e3766838649_)))
                           (if (gx#stx-null? _tl3767038654_)
                               (if (gx#stx-null? _tl3766438638_)
                                   (___kont4160641607_
                                    _hd3766938652_
                                    _hd3766038628_)
                                   (if (gx#stx-pair? _tl3766438638_)
                                       (let ((_e3768938323_
                                              (gx#stx-e _tl3766438638_)))
                                         (let ((_tl3769138328_
                                                (##cdr _e3768938323_))
                                               (_hd3769038326_
                                                (##car _e3768938323_)))
                                           (if (gx#stx-pair? _hd3769038326_)
                                               (let ((_e3769238331_
                                                      (gx#stx-e
                                                       _hd3769038326_)))
                                                 (let ((_tl3769438336_
                                                        (##cdr _e3769238331_))
                                                       (_hd3769338334_
                                                        (##car _e3769238331_)))
                                                   (if (gx#identifier?
                                                        _hd3769338334_)
                                                       (if (gx#stx-eq?
                                                            '%#quote
                                                            _hd3769338334_)
                                                           (if (gx#stx-pair?
                                                                _tl3769438336_)
                                                               (let ((_e3769538339_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl3769438336_)))
                         (let ((_tl3769738344_ (##cdr _e3769538339_))
                               (_hd3769638342_ (##car _e3769538339_)))
                           (if (gx#stx-null? _tl3769738344_)
                               (if (gx#stx-null? _tl3769138328_)
                                   (___kont4160841609_
                                    _hd3769638342_
                                    _hd3766338636_
                                    _hd3766038628_)
                                   (___kont4161841619_))
                               (___kont4161841619_))))
                       (___kont4161841619_))
                   (if (gx#stx-eq? '%#quote-syntax _hd3769338334_)
                       (if (gx#stx-pair? _tl3769438336_)
                           (let ((_e3775538133_ (gx#stx-e _tl3769438336_)))
                             (let ((_tl3775738138_ (##cdr _e3775538133_))
                                   (_hd3775638136_ (##car _e3775538133_)))
                               (if (gx#stx-null? _tl3775738138_)
                                   (if (gx#stx-null? _tl3769138328_)
                                       (___kont4161241613_
                                        _hd3775638136_
                                        _hd3766938652_
                                        _hd3766038628_)
                                       (___kont4161841619_))
                                   (___kont4161841619_))))
                           (___kont4161841619_))
                       (___kont4161841619_)))
               (___kont4161841619_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont4161841619_))))
                                       (___kont4161841619_)))
                               (if (gx#stx-pair? _tl3766438638_)
                                   (let ((_e3768938323_
                                          (gx#stx-e _tl3766438638_)))
                                     (let ((_tl3769138328_
                                            (##cdr _e3768938323_))
                                           (_hd3769038326_
                                            (##car _e3768938323_)))
                                       (if (gx#stx-pair? _hd3769038326_)
                                           (let ((_e3769238331_
                                                  (gx#stx-e _hd3769038326_)))
                                             (let ((_tl3769438336_
                                                    (##cdr _e3769238331_))
                                                   (_hd3769338334_
                                                    (##car _e3769238331_)))
                                               (if (gx#identifier?
                                                    _hd3769338334_)
                                                   (if (gx#stx-eq?
                                                        '%#quote
                                                        _hd3769338334_)
                                                       (if (gx#stx-pair?
                                                            _tl3769438336_)
                                                           (let ((_e3769538339_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3769438336_)))
                     (let ((_tl3769738344_ (##cdr _e3769538339_))
                           (_hd3769638342_ (##car _e3769538339_)))
                       (if (gx#stx-null? _tl3769738344_)
                           (if (gx#stx-null? _tl3769138328_)
                               (___kont4160841609_
                                _hd3769638342_
                                _hd3766338636_
                                _hd3766038628_)
                               (___kont4161841619_))
                           (___kont4161841619_))))
                   (___kont4161841619_))
               (___kont4161841619_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4161841619_))))
                                           (___kont4161841619_))))
                                   (___kont4161841619_)))))
                       (if (gx#stx-pair? _tl3766438638_)
                           (let ((_e3768938323_ (gx#stx-e _tl3766438638_)))
                             (let ((_tl3769138328_ (##cdr _e3768938323_))
                                   (_hd3769038326_ (##car _e3768938323_)))
                               (if (gx#stx-pair? _hd3769038326_)
                                   (let ((_e3769238331_
                                          (gx#stx-e _hd3769038326_)))
                                     (let ((_tl3769438336_
                                            (##cdr _e3769238331_))
                                           (_hd3769338334_
                                            (##car _e3769238331_)))
                                       (if (gx#identifier? _hd3769338334_)
                                           (if (gx#stx-eq?
                                                '%#quote
                                                _hd3769338334_)
                                               (if (gx#stx-pair?
                                                    _tl3769438336_)
                                                   (let ((_e3769538339_
                                                          (gx#stx-e
                                                           _tl3769438336_)))
                                                     (let ((_tl3769738344_
                                                            (##cdr _e3769538339_))
                                                           (_hd3769638342_
                                                            (##car _e3769538339_)))
                                                       (if (gx#stx-null?
                                                            _tl3769738344_)
                                                           (if (gx#stx-null?
                                                                _tl3769138328_)
                                                               (___kont4160841609_
                                                                _hd3769638342_
                                                                _hd3766338636_
                                                                _hd3766038628_)
                                                               (___kont4161841619_))
                                                           (___kont4161841619_))))
                                                   (___kont4161841619_))
                                               (___kont4161841619_))
                                           (___kont4161841619_))))
                                   (___kont4161841619_))))
                           (___kont4161841619_)))
                   (if (gx#stx-pair? _tl3766438638_)
                       (let ((_e3768938323_ (gx#stx-e _tl3766438638_)))
                         (let ((_tl3769138328_ (##cdr _e3768938323_))
                               (_hd3769038326_ (##car _e3768938323_)))
                           (if (gx#stx-pair? _hd3769038326_)
                               (let ((_e3769238331_ (gx#stx-e _hd3769038326_)))
                                 (let ((_tl3769438336_ (##cdr _e3769238331_))
                                       (_hd3769338334_ (##car _e3769238331_)))
                                   (if (gx#identifier? _hd3769338334_)
                                       (if (gx#stx-eq? '%#quote _hd3769338334_)
                                           (if (gx#stx-pair? _tl3769438336_)
                                               (let ((_e3769538339_
                                                      (gx#stx-e
                                                       _tl3769438336_)))
                                                 (let ((_tl3769738344_
                                                        (##cdr _e3769538339_))
                                                       (_hd3769638342_
                                                        (##car _e3769538339_)))
                                                   (if (gx#stx-null?
                                                        _tl3769738344_)
                                                       (if (gx#stx-null?
                                                            _tl3769138328_)
                                                           (___kont4160841609_
                                                            _hd3769638342_
                                                            _hd3766338636_
                                                            _hd3766038628_)
                                                           (if (gx#stx-eq?
                                                                '%#quote
                                                                _hd3766638644_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3766738646_)
                           (let ((_e3771938235_ (gx#stx-e _tl3766738646_)))
                             (let ((_tl3772138240_ (##cdr _e3771938235_))
                                   (_hd3772038238_ (##car _e3771938235_)))
                               (___kont4161841619_)))
                           (___kont4161841619_))
                       (if (gx#stx-eq? '%#quote-syntax _hd3766638644_)
                           (if (gx#stx-pair? _tl3766738646_)
                               (let ((_e3777937993_ (gx#stx-e _tl3766738646_)))
                                 (let ((_tl3778137998_ (##cdr _e3777937993_))
                                       (_hd3778037996_ (##car _e3777937993_)))
                                   (___kont4161841619_)))
                               (___kont4161841619_))
                           (___kont4161841619_))))
               (if (gx#stx-eq? '%#quote _hd3766638644_)
                   (if (gx#stx-pair? _tl3766738646_)
                       (let ((_e3771938235_ (gx#stx-e _tl3766738646_)))
                         (let ((_tl3772138240_ (##cdr _e3771938235_))
                               (_hd3772038238_ (##car _e3771938235_)))
                           (if (gx#stx-null? _tl3772138240_)
                               (if (gx#stx-null? _tl3769138328_)
                                   (___kont4161041611_
                                    _hd3769038326_
                                    _hd3772038238_
                                    _hd3766038628_)
                                   (___kont4161841619_))
                               (___kont4161841619_))))
                       (___kont4161841619_))
                   (if (gx#stx-eq? '%#quote-syntax _hd3766638644_)
                       (if (gx#stx-pair? _tl3766738646_)
                           (let ((_e3777937993_ (gx#stx-e _tl3766738646_)))
                             (let ((_tl3778137998_ (##cdr _e3777937993_))
                                   (_hd3778037996_ (##car _e3777937993_)))
                               (___kont4161841619_)))
                           (___kont4161841619_))
                       (___kont4161841619_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-eq?
                                                    '%#quote
                                                    _hd3766638644_)
                                                   (if (gx#stx-pair?
                                                        _tl3766738646_)
                                                       (let ((_e3771938235_
                                                              (gx#stx-e
                                                               _tl3766738646_)))
                                                         (let ((_tl3772138240_
                                                                (##cdr _e3771938235_))
                                                               (_hd3772038238_
                                                                (##car _e3771938235_)))
                                                           (if (gx#stx-null?
                                                                _tl3772138240_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3769138328_)
                           (___kont4161041611_
                            _hd3769038326_
                            _hd3772038238_
                            _hd3766038628_)
                           (___kont4161841619_))
                       (___kont4161841619_))))
               (___kont4161841619_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-eq?
                                                        '%#quote-syntax
                                                        _hd3766638644_)
                                                       (if (gx#stx-pair?
                                                            _tl3766738646_)
                                                           (let ((_e3777937993_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3766738646_)))
                     (let ((_tl3778137998_ (##cdr _e3777937993_))
                           (_hd3778037996_ (##car _e3777937993_)))
                       (___kont4161841619_)))
                   (___kont4161841619_))
               (___kont4161841619_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (gx#stx-eq?
                                                '%#quote
                                                _hd3766638644_)
                                               (if (gx#stx-pair?
                                                    _tl3766738646_)
                                                   (let ((_e3771938235_
                                                          (gx#stx-e
                                                           _tl3766738646_)))
                                                     (let ((_tl3772138240_
                                                            (##cdr _e3771938235_))
                                                           (_hd3772038238_
                                                            (##car _e3771938235_)))
                                                       (if (gx#stx-null?
                                                            _tl3772138240_)
                                                           (if (gx#stx-null?
                                                                _tl3769138328_)
                                                               (___kont4161041611_
                                                                _hd3769038326_
                                                                _hd3772038238_
                                                                _hd3766038628_)
                                                               (___kont4161841619_))
                                                           (___kont4161841619_))))
                                                   (___kont4161841619_))
                                               (if (gx#stx-eq?
                                                    '%#quote-syntax
                                                    _hd3766638644_)
                                                   (if (gx#stx-pair?
                                                        _tl3766738646_)
                                                       (let ((_e3777937993_
                                                              (gx#stx-e
                                                               _tl3766738646_)))
                                                         (let ((_tl3778137998_
                                                                (##cdr _e3777937993_))
                                                               (_hd3778037996_
                                                                (##car _e3777937993_)))
                                                           (if (gx#stx-null?
                                                                _tl3778137998_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd3769338334_)
                           (if (gx#stx-pair? _tl3769438336_)
                               (let ((_e3778838017_ (gx#stx-e _tl3769438336_)))
                                 (let ((_tl3779038022_ (##cdr _e3778838017_))
                                       (_hd3778938020_ (##car _e3778838017_)))
                                   (if (gx#stx-null? _tl3779038022_)
                                       (if (gx#stx-null? _tl3769138328_)
                                           (___kont4161441615_
                                            _hd3778938020_
                                            _hd3778037996_
                                            _hd3766038628_)
                                           (___kont4161841619_))
                                       (___kont4161841619_))))
                               (___kont4161841619_))
                           (___kont4161841619_))
                       (___kont4161841619_))))
               (___kont4161841619_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4161841619_))))
                                       (if (gx#stx-eq? '%#quote _hd3766638644_)
                                           (if (gx#stx-pair? _tl3766738646_)
                                               (let ((_e3771938235_
                                                      (gx#stx-e
                                                       _tl3766738646_)))
                                                 (let ((_tl3772138240_
                                                        (##cdr _e3771938235_))
                                                       (_hd3772038238_
                                                        (##car _e3771938235_)))
                                                   (if (gx#stx-null?
                                                        _tl3772138240_)
                                                       (if (gx#stx-null?
                                                            _tl3769138328_)
                                                           (___kont4161041611_
                                                            _hd3769038326_
                                                            _hd3772038238_
                                                            _hd3766038628_)
                                                           (___kont4161841619_))
                                                       (___kont4161841619_))))
                                               (___kont4161841619_))
                                           (if (gx#stx-eq?
                                                '%#quote-syntax
                                                _hd3766638644_)
                                               (if (gx#stx-pair?
                                                    _tl3766738646_)
                                                   (let ((_e3777937993_
                                                          (gx#stx-e
                                                           _tl3766738646_)))
                                                     (let ((_tl3778137998_
                                                            (##cdr _e3777937993_))
                                                           (_hd3778037996_
                                                            (##car _e3777937993_)))
                                                       (___kont4161841619_)))
                                                   (___kont4161841619_))
                                               (___kont4161841619_))))))
                               (if (gx#stx-eq? '%#quote _hd3766638644_)
                                   (if (gx#stx-pair? _tl3766738646_)
                                       (let ((_e3771938235_
                                              (gx#stx-e _tl3766738646_)))
                                         (let ((_tl3772138240_
                                                (##cdr _e3771938235_))
                                               (_hd3772038238_
                                                (##car _e3771938235_)))
                                           (if (gx#stx-null? _tl3772138240_)
                                               (if (gx#stx-null?
                                                    _tl3769138328_)
                                                   (___kont4161041611_
                                                    _hd3769038326_
                                                    _hd3772038238_
                                                    _hd3766038628_)
                                                   (___kont4161841619_))
                                               (___kont4161841619_))))
                                       (___kont4161841619_))
                                   (if (gx#stx-eq?
                                        '%#quote-syntax
                                        _hd3766638644_)
                                       (if (gx#stx-pair? _tl3766738646_)
                                           (let ((_e3777937993_
                                                  (gx#stx-e _tl3766738646_)))
                                             (let ((_tl3778137998_
                                                    (##cdr _e3777937993_))
                                                   (_hd3778037996_
                                                    (##car _e3777937993_)))
                                               (___kont4161841619_)))
                                           (___kont4161841619_))
                                       (___kont4161841619_))))))
                       (if (gx#stx-eq? '%#quote _hd3766638644_)
                           (if (gx#stx-pair? _tl3766738646_)
                               (let ((_e3771938235_ (gx#stx-e _tl3766738646_)))
                                 (let ((_tl3772138240_ (##cdr _e3771938235_))
                                       (_hd3772038238_ (##car _e3771938235_)))
                                   (___kont4161841619_)))
                               (___kont4161841619_))
                           (if (gx#stx-eq? '%#quote-syntax _hd3766638644_)
                               (if (gx#stx-pair? _tl3766738646_)
                                   (let ((_e3777937993_
                                          (gx#stx-e _tl3766738646_)))
                                     (let ((_tl3778137998_
                                            (##cdr _e3777937993_))
                                           (_hd3778037996_
                                            (##car _e3777937993_)))
                                       (___kont4161841619_)))
                                   (___kont4161841619_))
                               (___kont4161841619_)))))
               (if (gx#stx-pair? _tl3766438638_)
                   (let ((_e3768938323_ (gx#stx-e _tl3766438638_)))
                     (let ((_tl3769138328_ (##cdr _e3768938323_))
                           (_hd3769038326_ (##car _e3768938323_)))
                       (if (gx#stx-pair? _hd3769038326_)
                           (let ((_e3769238331_ (gx#stx-e _hd3769038326_)))
                             (let ((_tl3769438336_ (##cdr _e3769238331_))
                                   (_hd3769338334_ (##car _e3769238331_)))
                               (if (gx#identifier? _hd3769338334_)
                                   (if (gx#stx-eq? '%#quote _hd3769338334_)
                                       (if (gx#stx-pair? _tl3769438336_)
                                           (let ((_e3769538339_
                                                  (gx#stx-e _tl3769438336_)))
                                             (let ((_tl3769738344_
                                                    (##cdr _e3769538339_))
                                                   (_hd3769638342_
                                                    (##car _e3769538339_)))
                                               (if (gx#stx-null?
                                                    _tl3769738344_)
                                                   (if (gx#stx-null?
                                                        _tl3769138328_)
                                                       (___kont4160841609_
                                                        _hd3769638342_
                                                        _hd3766338636_
                                                        _hd3766038628_)
                                                       (___kont4161841619_))
                                                   (___kont4161841619_))))
                                           (___kont4161841619_))
                                       (___kont4161841619_))
                                   (___kont4161841619_))))
                           (___kont4161841619_))))
                   (___kont4161841619_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-pair?
                                                    _tl3766438638_)
                                                   (let ((_e3768938323_
                                                          (gx#stx-e
                                                           _tl3766438638_)))
                                                     (let ((_tl3769138328_
                                                            (##cdr _e3768938323_))
                                                           (_hd3769038326_
                                                            (##car _e3768938323_)))
                                                       (if (gx#stx-pair?
                                                            _hd3769038326_)
                                                           (let ((_e3769238331_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd3769038326_)))
                     (let ((_tl3769438336_ (##cdr _e3769238331_))
                           (_hd3769338334_ (##car _e3769238331_)))
                       (if (gx#identifier? _hd3769338334_)
                           (if (gx#stx-eq? '%#quote _hd3769338334_)
                               (if (gx#stx-pair? _tl3769438336_)
                                   (let ((_e3769538339_
                                          (gx#stx-e _tl3769438336_)))
                                     (let ((_tl3769738344_
                                            (##cdr _e3769538339_))
                                           (_hd3769638342_
                                            (##car _e3769538339_)))
                                       (if (gx#stx-null? _tl3769738344_)
                                           (if (gx#stx-null? _tl3769138328_)
                                               (___kont4160841609_
                                                _hd3769638342_
                                                _hd3766338636_
                                                _hd3766038628_)
                                               (___kont4161841619_))
                                           (___kont4161841619_))))
                                   (___kont4161841619_))
                               (___kont4161841619_))
                           (___kont4161841619_))))
                   (___kont4161841619_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4161841619_)))))
                                       (___kont4161841619_))
                                   (___kont4161841619_))))
                           (___kont4161841619_))
                       (if (gx#stx-eq? '%#lambda _hd3765738620_)
                           (if (gx#stx-pair? _tl3765838622_)
                               (let ((_e3780337861_ (gx#stx-e _tl3765838622_)))
                                 (let ((_tl3780537866_ (##cdr _e3780337861_))
                                       (_hd3780437864_ (##car _e3780337861_)))
                                   (if (gx#stx-pair? _hd3780437864_)
                                       (let ((_e3780637869_
                                              (gx#stx-e _hd3780437864_)))
                                         (let ((_tl3780837874_
                                                (##cdr _e3780637869_))
                                               (_hd3780737872_
                                                (##car _e3780637869_)))
                                           (if (gx#stx-null? _tl3780837874_)
                                               (if (gx#stx-pair?
                                                    _tl3780537866_)
                                                   (let ((_e3780937877_
                                                          (gx#stx-e
                                                           _tl3780537866_)))
                                                     (let ((_tl3781137882_
                                                            (##cdr _e3780937877_))
                                                           (_hd3781037880_
                                                            (##car _e3780937877_)))
                                                       (if (gx#stx-null?
                                                            _tl3781137882_)
                                                           (if (gx#stx-pair?
                                                                _tl3765538614_)
                                                               (let ((_e3781237885_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl3765538614_)))
                         (let ((_tl3781437890_ (##cdr _e3781237885_))
                               (_hd3781337888_ (##car _e3781237885_)))
                           (if (gx#stx-pair? _hd3781337888_)
                               (let ((_e3781537893_ (gx#stx-e _hd3781337888_)))
                                 (let ((_tl3781737898_ (##cdr _e3781537893_))
                                       (_hd3781637896_ (##car _e3781537893_)))
                                   (if (gx#identifier? _hd3781637896_)
                                       (if (gx#stx-eq? '%#ref _hd3781637896_)
                                           (if (gx#stx-pair? _tl3781737898_)
                                               (let ((_e3781837901_
                                                      (gx#stx-e
                                                       _tl3781737898_)))
                                                 (let ((_tl3782037906_
                                                        (##cdr _e3781837901_))
                                                       (_hd3781937904_
                                                        (##car _e3781837901_)))
                                                   (if (gx#stx-null?
                                                        _tl3782037906_)
                                                       (if (gx#stx-null?
                                                            _tl3781437890_)
                                                           (___kont4161641617_
                                                            _hd3781937904_
                                                            _hd3781037880_
                                                            _hd3780737872_)
                                                           (___kont4161841619_))
                                                       (___kont4161841619_))))
                                               (___kont4161841619_))
                                           (___kont4161841619_))
                                       (___kont4161841619_))))
                               (___kont4161841619_))))
                       (___kont4161841619_))
                   (___kont4161841619_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4161841619_))
                                               (___kont4161841619_))))
                                       (___kont4161841619_))))
                               (___kont4161841619_))
                           (___kont4161841619_)))
                   (___kont4161841619_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4161841619_))))
                                           (___kont4161841619_))
                                       (___kont4161841619_))
                                   (___kont4161841619_))))
                           (___kont4161841619_))))))
                (_countf-symbol33688_
                 (lambda (_id37628_)
                   (let ((_$e37630_ (gxc#identifier-symbol _id37628_)))
                     (if (or (eq? '##vector-length _$e37630_)
                             (eq? 'vector-length _$e37630_))
                         'vector-length
                         (if (eq? 'values-count _$e37630_)
                             'values-count
                             '#f)))))
                (_eqf-symbol33689_
                 (lambda (_sym37614_)
                   (let ((_$e37616_ _sym37614_))
                     (if (or (eq? '##eq? _$e37616_) (eq? 'eq? _$e37616_))
                         'eq?
                         (if (or (eq? '##eqv? _$e37616_) (eq? 'eqv? _$e37616_))
                             'eqv?
                             (if (or (eq? '##equal? _$e37616_)
                                     (eq? 'equal? _$e37616_))
                                 'equal?
                                 (if (eq? 'gx#free-identifier=? _$e37616_)
                                     'free-identifier=?
                                     (if (eq? 'gx#stx-eq? _$e37616_)
                                         'stx-eq?
                                         '#f))))))))
                (_eqf-symbol?33690_
                 (lambda (_sym37597_)
                   (let ((_$e37599_ _sym37597_))
                     (if (or (eq? 'eq? _$e37599_)
                             (eq? 'eqv? _$e37599_)
                             (eq? 'equal? _$e37599_)
                             (eq? 'free-identifier=? _$e37599_)
                             (eq? 'stx-eq? _$e37599_))
                         '#t
                         '#f))))
                (_do-assert!33691_
                 (lambda (_assert37588_ _type37589_ _K37590_)
                   (let ((_unwind-assert37592_ _env-assert33681_)
                         (_unwind-type37593_ _env-type33682_))
                     (set! _env-assert33681_ _assert37588_)
                     (set! _env-type33682_ _type37589_)
                     (let ((_val37595_ (_K37590_)))
                       (set! _env-assert33681_ _unwind-assert37592_)
                       (set! _env-type33682_ _unwind-type37593_)
                       _val37595_))))
                (_do-bind33692_
                 (lambda (_bind37585_ _K37586_)
                   (if (pair? _bind37585_)
                       (_do-bind!33694_
                        (_fold-bind-env33693_ _bind37585_ _env-bind33683_)
                        _K37586_)
                       (_K37586_))))
                (_fold-bind-env33693_
                 (lambda (_bind37514_ _env37515_)
                   (let _lp37517_ ((_rest37519_ _bind37514_)
                                   (_env37520_ _env37515_))
                     (let* ((_rest3752137529_ _rest37519_)
                            (_else3752337537_ (lambda () _env37520_))
                            (_K3752537573_
                             (lambda (_rest37540_ _bind37541_)
                               (let* ((_bind3754237549_ _bind37541_)
                                      (_E3754437553_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _bind3754237549_)))
                                      (_K3754537561_
                                       (lambda (_expr37556_ _id37557_)
                                         (let ((_sexpr37559_
                                                (gxc#apply-generate-runtime-repr
                                                 _expr37556_)))
                                           (_lp37517_
                                            _rest37540_
                                            (cons (cons _sexpr37559_ _id37557_)
                                                  _env37520_))))))
                                 (if (##pair? _bind3754237549_)
                                     (let ((_hd3754637564_
                                            (##car _bind3754237549_))
                                           (_tl3754737566_
                                            (##cdr _bind3754237549_)))
                                       (let* ((_id37569_ _hd3754637564_)
                                              (_expr37571_ _tl3754737566_))
                                         (_K3754537561_
                                          _expr37571_
                                          _id37569_)))
                                     (_E3754437553_))))))
                       (if (##pair? _rest3752137529_)
                           (let ((_hd3752637576_ (##car _rest3752137529_))
                                 (_tl3752737578_ (##cdr _rest3752137529_)))
                             (let* ((_bind37581_ _hd3752637576_)
                                    (_rest37583_ _tl3752737578_))
                               (_K3752537573_ _rest37583_ _bind37581_)))
                           (_else3752337537_))))))
                (_do-bind!33694_
                 (lambda (_env37507_ _K37508_)
                   (let ((_unwind37510_ _env-bind33683_))
                     (set! _env-bind33683_ _env37507_)
                     (let ((_val37512_ (_K37508_)))
                       (set! _env-bind33683_ _unwind37510_)
                       _val37512_))))
                (_do-splice!33695_
                 (lambda (_K37501_)
                   (let ((_unwind37503_ _in-splice?33684_))
                     (set! _in-splice?33684_ '#t)
                     (let ((_val37505_ (_K37501_)))
                       (set! _in-splice?33684_ _unwind37503_)
                       _val37505_))))
                (_optimize-e33696_
                 (lambda (_expr36698_)
                   (let* ((___stx4205642057_ _expr36698_)
                          (_g3670536878_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              ___stx4205642057_))))
                     (let ((___kont4205842059_
                            (lambda (_L37473_ _L37474_ _L37475_)
                              (let ((_$e37492_ (_assert-e33699_ _L37475_)))
                                (if (eq? '#t _$e37492_)
                                    (_optimize-e33696_ _L37474_)
                                    (if (eq? '#f _$e37492_)
                                        (_optimize-e33696_ _L37473_)
                                        (let ((_K37495_
                                               (_optimize-t__0__4101941020_
                                                _L37474_
                                                _L37475_))
                                              (_E37496_
                                               (_optimize-f__4102141022_
                                                _L37473_
                                                _L37475_)))
                                          (if (equal? (gxc#apply-generate-runtime-repr
                                                       _K37495_)
                                                      (gxc#apply-generate-runtime-repr
                                                       _E37496_))
                                              _K37495_
                                              (cons '%#if
                                                    (cons _L37475_
                                                          (cons _K37495_
                                                                (cons _E37496_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (___kont4206042061_
                            (lambda (_L37403_ _L37404_)
                              (let ((_$e37424_ (_lookup-block33704_ _L37404_)))
                                (if _$e37424_
                                    ((lambda (_block37427_)
                                       (if (_nonlinear-block?33706_
                                            _block37427_)
                                           _expr36698_
                                           (_optimize-e33696_
                                            (_inline-block33705_
                                             _block37427_
                                             (foldr1 (lambda (_g3742837431_
                                                              _g3742937433_)
                                                       (cons _g3742837431_
                                                             _g3742937433_))
                                                     '()
                                                     _L37403_)))))
                                     _$e37424_)
                                    _expr36698_))))
                           (___kont4206442065_
                            (lambda (_L37293_ _L37294_ _L37295_)
                              (let ((_body37314_ (_optimize-e33696_ _L37293_)))
                                (cons '%#let-values
                                      (cons (begin
                                              (gx#syntax-check-splice-targets
                                               _L37294_
                                               _L37295_)
                                              (foldr2 (lambda (_g3731537319_
                                                               _g3731637321_
                                                               _g3731737323_)
                                                        (cons (cons (cons _g3731637321_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                        (cons _g3731537319_ '()))
                                  '()))
                      _g3731737323_))
              '()
              _L37294_
              _L37295_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _body37314_ '()))))))
                           (___kont4206842069_
                            (lambda (_L37161_ _L37162_ _L37163_)
                              (_bind-e__0__4102741028_
                               (map cons
                                    (foldr1 (lambda (_g3718137184_
                                                     _g3718237186_)
                                              (cons _g3718137184_
                                                    _g3718237186_))
                                            '()
                                            _L37163_)
                                    (foldr1 (lambda (_g3718837191_
                                                     _g3718937193_)
                                              (cons _g3718837191_
                                                    _g3718937193_))
                                            '()
                                            _L37162_))
                               _L37161_)))
                           (___kont4207242073_
                            (lambda (_L37018_
                                     _L37019_
                                     _L37020_
                                     _L37021_
                                     _L37022_)
                              (_do-splice!33695_
                               (lambda ()
                                 (let ((_expr37064_
                                        (_optimize-e33696_ _L37020_)))
                                   (cons '%#letrec-values
                                         (cons (cons (cons (cons _L37022_ '())
                                                           (cons (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (foldr1 (lambda (_g3706537068_
                                                      _g3706637070_)
                                               (cons _g3706537068_
                                                     _g3706637070_))
                                             '()
                                             _L37021_)
                                     (cons _expr37064_ '())))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (foldr1 (lambda (_g3707237075_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g3707337077_)
                       (cons _g3707237075_ _g3707337077_))
                     '()
                     _L37019_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _L37018_ '()))))))))
                           (___kont4207842079_ (lambda () _expr36698_)))
                       (let* ((___match4226542266_
                               (lambda (_e3682636890_
                                        _hd3682736893_
                                        _tl3682836895_
                                        _e3682936898_
                                        _hd3683036901_
                                        _tl3683136903_
                                        _e3683236906_
                                        _hd3683336909_
                                        _tl3683436911_
                                        _e3683536914_
                                        _hd3683636917_
                                        _tl3683736919_
                                        _e3683836922_
                                        _hd3683936925_
                                        _tl3684036927_
                                        _e3684136930_
                                        _hd3684236933_
                                        _tl3684336935_
                                        _e3684436938_
                                        _hd3684536941_
                                        _tl3684636943_
                                        _e3684736946_
                                        _hd3684836949_
                                        _tl3684936951_
                                        ___splice4207442075_
                                        _target3685036954_
                                        _tl3685236956_)
                                 (letrec ((_loop3685336959_
                                           (lambda (_hd3685136962_
                                                    _id3685736964_)
                                             (if (gx#stx-pair? _hd3685136962_)
                                                 (let ((_e3685436967_
                                                        (gx#stx-e
                                                         _hd3685136962_)))
                                                   (let ((_lp-tl3685636972_
                                                          (##cdr _e3685436967_))
                                                         (_lp-hd3685536970_
                                                          (##car _e3685436967_)))
                                                     (_loop3685336959_
                                                      _lp-tl3685636972_
                                                      (cons _lp-hd3685536970_
                                                            _id3685736964_))))
                                                 (let ((_id3685836975_
                                                        (reverse _id3685736964_)))
                                                   (if (gx#stx-pair?
                                                        _tl3684936951_)
                                                       (let ((_e3685936978_
                                                              (gx#stx-e
                                                               _tl3684936951_)))
                                                         (let ((_tl3686136983_
                                                                (##cdr _e3685936978_))
                                                               (_hd3686036981_
                                                                (##car _e3685936978_)))
                                                           (if (gx#stx-null?
                                                                _tl3686136983_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3684336935_)
                           (if (gx#stx-pair/null? _tl3683436911_)
                               (let ((___splice4207642077_
                                      (gx#syntax-split-splice
                                       _tl3683436911_
                                       '0)))
                                 (let ((_tl3686436988_
                                        (##vector-ref ___splice4207642077_ '1))
                                       (_target3686236986_
                                        (##vector-ref
                                         ___splice4207642077_
                                         '0)))
                                   (if (gx#stx-null? _tl3686436988_)
                                       (letrec ((_loop3686536991_
                                                 (lambda (_hd3686336994_
                                                          _bind3686936996_)
                                                   (if (gx#stx-pair?
                                                        _hd3686336994_)
                                                       (let ((_e3686636999_
                                                              (gx#stx-e
                                                               _hd3686336994_)))
                                                         (let ((_lp-tl3686837004_
                                                                (##cdr _e3686636999_))
                                                               (_lp-hd3686737002_
                                                                (##car _e3686636999_)))
                                                           (_loop3686536991_
                                                            _lp-tl3686837004_
                                                            (cons _lp-hd3686737002_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _bind3686936996_))))
               (let ((_bind3687037007_ (reverse _bind3686936996_)))
                 (if (gx#stx-pair? _tl3683136903_)
                     (let ((_e3687137010_ (gx#stx-e _tl3683136903_)))
                       (let ((_tl3687337015_ (##cdr _e3687137010_))
                             (_hd3687237013_ (##car _e3687137010_)))
                         (if (gx#stx-null? _tl3687337015_)
                             (___kont4207242073_
                              _hd3687237013_
                              _bind3687037007_
                              _hd3686036981_
                              _id3685836975_
                              _hd3683936925_)
                             (___kont4207842079_))))
                     (___kont4207842079_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop3686536991_
                                          _target3686236986_
                                          '()))
                                       (___kont4207842079_))))
                               (___kont4207842079_))
                           (___kont4207842079_))
                       (___kont4207842079_))))
               (___kont4207842079_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_loop3685336959_ _target3685036954_ '()))))
                              (___match4219942200_
                               (lambda (_e3679237085_
                                        _hd3679337088_
                                        _tl3679437090_
                                        _e3679537093_
                                        _hd3679637096_
                                        _tl3679737098_
                                        ___splice4207042071_
                                        _target3679837101_
                                        _tl3680037103_)
                                 (letrec ((_loop3680137106_
                                           (lambda (_hd3679937109_
                                                    _expr3680537111_
                                                    _id3680637113_)
                                             (if (gx#stx-pair? _hd3679937109_)
                                                 (let ((_e3680237116_
                                                        (gx#stx-e
                                                         _hd3679937109_)))
                                                   (let ((_lp-tl3680437121_
                                                          (##cdr _e3680237116_))
                                                         (_lp-hd3680337119_
                                                          (##car _e3680237116_)))
                                                     (if (gx#stx-pair?
                                                          _lp-hd3680337119_)
                                                         (let ((_e3680937124_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _lp-hd3680337119_)))
                   (let ((_tl3681137129_ (##cdr _e3680937124_))
                         (_hd3681037127_ (##car _e3680937124_)))
                     (if (gx#stx-pair? _hd3681037127_)
                         (let ((_e3681237132_ (gx#stx-e _hd3681037127_)))
                           (let ((_tl3681437137_ (##cdr _e3681237132_))
                                 (_hd3681337135_ (##car _e3681237132_)))
                             (if (gx#stx-null? _tl3681437137_)
                                 (if (gx#stx-pair? _tl3681137129_)
                                     (let ((_e3681537140_
                                            (gx#stx-e _tl3681137129_)))
                                       (let ((_tl3681737145_
                                              (##cdr _e3681537140_))
                                             (_hd3681637143_
                                              (##car _e3681537140_)))
                                         (if (gx#stx-null? _tl3681737145_)
                                             (_loop3680137106_
                                              _lp-tl3680437121_
                                              (cons _hd3681637143_
                                                    _expr3680537111_)
                                              (cons _hd3681337135_
                                                    _id3680637113_))
                                             (___kont4207842079_))))
                                     (___kont4207842079_))
                                 (___kont4207842079_))))
                         (___kont4207842079_))))
                 (___kont4207842079_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_id3680837150_
                                                        (reverse _id3680637113_))
                                                       (_expr3680737148_
                                                        (reverse _expr3680537111_)))
                                                   (if (gx#stx-pair?
                                                        _tl3679737098_)
                                                       (let ((_e3681837153_
                                                              (gx#stx-e
                                                               _tl3679737098_)))
                                                         (let ((_tl3682037158_
                                                                (##cdr _e3681837153_))
                                                               (_hd3681937156_
                                                                (##car _e3681837153_)))
                                                           (if (gx#stx-null?
                                                                _tl3682037158_)
                                                               (___kont4206842069_
                                                                _hd3681937156_
                                                                _expr3680737148_
                                                                _id3680837150_)
                                                               (___kont4207842079_))))
                                                       (___kont4207842079_)))))))
                                   (_loop3680137106_
                                    _target3679837101_
                                    '()
                                    '()))))
                              (___match4217542176_
                               (lambda (_e3675437201_
                                        _hd3675537204_
                                        _tl3675637206_
                                        _e3675737209_
                                        _hd3675837212_
                                        _tl3675937214_
                                        ___splice4206642067_
                                        _target3676037217_
                                        _tl3676237219_)
                                 (letrec ((_loop3676337222_
                                           (lambda (_hd3676137225_
                                                    _xid3676737227_
                                                    _id3676837229_)
                                             (if (gx#stx-pair? _hd3676137225_)
                                                 (let ((_e3676437232_
                                                        (gx#stx-e
                                                         _hd3676137225_)))
                                                   (let ((_lp-tl3676637237_
                                                          (##cdr _e3676437232_))
                                                         (_lp-hd3676537235_
                                                          (##car _e3676437232_)))
                                                     (if (gx#stx-pair?
                                                          _lp-hd3676537235_)
                                                         (let ((_e3677137240_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _lp-hd3676537235_)))
                   (let ((_tl3677337245_ (##cdr _e3677137240_))
                         (_hd3677237243_ (##car _e3677137240_)))
                     (if (gx#stx-pair? _hd3677237243_)
                         (let ((_e3677437248_ (gx#stx-e _hd3677237243_)))
                           (let ((_tl3677637253_ (##cdr _e3677437248_))
                                 (_hd3677537251_ (##car _e3677437248_)))
                             (if (gx#stx-null? _tl3677637253_)
                                 (if (gx#stx-pair? _tl3677337245_)
                                     (let ((_e3677737256_
                                            (gx#stx-e _tl3677337245_)))
                                       (let ((_tl3677937261_
                                              (##cdr _e3677737256_))
                                             (_hd3677837259_
                                              (##car _e3677737256_)))
                                         (if (gx#stx-pair? _hd3677837259_)
                                             (let ((_e3678037264_
                                                    (gx#stx-e _hd3677837259_)))
                                               (let ((_tl3678237269_
                                                      (##cdr _e3678037264_))
                                                     (_hd3678137267_
                                                      (##car _e3678037264_)))
                                                 (if (gx#identifier?
                                                      _hd3678137267_)
                                                     (if (gx#stx-eq?
                                                          '%#ref
                                                          _hd3678137267_)
                                                         (if (gx#stx-pair?
                                                              _tl3678237269_)
                                                             (let ((_e3678337272_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl3678237269_)))
                       (let ((_tl3678537277_ (##cdr _e3678337272_))
                             (_hd3678437275_ (##car _e3678337272_)))
                         (if (gx#stx-null? _tl3678537277_)
                             (if (gx#stx-null? _tl3677937261_)
                                 (_loop3676337222_
                                  _lp-tl3676637237_
                                  (cons _hd3678437275_ _xid3676737227_)
                                  (cons _hd3677537251_ _id3676837229_))
                                 (___match4219942200_
                                  _e3675437201_
                                  _hd3675537204_
                                  _tl3675637206_
                                  _e3675737209_
                                  _hd3675837212_
                                  _tl3675937214_
                                  ___splice4206642067_
                                  _target3676037217_
                                  _tl3676237219_))
                             (___match4219942200_
                              _e3675437201_
                              _hd3675537204_
                              _tl3675637206_
                              _e3675737209_
                              _hd3675837212_
                              _tl3675937214_
                              ___splice4206642067_
                              _target3676037217_
                              _tl3676237219_))))
                     (___match4219942200_
                      _e3675437201_
                      _hd3675537204_
                      _tl3675637206_
                      _e3675737209_
                      _hd3675837212_
                      _tl3675937214_
                      ___splice4206642067_
                      _target3676037217_
                      _tl3676237219_))
                 (___match4219942200_
                  _e3675437201_
                  _hd3675537204_
                  _tl3675637206_
                  _e3675737209_
                  _hd3675837212_
                  _tl3675937214_
                  ___splice4206642067_
                  _target3676037217_
                  _tl3676237219_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___match4219942200_
                                                      _e3675437201_
                                                      _hd3675537204_
                                                      _tl3675637206_
                                                      _e3675737209_
                                                      _hd3675837212_
                                                      _tl3675937214_
                                                      ___splice4206642067_
                                                      _target3676037217_
                                                      _tl3676237219_))))
                                             (___match4219942200_
                                              _e3675437201_
                                              _hd3675537204_
                                              _tl3675637206_
                                              _e3675737209_
                                              _hd3675837212_
                                              _tl3675937214_
                                              ___splice4206642067_
                                              _target3676037217_
                                              _tl3676237219_))))
                                     (___match4219942200_
                                      _e3675437201_
                                      _hd3675537204_
                                      _tl3675637206_
                                      _e3675737209_
                                      _hd3675837212_
                                      _tl3675937214_
                                      ___splice4206642067_
                                      _target3676037217_
                                      _tl3676237219_))
                                 (___match4219942200_
                                  _e3675437201_
                                  _hd3675537204_
                                  _tl3675637206_
                                  _e3675737209_
                                  _hd3675837212_
                                  _tl3675937214_
                                  ___splice4206642067_
                                  _target3676037217_
                                  _tl3676237219_))))
                         (___match4219942200_
                          _e3675437201_
                          _hd3675537204_
                          _tl3675637206_
                          _e3675737209_
                          _hd3675837212_
                          _tl3675937214_
                          ___splice4206642067_
                          _target3676037217_
                          _tl3676237219_))))
                 (___match4219942200_
                  _e3675437201_
                  _hd3675537204_
                  _tl3675637206_
                  _e3675737209_
                  _hd3675837212_
                  _tl3675937214_
                  ___splice4206642067_
                  _target3676037217_
                  _tl3676237219_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_id3677037282_
                                                        (reverse _id3676837229_))
                                                       (_xid3676937280_
                                                        (reverse _xid3676737227_)))
                                                   (if (gx#stx-pair?
                                                        _tl3675937214_)
                                                       (let ((_e3678637285_
                                                              (gx#stx-e
                                                               _tl3675937214_)))
                                                         (let ((_tl3678837290_
                                                                (##cdr _e3678637285_))
                                                               (_hd3678737288_
                                                                (##car _e3678637285_)))
                                                           (if (gx#stx-null?
                                                                _tl3678837290_)
                                                               (___kont4206442065_
                                                                _hd3678737288_
                                                                _xid3676937280_
                                                                _id3677037282_)
                                                               (___match4219942200_
                                                                _e3675437201_
                                                                _hd3675537204_
                                                                _tl3675637206_
                                                                _e3675737209_
                                                                _hd3675837212_
                                                                _tl3675937214_
                                                                ___splice4206642067_
                                                                _target3676037217_
                                                                _tl3676237219_))))
                                                       (___match4219942200_
                                                        _e3675437201_
                                                        _hd3675537204_
                                                        _tl3675637206_
                                                        _e3675737209_
                                                        _hd3675837212_
                                                        _tl3675937214_
                                                        ___splice4206642067_
                                                        _target3676037217_
                                                        _tl3676237219_)))))))
                                   (_loop3676337222_
                                    _target3676037217_
                                    '()
                                    '()))))
                              (___match4215142152_
                               (lambda (_e3672437331_
                                        _hd3672537334_
                                        _tl3672637336_
                                        _e3672737339_
                                        _hd3672837342_
                                        _tl3672937344_
                                        _e3673037347_
                                        _hd3673137350_
                                        _tl3673237352_
                                        _e3673337355_
                                        _hd3673437358_
                                        _tl3673537360_
                                        ___splice4206242063_
                                        _target3673637363_
                                        _tl3673837365_)
                                 (letrec ((_loop3673937368_
                                           (lambda (_hd3673737371_
                                                    _id3674337373_)
                                             (if (gx#stx-pair? _hd3673737371_)
                                                 (let ((_e3674037376_
                                                        (gx#stx-e
                                                         _hd3673737371_)))
                                                   (let ((_lp-tl3674237381_
                                                          (##cdr _e3674037376_))
                                                         (_lp-hd3674137379_
                                                          (##car _e3674037376_)))
                                                     (if (gx#stx-pair?
                                                          _lp-hd3674137379_)
                                                         (let ((_e3674537384_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _lp-hd3674137379_)))
                   (let ((_tl3674737389_ (##cdr _e3674537384_))
                         (_hd3674637387_ (##car _e3674537384_)))
                     (if (gx#identifier? _hd3674637387_)
                         (if (gx#stx-eq? '%#ref _hd3674637387_)
                             (if (gx#stx-pair? _tl3674737389_)
                                 (let ((_e3674837392_
                                        (gx#stx-e _tl3674737389_)))
                                   (let ((_tl3675037397_ (##cdr _e3674837392_))
                                         (_hd3674937395_
                                          (##car _e3674837392_)))
                                     (if (gx#stx-null? _tl3675037397_)
                                         (_loop3673937368_
                                          _lp-tl3674237381_
                                          (cons _hd3674937395_ _id3674337373_))
                                         (___kont4207842079_))))
                                 (___kont4207842079_))
                             (___kont4207842079_))
                         (___kont4207842079_))))
                 (___kont4207842079_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_id3674437400_
                                                        (reverse _id3674337373_)))
                                                   (___kont4206042061_
                                                    _id3674437400_
                                                    _hd3673437358_))))))
                                   (_loop3673937368_
                                    _target3673637363_
                                    '())))))
                         (if (gx#stx-pair? ___stx4205642057_)
                             (let ((_e3671037441_
                                    (gx#stx-e ___stx4205642057_)))
                               (let ((_tl3671237446_ (##cdr _e3671037441_))
                                     (_hd3671137444_ (##car _e3671037441_)))
                                 (if (gx#identifier? _hd3671137444_)
                                     (if (gx#stx-eq? '%#if _hd3671137444_)
                                         (if (gx#stx-pair? _tl3671237446_)
                                             (let ((_e3671337449_
                                                    (gx#stx-e _tl3671237446_)))
                                               (let ((_tl3671537454_
                                                      (##cdr _e3671337449_))
                                                     (_hd3671437452_
                                                      (##car _e3671337449_)))
                                                 (if (gx#stx-pair?
                                                      _tl3671537454_)
                                                     (let ((_e3671637457_
                                                            (gx#stx-e
                                                             _tl3671537454_)))
                                                       (let ((_tl3671837462_
                                                              (##cdr _e3671637457_))
                                                             (_hd3671737460_
                                                              (##car _e3671637457_)))
                                                         (if (gx#stx-pair?
                                                              _tl3671837462_)
                                                             (let ((_e3671937465_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl3671837462_)))
                       (let ((_tl3672137470_ (##cdr _e3671937465_))
                             (_hd3672037468_ (##car _e3671937465_)))
                         (if (gx#stx-null? _tl3672137470_)
                             (___kont4205842059_
                              _hd3672037468_
                              _hd3671737460_
                              _hd3671437452_)
                             (___kont4207842079_))))
                     (___kont4207842079_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4207842079_))))
                                             (___kont4207842079_))
                                         (if (gx#stx-eq?
                                              '%#call
                                              _hd3671137444_)
                                             (if (gx#stx-pair? _tl3671237446_)
                                                 (let ((_e3672737339_
                                                        (gx#stx-e
                                                         _tl3671237446_)))
                                                   (let ((_tl3672937344_
                                                          (##cdr _e3672737339_))
                                                         (_hd3672837342_
                                                          (##car _e3672737339_)))
                                                     (if (gx#stx-pair?
                                                          _hd3672837342_)
                                                         (let ((_e3673037347_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd3672837342_)))
                   (let ((_tl3673237352_ (##cdr _e3673037347_))
                         (_hd3673137350_ (##car _e3673037347_)))
                     (if (gx#identifier? _hd3673137350_)
                         (if (gx#stx-eq? '%#ref _hd3673137350_)
                             (if (gx#stx-pair? _tl3673237352_)
                                 (let ((_e3673337355_
                                        (gx#stx-e _tl3673237352_)))
                                   (let ((_tl3673537360_ (##cdr _e3673337355_))
                                         (_hd3673437358_
                                          (##car _e3673337355_)))
                                     (if (gx#stx-null? _tl3673537360_)
                                         (if (gx#stx-pair/null? _tl3672937344_)
                                             (let ((___splice4206242063_
                                                    (gx#syntax-split-splice
                                                     _tl3672937344_
                                                     '0)))
                                               (let ((_tl3673837365_
                                                      (##vector-ref
                                                       ___splice4206242063_
                                                       '1))
                                                     (_target3673637363_
                                                      (##vector-ref
                                                       ___splice4206242063_
                                                       '0)))
                                                 (if (gx#stx-null?
                                                      _tl3673837365_)
                                                     (___match4215142152_
                                                      _e3671037441_
                                                      _hd3671137444_
                                                      _tl3671237446_
                                                      _e3672737339_
                                                      _hd3672837342_
                                                      _tl3672937344_
                                                      _e3673037347_
                                                      _hd3673137350_
                                                      _tl3673237352_
                                                      _e3673337355_
                                                      _hd3673437358_
                                                      _tl3673537360_
                                                      ___splice4206242063_
                                                      _target3673637363_
                                                      _tl3673837365_)
                                                     (___kont4207842079_))))
                                             (___kont4207842079_))
                                         (___kont4207842079_))))
                                 (___kont4207842079_))
                             (___kont4207842079_))
                         (___kont4207842079_))))
                 (___kont4207842079_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont4207842079_))
                                             (if (gx#stx-eq?
                                                  '%#let-values
                                                  _hd3671137444_)
                                                 (if (gx#stx-pair?
                                                      _tl3671237446_)
                                                     (let ((_e3675737209_
                                                            (gx#stx-e
                                                             _tl3671237446_)))
                                                       (let ((_tl3675937214_
                                                              (##cdr _e3675737209_))
                                                             (_hd3675837212_
                                                              (##car _e3675737209_)))
                                                         (if (gx#stx-pair/null?
                                                              _hd3675837212_)
                                                             (let ((___splice4206642067_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _hd3675837212_ '0)))
                       (let ((_tl3676237219_
                              (##vector-ref ___splice4206642067_ '1))
                             (_target3676037217_
                              (##vector-ref ___splice4206642067_ '0)))
                         (if (gx#stx-null? _tl3676237219_)
                             (___match4217542176_
                              _e3671037441_
                              _hd3671137444_
                              _tl3671237446_
                              _e3675737209_
                              _hd3675837212_
                              _tl3675937214_
                              ___splice4206642067_
                              _target3676037217_
                              _tl3676237219_)
                             (___kont4207842079_))))
                     (___kont4207842079_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4207842079_))
                                                 (if (gx#stx-eq?
                                                      '%#letrec-values
                                                      _hd3671137444_)
                                                     (if (gx#stx-pair?
                                                          _tl3671237446_)
                                                         (let ((_e3682936898_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3671237446_)))
                   (let ((_tl3683136903_ (##cdr _e3682936898_))
                         (_hd3683036901_ (##car _e3682936898_)))
                     (if (gx#stx-pair? _hd3683036901_)
                         (let ((_e3683236906_ (gx#stx-e _hd3683036901_)))
                           (let ((_tl3683436911_ (##cdr _e3683236906_))
                                 (_hd3683336909_ (##car _e3683236906_)))
                             (if (gx#stx-pair? _hd3683336909_)
                                 (let ((_e3683536914_
                                        (gx#stx-e _hd3683336909_)))
                                   (let ((_tl3683736919_ (##cdr _e3683536914_))
                                         (_hd3683636917_
                                          (##car _e3683536914_)))
                                     (if (gx#stx-pair? _hd3683636917_)
                                         (let ((_e3683836922_
                                                (gx#stx-e _hd3683636917_)))
                                           (let ((_tl3684036927_
                                                  (##cdr _e3683836922_))
                                                 (_hd3683936925_
                                                  (##car _e3683836922_)))
                                             (if (gx#stx-null? _tl3684036927_)
                                                 (if (gx#stx-pair?
                                                      _tl3683736919_)
                                                     (let ((_e3684136930_
                                                            (gx#stx-e
                                                             _tl3683736919_)))
                                                       (let ((_tl3684336935_
                                                              (##cdr _e3684136930_))
                                                             (_hd3684236933_
                                                              (##car _e3684136930_)))
                                                         (if (gx#stx-pair?
                                                              _hd3684236933_)
                                                             (let ((_e3684436938_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd3684236933_)))
                       (let ((_tl3684636943_ (##cdr _e3684436938_))
                             (_hd3684536941_ (##car _e3684436938_)))
                         (if (gx#identifier? _hd3684536941_)
                             (if (gx#stx-eq? '%#lambda _hd3684536941_)
                                 (if (gx#stx-pair? _tl3684636943_)
                                     (let ((_e3684736946_
                                            (gx#stx-e _tl3684636943_)))
                                       (let ((_tl3684936951_
                                              (##cdr _e3684736946_))
                                             (_hd3684836949_
                                              (##car _e3684736946_)))
                                         (if (gx#stx-pair/null? _hd3684836949_)
                                             (let ((___splice4207442075_
                                                    (gx#syntax-split-splice
                                                     _hd3684836949_
                                                     '0)))
                                               (let ((_tl3685236956_
                                                      (##vector-ref
                                                       ___splice4207442075_
                                                       '1))
                                                     (_target3685036954_
                                                      (##vector-ref
                                                       ___splice4207442075_
                                                       '0)))
                                                 (if (gx#stx-null?
                                                      _tl3685236956_)
                                                     (___match4226542266_
                                                      _e3671037441_
                                                      _hd3671137444_
                                                      _tl3671237446_
                                                      _e3682936898_
                                                      _hd3683036901_
                                                      _tl3683136903_
                                                      _e3683236906_
                                                      _hd3683336909_
                                                      _tl3683436911_
                                                      _e3683536914_
                                                      _hd3683636917_
                                                      _tl3683736919_
                                                      _e3683836922_
                                                      _hd3683936925_
                                                      _tl3684036927_
                                                      _e3684136930_
                                                      _hd3684236933_
                                                      _tl3684336935_
                                                      _e3684436938_
                                                      _hd3684536941_
                                                      _tl3684636943_
                                                      _e3684736946_
                                                      _hd3684836949_
                                                      _tl3684936951_
                                                      ___splice4207442075_
                                                      _target3685036954_
                                                      _tl3685236956_)
                                                     (___kont4207842079_))))
                                             (___kont4207842079_))))
                                     (___kont4207842079_))
                                 (___kont4207842079_))
                             (___kont4207842079_))))
                     (___kont4207842079_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4207842079_))
                                                 (___kont4207842079_))))
                                         (___kont4207842079_))))
                                 (___kont4207842079_))))
                         (___kont4207842079_))))
                 (___kont4207842079_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4207842079_)))))
                                     (___kont4207842079_))))
                             (___kont4207842079_)))))))
                (_optimize-t__4101741018_
                 (lambda (_expr36681_ _test36682_ _continue36683_)
                   (_do-assert33685_
                    (cons (cons _test36682_ '#t) '())
                    (lambda () (_continue36683_ _expr36681_)))))
                (_optimize-t__0__4101941020_
                 (lambda (_expr36689_ _test36690_)
                   (let ((_continue36692_ _optimize-e33696_))
                     (_optimize-t__4101741018_
                      _expr36689_
                      _test36690_
                      _continue36692_))))
                (_optimize-t33697_
                 (lambda _g44120_
                   (let ((_g44119_ (length _g44120_)))
                     (cond ((##fx= _g44119_ 2)
                            (apply _optimize-t__0__4101941020_ _g44120_))
                           ((##fx= _g44119_ 3)
                            (apply _optimize-t__4101741018_ _g44120_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g44120_))))))
                (_optimize-f__4102141022_
                 (lambda (_expr35766_ _test35767_)
                   (_do-assert33685_
                    (if _test35767_ (cons (cons _test35767_ '#f) '()) '())
                    (lambda ()
                      (let* ((___stx4230642307_ _expr35766_)
                             (_g3577535948_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx4230642307_))))
                        (let ((___kont4230842309_
                               (lambda (_L36536_ _L36537_)
                                 (let ((_$e36557_
                                        (_lookup-block33704_ _L36537_)))
                                   (if _$e36557_
                                       ((lambda (_block36560_)
                                          (if (_nonlinear-block?33706_
                                               _block36560_)
                                              _expr35766_
                                              (let* ((_inline36569_
                                                      (_inline-block33705_
                                                       _block36560_
                                                       (foldr1 (lambda (_g3656136564_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g3656236566_)
                         (cons _g3656136564_ _g3656236566_))
                       '()
                       _L36536_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___stx4226842269_
                                                      _inline36569_)
                                                     (_g3657236593_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         ___stx4226842269_))))
                                                (let ((___kont4227042271_
                                                       (lambda (_L36637_
                                                                _L36638_
                                                                _L36639_)
                                                         (let ((_$e36661_
                                                                (_assert-e33699_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L36639_)))
                   (if (eq? '#t _$e36661_)
                       (if _in-splice?33684_
                           (_optimize-f__0__4102341024_ _L36638_)
                           (_optimize-e33696_ _L36638_))
                       (if (eq? '#f _$e36661_)
                           (_optimize-f__0__4102341024_ _L36637_)
                           _expr35766_)))))
              (___kont4227242273_
               (lambda () (_optimize-f__0__4102341024_ _inline36569_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4226842269_)
                                                      (let ((_e3657736605_
                                                             (gx#stx-e
                                                              ___stx4226842269_)))
                                                        (let ((_tl3657936610_
                                                               (##cdr _e3657736605_))
                                                              (_hd3657836608_
                                                               (##car _e3657736605_)))
                                                          (if (gx#identifier?
                                                               _hd3657836608_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#if
                           _hd3657836608_)
                          (if (gx#stx-pair? _tl3657936610_)
                              (let ((_e3658036613_ (gx#stx-e _tl3657936610_)))
                                (let ((_tl3658236618_ (##cdr _e3658036613_))
                                      (_hd3658136616_ (##car _e3658036613_)))
                                  (if (gx#stx-pair? _tl3658236618_)
                                      (let ((_e3658336621_
                                             (gx#stx-e _tl3658236618_)))
                                        (let ((_tl3658536626_
                                               (##cdr _e3658336621_))
                                              (_hd3658436624_
                                               (##car _e3658336621_)))
                                          (if (gx#stx-pair? _tl3658536626_)
                                              (let ((_e3658636629_
                                                     (gx#stx-e
                                                      _tl3658536626_)))
                                                (let ((_tl3658836634_
                                                       (##cdr _e3658636629_))
                                                      (_hd3658736632_
                                                       (##car _e3658636629_)))
                                                  (if (gx#stx-null?
                                                       _tl3658836634_)
                                                      (___kont4227042271_
                                                       _hd3658736632_
                                                       _hd3658436624_
                                                       _hd3658136616_)
                                                      (___kont4227242273_))))
                                              (___kont4227242273_))))
                                      (___kont4227242273_))))
                              (___kont4227242273_))
                          (___kont4227242273_))
                      (___kont4227242273_))))
              (___kont4227242273_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _$e36557_)
                                       _expr35766_))))
                              (___kont4231242313_
                               (lambda (_L36434_ _L36435_ _L36436_)
                                 (let ((_$e36453_ (_assert-e33699_ _L36436_)))
                                   (if (eq? '#t _$e36453_)
                                       (if _in-splice?33684_
                                           (_optimize-f__0__4102341024_
                                            _L36435_)
                                           (_optimize-e33696_ _L36435_))
                                       (if (eq? '#f _$e36453_)
                                           (_optimize-f__0__4102341024_
                                            _L36434_)
                                           (let ((_K36456_
                                                  (_optimize-t__4101741018_
                                                   _L36435_
                                                   _L36436_
                                                   _optimize-f33698_))
                                                 (_E36457_
                                                  (_optimize-f__4102141022_
                                                   _L36434_
                                                   _L36436_)))
                                             (if (equal? (gxc#apply-generate-runtime-repr
                                                          _K36456_)
                                                         (gxc#apply-generate-runtime-repr
                                                          _E36457_))
                                                 _K36456_
                                                 (cons '%#if
                                                       (cons _L36436_
                                                             (cons _K36456_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _E36457_ '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (___kont4231442315_
                               (lambda (_L36364_ _L36365_ _L36366_)
                                 (let ((_body36385_
                                        (_optimize-f__0__4102341024_
                                         _L36364_)))
                                   (cons '%#let-values
                                         (cons (begin
                                                 (gx#syntax-check-splice-targets
                                                  _L36365_
                                                  _L36366_)
                                                 (foldr2 (lambda (_g3638636390_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g3638736392_
                          _g3638836394_)
                   (cons (cons (cons _g3638736392_ '())
                               (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                           (cons _g3638636390_ '()))
                                     '()))
                         _g3638836394_))
                 '()
                 _L36365_
                 _L36366_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _body36385_ '()))))))
                              (___kont4231842319_
                               (lambda (_L36232_ _L36233_ _L36234_)
                                 (_bind-e__4102541026_
                                  (map cons
                                       (foldr1 (lambda (_g3625236255_
                                                        _g3625336257_)
                                                 (cons _g3625236255_
                                                       _g3625336257_))
                                               '()
                                               _L36234_)
                                       (foldr1 (lambda (_g3625936262_
                                                        _g3626036264_)
                                                 (cons _g3625936262_
                                                       _g3626036264_))
                                               '()
                                               _L36233_))
                                  _L36232_
                                  _optimize-f33698_)))
                              (___kont4232242323_
                               (lambda (_L36088_
                                        _L36089_
                                        _L36090_
                                        _L36091_
                                        _L36092_)
                                 (_do-splice!33695_
                                  (lambda ()
                                    (let ((_expr36135_
                                           (_optimize-f__0__4102341024_
                                            _L36090_)))
                                      (cons '%#letrec-values
                                            (cons (cons (cons (cons _L36092_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (cons '%#lambda
                                  (cons (foldr1 (lambda (_g3613636139_
                                                         _g3613736141_)
                                                  (cons _g3613636139_
                                                        _g3613736141_))
                                                '()
                                                _L36091_)
                                        (cons _expr36135_ '())))
                            '()))
                (foldr1 (lambda (_g3614336146_ _g3614436148_)
                          (cons _g3614336146_ _g3614436148_))
                        '()
                        _L36089_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _L36088_ '()))))))))
                              (___kont4232842329_ (lambda () _expr35766_)))
                          (let* ((___match4251542516_
                                  (lambda (_e3589635960_
                                           _hd3589735963_
                                           _tl3589835965_
                                           _e3589935968_
                                           _hd3590035971_
                                           _tl3590135973_
                                           _e3590235976_
                                           _hd3590335979_
                                           _tl3590435981_
                                           _e3590535984_
                                           _hd3590635987_
                                           _tl3590735989_
                                           _e3590835992_
                                           _hd3590935995_
                                           _tl3591035997_
                                           _e3591136000_
                                           _hd3591236003_
                                           _tl3591336005_
                                           _e3591436008_
                                           _hd3591536011_
                                           _tl3591636013_
                                           _e3591736016_
                                           _hd3591836019_
                                           _tl3591936021_
                                           ___splice4232442325_
                                           _target3592036024_
                                           _tl3592236026_)
                                    (letrec ((_loop3592336029_
                                              (lambda (_hd3592136032_
                                                       _id3592736034_)
                                                (if (gx#stx-pair?
                                                     _hd3592136032_)
                                                    (let ((_e3592436037_
                                                           (gx#stx-e
                                                            _hd3592136032_)))
                                                      (let ((_lp-tl3592636042_
                                                             (##cdr _e3592436037_))
                                                            (_lp-hd3592536040_
                                                             (##car _e3592436037_)))
                                                        (_loop3592336029_
                                                         _lp-tl3592636042_
                                                         (cons _lp-hd3592536040_
                                                               _id3592736034_))))
                                                    (let ((_id3592836045_
                                                           (reverse _id3592736034_)))
                                                      (if (gx#stx-pair?
                                                           _tl3591936021_)
                                                          (let ((_e3592936048_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl3591936021_)))
                    (let ((_tl3593136053_ (##cdr _e3592936048_))
                          (_hd3593036051_ (##car _e3592936048_)))
                      (if (gx#stx-null? _tl3593136053_)
                          (if (gx#stx-null? _tl3591336005_)
                              (if (gx#stx-pair/null? _tl3590435981_)
                                  (let ((___splice4232642327_
                                         (gx#syntax-split-splice
                                          _tl3590435981_
                                          '0)))
                                    (let ((_tl3593436058_
                                           (##vector-ref
                                            ___splice4232642327_
                                            '1))
                                          (_target3593236056_
                                           (##vector-ref
                                            ___splice4232642327_
                                            '0)))
                                      (if (gx#stx-null? _tl3593436058_)
                                          (letrec ((_loop3593536061_
                                                    (lambda (_hd3593336064_
                                                             _bind3593936066_)
                                                      (if (gx#stx-pair?
                                                           _hd3593336064_)
                                                          (let ((_e3593636069_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd3593336064_)))
                    (let ((_lp-tl3593836074_ (##cdr _e3593636069_))
                          (_lp-hd3593736072_ (##car _e3593636069_)))
                      (_loop3593536061_
                       _lp-tl3593836074_
                       (cons _lp-hd3593736072_ _bind3593936066_))))
                  (let ((_bind3594036077_ (reverse _bind3593936066_)))
                    (if (gx#stx-pair? _tl3590135973_)
                        (let ((_e3594136080_ (gx#stx-e _tl3590135973_)))
                          (let ((_tl3594336085_ (##cdr _e3594136080_))
                                (_hd3594236083_ (##car _e3594136080_)))
                            (if (gx#stx-null? _tl3594336085_)
                                (___kont4232242323_
                                 _hd3594236083_
                                 _bind3594036077_
                                 _hd3593036051_
                                 _id3592836045_
                                 _hd3590935995_)
                                (___kont4232842329_))))
                        (___kont4232842329_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop3593536061_
                                             _target3593236056_
                                             '()))
                                          (___kont4232842329_))))
                                  (___kont4232842329_))
                              (___kont4232842329_))
                          (___kont4232842329_))))
                  (___kont4232842329_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop3592336029_
                                       _target3592036024_
                                       '()))))
                                 (___match4244942450_
                                  (lambda (_e3586236156_
                                           _hd3586336159_
                                           _tl3586436161_
                                           _e3586536164_
                                           _hd3586636167_
                                           _tl3586736169_
                                           ___splice4232042321_
                                           _target3586836172_
                                           _tl3587036174_)
                                    (letrec ((_loop3587136177_
                                              (lambda (_hd3586936180_
                                                       _expr3587536182_
                                                       _id3587636184_)
                                                (if (gx#stx-pair?
                                                     _hd3586936180_)
                                                    (let ((_e3587236187_
                                                           (gx#stx-e
                                                            _hd3586936180_)))
                                                      (let ((_lp-tl3587436192_
                                                             (##cdr _e3587236187_))
                                                            (_lp-hd3587336190_
                                                             (##car _e3587236187_)))
                                                        (if (gx#stx-pair?
                                                             _lp-hd3587336190_)
                                                            (let ((_e3587936195_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _lp-hd3587336190_)))
                      (let ((_tl3588136200_ (##cdr _e3587936195_))
                            (_hd3588036198_ (##car _e3587936195_)))
                        (if (gx#stx-pair? _hd3588036198_)
                            (let ((_e3588236203_ (gx#stx-e _hd3588036198_)))
                              (let ((_tl3588436208_ (##cdr _e3588236203_))
                                    (_hd3588336206_ (##car _e3588236203_)))
                                (if (gx#stx-null? _tl3588436208_)
                                    (if (gx#stx-pair? _tl3588136200_)
                                        (let ((_e3588536211_
                                               (gx#stx-e _tl3588136200_)))
                                          (let ((_tl3588736216_
                                                 (##cdr _e3588536211_))
                                                (_hd3588636214_
                                                 (##car _e3588536211_)))
                                            (if (gx#stx-null? _tl3588736216_)
                                                (_loop3587136177_
                                                 _lp-tl3587436192_
                                                 (cons _hd3588636214_
                                                       _expr3587536182_)
                                                 (cons _hd3588336206_
                                                       _id3587636184_))
                                                (___kont4232842329_))))
                                        (___kont4232842329_))
                                    (___kont4232842329_))))
                            (___kont4232842329_))))
                    (___kont4232842329_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_id3587836221_
                                                           (reverse _id3587636184_))
                                                          (_expr3587736219_
                                                           (reverse _expr3587536182_)))
                                                      (if (gx#stx-pair?
                                                           _tl3586736169_)
                                                          (let ((_e3588836224_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl3586736169_)))
                    (let ((_tl3589036229_ (##cdr _e3588836224_))
                          (_hd3588936227_ (##car _e3588836224_)))
                      (if (gx#stx-null? _tl3589036229_)
                          (___kont4231842319_
                           _hd3588936227_
                           _expr3587736219_
                           _id3587836221_)
                          (___kont4232842329_))))
                  (___kont4232842329_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop3587136177_
                                       _target3586836172_
                                       '()
                                       '()))))
                                 (___match4242542426_
                                  (lambda (_e3582436272_
                                           _hd3582536275_
                                           _tl3582636277_
                                           _e3582736280_
                                           _hd3582836283_
                                           _tl3582936285_
                                           ___splice4231642317_
                                           _target3583036288_
                                           _tl3583236290_)
                                    (letrec ((_loop3583336293_
                                              (lambda (_hd3583136296_
                                                       _xid3583736298_
                                                       _id3583836300_)
                                                (if (gx#stx-pair?
                                                     _hd3583136296_)
                                                    (let ((_e3583436303_
                                                           (gx#stx-e
                                                            _hd3583136296_)))
                                                      (let ((_lp-tl3583636308_
                                                             (##cdr _e3583436303_))
                                                            (_lp-hd3583536306_
                                                             (##car _e3583436303_)))
                                                        (if (gx#stx-pair?
                                                             _lp-hd3583536306_)
                                                            (let ((_e3584136311_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _lp-hd3583536306_)))
                      (let ((_tl3584336316_ (##cdr _e3584136311_))
                            (_hd3584236314_ (##car _e3584136311_)))
                        (if (gx#stx-pair? _hd3584236314_)
                            (let ((_e3584436319_ (gx#stx-e _hd3584236314_)))
                              (let ((_tl3584636324_ (##cdr _e3584436319_))
                                    (_hd3584536322_ (##car _e3584436319_)))
                                (if (gx#stx-null? _tl3584636324_)
                                    (if (gx#stx-pair? _tl3584336316_)
                                        (let ((_e3584736327_
                                               (gx#stx-e _tl3584336316_)))
                                          (let ((_tl3584936332_
                                                 (##cdr _e3584736327_))
                                                (_hd3584836330_
                                                 (##car _e3584736327_)))
                                            (if (gx#stx-pair? _hd3584836330_)
                                                (let ((_e3585036335_
                                                       (gx#stx-e
                                                        _hd3584836330_)))
                                                  (let ((_tl3585236340_
                                                         (##cdr _e3585036335_))
                                                        (_hd3585136338_
                                                         (##car _e3585036335_)))
                                                    (if (gx#identifier?
                                                         _hd3585136338_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd3585136338_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3585236340_)
                        (let ((_e3585336343_ (gx#stx-e _tl3585236340_)))
                          (let ((_tl3585536348_ (##cdr _e3585336343_))
                                (_hd3585436346_ (##car _e3585336343_)))
                            (if (gx#stx-null? _tl3585536348_)
                                (if (gx#stx-null? _tl3584936332_)
                                    (_loop3583336293_
                                     _lp-tl3583636308_
                                     (cons _hd3585436346_ _xid3583736298_)
                                     (cons _hd3584536322_ _id3583836300_))
                                    (___match4244942450_
                                     _e3582436272_
                                     _hd3582536275_
                                     _tl3582636277_
                                     _e3582736280_
                                     _hd3582836283_
                                     _tl3582936285_
                                     ___splice4231642317_
                                     _target3583036288_
                                     _tl3583236290_))
                                (___match4244942450_
                                 _e3582436272_
                                 _hd3582536275_
                                 _tl3582636277_
                                 _e3582736280_
                                 _hd3582836283_
                                 _tl3582936285_
                                 ___splice4231642317_
                                 _target3583036288_
                                 _tl3583236290_))))
                        (___match4244942450_
                         _e3582436272_
                         _hd3582536275_
                         _tl3582636277_
                         _e3582736280_
                         _hd3582836283_
                         _tl3582936285_
                         ___splice4231642317_
                         _target3583036288_
                         _tl3583236290_))
                    (___match4244942450_
                     _e3582436272_
                     _hd3582536275_
                     _tl3582636277_
                     _e3582736280_
                     _hd3582836283_
                     _tl3582936285_
                     ___splice4231642317_
                     _target3583036288_
                     _tl3583236290_))
                (___match4244942450_
                 _e3582436272_
                 _hd3582536275_
                 _tl3582636277_
                 _e3582736280_
                 _hd3582836283_
                 _tl3582936285_
                 ___splice4231642317_
                 _target3583036288_
                 _tl3583236290_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match4244942450_
                                                 _e3582436272_
                                                 _hd3582536275_
                                                 _tl3582636277_
                                                 _e3582736280_
                                                 _hd3582836283_
                                                 _tl3582936285_
                                                 ___splice4231642317_
                                                 _target3583036288_
                                                 _tl3583236290_))))
                                        (___match4244942450_
                                         _e3582436272_
                                         _hd3582536275_
                                         _tl3582636277_
                                         _e3582736280_
                                         _hd3582836283_
                                         _tl3582936285_
                                         ___splice4231642317_
                                         _target3583036288_
                                         _tl3583236290_))
                                    (___match4244942450_
                                     _e3582436272_
                                     _hd3582536275_
                                     _tl3582636277_
                                     _e3582736280_
                                     _hd3582836283_
                                     _tl3582936285_
                                     ___splice4231642317_
                                     _target3583036288_
                                     _tl3583236290_))))
                            (___match4244942450_
                             _e3582436272_
                             _hd3582536275_
                             _tl3582636277_
                             _e3582736280_
                             _hd3582836283_
                             _tl3582936285_
                             ___splice4231642317_
                             _target3583036288_
                             _tl3583236290_))))
                    (___match4244942450_
                     _e3582436272_
                     _hd3582536275_
                     _tl3582636277_
                     _e3582736280_
                     _hd3582836283_
                     _tl3582936285_
                     ___splice4231642317_
                     _target3583036288_
                     _tl3583236290_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_id3584036353_
                                                           (reverse _id3583836300_))
                                                          (_xid3583936351_
                                                           (reverse _xid3583736298_)))
                                                      (if (gx#stx-pair?
                                                           _tl3582936285_)
                                                          (let ((_e3585636356_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl3582936285_)))
                    (let ((_tl3585836361_ (##cdr _e3585636356_))
                          (_hd3585736359_ (##car _e3585636356_)))
                      (if (gx#stx-null? _tl3585836361_)
                          (___kont4231442315_
                           _hd3585736359_
                           _xid3583936351_
                           _id3584036353_)
                          (___match4244942450_
                           _e3582436272_
                           _hd3582536275_
                           _tl3582636277_
                           _e3582736280_
                           _hd3582836283_
                           _tl3582936285_
                           ___splice4231642317_
                           _target3583036288_
                           _tl3583236290_))))
                  (___match4244942450_
                   _e3582436272_
                   _hd3582536275_
                   _tl3582636277_
                   _e3582736280_
                   _hd3582836283_
                   _tl3582936285_
                   ___splice4231642317_
                   _target3583036288_
                   _tl3583236290_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop3583336293_
                                       _target3583036288_
                                       '()
                                       '()))))
                                 (___match4237142372_
                                  (lambda (_e3577936464_
                                           _hd3578036467_
                                           _tl3578136469_
                                           _e3578236472_
                                           _hd3578336475_
                                           _tl3578436477_
                                           _e3578536480_
                                           _hd3578636483_
                                           _tl3578736485_
                                           _e3578836488_
                                           _hd3578936491_
                                           _tl3579036493_
                                           ___splice4231042311_
                                           _target3579136496_
                                           _tl3579336498_)
                                    (letrec ((_loop3579436501_
                                              (lambda (_hd3579236504_
                                                       _id3579836506_)
                                                (if (gx#stx-pair?
                                                     _hd3579236504_)
                                                    (let ((_e3579536509_
                                                           (gx#stx-e
                                                            _hd3579236504_)))
                                                      (let ((_lp-tl3579736514_
                                                             (##cdr _e3579536509_))
                                                            (_lp-hd3579636512_
                                                             (##car _e3579536509_)))
                                                        (if (gx#stx-pair?
                                                             _lp-hd3579636512_)
                                                            (let ((_e3580036517_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _lp-hd3579636512_)))
                      (let ((_tl3580236522_ (##cdr _e3580036517_))
                            (_hd3580136520_ (##car _e3580036517_)))
                        (if (gx#identifier? _hd3580136520_)
                            (if (gx#stx-eq? '%#ref _hd3580136520_)
                                (if (gx#stx-pair? _tl3580236522_)
                                    (let ((_e3580336525_
                                           (gx#stx-e _tl3580236522_)))
                                      (let ((_tl3580536530_
                                             (##cdr _e3580336525_))
                                            (_hd3580436528_
                                             (##car _e3580336525_)))
                                        (if (gx#stx-null? _tl3580536530_)
                                            (_loop3579436501_
                                             _lp-tl3579736514_
                                             (cons _hd3580436528_
                                                   _id3579836506_))
                                            (___kont4232842329_))))
                                    (___kont4232842329_))
                                (___kont4232842329_))
                            (___kont4232842329_))))
                    (___kont4232842329_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_id3579936533_
                                                           (reverse _id3579836506_)))
                                                      (___kont4230842309_
                                                       _id3579936533_
                                                       _hd3578936491_))))))
                                      (_loop3579436501_
                                       _target3579136496_
                                       '())))))
                            (if (gx#stx-pair? ___stx4230642307_)
                                (let ((_e3577936464_
                                       (gx#stx-e ___stx4230642307_)))
                                  (let ((_tl3578136469_ (##cdr _e3577936464_))
                                        (_hd3578036467_ (##car _e3577936464_)))
                                    (if (gx#identifier? _hd3578036467_)
                                        (if (gx#stx-eq? '%#call _hd3578036467_)
                                            (if (gx#stx-pair? _tl3578136469_)
                                                (let ((_e3578236472_
                                                       (gx#stx-e
                                                        _tl3578136469_)))
                                                  (let ((_tl3578436477_
                                                         (##cdr _e3578236472_))
                                                        (_hd3578336475_
                                                         (##car _e3578236472_)))
                                                    (if (gx#stx-pair?
                                                         _hd3578336475_)
                                                        (let ((_e3578536480_
                                                               (gx#stx-e
                                                                _hd3578336475_)))
                                                          (let ((_tl3578736485_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3578536480_))
                        (_hd3578636483_ (##car _e3578536480_)))
                    (if (gx#identifier? _hd3578636483_)
                        (if (gx#stx-eq? '%#ref _hd3578636483_)
                            (if (gx#stx-pair? _tl3578736485_)
                                (let ((_e3578836488_
                                       (gx#stx-e _tl3578736485_)))
                                  (let ((_tl3579036493_ (##cdr _e3578836488_))
                                        (_hd3578936491_ (##car _e3578836488_)))
                                    (if (gx#stx-null? _tl3579036493_)
                                        (if (gx#stx-pair/null? _tl3578436477_)
                                            (let ((___splice4231042311_
                                                   (gx#syntax-split-splice
                                                    _tl3578436477_
                                                    '0)))
                                              (let ((_tl3579336498_
                                                     (##vector-ref
                                                      ___splice4231042311_
                                                      '1))
                                                    (_target3579136496_
                                                     (##vector-ref
                                                      ___splice4231042311_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl3579336498_)
                                                    (___match4237142372_
                                                     _e3577936464_
                                                     _hd3578036467_
                                                     _tl3578136469_
                                                     _e3578236472_
                                                     _hd3578336475_
                                                     _tl3578436477_
                                                     _e3578536480_
                                                     _hd3578636483_
                                                     _tl3578736485_
                                                     _e3578836488_
                                                     _hd3578936491_
                                                     _tl3579036493_
                                                     ___splice4231042311_
                                                     _target3579136496_
                                                     _tl3579336498_)
                                                    (___kont4232842329_))))
                                            (___kont4232842329_))
                                        (___kont4232842329_))))
                                (___kont4232842329_))
                            (___kont4232842329_))
                        (___kont4232842329_))))
                (___kont4232842329_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4232842329_))
                                            (if (gx#stx-eq?
                                                 '%#if
                                                 _hd3578036467_)
                                                (if (gx#stx-pair?
                                                     _tl3578136469_)
                                                    (let ((_e3581236410_
                                                           (gx#stx-e
                                                            _tl3578136469_)))
                                                      (let ((_tl3581436415_
                                                             (##cdr _e3581236410_))
                                                            (_hd3581336413_
                                                             (##car _e3581236410_)))
                                                        (if (gx#stx-pair?
                                                             _tl3581436415_)
                                                            (let ((_e3581536418_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3581436415_)))
                      (let ((_tl3581736423_ (##cdr _e3581536418_))
                            (_hd3581636421_ (##car _e3581536418_)))
                        (if (gx#stx-pair? _tl3581736423_)
                            (let ((_e3581836426_ (gx#stx-e _tl3581736423_)))
                              (let ((_tl3582036431_ (##cdr _e3581836426_))
                                    (_hd3581936429_ (##car _e3581836426_)))
                                (if (gx#stx-null? _tl3582036431_)
                                    (___kont4231242313_
                                     _hd3581936429_
                                     _hd3581636421_
                                     _hd3581336413_)
                                    (___kont4232842329_))))
                            (___kont4232842329_))))
                    (___kont4232842329_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4232842329_))
                                                (if (gx#stx-eq?
                                                     '%#let-values
                                                     _hd3578036467_)
                                                    (if (gx#stx-pair?
                                                         _tl3578136469_)
                                                        (let ((_e3582736280_
                                                               (gx#stx-e
                                                                _tl3578136469_)))
                                                          (let ((_tl3582936285_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3582736280_))
                        (_hd3582836283_ (##car _e3582736280_)))
                    (if (gx#stx-pair/null? _hd3582836283_)
                        (let ((___splice4231642317_
                               (gx#syntax-split-splice _hd3582836283_ '0)))
                          (let ((_tl3583236290_
                                 (##vector-ref ___splice4231642317_ '1))
                                (_target3583036288_
                                 (##vector-ref ___splice4231642317_ '0)))
                            (if (gx#stx-null? _tl3583236290_)
                                (___match4242542426_
                                 _e3577936464_
                                 _hd3578036467_
                                 _tl3578136469_
                                 _e3582736280_
                                 _hd3582836283_
                                 _tl3582936285_
                                 ___splice4231642317_
                                 _target3583036288_
                                 _tl3583236290_)
                                (___kont4232842329_))))
                        (___kont4232842329_))))
                (___kont4232842329_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-eq?
                                                         '%#letrec-values
                                                         _hd3578036467_)
                                                        (if (gx#stx-pair?
                                                             _tl3578136469_)
                                                            (let ((_e3589935968_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3578136469_)))
                      (let ((_tl3590135973_ (##cdr _e3589935968_))
                            (_hd3590035971_ (##car _e3589935968_)))
                        (if (gx#stx-pair? _hd3590035971_)
                            (let ((_e3590235976_ (gx#stx-e _hd3590035971_)))
                              (let ((_tl3590435981_ (##cdr _e3590235976_))
                                    (_hd3590335979_ (##car _e3590235976_)))
                                (if (gx#stx-pair? _hd3590335979_)
                                    (let ((_e3590535984_
                                           (gx#stx-e _hd3590335979_)))
                                      (let ((_tl3590735989_
                                             (##cdr _e3590535984_))
                                            (_hd3590635987_
                                             (##car _e3590535984_)))
                                        (if (gx#stx-pair? _hd3590635987_)
                                            (let ((_e3590835992_
                                                   (gx#stx-e _hd3590635987_)))
                                              (let ((_tl3591035997_
                                                     (##cdr _e3590835992_))
                                                    (_hd3590935995_
                                                     (##car _e3590835992_)))
                                                (if (gx#stx-null?
                                                     _tl3591035997_)
                                                    (if (gx#stx-pair?
                                                         _tl3590735989_)
                                                        (let ((_e3591136000_
                                                               (gx#stx-e
                                                                _tl3590735989_)))
                                                          (let ((_tl3591336005_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3591136000_))
                        (_hd3591236003_ (##car _e3591136000_)))
                    (if (gx#stx-pair? _hd3591236003_)
                        (let ((_e3591436008_ (gx#stx-e _hd3591236003_)))
                          (let ((_tl3591636013_ (##cdr _e3591436008_))
                                (_hd3591536011_ (##car _e3591436008_)))
                            (if (gx#identifier? _hd3591536011_)
                                (if (gx#stx-eq? '%#lambda _hd3591536011_)
                                    (if (gx#stx-pair? _tl3591636013_)
                                        (let ((_e3591736016_
                                               (gx#stx-e _tl3591636013_)))
                                          (let ((_tl3591936021_
                                                 (##cdr _e3591736016_))
                                                (_hd3591836019_
                                                 (##car _e3591736016_)))
                                            (if (gx#stx-pair/null?
                                                 _hd3591836019_)
                                                (let ((___splice4232442325_
                                                       (gx#syntax-split-splice
                                                        _hd3591836019_
                                                        '0)))
                                                  (let ((_tl3592236026_
                                                         (##vector-ref
                                                          ___splice4232442325_
                                                          '1))
                                                        (_target3592036024_
                                                         (##vector-ref
                                                          ___splice4232442325_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl3592236026_)
                                                        (___match4251542516_
                                                         _e3577936464_
                                                         _hd3578036467_
                                                         _tl3578136469_
                                                         _e3589935968_
                                                         _hd3590035971_
                                                         _tl3590135973_
                                                         _e3590235976_
                                                         _hd3590335979_
                                                         _tl3590435981_
                                                         _e3590535984_
                                                         _hd3590635987_
                                                         _tl3590735989_
                                                         _e3590835992_
                                                         _hd3590935995_
                                                         _tl3591035997_
                                                         _e3591136000_
                                                         _hd3591236003_
                                                         _tl3591336005_
                                                         _e3591436008_
                                                         _hd3591536011_
                                                         _tl3591636013_
                                                         _e3591736016_
                                                         _hd3591836019_
                                                         _tl3591936021_
                                                         ___splice4232442325_
                                                         _target3592036024_
                                                         _tl3592236026_)
                                                        (___kont4232842329_))))
                                                (___kont4232842329_))))
                                        (___kont4232842329_))
                                    (___kont4232842329_))
                                (___kont4232842329_))))
                        (___kont4232842329_))))
                (___kont4232842329_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4232842329_))))
                                            (___kont4232842329_))))
                                    (___kont4232842329_))))
                            (___kont4232842329_))))
                    (___kont4232842329_))
                (___kont4232842329_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (___kont4232842329_))))
                                (___kont4232842329_)))))))))
                (_optimize-f__0__4102341024_
                 (lambda (_expr36673_)
                   (let ((_test36675_ '#f))
                     (_optimize-f__4102141022_ _expr36673_ _test36675_))))
                (_optimize-f33698_
                 (lambda _g44122_
                   (let ((_g44121_ (length _g44122_)))
                     (cond ((##fx= _g44121_ 1)
                            (apply _optimize-f__0__4102341024_ _g44122_))
                           ((##fx= _g44121_ 2)
                            (apply _optimize-f__4102141022_ _g44122_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g44122_))))))
                (_assert-e33699_
                 (lambda (_expr34707_)
                   (let* ((_sexpr34709_
                           (gxc#apply-generate-runtime-repr _expr34707_))
                          (_$e34711_ (assoc _sexpr34709_ _env-assert33681_)))
                     (if _$e34711_
                         (cdr _$e34711_)
                         (let _assert34714_ ((_expr34716_ _expr34707_))
                           (let* ((___stx4261242613_ _expr34716_)
                                  (_g3472434903_
                                   (lambda ()
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      ___stx4261242613_))))
                             (let ((___kont4261442615_
                                    (lambda (_L35734_ _L35735_)
                                      (let ((_$e35757_
                                             (_predicate-type33686_ _L35735_)))
                                        (if _$e35757_
                                            ((lambda (_t35760_)
                                               (_assert-type33700_
                                                _L35734_
                                                _t35760_))
                                             _$e35757_)
                                            '#!void))))
                                   (___kont4261642617_
                                    (lambda (_L35427_ _L35428_ _L35429_)
                                      (let ((_$e35454_
                                             (gxc#identifier-symbol _L35429_)))
                                        (if (or (eq? '##fx= _$e35454_)
                                                (eq? 'fx= _$e35454_))
                                            (let* ((___stx4251842519_ _L35428_)
                                                   (_g3546135490_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       ___stx4251842519_))))
                                              (let ((___kont4252042521_
                                                     (lambda (_L35558_
                                                              _L35559_)
                                                       (let ((_$e35584_
                                                              (_countf-symbol33688_
                                                               _L35559_)))
                                                         (if _$e35584_
                                                             ((lambda (_sym35587_)
                                                                (_assert-count33701_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L35558_
                         _sym35587_
                         (gx#stx-e _L35427_)))
                      _$e35584_)
                     '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4252242523_
                                                     (lambda () '#!void)))
                                                (if (gx#stx-pair?
                                                     ___stx4251842519_)
                                                    (let ((_e3546535502_
                                                           (gx#stx-e
                                                            ___stx4251842519_)))
                                                      (let ((_tl3546735507_
                                                             (##cdr _e3546535502_))
                                                            (_hd3546635505_
                                                             (##car _e3546535502_)))
                                                        (if (gx#identifier?
                                                             _hd3546635505_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd3546635505_)
                        (if (gx#stx-pair? _tl3546735507_)
                            (let ((_e3546835510_ (gx#stx-e _tl3546735507_)))
                              (let ((_tl3547035515_ (##cdr _e3546835510_))
                                    (_hd3546935513_ (##car _e3546835510_)))
                                (if (gx#stx-pair? _hd3546935513_)
                                    (let ((_e3547135518_
                                           (gx#stx-e _hd3546935513_)))
                                      (let ((_tl3547335523_
                                             (##cdr _e3547135518_))
                                            (_hd3547235521_
                                             (##car _e3547135518_)))
                                        (if (gx#identifier? _hd3547235521_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd3547235521_)
                                                (if (gx#stx-pair?
                                                     _tl3547335523_)
                                                    (let ((_e3547435526_
                                                           (gx#stx-e
                                                            _tl3547335523_)))
                                                      (let ((_tl3547635531_
                                                             (##cdr _e3547435526_))
                                                            (_hd3547535529_
                                                             (##car _e3547435526_)))
                                                        (if (gx#stx-null?
                                                             _tl3547635531_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3547035515_)
                        (let ((_e3547735534_ (gx#stx-e _tl3547035515_)))
                          (let ((_tl3547935539_ (##cdr _e3547735534_))
                                (_hd3547835537_ (##car _e3547735534_)))
                            (if (gx#stx-pair? _hd3547835537_)
                                (let ((_e3548035542_
                                       (gx#stx-e _hd3547835537_)))
                                  (let ((_tl3548235547_ (##cdr _e3548035542_))
                                        (_hd3548135545_ (##car _e3548035542_)))
                                    (if (gx#identifier? _hd3548135545_)
                                        (if (gx#stx-eq? '%#ref _hd3548135545_)
                                            (if (gx#stx-pair? _tl3548235547_)
                                                (let ((_e3548335550_
                                                       (gx#stx-e
                                                        _tl3548235547_)))
                                                  (let ((_tl3548535555_
                                                         (##cdr _e3548335550_))
                                                        (_hd3548435553_
                                                         (##car _e3548335550_)))
                                                    (if (gx#stx-null?
                                                         _tl3548535555_)
                                                        (if (gx#stx-null?
                                                             _tl3547935539_)
                                                            (___kont4252042521_
                                                             _hd3548435553_
                                                             _hd3547535529_)
                                                            (___kont4252242523_))
                                                        (___kont4252242523_))))
                                                (___kont4252242523_))
                                            (___kont4252242523_))
                                        (___kont4252242523_))))
                                (___kont4252242523_))))
                        (___kont4252242523_))
                    (___kont4252242523_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4252242523_))
                                                (___kont4252242523_))
                                            (___kont4252242523_))))
                                    (___kont4252242523_))))
                            (___kont4252242523_))
                        (___kont4252242523_))
                    (___kont4252242523_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4252242523_))))
                                            (if (or (eq? '##eq? _$e35454_)
                                                    (eq? 'eq? _$e35454_)
                                                    (eq? '##eqv? _$e35454_)
                                                    (eq? 'eqv? _$e35454_)
                                                    (eq? '##equal? _$e35454_)
                                                    (eq? 'equal? _$e35454_)
                                                    (eq? 'gx#free-identifier=?
                                                         _$e35454_)
                                                    (eq? 'gx#stx-eq?
                                                         _$e35454_))
                                                ((lambda (_sym35613_)
                                                   (let* ((___stx4258642587_
                                                           _L35428_)
                                                          (_g3561635629_
                                                           (lambda ()
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              ___stx4258642587_))))
                                                     (let ((___kont4258842589_
                                                            (lambda (_L35657_)
                                                              (_assert-eqf33702_
                                                               _L35657_
                                                               (_eqf-symbol33689_
                                                                _sym35613_)
                                                               (gx#stx-e
                                                                _L35427_))))
                                                           (___kont4259042591_
                                                            (lambda ()
                                                              '#!void)))
                                                       (if (gx#stx-pair?
                                                            ___stx4258642587_)
                                                           (let ((_e3561935641_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e ___stx4258642587_)))
                     (let ((_tl3562135646_ (##cdr _e3561935641_))
                           (_hd3562035644_ (##car _e3561935641_)))
                       (if (gx#identifier? _hd3562035644_)
                           (if (gx#stx-eq? '%#ref _hd3562035644_)
                               (if (gx#stx-pair? _tl3562135646_)
                                   (let ((_e3562235649_
                                          (gx#stx-e _tl3562135646_)))
                                     (let ((_tl3562435654_
                                            (##cdr _e3562235649_))
                                           (_hd3562335652_
                                            (##car _e3562235649_)))
                                       (if (gx#stx-null? _tl3562435654_)
                                           (___kont4258842589_ _hd3562335652_)
                                           (___kont4259042591_))))
                                   (___kont4259042591_))
                               (___kont4259042591_))
                           (___kont4259042591_))))
                   (___kont4259042591_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _$e35454_)
                                                '#!void)))))
                                   (___kont4261842619_
                                    (lambda (_L35331_ _L35332_ _L35333_)
                                      (_assert34714_
                                       (cons (gx#datum->syntax__0 '#f '%#call)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          '%#ref)
                                                         (cons _L35333_ '()))
                                                   (cons _L35331_
                                                         (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '%#quote)
                             (cons _L35332_ '()))
                       '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (___kont4262042621_
                                    (lambda (_L35223_ _L35224_ _L35225_)
                                      (let ((_$e35254_
                                             (gxc#identifier-symbol _L35225_)))
                                        (if (or (eq? 'gx#free-identifier=?
                                                     _$e35254_)
                                                (eq? 'gx#stx-eq? _$e35254_))
                                            ((lambda (_sym35260_)
                                               (_assert-eqf33702_
                                                _L35224_
                                                (_eqf-symbol33689_ _sym35260_)
                                                _L35223_))
                                             _$e35254_)
                                            '#!void))))
                                   (___kont4262242623_
                                    (lambda (_L35107_ _L35108_ _L35109_)
                                      (_assert34714_
                                       (cons (gx#datum->syntax__0 '#f '%#call)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          '%#ref)
                                                         (cons _L35109_ '()))
                                                   (cons (cons (gx#datum->syntax__0
                                                                '#f
                                                                '%#ref)
                                                               (cons _L35107_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons (gx#datum->syntax__0 '#f '%#quote-syntax)
                             (cons _L35108_ '()))
                       '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (___kont4262442625_
                                    (lambda (_L34987_ _L34988_ _L34989_)
                                      (_assert34714_
                                       (gxc#apply-expression-subst
                                        _L34988_
                                        _L34989_
                                        _L34987_))))
                                   (___kont4262642627_ (lambda () '#!void)))
                               (if (gx#stx-pair? ___stx4261242613_)
                                   (let ((_e3472835678_
                                          (gx#stx-e ___stx4261242613_)))
                                     (let ((_tl3473035683_
                                            (##cdr _e3472835678_))
                                           (_hd3472935681_
                                            (##car _e3472835678_)))
                                       (if (gx#identifier? _hd3472935681_)
                                           (if (gx#stx-eq?
                                                '%#call
                                                _hd3472935681_)
                                               (if (gx#stx-pair?
                                                    _tl3473035683_)
                                                   (let ((_e3473135686_
                                                          (gx#stx-e
                                                           _tl3473035683_)))
                                                     (let ((_tl3473335691_
                                                            (##cdr _e3473135686_))
                                                           (_hd3473235689_
                                                            (##car _e3473135686_)))
                                                       (if (gx#stx-pair?
                                                            _hd3473235689_)
                                                           (let ((_e3473435694_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd3473235689_)))
                     (let ((_tl3473635699_ (##cdr _e3473435694_))
                           (_hd3473535697_ (##car _e3473435694_)))
                       (if (gx#identifier? _hd3473535697_)
                           (if (gx#stx-eq? '%#ref _hd3473535697_)
                               (if (gx#stx-pair? _tl3473635699_)
                                   (let ((_e3473735702_
                                          (gx#stx-e _tl3473635699_)))
                                     (let ((_tl3473935707_
                                            (##cdr _e3473735702_))
                                           (_hd3473835705_
                                            (##car _e3473735702_)))
                                       (if (gx#stx-null? _tl3473935707_)
                                           (if (gx#stx-pair? _tl3473335691_)
                                               (let ((_e3474035710_
                                                      (gx#stx-e
                                                       _tl3473335691_)))
                                                 (let ((_tl3474235715_
                                                        (##cdr _e3474035710_))
                                                       (_hd3474135713_
                                                        (##car _e3474035710_)))
                                                   (if (gx#stx-pair?
                                                        _hd3474135713_)
                                                       (let ((_e3474335718_
                                                              (gx#stx-e
                                                               _hd3474135713_)))
                                                         (let ((_tl3474535723_
                                                                (##cdr _e3474335718_))
                                                               (_hd3474435721_
                                                                (##car _e3474335718_)))
                                                           (if (gx#identifier?
                                                                _hd3474435721_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd3474435721_)
                           (if (gx#stx-pair? _tl3474535723_)
                               (let ((_e3474635726_ (gx#stx-e _tl3474535723_)))
                                 (let ((_tl3474835731_ (##cdr _e3474635726_))
                                       (_hd3474735729_ (##car _e3474635726_)))
                                   (if (gx#stx-null? _tl3474835731_)
                                       (if (gx#stx-null? _tl3474235715_)
                                           (___kont4261442615_
                                            _hd3474735729_
                                            _hd3473835705_)
                                           (if (gx#stx-pair? _tl3474235715_)
                                               (let ((_e3476735403_
                                                      (gx#stx-e
                                                       _tl3474235715_)))
                                                 (let ((_tl3476935408_
                                                        (##cdr _e3476735403_))
                                                       (_hd3476835406_
                                                        (##car _e3476735403_)))
                                                   (if (gx#stx-pair?
                                                        _hd3476835406_)
                                                       (let ((_e3477035411_
                                                              (gx#stx-e
                                                               _hd3476835406_)))
                                                         (let ((_tl3477235416_
                                                                (##cdr _e3477035411_))
                                                               (_hd3477135414_
                                                                (##car _e3477035411_)))
                                                           (if (gx#identifier?
                                                                _hd3477135414_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#quote
                            _hd3477135414_)
                           (if (gx#stx-pair? _tl3477235416_)
                               (let ((_e3477335419_ (gx#stx-e _tl3477235416_)))
                                 (let ((_tl3477535424_ (##cdr _e3477335419_))
                                       (_hd3477435422_ (##car _e3477335419_)))
                                   (if (gx#stx-null? _tl3477535424_)
                                       (if (gx#stx-null? _tl3476935408_)
                                           (___kont4261642617_
                                            _hd3477435422_
                                            _hd3474135713_
                                            _hd3473835705_)
                                           (___kont4262642627_))
                                       (___kont4262642627_))))
                               (___kont4262642627_))
                           (if (gx#stx-eq? '%#quote-syntax _hd3477135414_)
                               (if (gx#stx-pair? _tl3477235416_)
                                   (let ((_e3483335215_
                                          (gx#stx-e _tl3477235416_)))
                                     (let ((_tl3483535220_
                                            (##cdr _e3483335215_))
                                           (_hd3483435218_
                                            (##car _e3483335215_)))
                                       (if (gx#stx-null? _tl3483535220_)
                                           (if (gx#stx-null? _tl3476935408_)
                                               (___kont4262042621_
                                                _hd3483435218_
                                                _hd3474735729_
                                                _hd3473835705_)
                                               (___kont4262642627_))
                                           (___kont4262642627_))))
                                   (___kont4262642627_))
                               (___kont4262642627_)))
                       (___kont4262642627_))))
               (___kont4262642627_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont4262642627_)))
                                       (if (gx#stx-pair? _tl3474235715_)
                                           (let ((_e3476735403_
                                                  (gx#stx-e _tl3474235715_)))
                                             (let ((_tl3476935408_
                                                    (##cdr _e3476735403_))
                                                   (_hd3476835406_
                                                    (##car _e3476735403_)))
                                               (if (gx#stx-pair?
                                                    _hd3476835406_)
                                                   (let ((_e3477035411_
                                                          (gx#stx-e
                                                           _hd3476835406_)))
                                                     (let ((_tl3477235416_
                                                            (##cdr _e3477035411_))
                                                           (_hd3477135414_
                                                            (##car _e3477035411_)))
                                                       (if (gx#identifier?
                                                            _hd3477135414_)
                                                           (if (gx#stx-eq?
                                                                '%#quote
                                                                _hd3477135414_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3477235416_)
                           (let ((_e3477335419_ (gx#stx-e _tl3477235416_)))
                             (let ((_tl3477535424_ (##cdr _e3477335419_))
                                   (_hd3477435422_ (##car _e3477335419_)))
                               (if (gx#stx-null? _tl3477535424_)
                                   (if (gx#stx-null? _tl3476935408_)
                                       (___kont4261642617_
                                        _hd3477435422_
                                        _hd3474135713_
                                        _hd3473835705_)
                                       (___kont4262642627_))
                                   (___kont4262642627_))))
                           (___kont4262642627_))
                       (___kont4262642627_))
                   (___kont4262642627_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4262642627_))))
                                           (___kont4262642627_)))))
                               (if (gx#stx-pair? _tl3474235715_)
                                   (let ((_e3476735403_
                                          (gx#stx-e _tl3474235715_)))
                                     (let ((_tl3476935408_
                                            (##cdr _e3476735403_))
                                           (_hd3476835406_
                                            (##car _e3476735403_)))
                                       (if (gx#stx-pair? _hd3476835406_)
                                           (let ((_e3477035411_
                                                  (gx#stx-e _hd3476835406_)))
                                             (let ((_tl3477235416_
                                                    (##cdr _e3477035411_))
                                                   (_hd3477135414_
                                                    (##car _e3477035411_)))
                                               (if (gx#identifier?
                                                    _hd3477135414_)
                                                   (if (gx#stx-eq?
                                                        '%#quote
                                                        _hd3477135414_)
                                                       (if (gx#stx-pair?
                                                            _tl3477235416_)
                                                           (let ((_e3477335419_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3477235416_)))
                     (let ((_tl3477535424_ (##cdr _e3477335419_))
                           (_hd3477435422_ (##car _e3477335419_)))
                       (if (gx#stx-null? _tl3477535424_)
                           (if (gx#stx-null? _tl3476935408_)
                               (___kont4261642617_
                                _hd3477435422_
                                _hd3474135713_
                                _hd3473835705_)
                               (___kont4262642627_))
                           (___kont4262642627_))))
                   (___kont4262642627_))
               (___kont4262642627_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4262642627_))))
                                           (___kont4262642627_))))
                                   (___kont4262642627_)))
                           (if (gx#stx-pair? _tl3474235715_)
                               (let ((_e3476735403_ (gx#stx-e _tl3474235715_)))
                                 (let ((_tl3476935408_ (##cdr _e3476735403_))
                                       (_hd3476835406_ (##car _e3476735403_)))
                                   (if (gx#stx-pair? _hd3476835406_)
                                       (let ((_e3477035411_
                                              (gx#stx-e _hd3476835406_)))
                                         (let ((_tl3477235416_
                                                (##cdr _e3477035411_))
                                               (_hd3477135414_
                                                (##car _e3477035411_)))
                                           (if (gx#identifier? _hd3477135414_)
                                               (if (gx#stx-eq?
                                                    '%#quote
                                                    _hd3477135414_)
                                                   (if (gx#stx-pair?
                                                        _tl3477235416_)
                                                       (let ((_e3477335419_
                                                              (gx#stx-e
                                                               _tl3477235416_)))
                                                         (let ((_tl3477535424_
                                                                (##cdr _e3477335419_))
                                                               (_hd3477435422_
                                                                (##car _e3477335419_)))
                                                           (if (gx#stx-null?
                                                                _tl3477535424_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3476935408_)
                           (___kont4261642617_
                            _hd3477435422_
                            _hd3474135713_
                            _hd3473835705_)
                           (if (gx#stx-eq? '%#quote _hd3474435721_)
                               (if (gx#stx-pair? _tl3474535723_)
                                   (let ((_e3479735315_
                                          (gx#stx-e _tl3474535723_)))
                                     (let ((_tl3479935320_
                                            (##cdr _e3479735315_))
                                           (_hd3479835318_
                                            (##car _e3479735315_)))
                                       (___kont4262642627_)))
                                   (___kont4262642627_))
                               (if (gx#stx-eq? '%#quote-syntax _hd3474435721_)
                                   (if (gx#stx-pair? _tl3474535723_)
                                       (let ((_e3485735075_
                                              (gx#stx-e _tl3474535723_)))
                                         (let ((_tl3485935080_
                                                (##cdr _e3485735075_))
                                               (_hd3485835078_
                                                (##car _e3485735075_)))
                                           (___kont4262642627_)))
                                       (___kont4262642627_))
                                   (___kont4262642627_))))
                       (if (gx#stx-eq? '%#quote _hd3474435721_)
                           (if (gx#stx-pair? _tl3474535723_)
                               (let ((_e3479735315_ (gx#stx-e _tl3474535723_)))
                                 (let ((_tl3479935320_ (##cdr _e3479735315_))
                                       (_hd3479835318_ (##car _e3479735315_)))
                                   (if (gx#stx-null? _tl3479935320_)
                                       (if (gx#stx-null? _tl3476935408_)
                                           (___kont4261842619_
                                            _hd3476835406_
                                            _hd3479835318_
                                            _hd3473835705_)
                                           (___kont4262642627_))
                                       (___kont4262642627_))))
                               (___kont4262642627_))
                           (if (gx#stx-eq? '%#quote-syntax _hd3474435721_)
                               (if (gx#stx-pair? _tl3474535723_)
                                   (let ((_e3485735075_
                                          (gx#stx-e _tl3474535723_)))
                                     (let ((_tl3485935080_
                                            (##cdr _e3485735075_))
                                           (_hd3485835078_
                                            (##car _e3485735075_)))
                                       (___kont4262642627_)))
                                   (___kont4262642627_))
                               (___kont4262642627_))))))
               (if (gx#stx-eq? '%#quote _hd3474435721_)
                   (if (gx#stx-pair? _tl3474535723_)
                       (let ((_e3479735315_ (gx#stx-e _tl3474535723_)))
                         (let ((_tl3479935320_ (##cdr _e3479735315_))
                               (_hd3479835318_ (##car _e3479735315_)))
                           (if (gx#stx-null? _tl3479935320_)
                               (if (gx#stx-null? _tl3476935408_)
                                   (___kont4261842619_
                                    _hd3476835406_
                                    _hd3479835318_
                                    _hd3473835705_)
                                   (___kont4262642627_))
                               (___kont4262642627_))))
                       (___kont4262642627_))
                   (if (gx#stx-eq? '%#quote-syntax _hd3474435721_)
                       (if (gx#stx-pair? _tl3474535723_)
                           (let ((_e3485735075_ (gx#stx-e _tl3474535723_)))
                             (let ((_tl3485935080_ (##cdr _e3485735075_))
                                   (_hd3485835078_ (##car _e3485735075_)))
                               (___kont4262642627_)))
                           (___kont4262642627_))
                       (___kont4262642627_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-eq?
                                                        '%#quote
                                                        _hd3474435721_)
                                                       (if (gx#stx-pair?
                                                            _tl3474535723_)
                                                           (let ((_e3479735315_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3474535723_)))
                     (let ((_tl3479935320_ (##cdr _e3479735315_))
                           (_hd3479835318_ (##car _e3479735315_)))
                       (if (gx#stx-null? _tl3479935320_)
                           (if (gx#stx-null? _tl3476935408_)
                               (___kont4261842619_
                                _hd3476835406_
                                _hd3479835318_
                                _hd3473835705_)
                               (___kont4262642627_))
                           (___kont4262642627_))))
                   (___kont4262642627_))
               (if (gx#stx-eq? '%#quote-syntax _hd3474435721_)
                   (if (gx#stx-pair? _tl3474535723_)
                       (let ((_e3485735075_ (gx#stx-e _tl3474535723_)))
                         (let ((_tl3485935080_ (##cdr _e3485735075_))
                               (_hd3485835078_ (##car _e3485735075_)))
                           (if (gx#stx-null? _tl3485935080_)
                               (if (gx#stx-eq? '%#ref _hd3477135414_)
                                   (if (gx#stx-pair? _tl3477235416_)
                                       (let ((_e3486635099_
                                              (gx#stx-e _tl3477235416_)))
                                         (let ((_tl3486835104_
                                                (##cdr _e3486635099_))
                                               (_hd3486735102_
                                                (##car _e3486635099_)))
                                           (if (gx#stx-null? _tl3486835104_)
                                               (if (gx#stx-null?
                                                    _tl3476935408_)
                                                   (___kont4262242623_
                                                    _hd3486735102_
                                                    _hd3485835078_
                                                    _hd3473835705_)
                                                   (___kont4262642627_))
                                               (___kont4262642627_))))
                                       (___kont4262642627_))
                                   (___kont4262642627_))
                               (___kont4262642627_))))
                       (___kont4262642627_))
                   (___kont4262642627_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-eq?
                                                    '%#quote
                                                    _hd3474435721_)
                                                   (if (gx#stx-pair?
                                                        _tl3474535723_)
                                                       (let ((_e3479735315_
                                                              (gx#stx-e
                                                               _tl3474535723_)))
                                                         (let ((_tl3479935320_
                                                                (##cdr _e3479735315_))
                                                               (_hd3479835318_
                                                                (##car _e3479735315_)))
                                                           (if (gx#stx-null?
                                                                _tl3479935320_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3476935408_)
                           (___kont4261842619_
                            _hd3476835406_
                            _hd3479835318_
                            _hd3473835705_)
                           (___kont4262642627_))
                       (___kont4262642627_))))
               (___kont4262642627_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-eq?
                                                        '%#quote-syntax
                                                        _hd3474435721_)
                                                       (if (gx#stx-pair?
                                                            _tl3474535723_)
                                                           (let ((_e3485735075_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3474535723_)))
                     (let ((_tl3485935080_ (##cdr _e3485735075_))
                           (_hd3485835078_ (##car _e3485735075_)))
                       (___kont4262642627_)))
                   (___kont4262642627_))
               (___kont4262642627_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (gx#stx-eq? '%#quote _hd3474435721_)
                                           (if (gx#stx-pair? _tl3474535723_)
                                               (let ((_e3479735315_
                                                      (gx#stx-e
                                                       _tl3474535723_)))
                                                 (let ((_tl3479935320_
                                                        (##cdr _e3479735315_))
                                                       (_hd3479835318_
                                                        (##car _e3479735315_)))
                                                   (if (gx#stx-null?
                                                        _tl3479935320_)
                                                       (if (gx#stx-null?
                                                            _tl3476935408_)
                                                           (___kont4261842619_
                                                            _hd3476835406_
                                                            _hd3479835318_
                                                            _hd3473835705_)
                                                           (___kont4262642627_))
                                                       (___kont4262642627_))))
                                               (___kont4262642627_))
                                           (if (gx#stx-eq?
                                                '%#quote-syntax
                                                _hd3474435721_)
                                               (if (gx#stx-pair?
                                                    _tl3474535723_)
                                                   (let ((_e3485735075_
                                                          (gx#stx-e
                                                           _tl3474535723_)))
                                                     (let ((_tl3485935080_
                                                            (##cdr _e3485735075_))
                                                           (_hd3485835078_
                                                            (##car _e3485735075_)))
                                                       (___kont4262642627_)))
                                                   (___kont4262642627_))
                                               (___kont4262642627_))))))
                               (if (gx#stx-eq? '%#quote _hd3474435721_)
                                   (if (gx#stx-pair? _tl3474535723_)
                                       (let ((_e3479735315_
                                              (gx#stx-e _tl3474535723_)))
                                         (let ((_tl3479935320_
                                                (##cdr _e3479735315_))
                                               (_hd3479835318_
                                                (##car _e3479735315_)))
                                           (___kont4262642627_)))
                                       (___kont4262642627_))
                                   (if (gx#stx-eq?
                                        '%#quote-syntax
                                        _hd3474435721_)
                                       (if (gx#stx-pair? _tl3474535723_)
                                           (let ((_e3485735075_
                                                  (gx#stx-e _tl3474535723_)))
                                             (let ((_tl3485935080_
                                                    (##cdr _e3485735075_))
                                                   (_hd3485835078_
                                                    (##car _e3485735075_)))
                                               (___kont4262642627_)))
                                           (___kont4262642627_))
                                       (___kont4262642627_)))))
                       (if (gx#stx-pair? _tl3474235715_)
                           (let ((_e3476735403_ (gx#stx-e _tl3474235715_)))
                             (let ((_tl3476935408_ (##cdr _e3476735403_))
                                   (_hd3476835406_ (##car _e3476735403_)))
                               (if (gx#stx-pair? _hd3476835406_)
                                   (let ((_e3477035411_
                                          (gx#stx-e _hd3476835406_)))
                                     (let ((_tl3477235416_
                                            (##cdr _e3477035411_))
                                           (_hd3477135414_
                                            (##car _e3477035411_)))
                                       (if (gx#identifier? _hd3477135414_)
                                           (if (gx#stx-eq?
                                                '%#quote
                                                _hd3477135414_)
                                               (if (gx#stx-pair?
                                                    _tl3477235416_)
                                                   (let ((_e3477335419_
                                                          (gx#stx-e
                                                           _tl3477235416_)))
                                                     (let ((_tl3477535424_
                                                            (##cdr _e3477335419_))
                                                           (_hd3477435422_
                                                            (##car _e3477335419_)))
                                                       (if (gx#stx-null?
                                                            _tl3477535424_)
                                                           (if (gx#stx-null?
                                                                _tl3476935408_)
                                                               (___kont4261642617_
                                                                _hd3477435422_
                                                                _hd3474135713_
                                                                _hd3473835705_)
                                                               (___kont4262642627_))
                                                           (___kont4262642627_))))
                                                   (___kont4262642627_))
                                               (___kont4262642627_))
                                           (___kont4262642627_))))
                                   (___kont4262642627_))))
                           (___kont4262642627_)))))
               (if (gx#stx-pair? _tl3474235715_)
                   (let ((_e3476735403_ (gx#stx-e _tl3474235715_)))
                     (let ((_tl3476935408_ (##cdr _e3476735403_))
                           (_hd3476835406_ (##car _e3476735403_)))
                       (if (gx#stx-pair? _hd3476835406_)
                           (let ((_e3477035411_ (gx#stx-e _hd3476835406_)))
                             (let ((_tl3477235416_ (##cdr _e3477035411_))
                                   (_hd3477135414_ (##car _e3477035411_)))
                               (if (gx#identifier? _hd3477135414_)
                                   (if (gx#stx-eq? '%#quote _hd3477135414_)
                                       (if (gx#stx-pair? _tl3477235416_)
                                           (let ((_e3477335419_
                                                  (gx#stx-e _tl3477235416_)))
                                             (let ((_tl3477535424_
                                                    (##cdr _e3477335419_))
                                                   (_hd3477435422_
                                                    (##car _e3477335419_)))
                                               (if (gx#stx-null?
                                                    _tl3477535424_)
                                                   (if (gx#stx-null?
                                                        _tl3476935408_)
                                                       (___kont4261642617_
                                                        _hd3477435422_
                                                        _hd3474135713_
                                                        _hd3473835705_)
                                                       (___kont4262642627_))
                                                   (___kont4262642627_))))
                                           (___kont4262642627_))
                                       (___kont4262642627_))
                                   (___kont4262642627_))))
                           (___kont4262642627_))))
                   (___kont4262642627_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont4262642627_))
                                           (___kont4262642627_))))
                                   (___kont4262642627_))
                               (if (gx#stx-eq? '%#lambda _hd3473535697_)
                                   (if (gx#stx-pair? _tl3473635699_)
                                       (let ((_e3488134939_
                                              (gx#stx-e _tl3473635699_)))
                                         (let ((_tl3488334944_
                                                (##cdr _e3488134939_))
                                               (_hd3488234942_
                                                (##car _e3488134939_)))
                                           (if (gx#stx-pair? _hd3488234942_)
                                               (let ((_e3488434947_
                                                      (gx#stx-e
                                                       _hd3488234942_)))
                                                 (let ((_tl3488634952_
                                                        (##cdr _e3488434947_))
                                                       (_hd3488534950_
                                                        (##car _e3488434947_)))
                                                   (if (gx#stx-null?
                                                        _tl3488634952_)
                                                       (if (gx#stx-pair?
                                                            _tl3488334944_)
                                                           (let ((_e3488734955_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3488334944_)))
                     (let ((_tl3488934960_ (##cdr _e3488734955_))
                           (_hd3488834958_ (##car _e3488734955_)))
                       (if (gx#stx-null? _tl3488934960_)
                           (if (gx#stx-pair? _tl3473335691_)
                               (let ((_e3489034963_ (gx#stx-e _tl3473335691_)))
                                 (let ((_tl3489234968_ (##cdr _e3489034963_))
                                       (_hd3489134966_ (##car _e3489034963_)))
                                   (if (gx#stx-pair? _hd3489134966_)
                                       (let ((_e3489334971_
                                              (gx#stx-e _hd3489134966_)))
                                         (let ((_tl3489534976_
                                                (##cdr _e3489334971_))
                                               (_hd3489434974_
                                                (##car _e3489334971_)))
                                           (if (gx#identifier? _hd3489434974_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd3489434974_)
                                                   (if (gx#stx-pair?
                                                        _tl3489534976_)
                                                       (let ((_e3489634979_
                                                              (gx#stx-e
                                                               _tl3489534976_)))
                                                         (let ((_tl3489834984_
                                                                (##cdr _e3489634979_))
                                                               (_hd3489734982_
                                                                (##car _e3489634979_)))
                                                           (if (gx#stx-null?
                                                                _tl3489834984_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3489234968_)
                           (___kont4262442625_
                            _hd3489734982_
                            _hd3488834958_
                            _hd3488534950_)
                           (___kont4262642627_))
                       (___kont4262642627_))))
               (___kont4262642627_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4262642627_))
                                               (___kont4262642627_))))
                                       (___kont4262642627_))))
                               (___kont4262642627_))
                           (___kont4262642627_))))
                   (___kont4262642627_))
               (___kont4262642627_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont4262642627_))))
                                       (___kont4262642627_))
                                   (___kont4262642627_)))
                           (___kont4262642627_))))
                   (___kont4262642627_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4262642627_))
                                               (___kont4262642627_))
                                           (___kont4262642627_))))
                                   (___kont4262642627_)))))))))
                (_assert-type33700_
                 (lambda (_id34599_ _t34600_)
                   (letrec ((_super-e34602_
                             (lambda (_t34699_)
                               (let ((_tid3470034702_
                                      (##structure-ref
                                       _t34699_
                                       '2
                                       gxc#!struct-type::t
                                       '#f)))
                                 (if _tid3470034702_
                                     (let ((_tid34705_ _tid3470034702_))
                                       (gxc#optimizer-resolve-type _tid34705_))
                                     '#f)))))
                     (let _lp34604_ ((_rest34606_ _env-type33682_))
                       (let* ((_rest3460734615_ _rest34606_)
                              (_else3460934623_ (lambda () '#!void))
                              (_K3461134687_
                               (lambda (_rest34626_ _type-info34627_)
                                 (let* ((_type-info3462834640_
                                         _type-info34627_)
                                        (_else3463034648_
                                         (lambda () (_lp34604_ _rest34626_)))
                                        (_K3463234663_
                                         (lambda (_val34651_
                                                  _xt34652_
                                                  _xid34653_)
                                           (if (gx#free-identifier=?
                                                _id34599_
                                                _xid34653_)
                                               (if (eq? _t34600_ _xt34652_)
                                                   _val34651_
                                                   (if _val34651_
                                                       (if (and (##structure-instance-of?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _t34600_
                         'gxc#!struct-type::t)
                        (##structure-instance-of?
                         _xt34652_
                         'gxc#!struct-type::t))
                   (let _subtype?34655_ ((_xt34657_
                                          (_super-e34602_ _xt34652_)))
                     (if (not _xt34657_)
                         '#f
                         (if (eq? _xt34657_ _t34600_)
                             '#t
                             (_subtype?34655_ (_super-e34602_ _xt34657_)))))
                   '#f)
               (if (and (##structure-instance-of?
                         _t34600_
                         'gxc#!struct-type::t)
                        (##structure-instance-of?
                         _xt34652_
                         'gxc#!struct-type::t))
                   (let _supertype?34659_ ((_t34661_
                                            (_super-e34602_ _t34600_)))
                     (if (not _t34661_)
                         (_lp34604_ _rest34626_)
                         (if (eq? _t34661_ _xt34652_)
                             '#f
                             (_supertype?34659_ (_super-e34602_ _t34661_)))))
                   (_lp34604_ _rest34626_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_lp34604_ _rest34626_)))))
                                   (if (##pair? _type-info3462834640_)
                                       (let ((_hd3463334666_
                                              (##car _type-info3462834640_))
                                             (_tl3463434668_
                                              (##cdr _type-info3462834640_)))
                                         (let ((_xid34671_ _hd3463334666_))
                                           (if (##pair? _tl3463434668_)
                                               (let ((_hd3463534673_
                                                      (##car _tl3463434668_))
                                                     (_tl3463634675_
                                                      (##cdr _tl3463434668_)))
                                                 (let ((_xt34678_
                                                        _hd3463534673_))
                                                   (if (##pair? _tl3463634675_)
                                                       (let ((_hd3463734680_
                                                              (##car _tl3463634675_))
                                                             (_tl3463834682_
                                                              (##cdr _tl3463634675_)))
                                                         (let ((_val34685_
                                                                _hd3463734680_))
                                                           (if (##null? _tl3463834682_)
                                                               (_K3463234663_
                                                                _val34685_
                                                                _xt34678_
                                                                _xid34671_)
                                                               (_else3463034648_))))
                                                       (_else3463034648_))))
                                               (_else3463034648_))))
                                       (_else3463034648_))))))
                         (if (##pair? _rest3460734615_)
                             (let ((_hd3461234690_ (##car _rest3460734615_))
                                   (_tl3461334692_ (##cdr _rest3460734615_)))
                               (let* ((_type-info34695_ _hd3461234690_)
                                      (_rest34697_ _tl3461334692_))
                                 (_K3461134687_ _rest34697_ _type-info34695_)))
                             (_else3460934623_)))))))
                (_assert-count33701_
                 (lambda (_id34498_ _sym34499_ _count34500_)
                   (let _lp34502_ ((_rest34504_ _env-type33682_))
                     (let* ((_rest3450534513_ _rest34504_)
                            (_else3450734521_ (lambda () '#!void))
                            (_K3450934587_
                             (lambda (_rest34524_ _type-info34525_)
                               (let* ((_type-info3452634540_ _type-info34525_)
                                      (_else3452834548_
                                       (lambda () (_lp34502_ _rest34524_)))
                                      (_K3453034556_
                                       (lambda (_val34551_
                                                _xcount34552_
                                                _xsym34553_
                                                _xid34554_)
                                         (if (and (eq? _sym34499_ _xsym34553_)
                                                  (gx#free-identifier=?
                                                   _id34498_
                                                   _xid34554_))
                                             (if _val34551_
                                                 (fx= _count34500_
                                                      _xcount34552_)
                                                 (if (fx= _count34500_
                                                          _xcount34552_)
                                                     '#f
                                                     (_lp34502_ _rest34524_)))
                                             (_lp34502_ _rest34524_)))))
                                 (if (##pair? _type-info3452634540_)
                                     (let ((_hd3453134559_
                                            (##car _type-info3452634540_))
                                           (_tl3453234561_
                                            (##cdr _type-info3452634540_)))
                                       (let ((_xid34564_ _hd3453134559_))
                                         (if (##pair? _tl3453234561_)
                                             (let ((_hd3453334566_
                                                    (##car _tl3453234561_))
                                                   (_tl3453434568_
                                                    (##cdr _tl3453234561_)))
                                               (let ((_xsym34571_
                                                      _hd3453334566_))
                                                 (if (##pair? _tl3453434568_)
                                                     (let ((_hd3453534573_
                                                            (##car _tl3453434568_))
                                                           (_tl3453634575_
                                                            (##cdr _tl3453434568_)))
                                                       (let ((_xcount34578_
                                                              _hd3453534573_))
                                                         (if (##pair? _tl3453634575_)
                                                             (let ((_hd3453734580_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##car _tl3453634575_))
                           (_tl3453834582_ (##cdr _tl3453634575_)))
                       (let ((_val34585_ _hd3453734580_))
                         (if (##null? _tl3453834582_)
                             (_K3453034556_
                              _val34585_
                              _xcount34578_
                              _xsym34571_
                              _xid34564_)
                             (_else3452834548_))))
                     (_else3452834548_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_else3452834548_))))
                                             (_else3452834548_))))
                                     (_else3452834548_))))))
                       (if (##pair? _rest3450534513_)
                           (let ((_hd3451034590_ (##car _rest3450534513_))
                                 (_tl3451134592_ (##cdr _rest3450534513_)))
                             (let* ((_type-info34595_ _hd3451034590_)
                                    (_rest34597_ _tl3451134592_))
                               (_K3450934587_ _rest34597_ _type-info34595_)))
                           (_else3450734521_))))))
                (_assert-eqf33702_
                 (lambda (_id34388_ _sym34389_ _datum34390_)
                   (letrec ((_eqf34392_
                             (lambda (_sym34493_)
                               (let ((_$e34495_ _sym34493_))
                                 (if (eq? 'eq? _$e34495_)
                                     eq?
                                     (if (eq? 'eqv? _$e34495_)
                                         eqv?
                                         (if (eq? 'equal? _$e34495_)
                                             equal?
                                             (if (eq? 'free-identifier=?
                                                      _$e34495_)
                                                 gx#free-identifier=?
                                                 (if (eq? 'stx-eq? _$e34495_)
                                                     gx#stx-eq?
                                                     (gxc#raise-compile-error
                                                      '"Unexpected eqf symbol"
                                                      _body33443_
                                                      _sym34493_))))))))))
                     (let _lp34394_ ((_rest34396_ _env-type33682_))
                       (let* ((_rest3439734405_ _rest34396_)
                              (_else3439934413_ (lambda () '#!void))
                              (_K3440134481_
                               (lambda (_rest34416_ _type-info34417_)
                                 (let* ((_type-info3441834432_
                                         _type-info34417_)
                                        (_else3442034440_
                                         (lambda () (_lp34394_ _rest34416_)))
                                        (_K3442234450_
                                         (lambda (_val34443_
                                                  _xdatum34444_
                                                  _xsym34445_
                                                  _xid34446_)
                                           (if (and (eq? _sym34389_
                                                         _xsym34445_)
                                                    (gx#free-identifier=?
                                                     _id34388_
                                                     _xid34446_))
                                               (let ((_=?34448_
                                                      (_eqf34392_ _sym34389_)))
                                                 (if _val34443_
                                                     (_=?34448_
                                                      _datum34390_
                                                      _xdatum34444_)
                                                     (if (_=?34448_
                                                          _datum34390_
                                                          _xdatum34444_)
                                                         '#f
                                                         (_lp34394_
                                                          _rest34416_))))
                                               (_lp34394_ _rest34416_)))))
                                   (if (##pair? _type-info3441834432_)
                                       (let ((_hd3442334453_
                                              (##car _type-info3441834432_))
                                             (_tl3442434455_
                                              (##cdr _type-info3441834432_)))
                                         (let ((_xid34458_ _hd3442334453_))
                                           (if (##pair? _tl3442434455_)
                                               (let ((_hd3442534460_
                                                      (##car _tl3442434455_))
                                                     (_tl3442634462_
                                                      (##cdr _tl3442434455_)))
                                                 (let ((_xsym34465_
                                                        _hd3442534460_))
                                                   (if (##pair? _tl3442634462_)
                                                       (let ((_hd3442734467_
                                                              (##car _tl3442634462_))
                                                             (_tl3442834469_
                                                              (##cdr _tl3442634462_)))
                                                         (let ((_xdatum34472_
                                                                _hd3442734467_))
                                                           (if (##pair? _tl3442834469_)
                                                               (let ((_hd3442934474_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##car _tl3442834469_))
                             (_tl3443034476_ (##cdr _tl3442834469_)))
                         (let ((_val34479_ _hd3442934474_))
                           (if (##null? _tl3443034476_)
                               (_K3442234450_
                                _val34479_
                                _xdatum34472_
                                _xsym34465_
                                _xid34458_)
                               (_else3442034440_))))
                       (_else3442034440_))))
               (_else3442034440_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_else3442034440_))))
                                       (_else3442034440_))))))
                         (if (##pair? _rest3439734405_)
                             (let ((_hd3440234484_ (##car _rest3439734405_))
                                   (_tl3440334486_ (##cdr _rest3439734405_)))
                               (let* ((_type-info34489_ _hd3440234484_)
                                      (_rest34491_ _tl3440334486_))
                                 (_K3440134481_ _rest34491_ _type-info34489_)))
                             (_else3439934413_)))))))
                (_bind-e__4102541026_
                 (lambda (_bind34291_ _body34292_ _continue34293_)
                   (let _lp34295_ ((_rest34297_ _bind34291_)
                                   (_subst34298_ '())
                                   (_locals34299_ '())
                                   (_env34300_ _env-bind33683_))
                     (let* ((_rest3430134309_ _rest34297_)
                            (_else3430334323_
                             (lambda ()
                               (let* ((_body34317_
                                       (if (null? _subst34298_)
                                           _body34292_
                                           (gxc#apply-expression-subst*
                                            _body34292_
                                            _subst34298_)))
                                      (_body34320_
                                       (_do-bind!33694_
                                        _env34300_
                                        (lambda ()
                                          (_continue34293_ _body34317_)))))
                                 (if (null? _locals34299_)
                                     _body34320_
                                     (cons '%#let-values
                                           (cons _locals34299_
                                                 (cons _body34320_ '())))))))
                            (_K3430534364_
                             (lambda (_rest34326_ _bind34327_)
                               (let* ((_bind3432834335_ _bind34327_)
                                      (_E3433034339_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _bind3432834335_)))
                                      (_K3433134352_
                                       (lambda (_expr34342_ _id34343_)
                                         (let* ((_sexpr34345_
                                                 (gxc#apply-generate-runtime-repr
                                                  _expr34342_))
                                                (_$e34347_
                                                 (assget _sexpr34345_
                                                         _env-bind33683_)))
                                           (if _$e34347_
                                               ((lambda (_xid34350_)
                                                  (_lp34295_
                                                   _rest34326_
                                                   (cons (cons _id34343_
                                                               _xid34350_)
                                                         _subst34298_)
                                                   _locals34299_
                                                   _env34300_))
                                                _$e34347_)
                                               (_lp34295_
                                                _rest34326_
                                                _subst34298_
                                                (cons (cons (cons _id34343_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons _expr34342_ '()))
              _locals34299_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons _sexpr34345_
                                                            _id34343_)
                                                      _env34300_)))))))
                                 (if (##pair? _bind3432834335_)
                                     (let ((_hd3433234355_
                                            (##car _bind3432834335_))
                                           (_tl3433334357_
                                            (##cdr _bind3432834335_)))
                                       (let* ((_id34360_ _hd3433234355_)
                                              (_expr34362_ _tl3433334357_))
                                         (_K3433134352_
                                          _expr34362_
                                          _id34360_)))
                                     (_E3433034339_))))))
                       (if (##pair? _rest3430134309_)
                           (let ((_hd3430634367_ (##car _rest3430134309_))
                                 (_tl3430734369_ (##cdr _rest3430134309_)))
                             (let* ((_bind34372_ _hd3430634367_)
                                    (_rest34374_ _tl3430734369_))
                               (_K3430534364_ _rest34374_ _bind34372_)))
                           (_else3430334323_))))))
                (_bind-e__0__4102741028_
                 (lambda (_bind34379_ _body34380_)
                   (let ((_continue34382_ _optimize-e33696_))
                     (_bind-e__4102541026_
                      _bind34379_
                      _body34380_
                      _continue34382_))))
                (_bind-e33703_
                 (lambda _g44124_
                   (let ((_g44123_ (length _g44124_)))
                     (cond ((##fx= _g44123_ 2)
                            (apply _bind-e__0__4102741028_ _g44124_))
                           ((##fx= _g44123_ 3)
                            (apply _bind-e__4102541026_ _g44124_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g44124_))))))
                (_lookup-block33704_
                 (lambda (_id34286_)
                   (find (lambda (_block34288_)
                           (gx#free-identifier=? (car _block34288_) _id34286_))
                         _blocks33446_)))
                (_inline-block33705_
                 (lambda (_block34162_ _args34163_)
                   (let* ((_kont34165_ (caddr _block34162_))
                          (_g3416734193_
                           (lambda (_g3416834190_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g3416834190_)))
                          (_g3416634283_
                           (lambda (_g3416834196_)
                             (if (gx#stx-pair? _g3416834196_)
                                 (let ((_e3417134198_
                                        (gx#stx-e _g3416834196_)))
                                   (let ((_hd3417234201_ (##car _e3417134198_))
                                         (_tl3417334203_
                                          (##cdr _e3417134198_)))
                                     (if (gx#identifier? _hd3417234201_)
                                         (if (gx#stx-eq?
                                              '%#lambda
                                              _hd3417234201_)
                                             (if (gx#stx-pair? _tl3417334203_)
                                                 (let ((_e3417434206_
                                                        (gx#stx-e
                                                         _tl3417334203_)))
                                                   (let ((_hd3417534209_
                                                          (##car _e3417434206_))
                                                         (_tl3417634211_
                                                          (##cdr _e3417434206_)))
                                                     (if (gx#stx-pair/null?
                                                          _hd3417534209_)
                                                         (let ((_g44125_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd3417534209_
                         '0)))
                   (begin
                     (let ((_g44126_
                            (if (##values? _g44125_)
                                (##vector-length _g44125_)
                                1)))
                       (if (not (##fx= _g44126_ 2))
                           (error "Context expects 2 values" _g44126_)))
                     (let ((_target3417734214_ (##vector-ref _g44125_ 0))
                           (_tl3417934216_ (##vector-ref _g44125_ 1)))
                       (if (gx#stx-null? _tl3417934216_)
                           (letrec ((_loop3418034219_
                                     (lambda (_hd3417834222_ _id3418434224_)
                                       (if (gx#stx-pair? _hd3417834222_)
                                           (let ((_e3418134227_
                                                  (gx#stx-e _hd3417834222_)))
                                             (let ((_lp-hd3418234230_
                                                    (##car _e3418134227_))
                                                   (_lp-tl3418334232_
                                                    (##cdr _e3418134227_)))
                                               (_loop3418034219_
                                                _lp-tl3418334232_
                                                (cons _lp-hd3418234230_
                                                      _id3418434224_))))
                                           (let ((_id3418534235_
                                                  (reverse _id3418434224_)))
                                             (if (gx#stx-pair? _tl3417634211_)
                                                 (let ((_e3418634238_
                                                        (gx#stx-e
                                                         _tl3417634211_)))
                                                   (let ((_hd3418734241_
                                                          (##car _e3418634238_))
                                                         (_tl3418834243_
                                                          (##cdr _e3418634238_)))
                                                     (if (gx#stx-null?
                                                          _tl3418834243_)
                                                         ((lambda (_L34246_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L34247_)
                    (if (null? (foldr1 (lambda (_g3426634269_ _g3426734271_)
                                         (cons _g3426634269_ _g3426734271_))
                                       '()
                                       _L34247_))
                        _L34246_
                        (let ((_subst34281_
                               (map cons
                                    (foldr1 (lambda (_g3427334276_
                                                     _g3427434278_)
                                              (cons _g3427334276_
                                                    _g3427434278_))
                                            '()
                                            _L34247_)
                                    _args34163_)))
                          (gxc#apply-expression-subst*
                           _L34246_
                           _subst34281_))))
                  _hd3418734241_
                  _id3418534235_)
                 (_g3416734193_ _g3416834196_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g3416734193_
                                                  _g3416834196_)))))))
                             (_loop3418034219_ _target3417734214_ '()))
                           (_g3416734193_ _g3416834196_)))))
                 (_g3416734193_ _g3416834196_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g3416734193_ _g3416834196_))
                                             (_g3416734193_ _g3416834196_))
                                         (_g3416734193_ _g3416834196_))))
                                 (_g3416734193_ _g3416834196_)))))
                     (_g3416634283_ _kont34165_))))
                (_nonlinear-block?33706_
                 (lambda (_block33711_)
                   (letrec ((_nonlinear-expr?33713_
                             (lambda (_expr33821_)
                               (let* ((___stx4308243083_ _expr33821_)
                                      (_g3382733893_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx4308243083_))))
                                 (let ((___kont4308443085_ (lambda () '#t))
                                       (___kont4308643087_
                                        (lambda (_L34092_)
                                          (let* ((___stx4306443065_ _L34092_)
                                                 (_g3411034119_
                                                  (lambda ()
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     ___stx4306443065_))))
                                            (let ((___kont4306643067_
                                                   (lambda () '#f))
                                                  (___kont4306843069_
                                                   (lambda () '#t)))
                                              (if (gx#stx-pair?
                                                   ___stx4306443065_)
                                                  (let ((_e3411234131_
                                                         (gx#stx-e
                                                          ___stx4306443065_)))
                                                    (let ((_tl3411434136_
                                                           (##cdr _e3411234131_))
                                                          (_hd3411334134_
                                                           (##car _e3411234131_)))
                                                      (if (gx#identifier?
                                                           _hd3411334134_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd3411334134_)
                                                              (___kont4306643067_)
                                                              (___kont4306843069_))
                                                          (___kont4306843069_))))
                                                  (___kont4306843069_))))))
                                       (___kont4309043091_
                                        (lambda (_L33990_)
                                          (_nonlinear-expr?33713_ _L33990_)))
                                       (___kont4309243093_
                                        (lambda (_L33937_ _L33938_ _L33939_)
                                          (let ((_$e33958_
                                                 (_nonlinear-expr?33713_
                                                  _L33938_)))
                                            (if _$e33958_
                                                _$e33958_
                                                (_nonlinear-expr?33713_
                                                 _L33937_)))))
                                       (___kont4309443095_ (lambda () '#f)))
                                   (let* ((___match4314543146_
                                           (lambda (_e3386533966_
                                                    _hd3386633969_
                                                    _tl3386733971_
                                                    _e3386833974_
                                                    _hd3386933977_
                                                    _tl3387033979_)
                                             (if (gx#stx-pair? _tl3387033979_)
                                                 (let ((_e3387133982_
                                                        (gx#stx-e
                                                         _tl3387033979_)))
                                                   (let ((_tl3387333987_
                                                          (##cdr _e3387133982_))
                                                         (_hd3387233985_
                                                          (##car _e3387133982_)))
                                                     (if (gx#stx-null?
                                                          _tl3387333987_)
                                                         (___kont4309043091_
                                                          _hd3387233985_)
                                                         (___kont4309443095_))))
                                                 (___kont4309443095_))))
                                          (___match4312943130_
                                           (lambda (_e3383334008_
                                                    _hd3383434011_
                                                    _tl3383534013_
                                                    _e3383634016_
                                                    _hd3383734019_
                                                    _tl3383834021_
                                                    ___splice4308843089_
                                                    _target3383934024_
                                                    _tl3384134026_)
                                             (letrec ((_loop3384234029_
                                                       (lambda (_hd3384034032_)
                                                         (if (gx#stx-pair?
                                                              _hd3384034032_)
                                                             (let ((_e3384334035_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd3384034032_)))
                       (let ((_lp-tl3384534040_ (##cdr _e3384334035_))
                             (_lp-hd3384434038_ (##car _e3384334035_)))
                         (if (gx#stx-pair? _lp-hd3384434038_)
                             (let ((_e3384634043_
                                    (gx#stx-e _lp-hd3384434038_)))
                               (let ((_tl3384834048_ (##cdr _e3384634043_))
                                     (_hd3384734046_ (##car _e3384634043_)))
                                 (if (gx#stx-pair? _hd3384734046_)
                                     (let ((_e3384934051_
                                            (gx#stx-e _hd3384734046_)))
                                       (let ((_tl3385134056_
                                              (##cdr _e3384934051_))
                                             (_hd3385034054_
                                              (##car _e3384934051_)))
                                         (if (gx#stx-null? _tl3385134056_)
                                             (if (gx#stx-pair? _tl3384834048_)
                                                 (let ((_e3385234059_
                                                        (gx#stx-e
                                                         _tl3384834048_)))
                                                   (let ((_tl3385434064_
                                                          (##cdr _e3385234059_))
                                                         (_hd3385334062_
                                                          (##car _e3385234059_)))
                                                     (if (gx#stx-pair?
                                                          _hd3385334062_)
                                                         (let ((_e3385534067_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd3385334062_)))
                   (let ((_tl3385734072_ (##cdr _e3385534067_))
                         (_hd3385634070_ (##car _e3385534067_)))
                     (if (gx#identifier? _hd3385634070_)
                         (if (gx#stx-eq? '%#ref _hd3385634070_)
                             (if (gx#stx-pair? _tl3385734072_)
                                 (let ((_e3385834075_
                                        (gx#stx-e _tl3385734072_)))
                                   (let ((_tl3386034080_ (##cdr _e3385834075_))
                                         (_hd3385934078_
                                          (##car _e3385834075_)))
                                     (if (gx#stx-null? _tl3386034080_)
                                         (if (gx#stx-null? _tl3385434064_)
                                             (_loop3384234029_
                                              _lp-tl3384534040_)
                                             (___match4314543146_
                                              _e3383334008_
                                              _hd3383434011_
                                              _tl3383534013_
                                              _e3383634016_
                                              _hd3383734019_
                                              _tl3383834021_))
                                         (___match4314543146_
                                          _e3383334008_
                                          _hd3383434011_
                                          _tl3383534013_
                                          _e3383634016_
                                          _hd3383734019_
                                          _tl3383834021_))))
                                 (___match4314543146_
                                  _e3383334008_
                                  _hd3383434011_
                                  _tl3383534013_
                                  _e3383634016_
                                  _hd3383734019_
                                  _tl3383834021_))
                             (___match4314543146_
                              _e3383334008_
                              _hd3383434011_
                              _tl3383534013_
                              _e3383634016_
                              _hd3383734019_
                              _tl3383834021_))
                         (___match4314543146_
                          _e3383334008_
                          _hd3383434011_
                          _tl3383534013_
                          _e3383634016_
                          _hd3383734019_
                          _tl3383834021_))))
                 (___match4314543146_
                  _e3383334008_
                  _hd3383434011_
                  _tl3383534013_
                  _e3383634016_
                  _hd3383734019_
                  _tl3383834021_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___match4314543146_
                                                  _e3383334008_
                                                  _hd3383434011_
                                                  _tl3383534013_
                                                  _e3383634016_
                                                  _hd3383734019_
                                                  _tl3383834021_))
                                             (___match4314543146_
                                              _e3383334008_
                                              _hd3383434011_
                                              _tl3383534013_
                                              _e3383634016_
                                              _hd3383734019_
                                              _tl3383834021_))))
                                     (___match4314543146_
                                      _e3383334008_
                                      _hd3383434011_
                                      _tl3383534013_
                                      _e3383634016_
                                      _hd3383734019_
                                      _tl3383834021_))))
                             (___match4314543146_
                              _e3383334008_
                              _hd3383434011_
                              _tl3383534013_
                              _e3383634016_
                              _hd3383734019_
                              _tl3383834021_))))
                     (let ()
                       (if (gx#stx-pair? _tl3383834021_)
                           (let ((_e3386134084_ (gx#stx-e _tl3383834021_)))
                             (let ((_tl3386334089_ (##cdr _e3386134084_))
                                   (_hd3386234087_ (##car _e3386134084_)))
                               (if (gx#stx-null? _tl3386334089_)
                                   (___kont4308643087_ _hd3386234087_)
                                   (___kont4309443095_))))
                           (___kont4309443095_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_loop3384234029_
                                                _target3383934024_)))))
                                     (if (gx#stx-pair? ___stx4308243083_)
                                         (let ((_e3382934149_
                                                (gx#stx-e ___stx4308243083_)))
                                           (let ((_tl3383134154_
                                                  (##cdr _e3382934149_))
                                                 (_hd3383034152_
                                                  (##car _e3382934149_)))
                                             (if (gx#identifier?
                                                  _hd3383034152_)
                                                 (if (gx#stx-eq?
                                                      '%#letrec-values
                                                      _hd3383034152_)
                                                     (___kont4308443085_)
                                                     (if (gx#stx-eq?
                                                          '%#let-values
                                                          _hd3383034152_)
                                                         (if (gx#stx-pair?
                                                              _tl3383134154_)
                                                             (let ((_e3383634016_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl3383134154_)))
                       (let ((_tl3383834021_ (##cdr _e3383634016_))
                             (_hd3383734019_ (##car _e3383634016_)))
                         (if (gx#stx-pair/null? _hd3383734019_)
                             (let ((___splice4308843089_
                                    (gx#syntax-split-splice
                                     _hd3383734019_
                                     '0)))
                               (let ((_tl3384134026_
                                      (##vector-ref ___splice4308843089_ '1))
                                     (_target3383934024_
                                      (##vector-ref ___splice4308843089_ '0)))
                                 (if (gx#stx-null? _tl3384134026_)
                                     (___match4312943130_
                                      _e3382934149_
                                      _hd3383034152_
                                      _tl3383134154_
                                      _e3383634016_
                                      _hd3383734019_
                                      _tl3383834021_
                                      ___splice4308843089_
                                      _target3383934024_
                                      _tl3384134026_)
                                     (if (gx#stx-pair? _tl3383834021_)
                                         (let ((_e3387133982_
                                                (gx#stx-e _tl3383834021_)))
                                           (let ((_tl3387333987_
                                                  (##cdr _e3387133982_))
                                                 (_hd3387233985_
                                                  (##car _e3387133982_)))
                                             (if (gx#stx-null? _tl3387333987_)
                                                 (___kont4309043091_
                                                  _hd3387233985_)
                                                 (___kont4309443095_))))
                                         (___kont4309443095_)))))
                             (if (gx#stx-pair? _tl3383834021_)
                                 (let ((_e3387133982_
                                        (gx#stx-e _tl3383834021_)))
                                   (let ((_tl3387333987_ (##cdr _e3387133982_))
                                         (_hd3387233985_
                                          (##car _e3387133982_)))
                                     (if (gx#stx-null? _tl3387333987_)
                                         (___kont4309043091_ _hd3387233985_)
                                         (___kont4309443095_))))
                                 (___kont4309443095_)))))
                     (___kont4309443095_))
                 (if (gx#stx-eq? '%#if _hd3383034152_)
                     (if (gx#stx-pair? _tl3383134154_)
                         (let ((_e3388033913_ (gx#stx-e _tl3383134154_)))
                           (let ((_tl3388233918_ (##cdr _e3388033913_))
                                 (_hd3388133916_ (##car _e3388033913_)))
                             (if (gx#stx-pair? _tl3388233918_)
                                 (let ((_e3388333921_
                                        (gx#stx-e _tl3388233918_)))
                                   (let ((_tl3388533926_ (##cdr _e3388333921_))
                                         (_hd3388433924_
                                          (##car _e3388333921_)))
                                     (if (gx#stx-pair? _tl3388533926_)
                                         (let ((_e3388633929_
                                                (gx#stx-e _tl3388533926_)))
                                           (let ((_tl3388833934_
                                                  (##cdr _e3388633929_))
                                                 (_hd3388733932_
                                                  (##car _e3388633929_)))
                                             (if (gx#stx-null? _tl3388833934_)
                                                 (___kont4309243093_
                                                  _hd3388733932_
                                                  _hd3388433924_
                                                  _hd3388133916_)
                                                 (___kont4309443095_))))
                                         (___kont4309443095_))))
                                 (___kont4309443095_))))
                         (___kont4309443095_))
                     (___kont4309443095_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont4309443095_))))
                                         (___kont4309443095_))))))))
                     (let* ((_kont33715_ (caddr _block33711_))
                            (_g3371733743_
                             (lambda (_g3371833740_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g3371833740_)))
                            (_g3371633818_
                             (lambda (_g3371833746_)
                               (if (gx#stx-pair? _g3371833746_)
                                   (let ((_e3372133748_
                                          (gx#stx-e _g3371833746_)))
                                     (let ((_hd3372233751_
                                            (##car _e3372133748_))
                                           (_tl3372333753_
                                            (##cdr _e3372133748_)))
                                       (if (gx#identifier? _hd3372233751_)
                                           (if (gx#stx-eq?
                                                '%#lambda
                                                _hd3372233751_)
                                               (if (gx#stx-pair?
                                                    _tl3372333753_)
                                                   (let ((_e3372433756_
                                                          (gx#stx-e
                                                           _tl3372333753_)))
                                                     (let ((_hd3372533759_
                                                            (##car _e3372433756_))
                                                           (_tl3372633761_
                                                            (##cdr _e3372433756_)))
                                                       (if (gx#stx-pair/null?
                                                            _hd3372533759_)
                                                           (let ((_g44127_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _hd3372533759_ '0)))
                     (begin
                       (let ((_g44128_
                              (if (##values? _g44127_)
                                  (##vector-length _g44127_)
                                  1)))
                         (if (not (##fx= _g44128_ 2))
                             (error "Context expects 2 values" _g44128_)))
                       (let ((_target3372733764_ (##vector-ref _g44127_ 0))
                             (_tl3372933766_ (##vector-ref _g44127_ 1)))
                         (if (gx#stx-null? _tl3372933766_)
                             (letrec ((_loop3373033769_
                                       (lambda (_hd3372833772_ _id3373433774_)
                                         (if (gx#stx-pair? _hd3372833772_)
                                             (let ((_e3373133777_
                                                    (gx#stx-e _hd3372833772_)))
                                               (let ((_lp-hd3373233780_
                                                      (##car _e3373133777_))
                                                     (_lp-tl3373333782_
                                                      (##cdr _e3373133777_)))
                                                 (_loop3373033769_
                                                  _lp-tl3373333782_
                                                  (cons _lp-hd3373233780_
                                                        _id3373433774_))))
                                             (let ((_id3373533785_
                                                    (reverse _id3373433774_)))
                                               (if (gx#stx-pair?
                                                    _tl3372633761_)
                                                   (let ((_e3373633788_
                                                          (gx#stx-e
                                                           _tl3372633761_)))
                                                     (let ((_hd3373733791_
                                                            (##car _e3373633788_))
                                                           (_tl3373833793_
                                                            (##cdr _e3373633788_)))
                                                       (if (gx#stx-null?
                                                            _tl3373833793_)
                                                           ((lambda (_L33796_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L33797_)
                      (_nonlinear-expr?33713_ _L33796_))
                    _hd3373733791_
                    _id3373533785_)
                   (_g3371733743_ _g3371833746_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g3371733743_
                                                    _g3371833746_)))))))
                               (_loop3373033769_ _target3372733764_ '()))
                             (_g3371733743_ _g3371833746_)))))
                   (_g3371733743_ _g3371833746_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g3371733743_
                                                    _g3371833746_))
                                               (_g3371733743_ _g3371833746_))
                                           (_g3371733743_ _g3371833746_))))
                                   (_g3371733743_ _g3371833746_)))))
                       (_g3371633818_ _kont33715_))))))
        (_do-assert33685_
         _assert33444_
         (lambda ()
           (_do-bind33692_
            _bind33445_
            (lambda ()
              (if (memq '@match:prefix (gxc#current-annotation-optimizer))
                  (_do-splice!33695_
                   (lambda () (_optimize-e33696_ _body33443_)))
                  (_optimize-e33696_ _body33443_)))))))))
  (define gxc#optimize-match-prune-blocks
    (lambda (_blocks33355_ _konts33356_)
      (letrec* ((_rtab33358_ (make-table 'test: eq?)))
        (for-each
         (lambda (_block33360_)
           (gxc#apply-collect-runtime-refs (caddr _block33360_) _rtab33358_))
         _konts33356_)
        (let _lp33362_ ((_rest33364_ _blocks33355_) (_r33365_ '()))
          (let* ((_rest3336633374_ _rest33364_)
                 (_else3336833382_ (lambda () (reverse _r33365_)))
                 (_K3337033431_
                  (lambda (_rest33385_ _block33386_)
                    (let* ((_block3338733398_ _block33386_)
                           (_E3338933402_
                            (lambda ()
                              (error '"No clause matching" _block3338733398_)))
                           (_K3339033409_
                            (lambda (_kont33405_ _type33406_ _name33407_)
                              (if (table-ref
                                   _rtab33358_
                                   (gxc#identifier-symbol _name33407_)
                                   '#f)
                                  (begin
                                    (gxc#apply-collect-runtime-refs
                                     _kont33405_
                                     _rtab33358_)
                                    (_lp33362_
                                     _rest33385_
                                     (cons _block33386_ _r33365_)))
                                  (_lp33362_ _rest33385_ _r33365_)))))
                      (if (##pair? _block3338733398_)
                          (let ((_hd3339133412_ (##car _block3338733398_))
                                (_tl3339233414_ (##cdr _block3338733398_)))
                            (let ((_name33417_ _hd3339133412_))
                              (if (##pair? _tl3339233414_)
                                  (let ((_hd3339333419_ (##car _tl3339233414_))
                                        (_tl3339433421_
                                         (##cdr _tl3339233414_)))
                                    (let ((_type33424_ _hd3339333419_))
                                      (if (##pair? _tl3339433421_)
                                          (let* ((_hd3339533426_
                                                  (##car _tl3339433421_))
                                                 (_kont33429_ _hd3339533426_))
                                            (_K3339033409_
                                             _kont33429_
                                             _type33424_
                                             _name33417_))
                                          (_E3338933402_))))
                                  (_E3338933402_))))
                          (_E3338933402_))))))
            (if (##pair? _rest3336633374_)
                (let ((_hd3337133434_ (##car _rest3336633374_))
                      (_tl3337233436_ (##cdr _rest3336633374_)))
                  (let* ((_block33439_ _hd3337133434_)
                         (_rest33441_ _tl3337233436_))
                    (_K3337033431_ _rest33441_ _block33439_)))
                (_else3336833382_)))))))
  (define gxc#optimize-match-fuse-restart-blocks
    (lambda (_blocks33279_ _konts33280_)
      (let* ((_blocks3328133297_ _blocks33279_)
             (_else3328333305_ (lambda () _blocks33279_))
             (_K3328533323_
              (lambda (_rest33308_ _kont33309_ _name33310_)
                (letrec* ((_rtab33312_ (make-table 'test: eq?)))
                  (for-each
                   (lambda (_block33314_)
                     (gxc#apply-collect-runtime-refs
                      (caddr _block33314_)
                      _rtab33312_))
                   _konts33280_)
                  (if (fx= (table-ref
                            _rtab33312_
                            (gxc#identifier-symbol _name33310_))
                           '1)
                      (let* ((_rblock33318_
                              (find (lambda (_block33316_)
                                      (gxc#apply-find-var-refs
                                       (caddr _block33316_)
                                       (cons _name33310_ '())))
                                    _konts33280_))
                             (_assert33320_
                              (gxc#optimize-match-assert-restart
                               _rblock33318_
                               _name33310_)))
                        (cons (cons _name33310_
                                    (cons 'restart:
                                          (cons _kont33309_
                                                (cons _assert33320_ '()))))
                              _rest33308_))
                      _blocks33279_)))))
        (if (##pair? _blocks3328133297_)
            (let ((_hd3328633326_ (##car _blocks3328133297_))
                  (_tl3328733328_ (##cdr _blocks3328133297_)))
              (if (##pair? _hd3328633326_)
                  (let ((_hd3328833331_ (##car _hd3328633326_))
                        (_tl3328933333_ (##cdr _hd3328633326_)))
                    (let ((_name33336_ _hd3328833331_))
                      (if (##pair? _tl3328933333_)
                          (let ((_hd3329033338_ (##car _tl3328933333_))
                                (_tl3329133340_ (##cdr _tl3328933333_)))
                            (if (##eq? _hd3329033338_ 'restart:)
                                (if (##pair? _tl3329133340_)
                                    (let ((_hd3329233343_
                                           (##car _tl3329133340_))
                                          (_tl3329333345_
                                           (##cdr _tl3329133340_)))
                                      (let ((_kont33348_ _hd3329233343_))
                                        (if (##pair? _tl3329333345_)
                                            (let ((_tl3329533350_
                                                   (##cdr _tl3329333345_)))
                                              (if (##null? _tl3329533350_)
                                                  (let ((_rest33353_
                                                         _tl3328733328_))
                                                    (_K3328533323_
                                                     _rest33353_
                                                     _kont33348_
                                                     _name33336_))
                                                  (_else3328333305_)))
                                            (_else3328333305_))))
                                    (_else3328333305_))
                                (_else3328333305_)))
                          (_else3328333305_))))
                  (_else3328333305_)))
            (_else3328333305_)))))
  (define gxc#optimize-match-assert-restart
    (lambda (_block32675_ _name32676_)
      (letrec ((_assert-restart32678_
                (lambda (_expr32834_ _assert32835_)
                  (let* ((___stx4318643187_ _expr32834_)
                         (_g3284132938_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx4318643187_))))
                    (let ((___kont4318843189_
                           (lambda (_L33254_ _L33255_ _L33256_)
                             (let ((_$e33273_
                                    (_assert-restart32678_
                                     _L33255_
                                     (cons (cons _L33256_ '#t)
                                           _assert32835_))))
                               (if _$e33273_
                                   _$e33273_
                                   (_assert-restart32678_
                                    _L33254_
                                    (cons (cons _L33256_ '#f)
                                          _assert32835_))))))
                          (___kont4319043191_
                           (lambda (_L33202_)
                             (if (gx#free-identifier=? _L33202_ _name32676_)
                                 _assert32835_
                                 '#f)))
                          (___kont4319243193_
                           (lambda (_L33152_)
                             (_assert-restart32678_ _L33152_ _assert32835_)))
                          (___kont4319443195_
                           (lambda (_L33078_
                                    _L33079_
                                    _L33080_
                                    _L33081_
                                    _L33082_)
                             (_assert-restart32678_ _L33080_ _assert32835_)))
                          (___kont4320043201_ (lambda () '#f)))
                      (let ((___match4335543356_
                             (lambda (_e3288632950_
                                      _hd3288732953_
                                      _tl3288832955_
                                      _e3288932958_
                                      _hd3289032961_
                                      _tl3289132963_
                                      _e3289232966_
                                      _hd3289332969_
                                      _tl3289432971_
                                      _e3289532974_
                                      _hd3289632977_
                                      _tl3289732979_
                                      _e3289832982_
                                      _hd3289932985_
                                      _tl3290032987_
                                      _e3290132990_
                                      _hd3290232993_
                                      _tl3290332995_
                                      _e3290432998_
                                      _hd3290533001_
                                      _tl3290633003_
                                      _e3290733006_
                                      _hd3290833009_
                                      _tl3290933011_
                                      ___splice4319643197_
                                      _target3291033014_
                                      _tl3291233016_)
                               (letrec ((_loop3291333019_
                                         (lambda (_hd3291133022_
                                                  _id3291733024_)
                                           (if (gx#stx-pair? _hd3291133022_)
                                               (let ((_e3291433027_
                                                      (gx#stx-e
                                                       _hd3291133022_)))
                                                 (let ((_lp-tl3291633032_
                                                        (##cdr _e3291433027_))
                                                       (_lp-hd3291533030_
                                                        (##car _e3291433027_)))
                                                   (_loop3291333019_
                                                    _lp-tl3291633032_
                                                    (cons _lp-hd3291533030_
                                                          _id3291733024_))))
                                               (let ((_id3291833035_
                                                      (reverse _id3291733024_)))
                                                 (if (gx#stx-pair?
                                                      _tl3290933011_)
                                                     (let ((_e3291933038_
                                                            (gx#stx-e
                                                             _tl3290933011_)))
                                                       (let ((_tl3292133043_
                                                              (##cdr _e3291933038_))
                                                             (_hd3292033041_
                                                              (##car _e3291933038_)))
                                                         (if (gx#stx-null?
                                                              _tl3292133043_)
                                                             (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl3290332995_)
                         (if (gx#stx-pair/null? _tl3289432971_)
                             (let ((___splice4319843199_
                                    (gx#syntax-split-splice
                                     _tl3289432971_
                                     '0)))
                               (let ((_tl3292433048_
                                      (##vector-ref ___splice4319843199_ '1))
                                     (_target3292233046_
                                      (##vector-ref ___splice4319843199_ '0)))
                                 (if (gx#stx-null? _tl3292433048_)
                                     (letrec ((_loop3292533051_
                                               (lambda (_hd3292333054_
                                                        _bind3292933056_)
                                                 (if (gx#stx-pair?
                                                      _hd3292333054_)
                                                     (let ((_e3292633059_
                                                            (gx#stx-e
                                                             _hd3292333054_)))
                                                       (let ((_lp-tl3292833064_
                                                              (##cdr _e3292633059_))
                                                             (_lp-hd3292733062_
                                                              (##car _e3292633059_)))
                                                         (_loop3292533051_
                                                          _lp-tl3292833064_
                                                          (cons _lp-hd3292733062_
                                                                _bind3292933056_))))
                                                     (let ((_bind3293033067_
                                                            (reverse _bind3292933056_)))
                                                       (if (gx#stx-pair?
                                                            _tl3289132963_)
                                                           (let ((_e3293133070_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3289132963_)))
                     (let ((_tl3293333075_ (##cdr _e3293133070_))
                           (_hd3293233073_ (##car _e3293133070_)))
                       (if (gx#stx-null? _tl3293333075_)
                           (___kont4319443195_
                            _hd3293233073_
                            _bind3293033067_
                            _hd3292033041_
                            _id3291833035_
                            _hd3289932985_)
                           (___kont4320043201_))))
                   (___kont4320043201_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_loop3292533051_
                                        _target3292233046_
                                        '()))
                                     (___kont4320043201_))))
                             (___kont4320043201_))
                         (___kont4320043201_))
                     (___kont4320043201_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4320043201_)))))))
                                 (_loop3291333019_ _target3291033014_ '())))))
                        (if (gx#stx-pair? ___stx4318643187_)
                            (let ((_e3284633222_ (gx#stx-e ___stx4318643187_)))
                              (let ((_tl3284833227_ (##cdr _e3284633222_))
                                    (_hd3284733225_ (##car _e3284633222_)))
                                (if (gx#identifier? _hd3284733225_)
                                    (if (gx#stx-eq? '%#if _hd3284733225_)
                                        (if (gx#stx-pair? _tl3284833227_)
                                            (let ((_e3284933230_
                                                   (gx#stx-e _tl3284833227_)))
                                              (let ((_tl3285133235_
                                                     (##cdr _e3284933230_))
                                                    (_hd3285033233_
                                                     (##car _e3284933230_)))
                                                (if (gx#stx-pair?
                                                     _tl3285133235_)
                                                    (let ((_e3285233238_
                                                           (gx#stx-e
                                                            _tl3285133235_)))
                                                      (let ((_tl3285433243_
                                                             (##cdr _e3285233238_))
                                                            (_hd3285333241_
                                                             (##car _e3285233238_)))
                                                        (if (gx#stx-pair?
                                                             _tl3285433243_)
                                                            (let ((_e3285533246_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3285433243_)))
                      (let ((_tl3285733251_ (##cdr _e3285533246_))
                            (_hd3285633249_ (##car _e3285533246_)))
                        (if (gx#stx-null? _tl3285733251_)
                            (___kont4318843189_
                             _hd3285633249_
                             _hd3285333241_
                             _hd3285033233_)
                            (___kont4320043201_))))
                    (___kont4320043201_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4320043201_))))
                                            (___kont4320043201_))
                                        (if (gx#stx-eq? '%#call _hd3284733225_)
                                            (if (gx#stx-pair? _tl3284833227_)
                                                (let ((_e3286233178_
                                                       (gx#stx-e
                                                        _tl3284833227_)))
                                                  (let ((_tl3286433183_
                                                         (##cdr _e3286233178_))
                                                        (_hd3286333181_
                                                         (##car _e3286233178_)))
                                                    (if (gx#stx-pair?
                                                         _hd3286333181_)
                                                        (let ((_e3286533186_
                                                               (gx#stx-e
                                                                _hd3286333181_)))
                                                          (let ((_tl3286733191_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3286533186_))
                        (_hd3286633189_ (##car _e3286533186_)))
                    (if (gx#identifier? _hd3286633189_)
                        (if (gx#stx-eq? '%#ref _hd3286633189_)
                            (if (gx#stx-pair? _tl3286733191_)
                                (let ((_e3286833194_
                                       (gx#stx-e _tl3286733191_)))
                                  (let ((_tl3287033199_ (##cdr _e3286833194_))
                                        (_hd3286933197_ (##car _e3286833194_)))
                                    (if (gx#stx-null? _tl3287033199_)
                                        (___kont4319043191_ _hd3286933197_)
                                        (___kont4320043201_))))
                                (___kont4320043201_))
                            (___kont4320043201_))
                        (___kont4320043201_))))
                (___kont4320043201_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4320043201_))
                                            (if (gx#stx-eq?
                                                 '%#let-values
                                                 _hd3284733225_)
                                                (if (gx#stx-pair?
                                                     _tl3284833227_)
                                                    (let ((_e3287533136_
                                                           (gx#stx-e
                                                            _tl3284833227_)))
                                                      (let ((_tl3287733141_
                                                             (##cdr _e3287533136_))
                                                            (_hd3287633139_
                                                             (##car _e3287533136_)))
                                                        (if (gx#stx-pair?
                                                             _tl3287733141_)
                                                            (let ((_e3287833144_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3287733141_)))
                      (let ((_tl3288033149_ (##cdr _e3287833144_))
                            (_hd3287933147_ (##car _e3287833144_)))
                        (if (gx#stx-null? _tl3288033149_)
                            (___kont4319243193_ _hd3287933147_)
                            (___kont4320043201_))))
                    (___kont4320043201_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4320043201_))
                                                (if (gx#stx-eq?
                                                     '%#letrec-values
                                                     _hd3284733225_)
                                                    (if (gx#stx-pair?
                                                         _tl3284833227_)
                                                        (let ((_e3288932958_
                                                               (gx#stx-e
                                                                _tl3284833227_)))
                                                          (let ((_tl3289132963_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3288932958_))
                        (_hd3289032961_ (##car _e3288932958_)))
                    (if (gx#stx-pair? _hd3289032961_)
                        (let ((_e3289232966_ (gx#stx-e _hd3289032961_)))
                          (let ((_tl3289432971_ (##cdr _e3289232966_))
                                (_hd3289332969_ (##car _e3289232966_)))
                            (if (gx#stx-pair? _hd3289332969_)
                                (let ((_e3289532974_
                                       (gx#stx-e _hd3289332969_)))
                                  (let ((_tl3289732979_ (##cdr _e3289532974_))
                                        (_hd3289632977_ (##car _e3289532974_)))
                                    (if (gx#stx-pair? _hd3289632977_)
                                        (let ((_e3289832982_
                                               (gx#stx-e _hd3289632977_)))
                                          (let ((_tl3290032987_
                                                 (##cdr _e3289832982_))
                                                (_hd3289932985_
                                                 (##car _e3289832982_)))
                                            (if (gx#stx-null? _tl3290032987_)
                                                (if (gx#stx-pair?
                                                     _tl3289732979_)
                                                    (let ((_e3290132990_
                                                           (gx#stx-e
                                                            _tl3289732979_)))
                                                      (let ((_tl3290332995_
                                                             (##cdr _e3290132990_))
                                                            (_hd3290232993_
                                                             (##car _e3290132990_)))
                                                        (if (gx#stx-pair?
                                                             _hd3290232993_)
                                                            (let ((_e3290432998_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd3290232993_)))
                      (let ((_tl3290633003_ (##cdr _e3290432998_))
                            (_hd3290533001_ (##car _e3290432998_)))
                        (if (gx#identifier? _hd3290533001_)
                            (if (gx#stx-eq? '%#lambda _hd3290533001_)
                                (if (gx#stx-pair? _tl3290633003_)
                                    (let ((_e3290733006_
                                           (gx#stx-e _tl3290633003_)))
                                      (let ((_tl3290933011_
                                             (##cdr _e3290733006_))
                                            (_hd3290833009_
                                             (##car _e3290733006_)))
                                        (if (gx#stx-pair/null? _hd3290833009_)
                                            (let ((___splice4319643197_
                                                   (gx#syntax-split-splice
                                                    _hd3290833009_
                                                    '0)))
                                              (let ((_tl3291233016_
                                                     (##vector-ref
                                                      ___splice4319643197_
                                                      '1))
                                                    (_target3291033014_
                                                     (##vector-ref
                                                      ___splice4319643197_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl3291233016_)
                                                    (___match4335543356_
                                                     _e3284633222_
                                                     _hd3284733225_
                                                     _tl3284833227_
                                                     _e3288932958_
                                                     _hd3289032961_
                                                     _tl3289132963_
                                                     _e3289232966_
                                                     _hd3289332969_
                                                     _tl3289432971_
                                                     _e3289532974_
                                                     _hd3289632977_
                                                     _tl3289732979_
                                                     _e3289832982_
                                                     _hd3289932985_
                                                     _tl3290032987_
                                                     _e3290132990_
                                                     _hd3290232993_
                                                     _tl3290332995_
                                                     _e3290432998_
                                                     _hd3290533001_
                                                     _tl3290633003_
                                                     _e3290733006_
                                                     _hd3290833009_
                                                     _tl3290933011_
                                                     ___splice4319643197_
                                                     _target3291033014_
                                                     _tl3291233016_)
                                                    (___kont4320043201_))))
                                            (___kont4320043201_))))
                                    (___kont4320043201_))
                                (___kont4320043201_))
                            (___kont4320043201_))))
                    (___kont4320043201_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4320043201_))
                                                (___kont4320043201_))))
                                        (___kont4320043201_))))
                                (___kont4320043201_))))
                        (___kont4320043201_))))
                (___kont4320043201_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4320043201_)))))
                                    (___kont4320043201_))))
                            (___kont4320043201_))))))))
        (let* ((_block3267932692_ _block32675_)
               (_E3268132696_
                (lambda () (error '"No clause matching" _block3267932692_)))
               (_K3268232809_
                (lambda (_maybe-bind32699_ _assert32700_ _kont32701_)
                  (let* ((_g3270332729_
                          (lambda (_g3270432726_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g3270432726_)))
                         (_g3270232806_
                          (lambda (_g3270432732_)
                            (if (gx#stx-pair? _g3270432732_)
                                (let ((_e3270732734_ (gx#stx-e _g3270432732_)))
                                  (let ((_hd3270832737_ (##car _e3270732734_))
                                        (_tl3270932739_ (##cdr _e3270732734_)))
                                    (if (gx#identifier? _hd3270832737_)
                                        (if (gx#stx-eq?
                                             '%#lambda
                                             _hd3270832737_)
                                            (if (gx#stx-pair? _tl3270932739_)
                                                (let ((_e3271032742_
                                                       (gx#stx-e
                                                        _tl3270932739_)))
                                                  (let ((_hd3271132745_
                                                         (##car _e3271032742_))
                                                        (_tl3271232747_
                                                         (##cdr _e3271032742_)))
                                                    (if (gx#stx-pair/null?
                                                         _hd3271132745_)
                                                        (let ((_g44129_
                                                               (gx#syntax-split-splice
                                                                _hd3271132745_
                                                                '0)))
                                                          (begin
                                                            (let ((_g44130_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if (##values? _g44129_)
                               (##vector-length _g44129_)
                               1)))
                      (if (not (##fx= _g44130_ 2))
                          (error "Context expects 2 values" _g44130_)))
                    (let ((_target3271332750_ (##vector-ref _g44129_ 0))
                          (_tl3271532752_ (##vector-ref _g44129_ 1)))
                      (if (gx#stx-null? _tl3271532752_)
                          (letrec ((_loop3271632755_
                                    (lambda (_hd3271432758_ _id3272032760_)
                                      (if (gx#stx-pair? _hd3271432758_)
                                          (let ((_e3271732763_
                                                 (gx#stx-e _hd3271432758_)))
                                            (let ((_lp-hd3271832766_
                                                   (##car _e3271732763_))
                                                  (_lp-tl3271932768_
                                                   (##cdr _e3271732763_)))
                                              (_loop3271632755_
                                               _lp-tl3271932768_
                                               (cons _lp-hd3271832766_
                                                     _id3272032760_))))
                                          (let ((_id3272132771_
                                                 (reverse _id3272032760_)))
                                            (if (gx#stx-pair? _tl3271232747_)
                                                (let ((_e3272232774_
                                                       (gx#stx-e
                                                        _tl3271232747_)))
                                                  (let ((_hd3272332777_
                                                         (##car _e3272232774_))
                                                        (_tl3272432779_
                                                         (##cdr _e3272232774_)))
                                                    (if (gx#stx-null?
                                                         _tl3272432779_)
                                                        ((lambda (_L32782_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L32783_)
                   (_assert-restart32678_ _L32782_ _assert32700_))
                 _hd3272332777_
                 _id3272132771_)
                (_g3270332729_ _g3270432732_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3270332729_
                                                 _g3270432732_)))))))
                            (_loop3271632755_ _target3271332750_ '()))
                          (_g3270332729_ _g3270432732_)))))
                (_g3270332729_ _g3270432732_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3270332729_ _g3270432732_))
                                            (_g3270332729_ _g3270432732_))
                                        (_g3270332729_ _g3270432732_))))
                                (_g3270332729_ _g3270432732_)))))
                    (_g3270232806_ _kont32701_)))))
          (if (##pair? _block3267932692_)
              (let ((_tl3268432812_ (##cdr _block3267932692_)))
                (if (##pair? _tl3268432812_)
                    (let ((_tl3268632815_ (##cdr _tl3268432812_)))
                      (if (##pair? _tl3268632815_)
                          (let ((_hd3268732818_ (##car _tl3268632815_))
                                (_tl3268832820_ (##cdr _tl3268632815_)))
                            (let ((_kont32823_ _hd3268732818_))
                              (if (##pair? _tl3268832820_)
                                  (let ((_hd3268932825_ (##car _tl3268832820_))
                                        (_tl3269032827_
                                         (##cdr _tl3268832820_)))
                                    (let* ((_assert32830_ _hd3268932825_)
                                           (_maybe-bind32832_ _tl3269032827_))
                                      (_K3268232809_
                                       _maybe-bind32832_
                                       _assert32830_
                                       _kont32823_)))
                                  (_E3268132696_))))
                          (_E3268132696_)))
                    (_E3268132696_)))
              (_E3268132696_))))))
  (define gxc#optimize-syntax-case
    (lambda (_stx32306_)
      (let* ((_g3230832338_
              (lambda (_g3230932335_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3230932335_)))
             (_g3230732672_
              (lambda (_g3230932341_)
                (if (gx#stx-pair? _g3230932341_)
                    (let ((_e3231332343_ (gx#stx-e _g3230932341_)))
                      (let ((_hd3231432346_ (##car _e3231332343_))
                            (_tl3231532348_ (##cdr _e3231332343_)))
                        (if (gx#identifier? _hd3231432346_)
                            (if (gx#stx-eq? '%#let-values _hd3231432346_)
                                (if (gx#stx-pair? _tl3231532348_)
                                    (let ((_e3231632351_
                                           (gx#stx-e _tl3231532348_)))
                                      (let ((_hd3231732354_
                                             (##car _e3231632351_))
                                            (_tl3231832356_
                                             (##cdr _e3231632351_)))
                                        (if (gx#stx-pair? _hd3231732354_)
                                            (let ((_e3231932359_
                                                   (gx#stx-e _hd3231732354_)))
                                              (let ((_hd3232032362_
                                                     (##car _e3231932359_))
                                                    (_tl3232132364_
                                                     (##cdr _e3231932359_)))
                                                (if (gx#stx-pair?
                                                     _hd3232032362_)
                                                    (let ((_e3232232367_
                                                           (gx#stx-e
                                                            _hd3232032362_)))
                                                      (let ((_hd3232332370_
                                                             (##car _e3232232367_))
                                                            (_tl3232432372_
                                                             (##cdr _e3232232367_)))
                                                        (if (gx#stx-pair?
                                                             _hd3232332370_)
                                                            (let ((_e3232532375_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd3232332370_)))
                      (let ((_hd3232632378_ (##car _e3232532375_))
                            (_tl3232732380_ (##cdr _e3232532375_)))
                        (if (gx#stx-null? _tl3232732380_)
                            (if (gx#stx-pair? _tl3232432372_)
                                (let ((_e3232832383_
                                       (gx#stx-e _tl3232432372_)))
                                  (let ((_hd3232932386_ (##car _e3232832383_))
                                        (_tl3233032388_ (##cdr _e3232832383_)))
                                    (if (gx#stx-null? _tl3233032388_)
                                        (if (gx#stx-null? _tl3232132364_)
                                            (if (gx#stx-pair? _tl3231832356_)
                                                (let ((_e3233132391_
                                                       (gx#stx-e
                                                        _tl3231832356_)))
                                                  (let ((_hd3233232394_
                                                         (##car _e3233132391_))
                                                        (_tl3233332396_
                                                         (##cdr _e3233132391_)))
                                                    (if (gx#stx-null?
                                                         _tl3233332396_)
                                                        ((lambda (_L32399_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L32400_
                          _L32401_)
                   (let _lp32425_ ((_body32427_ _L32399_) (_clauses32428_ '()))
                     (let* ((___stx4335843359_ _body32427_)
                            (_g3243132478_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                ___stx4335843359_))))
                       (let ((___kont4336043361_
                              (lambda (_L32644_ _L32645_ _L32646_)
                                (_lp32425_
                                 _L32644_
                                 (cons (cons _L32646_ (gxc#compile-e _L32645_))
                                       _clauses32428_))))
                             (___kont4336243363_
                              (lambda (_L32523_ _L32524_)
                                (let ((_$e32545_ (length _clauses32428_)))
                                  (if (eq? '0 _$e32545_)
                                      (gxc#xform-wrap-source
                                       (cons '%#let-values
                                             (cons (cons (cons (cons _L32401_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons _L32400_ '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (gxc#compile-e
                                                          _body32427_)
                                                         '())))
                                       _stx32306_)
                                      (if (eq? '1 _$e32545_)
                                          (let* ((_clauses3254732556_
                                                  _clauses32428_)
                                                 (_E3254932560_
                                                  (lambda ()
                                                    (error '"No clause matching"
                                                           _clauses3254732556_)))
                                                 (_K3255032566_
                                                  (lambda (_clause-lambda32563_
                                                           _clause32564_)
                                                    (gxc#xform-wrap-source
                                                     (cons '%#let-values
                                                           (cons (cons (cons (cons _L32401_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           '())
                                     (cons _L32400_ '()))
                               '())
                         (cons (cons '%#let-values
                                     (cons (cons (cons (cons _clause32564_ '())
                                                       (cons _clause-lambda32563_
                                                             '()))
                                                 '())
                                           (cons (gxc#compile-e _body32427_)
                                                 '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _stx32306_))))
                                            (if (##pair? _clauses3254732556_)
                                                (let ((_hd3255132569_
                                                       (##car _clauses3254732556_))
                                                      (_tl3255232571_
                                                       (##cdr _clauses3254732556_)))
                                                  (if (##pair? _hd3255132569_)
                                                      (let ((_hd3255332574_
                                                             (##car _hd3255132569_))
                                                            (_tl3255432576_
                                                             (##cdr _hd3255132569_)))
                                                        (let* ((_clause32579_
                                                                _hd3255332574_)
                                                               (_clause-lambda32581_
                                                                _tl3255432576_))
                                                          (if (##null? _tl3255232571_)
                                                              (_K3255032566_
                                                               _clause-lambda32581_
                                                               _clause32579_)
                                                              (_E3254932560_))))
                                                      (_E3254932560_)))
                                                (_E3254932560_)))
                                          (gxc#optimize-syntax-case-body
                                           _stx32306_
                                           (gxc#compile-e _L32523_)
                                           (cons _L32401_ _L32400_)
                                           _clauses32428_)))))))
                         (if (gx#stx-pair? ___stx4335843359_)
                             (let ((_e3243632588_
                                    (gx#stx-e ___stx4335843359_)))
                               (let ((_tl3243832593_ (##cdr _e3243632588_))
                                     (_hd3243732591_ (##car _e3243632588_)))
                                 (if (gx#identifier? _hd3243732591_)
                                     (if (gx#stx-eq?
                                          '%#let-values
                                          _hd3243732591_)
                                         (if (gx#stx-pair? _tl3243832593_)
                                             (let ((_e3243932596_
                                                    (gx#stx-e _tl3243832593_)))
                                               (let ((_tl3244132601_
                                                      (##cdr _e3243932596_))
                                                     (_hd3244032599_
                                                      (##car _e3243932596_)))
                                                 (if (gx#stx-pair?
                                                      _hd3244032599_)
                                                     (let ((_e3244232604_
                                                            (gx#stx-e
                                                             _hd3244032599_)))
                                                       (let ((_tl3244432609_
                                                              (##cdr _e3244232604_))
                                                             (_hd3244332607_
                                                              (##car _e3244232604_)))
                                                         (if (gx#stx-pair?
                                                              _hd3244332607_)
                                                             (let ((_e3244532612_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd3244332607_)))
                       (let ((_tl3244732617_ (##cdr _e3244532612_))
                             (_hd3244632615_ (##car _e3244532612_)))
                         (if (gx#stx-pair? _hd3244632615_)
                             (let ((_e3244832620_ (gx#stx-e _hd3244632615_)))
                               (let ((_tl3245032625_ (##cdr _e3244832620_))
                                     (_hd3244932623_ (##car _e3244832620_)))
                                 (if (gx#stx-null? _tl3245032625_)
                                     (if (gx#stx-pair? _tl3244732617_)
                                         (let ((_e3245132628_
                                                (gx#stx-e _tl3244732617_)))
                                           (let ((_tl3245332633_
                                                  (##cdr _e3245132628_))
                                                 (_hd3245232631_
                                                  (##car _e3245132628_)))
                                             (if (gx#stx-null? _tl3245332633_)
                                                 (if (gx#stx-null?
                                                      _tl3244432609_)
                                                     (if (gx#stx-pair?
                                                          _tl3244132601_)
                                                         (let ((_e3245432636_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3244132601_)))
                   (let ((_tl3245632641_ (##cdr _e3245432636_))
                         (_hd3245532639_ (##car _e3245432636_)))
                     (if (gx#stx-null? _tl3245632641_)
                         (___kont4336043361_
                          _hd3245532639_
                          _hd3245232631_
                          _hd3244932623_)
                         (_g3243132478_))))
                 (_g3243132478_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g3243132478_))
                                                 (_g3243132478_))))
                                         (_g3243132478_))
                                     (_g3243132478_))))
                             (_g3243132478_))))
                     (_g3243132478_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g3243132478_))))
                                             (_g3243132478_))
                                         (if (gx#stx-eq?
                                              '%#call
                                              _hd3243732591_)
                                             (if (gx#stx-pair? _tl3243832593_)
                                                 (let ((_e3246232491_
                                                        (gx#stx-e
                                                         _tl3243832593_)))
                                                   (let ((_tl3246432496_
                                                          (##cdr _e3246232491_))
                                                         (_hd3246332494_
                                                          (##car _e3246232491_)))
                                                     (if (gx#stx-pair?
                                                          _hd3246332494_)
                                                         (let ((_e3246532499_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd3246332494_)))
                   (let ((_tl3246732504_ (##cdr _e3246532499_))
                         (_hd3246632502_ (##car _e3246532499_)))
                     (if (gx#identifier? _hd3246632502_)
                         (if (gx#stx-eq? '%#ref _hd3246632502_)
                             (if (gx#stx-pair? _tl3246732504_)
                                 (let ((_e3246832507_
                                        (gx#stx-e _tl3246732504_)))
                                   (let ((_tl3247032512_ (##cdr _e3246832507_))
                                         (_hd3246932510_
                                          (##car _e3246832507_)))
                                     (if (gx#stx-null? _tl3247032512_)
                                         (if (gx#stx-pair? _tl3246432496_)
                                             (let ((_e3247132515_
                                                    (gx#stx-e _tl3246432496_)))
                                               (let ((_tl3247332520_
                                                      (##cdr _e3247132515_))
                                                     (_hd3247232518_
                                                      (##car _e3247132515_)))
                                                 (if (gx#stx-null?
                                                      _tl3247332520_)
                                                     (___kont4336243363_
                                                      _hd3247232518_
                                                      _hd3246932510_)
                                                     (_g3243132478_))))
                                             (_g3243132478_))
                                         (_g3243132478_))))
                                 (_g3243132478_))
                             (_g3243132478_))
                         (_g3243132478_))))
                 (_g3243132478_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g3243132478_))
                                             (_g3243132478_)))
                                     (_g3243132478_))))
                             (_g3243132478_))))))
                 _hd3233232394_
                 _hd3232932386_
                 _hd3232632378_)
                (_g3230832338_ _g3230932341_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3230832338_ _g3230932341_))
                                            (_g3230832338_ _g3230932341_))
                                        (_g3230832338_ _g3230932341_))))
                                (_g3230832338_ _g3230932341_))
                            (_g3230832338_ _g3230932341_))))
                    (_g3230832338_ _g3230932341_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3230832338_
                                                     _g3230932341_))))
                                            (_g3230832338_ _g3230932341_))))
                                    (_g3230832338_ _g3230932341_))
                                (_g3230832338_ _g3230932341_))
                            (_g3230832338_ _g3230932341_))))
                    (_g3230832338_ _g3230932341_)))))
        (_g3230732672_ _stx32306_))))
  (define gxc#optimize-syntax-case-body
    (lambda (_stx32234_ _expr32235_ _negation32236_ _clauses32237_)
      (letrec ((_normalize32239_
                (lambda (_clauses32266_)
                  (let* ((_clauses3226732276_ _clauses32266_)
                         (_E3226932280_
                          (lambda ()
                            (error '"No clause matching" _clauses3226732276_)))
                         (_K3227032287_
                          (lambda (_rest32283_ _kont32284_ _id32285_)
                            (cons (cons '#f _kont32284_) _rest32283_))))
                    (if (##pair? _clauses3226732276_)
                        (let ((_hd3227132290_ (##car _clauses3226732276_))
                              (_tl3227232292_ (##cdr _clauses3226732276_)))
                          (if (##pair? _hd3227132290_)
                              (let ((_hd3227332295_ (##car _hd3227132290_))
                                    (_tl3227432297_ (##cdr _hd3227132290_)))
                                (let* ((_id32300_ _hd3227332295_)
                                       (_kont32302_ _tl3227432297_)
                                       (_rest32304_ _tl3227232292_))
                                  (_K3227032287_
                                   _rest32304_
                                   _kont32302_
                                   _id32300_)))
                              (_E3226932280_)))
                        (_E3226932280_))))))
        (call-with-parameters
         (lambda ()
           (let* ((_id32242_ (make-symbol (gensym '__stx)))
                  (_id32244_ (gx#core-quote-syntax__0 _id32242_))
                  (_g44131_ (gx#core-bind-runtime!__0 _id32244_))
                  (_g44132_
                   (gxc#optimize-syntax-case-clauses
                    _clauses32237_
                    (car _negation32236_))))
             (begin
               (let ((_g44133_
                      (if (##values? _g44132_) (##vector-length _g44132_) 1)))
                 (if (not (##fx= _g44133_ 2))
                     (error "Context expects 2 values" _g44133_)))
               (let ((_clauses32247_ (##vector-ref _g44132_ 0))
                     (_konts32248_ (##vector-ref _g44132_ 1)))
                 (let* ((_clauses32257_
                         (map (lambda (_g3224932252_ _g3225032254_)
                                (gxc#optimize-syntax-case-closure
                                 _g3224932252_
                                 _g3225032254_
                                 _id32244_))
                              _clauses32247_
                              (foldr1 cons
                                      (cons (car _negation32236_) '())
                                      (map car (cdr _clauses32247_)))))
                        (_clauses32259_ (_normalize32239_ _clauses32257_))
                        (_negation32261_
                         (gxc#optimize-syntax-case-closure
                          _negation32236_
                          '#f
                          _id32244_))
                        (_body32263_
                         (gxc#optimize-match-body
                          _stx32234_
                          _negation32261_
                          _clauses32259_
                          _konts32248_)))
                   (gxc#xform-wrap-source
                    (cons '%#let-values
                          (cons (cons (cons (cons _id32244_ '())
                                            (cons _expr32235_ '()))
                                      '())
                                (cons _body32263_ '())))
                    _stx32234_))))))
         gx#current-expander-context
         (let ((__obj44104 (make-object gx#local-context::t '5)))
           (gx#local-context:::init!__0 __obj44104)
           __obj44104)))))
  (define gxc#optimize-syntax-case-clauses
    (lambda (_clauses30992_ _negation-id30993_)
      (letrec ((_xform-e30995_
                (lambda (_expr31379_
                         _kont-id31380_
                         _kont-box31381_
                         _negation-id31382_)
                  (let* ((___stx4356043561_ _expr31379_)
                         (_g3138831521_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx4356043561_))))
                    (let ((___kont4356243563_
                           (lambda (_L32210_ _L32211_ _L32212_)
                             (let ((_K32229_
                                    (_xform-e30995_
                                     _L32211_
                                     _kont-id31380_
                                     _kont-box31381_
                                     _negation-id31382_)))
                               (cons '%#if
                                     (cons _L32212_
                                           (cons _K32229_
                                                 (cons _L32210_ '())))))))
                          (___kont4356443565_
                           (lambda (_L32126_
                                    _L32127_
                                    _L32128_
                                    _L32129_
                                    _L32130_)
                             (let* ((_id32165_
                                     (make-symbol (gensym '__splice)))
                                    (_id32167_
                                     (gx#core-quote-syntax__0 _id32165_))
                                    (_g44134_
                                     (gx#core-bind-runtime!__0 _id32167_))
                                    (_body32170_
                                     (_xform-e30995_
                                      _L32126_
                                      _kont-id31380_
                                      _kont-box31381_
                                      _negation-id31382_)))
                               (cons '%#let-values
                                     (cons (cons (cons (cons _id32167_ '())
                                                       (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '%#call)
                           (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                       (cons _L32128_ '()))
                                 _L32127_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons (cons '%#let-values
                                                       (cons (cons (cons (cons _L32130_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (cons '%#call
                                             (cons '(%#ref ##vector-ref)
                                                   (cons (cons '%#ref
                                                               (cons _id32167_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons '(%#quote 0) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons (cons _L32129_ '())
                                       (cons (cons '%#call
                                                   (cons '(%#ref ##vector-ref)
                                                         (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _id32167_ '()))
                       (cons '(%#quote 1) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 '()))
                     (cons _body32170_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))))
                          (___kont4356643567_
                           (lambda (_L32008_ _L32009_)
                             (let ((_body32023_
                                    (_xform-e30995_
                                     _L32008_
                                     _kont-id31380_
                                     _kont-box31381_
                                     _negation-id31382_)))
                               (cons '%#let-values
                                     (cons _L32009_ (cons _body32023_ '()))))))
                          (___kont4356843569_
                           (lambda (_L31952_ _L31953_ _L31954_)
                             (let ((_lambda-expr31977_
                                    (_xform-loop-e30996_
                                     _L31953_
                                     _kont-id31380_
                                     _kont-box31381_
                                     _negation-id31382_)))
                               (cons '%#letrec-values
                                     (cons (cons (cons (cons _L31954_ '())
                                                       (cons _lambda-expr31977_
                                                             '()))
                                                 '())
                                           (cons _L31952_ '()))))))
                          (___kont4357043571_
                           (lambda (_L31614_ _L31615_ _L31616_)
                             (let* ((___stx4346243463_ _L31615_)
                                    (_g3164531688_
                                     (lambda ()
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        ___stx4346243463_))))
                               (let ((___kont4346443465_
                                      (lambda (_L31804_
                                               _L31805_
                                               _L31806_
                                               _L31807_)
                                        (let ((_kont31848_
                                               (cons (gx#datum->syntax__0
                                                      '#f
                                                      '%#lambda)
                                                     (cons (foldr1 (lambda (_g3184031843_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g3184131845_)
                             (cons _g3184031843_ _g3184131845_))
                           '()
                           _L31616_)
                   (cons _L31806_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (set-box!
                                           _kont-box31381_
                                           _kont31848_)
                                          (let* ((_kont-args31859_
                                                  (map (lambda (_id31850_)
                                                         (cons '%#ref
                                                               (cons _id31850_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
               (foldr1 (lambda (_g3185131854_ _g3185231856_)
                         (cons _g3185131854_ _g3185231856_))
                       '()
                       _L31616_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_body31861_
                                                  (cons '%#if
                                                        (cons _L31807_
                                                              (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (cons '%#ref (cons _kont-id31380_ '()))
                                        _kont-args31859_))
                            (cons (cons (gx#datum->syntax__0 '#f '%#call)
                                        (cons (cons (gx#datum->syntax__0
                                                     '#f
                                                     '%#ref)
                                                    (cons _L31805_ '()))
                                              (cons (cons (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)
                                                          (cons _L31804_ '()))
                                                    '())))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (null? (foldr1 (lambda (_g3186331866_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g3186431868_)
                         (cons _g3186331866_ _g3186431868_))
                       '()
                       _L31616_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _body31861_
                                                (cons '%#let-values
                                                      (cons (map (lambda (_id31871_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _arg31872_)
                           (cons (cons _id31871_ '()) (cons _arg31872_ '())))
                         (foldr1 (lambda (_g3187331876_ _g3187431878_)
                                   (cons _g3187331876_ _g3187431878_))
                                 '()
                                 _L31616_)
                         (foldr1 (lambda (_g3188031883_ _g3188131885_)
                                   (cons _g3188031883_ _g3188131885_))
                                 '()
                                 _L31614_))
                    (cons _body31861_ '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (___kont4346643467_
                                      (lambda ()
                                        (let ((_kont31702_
                                               (cons (gx#datum->syntax__0
                                                      '#f
                                                      '%#lambda)
                                                     (cons (foldr1 (lambda (_g3169431697_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g3169531699_)
                             (cons _g3169431697_ _g3169531699_))
                           '()
                           _L31616_)
                   (cons _L31615_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (set-box!
                                           _kont-box31381_
                                           _kont31702_)
                                          (cons '%#call
                                                (cons (cons '%#ref
                                                            (cons _kont-id31380_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (foldr1 (lambda (_g3170331706_ _g3170431708_)
                        (cons _g3170331706_ _g3170431708_))
                      '()
                      _L31614_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (let ((___match4355743558_
                                        (lambda (_e3165131716_
                                                 _hd3165231719_
                                                 _tl3165331721_
                                                 _e3165431724_
                                                 _hd3165531727_
                                                 _tl3165631729_
                                                 _e3165731732_
                                                 _hd3165831735_
                                                 _tl3165931737_
                                                 _e3166031740_
                                                 _hd3166131743_
                                                 _tl3166231745_
                                                 _e3166331748_
                                                 _hd3166431751_
                                                 _tl3166531753_
                                                 _e3166631756_
                                                 _hd3166731759_
                                                 _tl3166831761_
                                                 _e3166931764_
                                                 _hd3167031767_
                                                 _tl3167131769_
                                                 _e3167231772_
                                                 _hd3167331775_
                                                 _tl3167431777_
                                                 _e3167531780_
                                                 _hd3167631783_
                                                 _tl3167731785_
                                                 _e3167831788_
                                                 _hd3167931791_
                                                 _tl3168031793_
                                                 _e3168131796_
                                                 _hd3168231799_
                                                 _tl3168331801_)
                                          (let ((_L31804_ _hd3168231799_)
                                                (_L31805_ _hd3167331775_)
                                                (_L31806_ _hd3165831735_)
                                                (_L31807_ _hd3165531727_))
                                            (if (gx#free-identifier=?
                                                 _L31805_
                                                 _negation-id31382_)
                                                (___kont4346443465_
                                                 _L31804_
                                                 _L31805_
                                                 _L31806_
                                                 _L31807_)
                                                (___kont4346643467_))))))
                                   (if (gx#stx-pair? ___stx4346243463_)
                                       (let ((_e3165131716_
                                              (gx#stx-e ___stx4346243463_)))
                                         (let ((_tl3165331721_
                                                (##cdr _e3165131716_))
                                               (_hd3165231719_
                                                (##car _e3165131716_)))
                                           (if (gx#identifier? _hd3165231719_)
                                               (if (gx#stx-eq?
                                                    '%#if
                                                    _hd3165231719_)
                                                   (if (gx#stx-pair?
                                                        _tl3165331721_)
                                                       (let ((_e3165431724_
                                                              (gx#stx-e
                                                               _tl3165331721_)))
                                                         (let ((_tl3165631729_
                                                                (##cdr _e3165431724_))
                                                               (_hd3165531727_
                                                                (##car _e3165431724_)))
                                                           (if (gx#stx-pair?
                                                                _tl3165631729_)
                                                               (let ((_e3165731732_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl3165631729_)))
                         (let ((_tl3165931737_ (##cdr _e3165731732_))
                               (_hd3165831735_ (##car _e3165731732_)))
                           (if (gx#stx-pair? _tl3165931737_)
                               (let ((_e3166031740_ (gx#stx-e _tl3165931737_)))
                                 (let ((_tl3166231745_ (##cdr _e3166031740_))
                                       (_hd3166131743_ (##car _e3166031740_)))
                                   (if (gx#stx-pair? _hd3166131743_)
                                       (let ((_e3166331748_
                                              (gx#stx-e _hd3166131743_)))
                                         (let ((_tl3166531753_
                                                (##cdr _e3166331748_))
                                               (_hd3166431751_
                                                (##car _e3166331748_)))
                                           (if (gx#identifier? _hd3166431751_)
                                               (if (gx#stx-eq?
                                                    '%#call
                                                    _hd3166431751_)
                                                   (if (gx#stx-pair?
                                                        _tl3166531753_)
                                                       (let ((_e3166631756_
                                                              (gx#stx-e
                                                               _tl3166531753_)))
                                                         (let ((_tl3166831761_
                                                                (##cdr _e3166631756_))
                                                               (_hd3166731759_
                                                                (##car _e3166631756_)))
                                                           (if (gx#stx-pair?
                                                                _hd3166731759_)
                                                               (let ((_e3166931764_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd3166731759_)))
                         (let ((_tl3167131769_ (##cdr _e3166931764_))
                               (_hd3167031767_ (##car _e3166931764_)))
                           (if (gx#identifier? _hd3167031767_)
                               (if (gx#stx-eq? '%#ref _hd3167031767_)
                                   (if (gx#stx-pair? _tl3167131769_)
                                       (let ((_e3167231772_
                                              (gx#stx-e _tl3167131769_)))
                                         (let ((_tl3167431777_
                                                (##cdr _e3167231772_))
                                               (_hd3167331775_
                                                (##car _e3167231772_)))
                                           (if (gx#stx-null? _tl3167431777_)
                                               (if (gx#stx-pair?
                                                    _tl3166831761_)
                                                   (let ((_e3167531780_
                                                          (gx#stx-e
                                                           _tl3166831761_)))
                                                     (let ((_tl3167731785_
                                                            (##cdr _e3167531780_))
                                                           (_hd3167631783_
                                                            (##car _e3167531780_)))
                                                       (if (gx#stx-pair?
                                                            _hd3167631783_)
                                                           (let ((_e3167831788_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd3167631783_)))
                     (let ((_tl3168031793_ (##cdr _e3167831788_))
                           (_hd3167931791_ (##car _e3167831788_)))
                       (if (gx#identifier? _hd3167931791_)
                           (if (gx#stx-eq? '%#ref _hd3167931791_)
                               (if (gx#stx-pair? _tl3168031793_)
                                   (let ((_e3168131796_
                                          (gx#stx-e _tl3168031793_)))
                                     (let ((_tl3168331801_
                                            (##cdr _e3168131796_))
                                           (_hd3168231799_
                                            (##car _e3168131796_)))
                                       (if (gx#stx-null? _tl3168331801_)
                                           (if (gx#stx-null? _tl3167731785_)
                                               (if (gx#stx-null?
                                                    _tl3166231745_)
                                                   (___match4355743558_
                                                    _e3165131716_
                                                    _hd3165231719_
                                                    _tl3165331721_
                                                    _e3165431724_
                                                    _hd3165531727_
                                                    _tl3165631729_
                                                    _e3165731732_
                                                    _hd3165831735_
                                                    _tl3165931737_
                                                    _e3166031740_
                                                    _hd3166131743_
                                                    _tl3166231745_
                                                    _e3166331748_
                                                    _hd3166431751_
                                                    _tl3166531753_
                                                    _e3166631756_
                                                    _hd3166731759_
                                                    _tl3166831761_
                                                    _e3166931764_
                                                    _hd3167031767_
                                                    _tl3167131769_
                                                    _e3167231772_
                                                    _hd3167331775_
                                                    _tl3167431777_
                                                    _e3167531780_
                                                    _hd3167631783_
                                                    _tl3167731785_
                                                    _e3167831788_
                                                    _hd3167931791_
                                                    _tl3168031793_
                                                    _e3168131796_
                                                    _hd3168231799_
                                                    _tl3168331801_)
                                                   (___kont4346643467_))
                                               (___kont4346643467_))
                                           (___kont4346643467_))))
                                   (___kont4346643467_))
                               (___kont4346643467_))
                           (___kont4346643467_))))
                   (___kont4346643467_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4346643467_))
                                               (___kont4346643467_))))
                                       (___kont4346643467_))
                                   (___kont4346643467_))
                               (___kont4346643467_))))
                       (___kont4346643467_))))
               (___kont4346643467_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4346643467_))
                                               (___kont4346643467_))))
                                       (___kont4346643467_))))
                               (___kont4346643467_))))
                       (___kont4346643467_))))
               (___kont4346643467_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4346643467_))
                                               (___kont4346643467_))))
                                       (___kont4346643467_))))))))
                      (let* ((___match4381743818_
                              (lambda (_e3148431526_
                                       _hd3148531529_
                                       _tl3148631531_
                                       _e3148731534_
                                       _hd3148831537_
                                       _tl3148931539_
                                       _e3149031542_
                                       _hd3149131545_
                                       _tl3149231547_
                                       _e3149331550_
                                       _hd3149431553_
                                       _tl3149531555_
                                       ___splice4357243573_
                                       _target3149631558_
                                       _tl3149831560_)
                                (letrec ((_loop3149931563_
                                          (lambda (_hd3149731566_
                                                   _id3150331568_)
                                            (if (gx#stx-pair? _hd3149731566_)
                                                (let ((_e3150031571_
                                                       (gx#stx-e
                                                        _hd3149731566_)))
                                                  (let ((_lp-tl3150231576_
                                                         (##cdr _e3150031571_))
                                                        (_lp-hd3150131574_
                                                         (##car _e3150031571_)))
                                                    (_loop3149931563_
                                                     _lp-tl3150231576_
                                                     (cons _lp-hd3150131574_
                                                           _id3150331568_))))
                                                (let ((_id3150431579_
                                                       (reverse _id3150331568_)))
                                                  (if (gx#stx-pair?
                                                       _tl3149531555_)
                                                      (let ((_e3150531582_
                                                             (gx#stx-e
                                                              _tl3149531555_)))
                                                        (let ((_tl3150731587_
                                                               (##cdr _e3150531582_))
                                                              (_hd3150631585_
                                                               (##car _e3150531582_)))
                                                          (if (gx#stx-null?
                                                               _tl3150731587_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl3148931539_)
                          (let ((___splice4357443575_
                                 (gx#syntax-split-splice _tl3148931539_ '0)))
                            (let ((_tl3151031592_
                                   (##vector-ref ___splice4357443575_ '1))
                                  (_target3150831590_
                                   (##vector-ref ___splice4357443575_ '0)))
                              (if (gx#stx-null? _tl3151031592_)
                                  (letrec ((_loop3151131595_
                                            (lambda (_hd3150931598_
                                                     _arg3151531600_)
                                              (if (gx#stx-pair? _hd3150931598_)
                                                  (let ((_e3151231603_
                                                         (gx#stx-e
                                                          _hd3150931598_)))
                                                    (let ((_lp-tl3151431608_
                                                           (##cdr _e3151231603_))
                                                          (_lp-hd3151331606_
                                                           (##car _e3151231603_)))
                                                      (_loop3151131595_
                                                       _lp-tl3151431608_
                                                       (cons _lp-hd3151331606_
                                                             _arg3151531600_))))
                                                  (let ((_arg3151631611_
                                                         (reverse _arg3151531600_)))
                                                    (___kont4357043571_
                                                     _arg3151631611_
                                                     _hd3150631585_
                                                     _id3150431579_))))))
                                    (_loop3151131595_ _target3150831590_ '()))
                                  (_g3138831521_))))
                          (_g3138831521_))
                      (_g3138831521_))))
              (_g3138831521_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_loop3149931563_ _target3149631558_ '()))))
                             (___match4369943700_
                              (lambda (_e3141032030_
                                       _hd3141132033_
                                       _tl3141232035_
                                       _e3141332038_
                                       _hd3141432041_
                                       _tl3141532043_
                                       _e3141632046_
                                       _hd3141732049_
                                       _tl3141832051_
                                       _e3141932054_
                                       _hd3142032057_
                                       _tl3142132059_
                                       _e3142232062_
                                       _hd3142332065_
                                       _tl3142432067_
                                       _e3142532070_
                                       _hd3142632073_
                                       _tl3142732075_
                                       _e3142832078_
                                       _hd3142932081_
                                       _tl3143032083_
                                       _e3143132086_
                                       _hd3143232089_
                                       _tl3143332091_
                                       _e3143432094_
                                       _hd3143532097_
                                       _tl3143632099_
                                       _e3143732102_
                                       _hd3143832105_
                                       _tl3143932107_
                                       _e3144032110_
                                       _hd3144132113_
                                       _tl3144232115_
                                       _e3144332118_
                                       _hd3144432121_
                                       _tl3144532123_)
                                (let ((_L32126_ _hd3144432121_)
                                      (_L32127_ _tl3143632099_)
                                      (_L32128_ _hd3144132113_)
                                      (_L32129_ _hd3142632073_)
                                      (_L32130_ _hd3142332065_))
                                  (if (gxc#runtime-identifier=?
                                       _L32128_
                                       'gx#syntax-split-splice)
                                      (___kont4356443565_
                                       _L32126_
                                       _L32127_
                                       _L32128_
                                       _L32129_
                                       _L32130_)
                                      (___kont4356643567_
                                       _hd3144432121_
                                       _hd3141432041_))))))
                        (if (gx#stx-pair? ___stx4356043561_)
                            (let ((_e3139332178_ (gx#stx-e ___stx4356043561_)))
                              (let ((_tl3139532183_ (##cdr _e3139332178_))
                                    (_hd3139432181_ (##car _e3139332178_)))
                                (if (gx#identifier? _hd3139432181_)
                                    (if (gx#stx-eq? '%#if _hd3139432181_)
                                        (if (gx#stx-pair? _tl3139532183_)
                                            (let ((_e3139632186_
                                                   (gx#stx-e _tl3139532183_)))
                                              (let ((_tl3139832191_
                                                     (##cdr _e3139632186_))
                                                    (_hd3139732189_
                                                     (##car _e3139632186_)))
                                                (if (gx#stx-pair?
                                                     _tl3139832191_)
                                                    (let ((_e3139932194_
                                                           (gx#stx-e
                                                            _tl3139832191_)))
                                                      (let ((_tl3140132199_
                                                             (##cdr _e3139932194_))
                                                            (_hd3140032197_
                                                             (##car _e3139932194_)))
                                                        (if (gx#stx-pair?
                                                             _tl3140132199_)
                                                            (let ((_e3140232202_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3140132199_)))
                      (let ((_tl3140432207_ (##cdr _e3140232202_))
                            (_hd3140332205_ (##car _e3140232202_)))
                        (if (gx#stx-null? _tl3140432207_)
                            (___kont4356243563_
                             _hd3140332205_
                             _hd3140032197_
                             _hd3139732189_)
                            (_g3138831521_))))
                    (_g3138831521_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3138831521_))))
                                            (_g3138831521_))
                                        (if (gx#stx-eq?
                                             '%#let-values
                                             _hd3139432181_)
                                            (if (gx#stx-pair? _tl3139532183_)
                                                (let ((_e3141332038_
                                                       (gx#stx-e
                                                        _tl3139532183_)))
                                                  (let ((_tl3141532043_
                                                         (##cdr _e3141332038_))
                                                        (_hd3141432041_
                                                         (##car _e3141332038_)))
                                                    (if (gx#stx-pair?
                                                         _hd3141432041_)
                                                        (let ((_e3141632046_
                                                               (gx#stx-e
                                                                _hd3141432041_)))
                                                          (let ((_tl3141832051_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3141632046_))
                        (_hd3141732049_ (##car _e3141632046_)))
                    (if (gx#stx-pair? _hd3141732049_)
                        (let ((_e3141932054_ (gx#stx-e _hd3141732049_)))
                          (let ((_tl3142132059_ (##cdr _e3141932054_))
                                (_hd3142032057_ (##car _e3141932054_)))
                            (if (gx#stx-pair? _hd3142032057_)
                                (let ((_e3142232062_
                                       (gx#stx-e _hd3142032057_)))
                                  (let ((_tl3142432067_ (##cdr _e3142232062_))
                                        (_hd3142332065_ (##car _e3142232062_)))
                                    (if (gx#stx-pair? _tl3142432067_)
                                        (let ((_e3142532070_
                                               (gx#stx-e _tl3142432067_)))
                                          (let ((_tl3142732075_
                                                 (##cdr _e3142532070_))
                                                (_hd3142632073_
                                                 (##car _e3142532070_)))
                                            (if (gx#stx-null? _tl3142732075_)
                                                (if (gx#stx-pair?
                                                     _tl3142132059_)
                                                    (let ((_e3142832078_
                                                           (gx#stx-e
                                                            _tl3142132059_)))
                                                      (let ((_tl3143032083_
                                                             (##cdr _e3142832078_))
                                                            (_hd3142932081_
                                                             (##car _e3142832078_)))
                                                        (if (gx#stx-pair?
                                                             _hd3142932081_)
                                                            (let ((_e3143132086_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd3142932081_)))
                      (let ((_tl3143332091_ (##cdr _e3143132086_))
                            (_hd3143232089_ (##car _e3143132086_)))
                        (if (gx#identifier? _hd3143232089_)
                            (if (gx#stx-eq? '%#call _hd3143232089_)
                                (if (gx#stx-pair? _tl3143332091_)
                                    (let ((_e3143432094_
                                           (gx#stx-e _tl3143332091_)))
                                      (let ((_tl3143632099_
                                             (##cdr _e3143432094_))
                                            (_hd3143532097_
                                             (##car _e3143432094_)))
                                        (if (gx#stx-pair? _hd3143532097_)
                                            (let ((_e3143732102_
                                                   (gx#stx-e _hd3143532097_)))
                                              (let ((_tl3143932107_
                                                     (##cdr _e3143732102_))
                                                    (_hd3143832105_
                                                     (##car _e3143732102_)))
                                                (if (gx#identifier?
                                                     _hd3143832105_)
                                                    (if (gx#stx-eq?
                                                         '%#ref
                                                         _hd3143832105_)
                                                        (if (gx#stx-pair?
                                                             _tl3143932107_)
                                                            (let ((_e3144032110_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3143932107_)))
                      (let ((_tl3144232115_ (##cdr _e3144032110_))
                            (_hd3144132113_ (##car _e3144032110_)))
                        (if (gx#stx-null? _tl3144232115_)
                            (if (gx#stx-null? _tl3143032083_)
                                (if (gx#stx-null? _tl3141832051_)
                                    (if (gx#stx-pair? _tl3141532043_)
                                        (let ((_e3144332118_
                                               (gx#stx-e _tl3141532043_)))
                                          (let ((_tl3144532123_
                                                 (##cdr _e3144332118_))
                                                (_hd3144432121_
                                                 (##car _e3144332118_)))
                                            (if (gx#stx-null? _tl3144532123_)
                                                (___match4369943700_
                                                 _e3139332178_
                                                 _hd3139432181_
                                                 _tl3139532183_
                                                 _e3141332038_
                                                 _hd3141432041_
                                                 _tl3141532043_
                                                 _e3141632046_
                                                 _hd3141732049_
                                                 _tl3141832051_
                                                 _e3141932054_
                                                 _hd3142032057_
                                                 _tl3142132059_
                                                 _e3142232062_
                                                 _hd3142332065_
                                                 _tl3142432067_
                                                 _e3142532070_
                                                 _hd3142632073_
                                                 _tl3142732075_
                                                 _e3142832078_
                                                 _hd3142932081_
                                                 _tl3143032083_
                                                 _e3143132086_
                                                 _hd3143232089_
                                                 _tl3143332091_
                                                 _e3143432094_
                                                 _hd3143532097_
                                                 _tl3143632099_
                                                 _e3143732102_
                                                 _hd3143832105_
                                                 _tl3143932107_
                                                 _e3144032110_
                                                 _hd3144132113_
                                                 _tl3144232115_
                                                 _e3144332118_
                                                 _hd3144432121_
                                                 _tl3144532123_)
                                                (_g3138831521_))))
                                        (_g3138831521_))
                                    (if (gx#stx-pair? _tl3141532043_)
                                        (let ((_e3145432000_
                                               (gx#stx-e _tl3141532043_)))
                                          (let ((_tl3145632005_
                                                 (##cdr _e3145432000_))
                                                (_hd3145532003_
                                                 (##car _e3145432000_)))
                                            (if (gx#stx-null? _tl3145632005_)
                                                (___kont4356643567_
                                                 _hd3145532003_
                                                 _hd3141432041_)
                                                (_g3138831521_))))
                                        (_g3138831521_)))
                                (if (gx#stx-pair? _tl3141532043_)
                                    (let ((_e3145432000_
                                           (gx#stx-e _tl3141532043_)))
                                      (let ((_tl3145632005_
                                             (##cdr _e3145432000_))
                                            (_hd3145532003_
                                             (##car _e3145432000_)))
                                        (if (gx#stx-null? _tl3145632005_)
                                            (___kont4356643567_
                                             _hd3145532003_
                                             _hd3141432041_)
                                            (_g3138831521_))))
                                    (_g3138831521_)))
                            (if (gx#stx-pair? _tl3141532043_)
                                (let ((_e3145432000_
                                       (gx#stx-e _tl3141532043_)))
                                  (let ((_tl3145632005_ (##cdr _e3145432000_))
                                        (_hd3145532003_ (##car _e3145432000_)))
                                    (if (gx#stx-null? _tl3145632005_)
                                        (___kont4356643567_
                                         _hd3145532003_
                                         _hd3141432041_)
                                        (_g3138831521_))))
                                (_g3138831521_)))))
                    (if (gx#stx-pair? _tl3141532043_)
                        (let ((_e3145432000_ (gx#stx-e _tl3141532043_)))
                          (let ((_tl3145632005_ (##cdr _e3145432000_))
                                (_hd3145532003_ (##car _e3145432000_)))
                            (if (gx#stx-null? _tl3145632005_)
                                (___kont4356643567_
                                 _hd3145532003_
                                 _hd3141432041_)
                                (_g3138831521_))))
                        (_g3138831521_)))
                (if (gx#stx-pair? _tl3141532043_)
                    (let ((_e3145432000_ (gx#stx-e _tl3141532043_)))
                      (let ((_tl3145632005_ (##cdr _e3145432000_))
                            (_hd3145532003_ (##car _e3145432000_)))
                        (if (gx#stx-null? _tl3145632005_)
                            (___kont4356643567_ _hd3145532003_ _hd3141432041_)
                            (_g3138831521_))))
                    (_g3138831521_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair?
                                                         _tl3141532043_)
                                                        (let ((_e3145432000_
                                                               (gx#stx-e
                                                                _tl3141532043_)))
                                                          (let ((_tl3145632005_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3145432000_))
                        (_hd3145532003_ (##car _e3145432000_)))
                    (if (gx#stx-null? _tl3145632005_)
                        (___kont4356643567_ _hd3145532003_ _hd3141432041_)
                        (_g3138831521_))))
                (_g3138831521_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _tl3141532043_)
                                                (let ((_e3145432000_
                                                       (gx#stx-e
                                                        _tl3141532043_)))
                                                  (let ((_tl3145632005_
                                                         (##cdr _e3145432000_))
                                                        (_hd3145532003_
                                                         (##car _e3145432000_)))
                                                    (if (gx#stx-null?
                                                         _tl3145632005_)
                                                        (___kont4356643567_
                                                         _hd3145532003_
                                                         _hd3141432041_)
                                                        (_g3138831521_))))
                                                (_g3138831521_)))))
                                    (if (gx#stx-pair? _tl3141532043_)
                                        (let ((_e3145432000_
                                               (gx#stx-e _tl3141532043_)))
                                          (let ((_tl3145632005_
                                                 (##cdr _e3145432000_))
                                                (_hd3145532003_
                                                 (##car _e3145432000_)))
                                            (if (gx#stx-null? _tl3145632005_)
                                                (___kont4356643567_
                                                 _hd3145532003_
                                                 _hd3141432041_)
                                                (_g3138831521_))))
                                        (_g3138831521_)))
                                (if (gx#stx-pair? _tl3141532043_)
                                    (let ((_e3145432000_
                                           (gx#stx-e _tl3141532043_)))
                                      (let ((_tl3145632005_
                                             (##cdr _e3145432000_))
                                            (_hd3145532003_
                                             (##car _e3145432000_)))
                                        (if (gx#stx-null? _tl3145632005_)
                                            (___kont4356643567_
                                             _hd3145532003_
                                             _hd3141432041_)
                                            (_g3138831521_))))
                                    (_g3138831521_)))
                            (if (gx#stx-pair? _tl3141532043_)
                                (let ((_e3145432000_
                                       (gx#stx-e _tl3141532043_)))
                                  (let ((_tl3145632005_ (##cdr _e3145432000_))
                                        (_hd3145532003_ (##car _e3145432000_)))
                                    (if (gx#stx-null? _tl3145632005_)
                                        (___kont4356643567_
                                         _hd3145532003_
                                         _hd3141432041_)
                                        (_g3138831521_))))
                                (_g3138831521_)))))
                    (if (gx#stx-pair? _tl3141532043_)
                        (let ((_e3145432000_ (gx#stx-e _tl3141532043_)))
                          (let ((_tl3145632005_ (##cdr _e3145432000_))
                                (_hd3145532003_ (##car _e3145432000_)))
                            (if (gx#stx-null? _tl3145632005_)
                                (___kont4356643567_
                                 _hd3145532003_
                                 _hd3141432041_)
                                (_g3138831521_))))
                        (_g3138831521_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair?
                                                         _tl3141532043_)
                                                        (let ((_e3145432000_
                                                               (gx#stx-e
                                                                _tl3141532043_)))
                                                          (let ((_tl3145632005_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3145432000_))
                        (_hd3145532003_ (##car _e3145432000_)))
                    (if (gx#stx-null? _tl3145632005_)
                        (___kont4356643567_ _hd3145532003_ _hd3141432041_)
                        (_g3138831521_))))
                (_g3138831521_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _tl3141532043_)
                                                    (let ((_e3145432000_
                                                           (gx#stx-e
                                                            _tl3141532043_)))
                                                      (let ((_tl3145632005_
                                                             (##cdr _e3145432000_))
                                                            (_hd3145532003_
                                                             (##car _e3145432000_)))
                                                        (if (gx#stx-null?
                                                             _tl3145632005_)
                                                            (___kont4356643567_
                                                             _hd3145532003_
                                                             _hd3141432041_)
                                                            (_g3138831521_))))
                                                    (_g3138831521_)))))
                                        (if (gx#stx-pair? _tl3141532043_)
                                            (let ((_e3145432000_
                                                   (gx#stx-e _tl3141532043_)))
                                              (let ((_tl3145632005_
                                                     (##cdr _e3145432000_))
                                                    (_hd3145532003_
                                                     (##car _e3145432000_)))
                                                (if (gx#stx-null?
                                                     _tl3145632005_)
                                                    (___kont4356643567_
                                                     _hd3145532003_
                                                     _hd3141432041_)
                                                    (_g3138831521_))))
                                            (_g3138831521_)))))
                                (if (gx#stx-pair? _tl3141532043_)
                                    (let ((_e3145432000_
                                           (gx#stx-e _tl3141532043_)))
                                      (let ((_tl3145632005_
                                             (##cdr _e3145432000_))
                                            (_hd3145532003_
                                             (##car _e3145432000_)))
                                        (if (gx#stx-null? _tl3145632005_)
                                            (___kont4356643567_
                                             _hd3145532003_
                                             _hd3141432041_)
                                            (_g3138831521_))))
                                    (_g3138831521_)))))
                        (if (gx#stx-pair? _tl3141532043_)
                            (let ((_e3145432000_ (gx#stx-e _tl3141532043_)))
                              (let ((_tl3145632005_ (##cdr _e3145432000_))
                                    (_hd3145532003_ (##car _e3145432000_)))
                                (if (gx#stx-null? _tl3145632005_)
                                    (___kont4356643567_
                                     _hd3145532003_
                                     _hd3141432041_)
                                    (_g3138831521_))))
                            (_g3138831521_)))))
                (if (gx#stx-pair? _tl3141532043_)
                    (let ((_e3145432000_ (gx#stx-e _tl3141532043_)))
                      (let ((_tl3145632005_ (##cdr _e3145432000_))
                            (_hd3145532003_ (##car _e3145432000_)))
                        (if (gx#stx-null? _tl3145632005_)
                            (___kont4356643567_ _hd3145532003_ _hd3141432041_)
                            (_g3138831521_))))
                    (_g3138831521_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3138831521_))
                                            (if (gx#stx-eq?
                                                 '%#letrec-values
                                                 _hd3139432181_)
                                                (if (gx#stx-pair?
                                                     _tl3139532183_)
                                                    (let ((_e3146331904_
                                                           (gx#stx-e
                                                            _tl3139532183_)))
                                                      (let ((_tl3146531909_
                                                             (##cdr _e3146331904_))
                                                            (_hd3146431907_
                                                             (##car _e3146331904_)))
                                                        (if (gx#stx-pair?
                                                             _hd3146431907_)
                                                            (let ((_e3146631912_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd3146431907_)))
                      (let ((_tl3146831917_ (##cdr _e3146631912_))
                            (_hd3146731915_ (##car _e3146631912_)))
                        (if (gx#stx-pair? _hd3146731915_)
                            (let ((_e3146931920_ (gx#stx-e _hd3146731915_)))
                              (let ((_tl3147131925_ (##cdr _e3146931920_))
                                    (_hd3147031923_ (##car _e3146931920_)))
                                (if (gx#stx-pair? _hd3147031923_)
                                    (let ((_e3147231928_
                                           (gx#stx-e _hd3147031923_)))
                                      (let ((_tl3147431933_
                                             (##cdr _e3147231928_))
                                            (_hd3147331931_
                                             (##car _e3147231928_)))
                                        (if (gx#stx-null? _tl3147431933_)
                                            (if (gx#stx-pair? _tl3147131925_)
                                                (let ((_e3147531936_
                                                       (gx#stx-e
                                                        _tl3147131925_)))
                                                  (let ((_tl3147731941_
                                                         (##cdr _e3147531936_))
                                                        (_hd3147631939_
                                                         (##car _e3147531936_)))
                                                    (if (gx#stx-null?
                                                         _tl3147731941_)
                                                        (if (gx#stx-null?
                                                             _tl3146831917_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3146531909_)
                        (let ((_e3147831944_ (gx#stx-e _tl3146531909_)))
                          (let ((_tl3148031949_ (##cdr _e3147831944_))
                                (_hd3147931947_ (##car _e3147831944_)))
                            (if (gx#stx-null? _tl3148031949_)
                                (___kont4356843569_
                                 _hd3147931947_
                                 _hd3147631939_
                                 _hd3147331931_)
                                (_g3138831521_))))
                        (_g3138831521_))
                    (_g3138831521_))
                (_g3138831521_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3138831521_))
                                            (_g3138831521_))))
                                    (_g3138831521_))))
                            (_g3138831521_))))
                    (_g3138831521_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3138831521_))
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd3139432181_)
                                                    (if (gx#stx-pair?
                                                         _tl3139532183_)
                                                        (let ((_e3148731534_
                                                               (gx#stx-e
                                                                _tl3139532183_)))
                                                          (let ((_tl3148931539_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3148731534_))
                        (_hd3148831537_ (##car _e3148731534_)))
                    (if (gx#stx-pair? _hd3148831537_)
                        (let ((_e3149031542_ (gx#stx-e _hd3148831537_)))
                          (let ((_tl3149231547_ (##cdr _e3149031542_))
                                (_hd3149131545_ (##car _e3149031542_)))
                            (if (gx#identifier? _hd3149131545_)
                                (if (gx#stx-eq? '%#lambda _hd3149131545_)
                                    (if (gx#stx-pair? _tl3149231547_)
                                        (let ((_e3149331550_
                                               (gx#stx-e _tl3149231547_)))
                                          (let ((_tl3149531555_
                                                 (##cdr _e3149331550_))
                                                (_hd3149431553_
                                                 (##car _e3149331550_)))
                                            (if (gx#stx-pair/null?
                                                 _hd3149431553_)
                                                (let ((___splice4357243573_
                                                       (gx#syntax-split-splice
                                                        _hd3149431553_
                                                        '0)))
                                                  (let ((_tl3149831560_
                                                         (##vector-ref
                                                          ___splice4357243573_
                                                          '1))
                                                        (_target3149631558_
                                                         (##vector-ref
                                                          ___splice4357243573_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl3149831560_)
                                                        (___match4381743818_
                                                         _e3139332178_
                                                         _hd3139432181_
                                                         _tl3139532183_
                                                         _e3148731534_
                                                         _hd3148831537_
                                                         _tl3148931539_
                                                         _e3149031542_
                                                         _hd3149131545_
                                                         _tl3149231547_
                                                         _e3149331550_
                                                         _hd3149431553_
                                                         _tl3149531555_
                                                         ___splice4357243573_
                                                         _target3149631558_
                                                         _tl3149831560_)
                                                        (_g3138831521_))))
                                                (_g3138831521_))))
                                        (_g3138831521_))
                                    (_g3138831521_))
                                (_g3138831521_))))
                        (_g3138831521_))))
                (_g3138831521_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3138831521_)))))
                                    (_g3138831521_))))
                            (_g3138831521_)))))))
               (_xform-loop-e30996_
                (lambda (_expr31205_
                         _kont-id31206_
                         _kont-box31207_
                         _negation-id31208_)
                  (let* ((_g3121031250_
                          (lambda (_g3121131247_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g3121131247_)))
                         (_g3120931376_
                          (lambda (_g3121131253_)
                            (if (gx#stx-pair? _g3121131253_)
                                (let ((_e3121631255_ (gx#stx-e _g3121131253_)))
                                  (let ((_hd3121731258_ (##car _e3121631255_))
                                        (_tl3121831260_ (##cdr _e3121631255_)))
                                    (if (gx#identifier? _hd3121731258_)
                                        (if (gx#stx-eq?
                                             '%#lambda
                                             _hd3121731258_)
                                            (if (gx#stx-pair? _tl3121831260_)
                                                (let ((_e3121931263_
                                                       (gx#stx-e
                                                        _tl3121831260_)))
                                                  (let ((_hd3122031266_
                                                         (##car _e3121931263_))
                                                        (_tl3122131268_
                                                         (##cdr _e3121931263_)))
                                                    (if (gx#stx-pair/null?
                                                         _hd3122031266_)
                                                        (let ((_g44135_
                                                               (gx#syntax-split-splice
                                                                _hd3122031266_
                                                                '0)))
                                                          (begin
                                                            (let ((_g44136_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if (##values? _g44135_)
                               (##vector-length _g44135_)
                               1)))
                      (if (not (##fx= _g44136_ 2))
                          (error "Context expects 2 values" _g44136_)))
                    (let ((_target3122231271_ (##vector-ref _g44135_ 0))
                          (_tl3122431273_ (##vector-ref _g44135_ 1)))
                      (if (gx#stx-null? _tl3122431273_)
                          (letrec ((_loop3122531276_
                                    (lambda (_hd3122331279_ _id3122931281_)
                                      (if (gx#stx-pair? _hd3122331279_)
                                          (let ((_e3122631284_
                                                 (gx#stx-e _hd3122331279_)))
                                            (let ((_lp-hd3122731287_
                                                   (##car _e3122631284_))
                                                  (_lp-tl3122831289_
                                                   (##cdr _e3122631284_)))
                                              (_loop3122531276_
                                               _lp-tl3122831289_
                                               (cons _lp-hd3122731287_
                                                     _id3122931281_))))
                                          (let ((_id3123031292_
                                                 (reverse _id3122931281_)))
                                            (if (gx#stx-pair? _tl3122131268_)
                                                (let ((_e3123131295_
                                                       (gx#stx-e
                                                        _tl3122131268_)))
                                                  (let ((_hd3123231298_
                                                         (##car _e3123131295_))
                                                        (_tl3123331300_
                                                         (##cdr _e3123131295_)))
                                                    (if (gx#stx-pair?
                                                         _hd3123231298_)
                                                        (let ((_e3123431303_
                                                               (gx#stx-e
                                                                _hd3123231298_)))
                                                          (let ((_hd3123531306_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e3123431303_))
                        (_tl3123631308_ (##cdr _e3123431303_)))
                    (if (gx#identifier? _hd3123531306_)
                        (if (gx#stx-eq? '%#if _hd3123531306_)
                            (if (gx#stx-pair? _tl3123631308_)
                                (let ((_e3123731311_
                                       (gx#stx-e _tl3123631308_)))
                                  (let ((_hd3123831314_ (##car _e3123731311_))
                                        (_tl3123931316_ (##cdr _e3123731311_)))
                                    (if (gx#stx-pair? _tl3123931316_)
                                        (let ((_e3124031319_
                                               (gx#stx-e _tl3123931316_)))
                                          (let ((_hd3124131322_
                                                 (##car _e3124031319_))
                                                (_tl3124231324_
                                                 (##cdr _e3124031319_)))
                                            (if (gx#stx-pair? _tl3124231324_)
                                                (let ((_e3124331327_
                                                       (gx#stx-e
                                                        _tl3124231324_)))
                                                  (let ((_hd3124431330_
                                                         (##car _e3124331327_))
                                                        (_tl3124531332_
                                                         (##cdr _e3124331327_)))
                                                    (if (gx#stx-null?
                                                         _tl3124531332_)
                                                        (if (gx#stx-null?
                                                             _tl3123331300_)
                                                            ((lambda (_L31335_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L31336_
                              _L31337_
                              _L31338_)
                       (let ((_E31367_
                              (_xform-e30995_
                               _L31335_
                               _kont-id31206_
                               _kont-box31207_
                               _negation-id31208_)))
                         (cons '%#lambda
                               (cons (foldr1 (lambda (_g3136831371_
                                                      _g3136931373_)
                                               (cons _g3136831371_
                                                     _g3136931373_))
                                             '()
                                             _L31338_)
                                     (cons (cons '%#if
                                                 (cons _L31337_
                                                       (cons _L31336_
                                                             (cons _E31367_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _hd3124431330_
                     _hd3124131322_
                     _hd3123831314_
                     _id3123031292_)
                    (_g3121031250_ _g3121131253_))
                (_g3121031250_ _g3121131253_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3121031250_
                                                 _g3121131253_))))
                                        (_g3121031250_ _g3121131253_))))
                                (_g3121031250_ _g3121131253_))
                            (_g3121031250_ _g3121131253_))
                        (_g3121031250_ _g3121131253_))))
                (_g3121031250_ _g3121131253_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3121031250_
                                                 _g3121131253_)))))))
                            (_loop3122531276_ _target3122231271_ '()))
                          (_g3121031250_ _g3121131253_)))))
                (_g3121031250_ _g3121131253_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3121031250_ _g3121131253_))
                                            (_g3121031250_ _g3121131253_))
                                        (_g3121031250_ _g3121131253_))))
                                (_g3121031250_ _g3121131253_)))))
                    (_g3120931376_ _expr31205_))))
               (_clause-e30997_
                (lambda (_clause-lambda31075_ _kont-id31076_ _rest31077_)
                  (letrec* ((_kont-box31079_ (box '#f)))
                    (let* ((_negation-id31119_
                            (let* ((_rest3108031090_ _rest31077_)
                                   (_else3108231098_
                                    (lambda () _negation-id30993_))
                                   (_K3108431104_
                                    (lambda (_clause31101_ _clause-id31102_)
                                      _clause-id31102_)))
                              (if (##pair? _rest3108031090_)
                                  (let ((_hd3108531107_
                                         (##car _rest3108031090_)))
                                    (if (##pair? _hd3108531107_)
                                        (let ((_hd3108731110_
                                               (##car _hd3108531107_))
                                              (_tl3108831112_
                                               (##cdr _hd3108531107_)))
                                          (let* ((_clause-id31115_
                                                  _hd3108731110_)
                                                 (_clause31117_
                                                  _tl3108831112_))
                                            (_K3108431104_
                                             _clause31117_
                                             _clause-id31115_)))
                                        (_else3108231098_)))
                                  (_else3108231098_))))
                           (_g3112131141_
                            (lambda (_g3112231138_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g3112231138_)))
                           (_g3112031202_
                            (lambda (_g3112231144_)
                              (if (gx#stx-pair? _g3112231144_)
                                  (let ((_e3112531146_
                                         (gx#stx-e _g3112231144_)))
                                    (let ((_hd3112631149_
                                           (##car _e3112531146_))
                                          (_tl3112731151_
                                           (##cdr _e3112531146_)))
                                      (if (gx#identifier? _hd3112631149_)
                                          (if (gx#stx-eq?
                                               '%#lambda
                                               _hd3112631149_)
                                              (if (gx#stx-pair? _tl3112731151_)
                                                  (let ((_e3112831154_
                                                         (gx#stx-e
                                                          _tl3112731151_)))
                                                    (let ((_hd3112931157_
                                                           (##car _e3112831154_))
                                                          (_tl3113031159_
                                                           (##cdr _e3112831154_)))
                                                      (if (gx#stx-pair?
                                                           _hd3112931157_)
                                                          (let ((_e3113131162_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd3112931157_)))
                    (let ((_hd3113231165_ (##car _e3113131162_))
                          (_tl3113331167_ (##cdr _e3113131162_)))
                      (if (gx#stx-null? _tl3113331167_)
                          (if (gx#stx-pair? _tl3113031159_)
                              (let ((_e3113431170_ (gx#stx-e _tl3113031159_)))
                                (let ((_hd3113531173_ (##car _e3113431170_))
                                      (_tl3113631175_ (##cdr _e3113431170_)))
                                  (if (gx#stx-null? _tl3113631175_)
                                      ((lambda (_L31178_ _L31179_)
                                         (let ((_body31200_
                                                (_xform-e30995_
                                                 _L31178_
                                                 _kont-id31076_
                                                 _kont-box31079_
                                                 _negation-id31119_)))
                                           (values (cons '%#lambda
                                                         (cons (cons _L31179_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons _body31200_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (unbox _kont-box31079_))))
                                       _hd3113531173_
                                       _hd3113231165_)
                                      (_g3112131141_ _g3112231144_))))
                              (_g3112131141_ _g3112231144_))
                          (_g3112131141_ _g3112231144_))))
                  (_g3112131141_ _g3112231144_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g3112131141_
                                                   _g3112231144_))
                                              (_g3112131141_ _g3112231144_))
                                          (_g3112131141_ _g3112231144_))))
                                  (_g3112131141_ _g3112231144_)))))
                      (_g3112031202_ _clause-lambda31075_))))))
        (let _lp30999_ ((_rest31001_ _clauses30992_)
                        (_clauses31002_ '())
                        (_konts31003_ '()))
          (let* ((_rest3100431012_ _rest31001_)
                 (_else3100631020_
                  (lambda ()
                    (values (reverse _clauses31002_) (reverse _konts31003_))))
                 (_K3100831063_
                  (lambda (_rest31023_ _clause31024_)
                    (let* ((_clause3102531032_ _clause31024_)
                           (_E3102731036_
                            (lambda ()
                              (error '"No clause matching"
                                     _clause3102531032_)))
                           (_K3102831051_
                            (lambda (_clause-lambda31039_ _clause-id31040_)
                              (let* ((_id31042_ (make-symbol (gensym '__kont)))
                                     (_id31044_
                                      (gx#core-quote-syntax__0 _id31042_))
                                     (_g44137_
                                      (gx#core-bind-runtime!__0 _id31044_))
                                     (_g44138_
                                      (_clause-e30997_
                                       _clause-lambda31039_
                                       _id31044_
                                       _rest31023_)))
                                (begin
                                  (let ((_g44139_
                                         (if (##values? _g44138_)
                                             (##vector-length _g44138_)
                                             1)))
                                    (if (not (##fx= _g44139_ 2))
                                        (error "Context expects 2 values"
                                               _g44139_)))
                                  (let ((_clause-lambda31047_
                                         (##vector-ref _g44138_ 0))
                                        (_kont31048_
                                         (##vector-ref _g44138_ 1)))
                                    (let ()
                                      (_lp30999_
                                       _rest31023_
                                       (cons (cons _clause-id31040_
                                                   _clause-lambda31047_)
                                             _clauses31002_)
                                       (cons (cons _id31044_ _kont31048_)
                                             _konts31003_)))))))))
                      (if (##pair? _clause3102531032_)
                          (let ((_hd3102931054_ (##car _clause3102531032_))
                                (_tl3103031056_ (##cdr _clause3102531032_)))
                            (let* ((_clause-id31059_ _hd3102931054_)
                                   (_clause-lambda31061_ _tl3103031056_))
                              (_K3102831051_
                               _clause-lambda31061_
                               _clause-id31059_)))
                          (_E3102731036_))))))
            (if (##pair? _rest3100431012_)
                (let ((_hd3100931066_ (##car _rest3100431012_))
                      (_tl3101031068_ (##cdr _rest3100431012_)))
                  (let* ((_clause31071_ _hd3100931066_)
                         (_rest31073_ _tl3101031068_))
                    (_K3100831063_ _rest31073_ _clause31071_)))
                (_else3100631020_)))))))
  (define gxc#optimize-syntax-case-closure
    (lambda (_clause30336_ _negation30337_ _target30338_)
      (letrec ((_closure-e30340_
                (lambda (_expr30457_)
                  (let* ((___stx4382043821_ _expr30457_)
                         (_g3046430579_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx4382043821_))))
                    (let ((___kont4382243823_
                           (lambda (_L30970_ _L30971_ _L30972_)
                             (cons '%#if
                                   (cons _L30972_
                                         (cons (_closure-e30340_ _L30971_)
                                               (cons (_closure-e30340_
                                                      _L30970_)
                                                     '()))))))
                          (___kont4382443825_
                           (lambda (_L30918_ _L30919_)
                             (cons '%#let-values
                                   (cons _L30919_
                                         (cons (_closure-e30340_ _L30918_)
                                               '())))))
                          (___kont4382643827_
                           (lambda (_L30864_ _L30865_ _L30866_)
                             (cons '%#letrec-values
                                   (cons (cons (cons (cons _L30866_ '())
                                                     (cons (_closure-e30340_
                                                            _L30865_)
                                                           '()))
                                               '())
                                         (cons _L30864_ '())))))
                          (___kont4382843829_
                           (lambda (_L30777_ _L30778_)
                             (cons '%#lambda
                                   (cons (foldr1 (lambda (_g3079530798_
                                                          _g3079630800_)
                                                   (cons _g3079530798_
                                                         _g3079630800_))
                                                 '()
                                                 _L30778_)
                                         (cons (_closure-e30340_ _L30777_)
                                               '())))))
                          (___kont4383243833_
                           (lambda (_L30707_)
                             (cons '%#call
                                   (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                               (cons _L30707_ '()))
                                         '()))))
                          (___kont4383443835_
                           (lambda (_L30640_ _L30641_) _expr30457_)))
                      (let* ((___match4405344054_
                              (lambda (_e3055430584_
                                       _hd3055530587_
                                       _tl3055630589_
                                       _e3055730592_
                                       _hd3055830595_
                                       _tl3055930597_
                                       _e3056030600_
                                       _hd3056130603_
                                       _tl3056230605_
                                       _e3056330608_
                                       _hd3056430611_
                                       _tl3056530613_
                                       ___splice4383643837_
                                       _target3056630616_
                                       _tl3056830618_)
                                (letrec ((_loop3056930621_
                                          (lambda (_hd3056730624_
                                                   _arg3057330626_)
                                            (if (gx#stx-pair? _hd3056730624_)
                                                (let ((_e3057030629_
                                                       (gx#stx-e
                                                        _hd3056730624_)))
                                                  (let ((_lp-tl3057230634_
                                                         (##cdr _e3057030629_))
                                                        (_lp-hd3057130632_
                                                         (##car _e3057030629_)))
                                                    (_loop3056930621_
                                                     _lp-tl3057230634_
                                                     (cons _lp-hd3057130632_
                                                           _arg3057330626_))))
                                                (let ((_arg3057430637_
                                                       (reverse _arg3057330626_)))
                                                  (___kont4383443835_
                                                   _arg3057430637_
                                                   _hd3056430611_))))))
                                  (_loop3056930621_ _target3056630616_ '()))))
                             (___match4401144012_
                              (lambda (_e3053730667_
                                       _hd3053830670_
                                       _tl3053930672_
                                       _e3054030675_
                                       _hd3054130678_
                                       _tl3054230680_
                                       _e3054330683_
                                       _hd3054430686_
                                       _tl3054530688_
                                       _e3054630691_
                                       _hd3054730694_
                                       _tl3054830696_
                                       _e3054930699_
                                       _hd3055030702_
                                       _tl3055130704_)
                                (let ((_L30707_ _hd3054730694_))
                                  (if (gx#free-identifier=?
                                       _L30707_
                                       _negation30337_)
                                      (___kont4383243833_ _L30707_)
                                      (if (gx#stx-pair/null? _tl3054230680_)
                                          (let ((___splice4383643837_
                                                 (gx#syntax-split-splice
                                                  _tl3054230680_
                                                  '0)))
                                            (let ((_tl3056830618_
                                                   (##vector-ref
                                                    ___splice4383643837_
                                                    '1))
                                                  (_target3056630616_
                                                   (##vector-ref
                                                    ___splice4383643837_
                                                    '0)))
                                              (if (gx#stx-null? _tl3056830618_)
                                                  (___match4405344054_
                                                   _e3053730667_
                                                   _hd3053830670_
                                                   _tl3053930672_
                                                   _e3054030675_
                                                   _hd3054130678_
                                                   _tl3054230680_
                                                   _e3054330683_
                                                   _hd3054430686_
                                                   _tl3054530688_
                                                   _e3054630691_
                                                   _hd3054730694_
                                                   _tl3054830696_
                                                   ___splice4383643837_
                                                   _target3056630616_
                                                   _tl3056830618_)
                                                  (_g3046430579_))))
                                          (_g3046430579_))))))
                             (___match4396943970_
                              (lambda (_e3051830729_
                                       _hd3051930732_
                                       _tl3052030734_
                                       _e3052130737_
                                       _hd3052230740_
                                       _tl3052330742_
                                       ___splice4383043831_
                                       _target3052430745_
                                       _tl3052630747_)
                                (letrec ((_loop3052730750_
                                          (lambda (_hd3052530753_
                                                   _id3053130755_)
                                            (if (gx#stx-pair? _hd3052530753_)
                                                (let ((_e3052830758_
                                                       (gx#stx-e
                                                        _hd3052530753_)))
                                                  (let ((_lp-tl3053030763_
                                                         (##cdr _e3052830758_))
                                                        (_lp-hd3052930761_
                                                         (##car _e3052830758_)))
                                                    (_loop3052730750_
                                                     _lp-tl3053030763_
                                                     (cons _lp-hd3052930761_
                                                           _id3053130755_))))
                                                (let ((_id3053230766_
                                                       (reverse _id3053130755_)))
                                                  (if (gx#stx-pair?
                                                       _tl3052330742_)
                                                      (let ((_e3053330769_
                                                             (gx#stx-e
                                                              _tl3052330742_)))
                                                        (let ((_tl3053530774_
                                                               (##cdr _e3053330769_))
                                                              (_hd3053430772_
                                                               (##car _e3053330769_)))
                                                          (if (gx#stx-null?
                                                               _tl3053530774_)
                                                              (___kont4382843829_
                                                               _hd3053430772_
                                                               _id3053230766_)
                                                              (_g3046430579_))))
                                                      (_g3046430579_)))))))
                                  (_loop3052730750_ _target3052430745_ '())))))
                        (if (gx#stx-pair? ___stx4382043821_)
                            (let ((_e3046930938_ (gx#stx-e ___stx4382043821_)))
                              (let ((_tl3047130943_ (##cdr _e3046930938_))
                                    (_hd3047030941_ (##car _e3046930938_)))
                                (if (gx#identifier? _hd3047030941_)
                                    (if (gx#stx-eq? '%#if _hd3047030941_)
                                        (if (gx#stx-pair? _tl3047130943_)
                                            (let ((_e3047230946_
                                                   (gx#stx-e _tl3047130943_)))
                                              (let ((_tl3047430951_
                                                     (##cdr _e3047230946_))
                                                    (_hd3047330949_
                                                     (##car _e3047230946_)))
                                                (if (gx#stx-pair?
                                                     _tl3047430951_)
                                                    (let ((_e3047530954_
                                                           (gx#stx-e
                                                            _tl3047430951_)))
                                                      (let ((_tl3047730959_
                                                             (##cdr _e3047530954_))
                                                            (_hd3047630957_
                                                             (##car _e3047530954_)))
                                                        (if (gx#stx-pair?
                                                             _tl3047730959_)
                                                            (let ((_e3047830962_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3047730959_)))
                      (let ((_tl3048030967_ (##cdr _e3047830962_))
                            (_hd3047930965_ (##car _e3047830962_)))
                        (if (gx#stx-null? _tl3048030967_)
                            (___kont4382243823_
                             _hd3047930965_
                             _hd3047630957_
                             _hd3047330949_)
                            (_g3046430579_))))
                    (_g3046430579_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3046430579_))))
                                            (_g3046430579_))
                                        (if (gx#stx-eq?
                                             '%#let-values
                                             _hd3047030941_)
                                            (if (gx#stx-pair? _tl3047130943_)
                                                (let ((_e3048630902_
                                                       (gx#stx-e
                                                        _tl3047130943_)))
                                                  (let ((_tl3048830907_
                                                         (##cdr _e3048630902_))
                                                        (_hd3048730905_
                                                         (##car _e3048630902_)))
                                                    (if (gx#stx-pair?
                                                         _tl3048830907_)
                                                        (let ((_e3048930910_
                                                               (gx#stx-e
                                                                _tl3048830907_)))
                                                          (let ((_tl3049130915_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3048930910_))
                        (_hd3049030913_ (##car _e3048930910_)))
                    (if (gx#stx-null? _tl3049130915_)
                        (___kont4382443825_ _hd3049030913_ _hd3048730905_)
                        (_g3046430579_))))
                (_g3046430579_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3046430579_))
                                            (if (gx#stx-eq?
                                                 '%#letrec-values
                                                 _hd3047030941_)
                                                (if (gx#stx-pair?
                                                     _tl3047130943_)
                                                    (let ((_e3049830816_
                                                           (gx#stx-e
                                                            _tl3047130943_)))
                                                      (let ((_tl3050030821_
                                                             (##cdr _e3049830816_))
                                                            (_hd3049930819_
                                                             (##car _e3049830816_)))
                                                        (if (gx#stx-pair?
                                                             _hd3049930819_)
                                                            (let ((_e3050130824_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd3049930819_)))
                      (let ((_tl3050330829_ (##cdr _e3050130824_))
                            (_hd3050230827_ (##car _e3050130824_)))
                        (if (gx#stx-pair? _hd3050230827_)
                            (let ((_e3050430832_ (gx#stx-e _hd3050230827_)))
                              (let ((_tl3050630837_ (##cdr _e3050430832_))
                                    (_hd3050530835_ (##car _e3050430832_)))
                                (if (gx#stx-pair? _hd3050530835_)
                                    (let ((_e3050730840_
                                           (gx#stx-e _hd3050530835_)))
                                      (let ((_tl3050930845_
                                             (##cdr _e3050730840_))
                                            (_hd3050830843_
                                             (##car _e3050730840_)))
                                        (if (gx#stx-null? _tl3050930845_)
                                            (if (gx#stx-pair? _tl3050630837_)
                                                (let ((_e3051030848_
                                                       (gx#stx-e
                                                        _tl3050630837_)))
                                                  (let ((_tl3051230853_
                                                         (##cdr _e3051030848_))
                                                        (_hd3051130851_
                                                         (##car _e3051030848_)))
                                                    (if (gx#stx-null?
                                                         _tl3051230853_)
                                                        (if (gx#stx-null?
                                                             _tl3050330829_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3050030821_)
                        (let ((_e3051330856_ (gx#stx-e _tl3050030821_)))
                          (let ((_tl3051530861_ (##cdr _e3051330856_))
                                (_hd3051430859_ (##car _e3051330856_)))
                            (if (gx#stx-null? _tl3051530861_)
                                (___kont4382643827_
                                 _hd3051430859_
                                 _hd3051130851_
                                 _hd3050830843_)
                                (_g3046430579_))))
                        (_g3046430579_))
                    (_g3046430579_))
                (_g3046430579_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3046430579_))
                                            (_g3046430579_))))
                                    (_g3046430579_))))
                            (_g3046430579_))))
                    (_g3046430579_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3046430579_))
                                                (if (gx#stx-eq?
                                                     '%#lambda
                                                     _hd3047030941_)
                                                    (if (gx#stx-pair?
                                                         _tl3047130943_)
                                                        (let ((_e3052130737_
                                                               (gx#stx-e
                                                                _tl3047130943_)))
                                                          (let ((_tl3052330742_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3052130737_))
                        (_hd3052230740_ (##car _e3052130737_)))
                    (if (gx#stx-pair/null? _hd3052230740_)
                        (let ((___splice4383043831_
                               (gx#syntax-split-splice _hd3052230740_ '0)))
                          (let ((_tl3052630747_
                                 (##vector-ref ___splice4383043831_ '1))
                                (_target3052430745_
                                 (##vector-ref ___splice4383043831_ '0)))
                            (if (gx#stx-null? _tl3052630747_)
                                (___match4396943970_
                                 _e3046930938_
                                 _hd3047030941_
                                 _tl3047130943_
                                 _e3052130737_
                                 _hd3052230740_
                                 _tl3052330742_
                                 ___splice4383043831_
                                 _target3052430745_
                                 _tl3052630747_)
                                (_g3046430579_))))
                        (_g3046430579_))))
                (_g3046430579_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd3047030941_)
                                                        (if (gx#stx-pair?
                                                             _tl3047130943_)
                                                            (let ((_e3054030675_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3047130943_)))
                      (let ((_tl3054230680_ (##cdr _e3054030675_))
                            (_hd3054130678_ (##car _e3054030675_)))
                        (if (gx#stx-pair? _hd3054130678_)
                            (let ((_e3054330683_ (gx#stx-e _hd3054130678_)))
                              (let ((_tl3054530688_ (##cdr _e3054330683_))
                                    (_hd3054430686_ (##car _e3054330683_)))
                                (if (gx#identifier? _hd3054430686_)
                                    (if (gx#stx-eq? '%#ref _hd3054430686_)
                                        (if (gx#stx-pair? _tl3054530688_)
                                            (let ((_e3054630691_
                                                   (gx#stx-e _tl3054530688_)))
                                              (let ((_tl3054830696_
                                                     (##cdr _e3054630691_))
                                                    (_hd3054730694_
                                                     (##car _e3054630691_)))
                                                (if (gx#stx-null?
                                                     _tl3054830696_)
                                                    (if (gx#stx-pair?
                                                         _tl3054230680_)
                                                        (let ((_e3054930699_
                                                               (gx#stx-e
                                                                _tl3054230680_)))
                                                          (let ((_tl3055130704_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3054930699_))
                        (_hd3055030702_ (##car _e3054930699_)))
                    (if (gx#stx-null? _tl3055130704_)
                        (___match4401144012_
                         _e3046930938_
                         _hd3047030941_
                         _tl3047130943_
                         _e3054030675_
                         _hd3054130678_
                         _tl3054230680_
                         _e3054330683_
                         _hd3054430686_
                         _tl3054530688_
                         _e3054630691_
                         _hd3054730694_
                         _tl3054830696_
                         _e3054930699_
                         _hd3055030702_
                         _tl3055130704_)
                        (if (gx#stx-pair/null? _tl3054230680_)
                            (let ((___splice4383643837_
                                   (gx#syntax-split-splice _tl3054230680_ '0)))
                              (let ((_tl3056830618_
                                     (##vector-ref ___splice4383643837_ '1))
                                    (_target3056630616_
                                     (##vector-ref ___splice4383643837_ '0)))
                                (if (gx#stx-null? _tl3056830618_)
                                    (___match4405344054_
                                     _e3046930938_
                                     _hd3047030941_
                                     _tl3047130943_
                                     _e3054030675_
                                     _hd3054130678_
                                     _tl3054230680_
                                     _e3054330683_
                                     _hd3054430686_
                                     _tl3054530688_
                                     _e3054630691_
                                     _hd3054730694_
                                     _tl3054830696_
                                     ___splice4383643837_
                                     _target3056630616_
                                     _tl3056830618_)
                                    (_g3046430579_))))
                            (_g3046430579_)))))
                (if (gx#stx-pair/null? _tl3054230680_)
                    (let ((___splice4383643837_
                           (gx#syntax-split-splice _tl3054230680_ '0)))
                      (let ((_tl3056830618_
                             (##vector-ref ___splice4383643837_ '1))
                            (_target3056630616_
                             (##vector-ref ___splice4383643837_ '0)))
                        (if (gx#stx-null? _tl3056830618_)
                            (___match4405344054_
                             _e3046930938_
                             _hd3047030941_
                             _tl3047130943_
                             _e3054030675_
                             _hd3054130678_
                             _tl3054230680_
                             _e3054330683_
                             _hd3054430686_
                             _tl3054530688_
                             _e3054630691_
                             _hd3054730694_
                             _tl3054830696_
                             ___splice4383643837_
                             _target3056630616_
                             _tl3056830618_)
                            (_g3046430579_))))
                    (_g3046430579_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3046430579_))))
                                            (_g3046430579_))
                                        (_g3046430579_))
                                    (_g3046430579_))))
                            (_g3046430579_))))
                    (_g3046430579_))
                (_g3046430579_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_g3046430579_))))
                            (_g3046430579_))))))))
        (let* ((_clause3034130348_ _clause30336_)
               (_E3034330352_
                (lambda () (error '"No clause matching" _clause3034130348_)))
               (_K3034430445_
                (lambda (_kont30355_ _id30356_)
                  (let* ((_g3035830378_
                          (lambda (_g3035930375_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g3035930375_)))
                         (_g3035730442_
                          (lambda (_g3035930381_)
                            (if (gx#stx-pair? _g3035930381_)
                                (let ((_e3036230383_ (gx#stx-e _g3035930381_)))
                                  (let ((_hd3036330386_ (##car _e3036230383_))
                                        (_tl3036430388_ (##cdr _e3036230383_)))
                                    (if (gx#identifier? _hd3036330386_)
                                        (if (gx#stx-eq?
                                             '%#lambda
                                             _hd3036330386_)
                                            (if (gx#stx-pair? _tl3036430388_)
                                                (let ((_e3036530391_
                                                       (gx#stx-e
                                                        _tl3036430388_)))
                                                  (let ((_hd3036630394_
                                                         (##car _e3036530391_))
                                                        (_tl3036730396_
                                                         (##cdr _e3036530391_)))
                                                    (if (gx#stx-pair?
                                                         _hd3036630394_)
                                                        (let ((_e3036830399_
                                                               (gx#stx-e
                                                                _hd3036630394_)))
                                                          (let ((_hd3036930402_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e3036830399_))
                        (_tl3037030404_ (##cdr _e3036830399_)))
                    (if (gx#stx-null? _tl3037030404_)
                        (if (gx#stx-pair? _tl3036730396_)
                            (let ((_e3037130407_ (gx#stx-e _tl3036730396_)))
                              (let ((_hd3037230410_ (##car _e3037130407_))
                                    (_tl3037330412_ (##cdr _e3037130407_)))
                                (if (gx#stx-null? _tl3037330412_)
                                    ((lambda (_L30415_ _L30416_)
                                       (let* ((_body30437_
                                               (gxc#apply-expression-subst
                                                _L30415_
                                                _L30416_
                                                _target30338_))
                                              (_body30439_
                                               (if _negation30337_
                                                   (_closure-e30340_
                                                    _body30437_)
                                                   _body30437_)))
                                         (gxc#optimizer-declare-type!__%
                                          (gxc#identifier-symbol _id30356_)
                                          (let ((__obj44105
                                                 (make-object
                                                  gxc#!lambda::t
                                                  '5)))
                                            (gxc#!lambda:::init!__0
                                             __obj44105
                                             'lambda
                                             '0
                                             '#f)
                                            __obj44105)
                                          '#t)
                                         (cons _id30356_
                                               (cons '%#lambda
                                                     (cons '()
                                                           (cons _body30439_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _hd3037230410_
                                     _hd3036930402_)
                                    (_g3035830378_ _g3035930381_))))
                            (_g3035830378_ _g3035930381_))
                        (_g3035830378_ _g3035930381_))))
                (_g3035830378_ _g3035930381_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3035830378_ _g3035930381_))
                                            (_g3035830378_ _g3035930381_))
                                        (_g3035830378_ _g3035930381_))))
                                (_g3035830378_ _g3035930381_)))))
                    (_g3035730442_ _kont30355_)))))
          (if (##pair? _clause3034130348_)
              (let ((_hd3034530448_ (##car _clause3034130348_))
                    (_tl3034630450_ (##cdr _clause3034130348_)))
                (let* ((_id30453_ _hd3034530448_) (_kont30455_ _tl3034630450_))
                  (_K3034430445_ _kont30455_ _id30453_)))
              (_E3034330352_))))))
  (define gxc#push-match-vars-let-values%
    (lambda (_stx30122_ _vars30123_ _K30124_)
      (let* ((_g3012630143_
              (lambda (_g3012730140_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3012730140_)))
             (_g3012530333_
              (lambda (_g3012730146_)
                (if (gx#stx-pair? _g3012730146_)
                    (let ((_e3013030148_ (gx#stx-e _g3012730146_)))
                      (let ((_hd3013130151_ (##car _e3013030148_))
                            (_tl3013230153_ (##cdr _e3013030148_)))
                        (if (gx#stx-pair? _tl3013230153_)
                            (let ((_e3013330156_ (gx#stx-e _tl3013230153_)))
                              (let ((_hd3013430159_ (##car _e3013330156_))
                                    (_tl3013530161_ (##cdr _e3013330156_)))
                                (if (gx#stx-pair? _tl3013530161_)
                                    (let ((_e3013630164_
                                           (gx#stx-e _tl3013530161_)))
                                      (let ((_hd3013730167_
                                             (##car _e3013630164_))
                                            (_tl3013830169_
                                             (##cdr _e3013630164_)))
                                        (if (gx#stx-null? _tl3013830169_)
                                            ((lambda (_L30172_ _L30173_)
                                               (let _lp30188_ ((_rest30190_
                                                                _L30173_)
                                                               (_rebind30191_
                                                                '())
                                                               (_vars30192_
                                                                _vars30123_))
                                                 (let* ((_rest3019330201_
                                                         _rest30190_)
                                                        (_else3019530209_
                                                         (lambda ()
                                                           (if (null? _rebind30191_)
                                                               (gxc#compile-e
                                                                _L30172_
                                                                _vars30192_
                                                                _K30124_)
                                                               (gxc#xform-wrap-source
                                                                (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (reverse _rebind30191_)
                                    (cons (gxc#compile-e
                                           _L30172_
                                           _vars30192_
                                           _K30124_)
                                          '())))
                        _stx30122_))))
                (_K3019730321_
                 (lambda (_rest30212_ _bind30213_)
                   (let* ((___stx4405644057_ _bind30213_)
                          (_g3021630239_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              ___stx4405644057_))))
                     (let ((___kont4405844059_
                            (lambda (_L30291_ _L30292_)
                              (_lp30188_
                               _rest30212_
                               _rebind30191_
                               (cons _bind30213_ _vars30192_))))
                           (___kont4406044061_
                            (lambda ()
                              (_lp30188_
                               _rest30212_
                               (cons _bind30213_ _rebind30191_)
                               _vars30192_))))
                       (if (gx#stx-pair? ___stx4405644057_)
                           (let ((_e3022030251_ (gx#stx-e ___stx4405644057_)))
                             (let ((_tl3022230256_ (##cdr _e3022030251_))
                                   (_hd3022130254_ (##car _e3022030251_)))
                               (if (gx#stx-pair? _hd3022130254_)
                                   (let ((_e3022330259_
                                          (gx#stx-e _hd3022130254_)))
                                     (let ((_tl3022530264_
                                            (##cdr _e3022330259_))
                                           (_hd3022430262_
                                            (##car _e3022330259_)))
                                       (if (gx#stx-null? _tl3022530264_)
                                           (if (gx#stx-pair? _tl3022230256_)
                                               (let ((_e3022630267_
                                                      (gx#stx-e
                                                       _tl3022230256_)))
                                                 (let ((_tl3022830272_
                                                        (##cdr _e3022630267_))
                                                       (_hd3022730270_
                                                        (##car _e3022630267_)))
                                                   (if (gx#stx-pair?
                                                        _hd3022730270_)
                                                       (let ((_e3022930275_
                                                              (gx#stx-e
                                                               _hd3022730270_)))
                                                         (let ((_tl3023130280_
                                                                (##cdr _e3022930275_))
                                                               (_hd3023030278_
                                                                (##car _e3022930275_)))
                                                           (if (gx#identifier?
                                                                _hd3023030278_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd3023030278_)
                           (if (gx#stx-pair? _tl3023130280_)
                               (let ((_e3023230283_ (gx#stx-e _tl3023130280_)))
                                 (let ((_tl3023430288_ (##cdr _e3023230283_))
                                       (_hd3023330286_ (##car _e3023230283_)))
                                   (if (gx#stx-null? _tl3023430288_)
                                       (if (gx#stx-null? _tl3022830272_)
                                           (___kont4405844059_
                                            _hd3023330286_
                                            _hd3022430262_)
                                           (___kont4406044061_))
                                       (___kont4406044061_))))
                               (___kont4406044061_))
                           (___kont4406044061_))
                       (___kont4406044061_))))
               (___kont4406044061_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont4406044061_))
                                           (___kont4406044061_))))
                                   (___kont4406044061_))))
                           (___kont4406044061_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (##pair? _rest3019330201_)
                                                       (let ((_hd3019830324_
                                                              (##car _rest3019330201_))
                                                             (_tl3019930326_
                                                              (##cdr _rest3019330201_)))
                                                         (let* ((_bind30329_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd3019830324_)
                        (_rest30331_ _tl3019930326_))
                   (_K3019730321_ _rest30331_ _bind30329_)))
               (_else3019530209_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd3013730167_
                                             _hd3013430159_)
                                            (_g3012630143_ _g3012730146_))))
                                    (_g3012630143_ _g3012730146_))))
                            (_g3012630143_ _g3012730146_))))
                    (_g3012630143_ _g3012730146_)))))
        (_g3012530333_ _stx30122_))))
  (define gxc#push-match-vars-if%
    (lambda (_stx30037_ _vars30038_ _K30039_)
      (let* ((_g3004130062_
              (lambda (_g3004230059_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3004230059_)))
             (_g3004030119_
              (lambda (_g3004230065_)
                (if (gx#stx-pair? _g3004230065_)
                    (let ((_e3004630067_ (gx#stx-e _g3004230065_)))
                      (let ((_hd3004730070_ (##car _e3004630067_))
                            (_tl3004830072_ (##cdr _e3004630067_)))
                        (if (gx#stx-pair? _tl3004830072_)
                            (let ((_e3004930075_ (gx#stx-e _tl3004830072_)))
                              (let ((_hd3005030078_ (##car _e3004930075_))
                                    (_tl3005130080_ (##cdr _e3004930075_)))
                                (if (gx#stx-pair? _tl3005130080_)
                                    (let ((_e3005230083_
                                           (gx#stx-e _tl3005130080_)))
                                      (let ((_hd3005330086_
                                             (##car _e3005230083_))
                                            (_tl3005430088_
                                             (##cdr _e3005230083_)))
                                        (if (gx#stx-pair? _tl3005430088_)
                                            (let ((_e3005530091_
                                                   (gx#stx-e _tl3005430088_)))
                                              (let ((_hd3005630094_
                                                     (##car _e3005530091_))
                                                    (_tl3005730096_
                                                     (##cdr _e3005530091_)))
                                                (if (gx#stx-null?
                                                     _tl3005730096_)
                                                    ((lambda (_L30099_
                                                              _L30100_
                                                              _L30101_)
                                                       (if (gxc#apply-find-var-refs
                                                            _L30101_
                                                            (map caar
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _vars30038_))
                   (gxc#push-match-vars-stop _stx30037_ _vars30038_ _K30039_)
                   (gxc#xform-wrap-source
                    (cons '%#if
                          (cons _L30101_
                                (cons (gxc#compile-e
                                       _L30100_
                                       _vars30038_
                                       _K30039_)
                                      (cons (gxc#compile-e
                                             _L30099_
                                             _vars30038_
                                             _K30039_)
                                            '()))))
                    _stx30037_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd3005630094_
                                                     _hd3005330086_
                                                     _hd3005030078_)
                                                    (_g3004130062_
                                                     _g3004230065_))))
                                            (_g3004130062_ _g3004230065_))))
                                    (_g3004130062_ _g3004230065_))))
                            (_g3004130062_ _g3004230065_))))
                    (_g3004130062_ _g3004230065_)))))
        (_g3004030119_ _stx30037_))))
  (define gxc#push-match-vars-call%
    (lambda (_stx29957_ _vars29958_ _K29959_)
      (let* ((_g2996129980_
              (lambda (_g2996229977_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2996229977_)))
             (_g2996030034_
              (lambda (_g2996229983_)
                (if (gx#stx-pair? _g2996229983_)
                    (let ((_e2996429985_ (gx#stx-e _g2996229983_)))
                      (let ((_hd2996529988_ (##car _e2996429985_))
                            (_tl2996629990_ (##cdr _e2996429985_)))
                        (if (gx#stx-pair? _tl2996629990_)
                            (let ((_e2996729993_ (gx#stx-e _tl2996629990_)))
                              (let ((_hd2996829996_ (##car _e2996729993_))
                                    (_tl2996929998_ (##cdr _e2996729993_)))
                                (if (gx#stx-pair? _hd2996829996_)
                                    (let ((_e2997030001_
                                           (gx#stx-e _hd2996829996_)))
                                      (let ((_hd2997130004_
                                             (##car _e2997030001_))
                                            (_tl2997230006_
                                             (##cdr _e2997030001_)))
                                        (if (gx#identifier? _hd2997130004_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd2997130004_)
                                                (if (gx#stx-pair?
                                                     _tl2997230006_)
                                                    (let ((_e2997330009_
                                                           (gx#stx-e
                                                            _tl2997230006_)))
                                                      (let ((_hd2997430012_
                                                             (##car _e2997330009_))
                                                            (_tl2997530014_
                                                             (##cdr _e2997330009_)))
                                                        (if (gx#stx-null?
                                                             _tl2997530014_)
                                                            ((lambda (_L30017_)
                                                               (if (and (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L30017_
                                 _K29959_)
                                (pair? _vars29958_))
                           (gxc#xform-wrap-source
                            (cons '%#let-values
                                  (cons (reverse _vars29958_)
                                        (cons _stx29957_ '())))
                            _stx29957_)
                           _stx29957_))
                     _hd2997430012_)
                    (_g2996129980_ _g2996229983_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2996129980_
                                                     _g2996229983_))
                                                (_g2996129980_ _g2996229983_))
                                            (_g2996129980_ _g2996229983_))))
                                    (_g2996129980_ _g2996229983_))))
                            (_g2996129980_ _g2996229983_))))
                    (_g2996129980_ _g2996229983_)))))
        (_g2996030034_ _stx29957_))))
  (define gxc#push-match-vars-stop
    (lambda (_stx29953_ _vars29954_ _K29955_)
      (if (null? _vars29954_)
          _stx29953_
          (gxc#xform-wrap-source
           (cons '%#let-values
                 (cons (reverse _vars29954_) (cons _stx29953_ '())))
           _stx29953_)))))
