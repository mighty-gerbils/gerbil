(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<more-sugar>[1]#setq-macro::t|
    (make-class-type
     'gerbil.core#setq-macro::t
     (cons |gerbil/core$<MOP>$<MOP:3>[1]#macro-object::t| '())
     '()
     'setq-macro
     '()
     '#f))
  (define |gerbil/core$<more-sugar>[1]#setq-macro?|
    (make-class-predicate |gerbil/core$<more-sugar>[1]#setq-macro::t|))
  (define |gerbil/core$<more-sugar>[1]#make-setq-macro|
    (lambda _$args32460_
      (apply make-class-instance
             |gerbil/core$<more-sugar>[1]#setq-macro::t|
             _$args32460_)))
  (define |gerbil/core$<more-sugar>[1]#setf-macro::t|
    (make-class-type
     'gerbil.core#setf-macro::t
     (cons |gerbil/core$<MOP>$<MOP:3>[1]#macro-object::t| '())
     '()
     'setf-macro
     '()
     '#f))
  (define |gerbil/core$<more-sugar>[1]#setf-macro?|
    (make-class-predicate |gerbil/core$<more-sugar>[1]#setf-macro::t|))
  (define |gerbil/core$<more-sugar>[1]#make-setf-macro|
    (lambda _$args32456_
      (apply make-class-instance
             |gerbil/core$<more-sugar>[1]#setf-macro::t|
             _$args32456_)))
  (define |gerbil/core$<more-sugar>[1]#syntax-local-setf-macro?|
    (lambda (_stx32453_)
      (if (gx#identifier? _stx32453_)
          (|gerbil/core$<more-sugar>[1]#setf-macro?|
           (gx#syntax-local-value _stx32453_ false))
          '#f)))
  (define |gerbil/core$<more-sugar>[1]#syntax-local-setq-macro?|
    (lambda (_stx32450_)
      (if (gx#identifier? _stx32450_)
          (|gerbil/core$<more-sugar>[1]#setq-macro?|
           (gx#syntax-local-value _stx32450_ false))
          '#f)))
  (define |gerbil/core$<more-sugar>[:0:]#set!|
    (lambda (_stx32464_)
      (let* ((___stx4142741428_ _stx32464_)
             (_g3247032529_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx4142741428_))))
        (let ((___kont4143041431_
               (lambda (_L32802_)
                 (gx#core-apply-expander
                  (gx#syntax-local-e _L32802_)
                  _stx32464_)))
              (___kont4143241433_
               (lambda (_L32701_ _L32703_ _L32704_)
                 (let* ((_g3272632734_
                         (lambda (_g3272732730_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g3272732730_)))
                        (_g3272532761_
                         (lambda (_g3272732738_)
                           ((lambda (_L32741_)
                              (let ()
                                (cons _L32741_
                                      (foldr (lambda (_g3275232755_
                                                      _g3275332758_)
                                               (cons _g3275232755_
                                                     _g3275332758_))
                                             (cons _L32701_ '())
                                             _L32703_))))
                            _g3272732738_))))
                   (_g3272532761_
                    (gx#stx-identifier _L32704_ _L32704_ '"-set!")))))
              (___kont4143641437_
               (lambda (_L32611_)
                 (gx#core-apply-expander
                  (gx#syntax-local-e _L32611_)
                  _stx32464_)))
              (___kont4143841439_
               (lambda (_L32566_ _L32568_)
                 (cons (gx#datum->syntax '#f '%#set!)
                       (cons _L32568_ (cons _L32566_ '()))))))
          (let* ((___match4151841519_
                  (lambda (_e3251532536_
                           _hd3251632540_
                           _tl3251732543_
                           _e3251832546_
                           _hd3251932550_
                           _tl3252032553_
                           _e3252132556_
                           _hd3252232560_
                           _tl3252332563_)
                    (let ((_L32566_ _hd3252232560_) (_L32568_ _hd3251932550_))
                      (if (gx#identifier? _L32568_)
                          (___kont4143841439_ _L32566_ _L32568_)
                          (_g3247032529_)))))
                 (___match4149841499_
                  (lambda (_e3250732591_
                           _hd3250832595_
                           _tl3250932598_
                           _e3251032601_
                           _hd3251132605_
                           _tl3251232608_)
                    (let ((_L32611_ _hd3251132605_))
                      (if (|gerbil/core$<more-sugar>[1]#syntax-local-setq-macro?|
                           _L32611_)
                          (___kont4143641437_ _L32611_)
                          (if (gx#stx-pair? _tl3251232608_)
                              (let ((_e3252132556_
                                     (gx#syntax-e _tl3251232608_)))
                                (let ((_tl3252332563_ (##cdr _e3252132556_))
                                      (_hd3252232560_ (##car _e3252132556_)))
                                  (if (gx#stx-null? _tl3252332563_)
                                      (___match4151841519_
                                       _e3250732591_
                                       _hd3250832595_
                                       _tl3250932598_
                                       _e3251032601_
                                       _hd3251132605_
                                       _tl3251232608_
                                       _e3252132556_
                                       _hd3252232560_
                                       _tl3252332563_)
                                      (_g3247032529_))))
                              (_g3247032529_))))))
                 (___match4148641487_
                  (lambda (_e3248532631_
                           _hd3248632635_
                           _tl3248732638_
                           _e3248832641_
                           _hd3248932645_
                           _tl3249032648_
                           _e3249132651_
                           _hd3249232655_
                           _tl3249332658_
                           ___splice4143441435_
                           _target3249432661_
                           _tl3249632664_)
                    (letrec ((_loop3249732667_
                              (lambda (_hd3249532671_ _arg3250132674_)
                                (if (gx#stx-pair? _hd3249532671_)
                                    (let ((_e3249832677_
                                           (gx#syntax-e _hd3249532671_)))
                                      (let ((_lp-tl3250032684_
                                             (##cdr _e3249832677_))
                                            (_lp-hd3249932681_
                                             (##car _e3249832677_)))
                                        (_loop3249732667_
                                         _lp-tl3250032684_
                                         (cons _lp-hd3249932681_
                                               _arg3250132674_))))
                                    (let ((_arg3250232687_
                                           (reverse _arg3250132674_)))
                                      (if (gx#stx-pair? _tl3249032648_)
                                          (let ((_e3250332691_
                                                 (gx#syntax-e _tl3249032648_)))
                                            (let ((_tl3250532698_
                                                   (##cdr _e3250332691_))
                                                  (_hd3250432695_
                                                   (##car _e3250332691_)))
                                              (if (gx#stx-null? _tl3250532698_)
                                                  (let ((_L32701_
                                                         _hd3250432695_)
                                                        (_L32703_
                                                         _arg3250232687_)
                                                        (_L32704_
                                                         _hd3249232655_))
                                                    (if (gx#identifier?
                                                         _L32704_)
                                                        (___kont4143241433_
                                                         _L32701_
                                                         _L32703_
                                                         _L32704_)
                                                        (___match4149841499_
                                                         _e3248532631_
                                                         _hd3248632635_
                                                         _tl3248732638_
                                                         _e3248832641_
                                                         _hd3248932645_
                                                         _tl3249032648_)))
                                                  (___match4149841499_
                                                   _e3248532631_
                                                   _hd3248632635_
                                                   _tl3248732638_
                                                   _e3248832641_
                                                   _hd3248932645_
                                                   _tl3249032648_))))
                                          (___match4149841499_
                                           _e3248532631_
                                           _hd3248632635_
                                           _tl3248732638_
                                           _e3248832641_
                                           _hd3248932645_
                                           _tl3249032648_)))))))
                      (_loop3249732667_ _target3249432661_ '())))))
            (if (gx#stx-pair? ___stx4142741428_)
                (let ((_e3247332772_ (gx#syntax-e ___stx4142741428_)))
                  (let ((_tl3247532779_ (##cdr _e3247332772_))
                        (_hd3247432776_ (##car _e3247332772_)))
                    (if (gx#stx-pair? _tl3247532779_)
                        (let ((_e3247632782_ (gx#syntax-e _tl3247532779_)))
                          (let ((_tl3247832789_ (##cdr _e3247632782_))
                                (_hd3247732786_ (##car _e3247632782_)))
                            (if (gx#stx-pair? _hd3247732786_)
                                (let ((_e3247932792_
                                       (gx#syntax-e _hd3247732786_)))
                                  (let ((_tl3248132799_ (##cdr _e3247932792_))
                                        (_hd3248032796_ (##car _e3247932792_)))
                                    (if (|gerbil/core$<more-sugar>[1]#syntax-local-setf-macro?|
                                         (gx#datum->syntax '#f 'setfid))
                                        (let ((_L32802_ _hd3248032796_))
                                          (___kont4143041431_ _L32802_))
                                        (if (gx#stx-pair/null? _tl3248132799_)
                                            (let ((___splice4143441435_
                                                   (gx#syntax-split-splice
                                                    _tl3248132799_
                                                    '0)))
                                              (let ((_tl3249632664_
                                                     (##vector-ref
                                                      ___splice4143441435_
                                                      '1))
                                                    (_target3249432661_
                                                     (##vector-ref
                                                      ___splice4143441435_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl3249632664_)
                                                    (___match4148641487_
                                                     _e3247332772_
                                                     _hd3247432776_
                                                     _tl3247532779_
                                                     _e3247632782_
                                                     _hd3247732786_
                                                     _tl3247832789_
                                                     _e3247932792_
                                                     _hd3248032796_
                                                     _tl3248132799_
                                                     ___splice4143441435_
                                                     _target3249432661_
                                                     _tl3249632664_)
                                                    (___match4149841499_
                                                     _e3247332772_
                                                     _hd3247432776_
                                                     _tl3247532779_
                                                     _e3247632782_
                                                     _hd3247732786_
                                                     _tl3247832789_))))
                                            (___match4149841499_
                                             _e3247332772_
                                             _hd3247432776_
                                             _tl3247532779_
                                             _e3247632782_
                                             _hd3247732786_
                                             _tl3247832789_)))))
                                (___match4149841499_
                                 _e3247332772_
                                 _hd3247432776_
                                 _tl3247532779_
                                 _e3247632782_
                                 _hd3247732786_
                                 _tl3247832789_))))
                        (_g3247032529_))))
                (_g3247032529_)))))))
  (define |gerbil/core$<more-sugar>[:0:]#values-set!|
    (lambda (_stx32822_)
      (let* ((_g3282532849_
              (lambda (_g3282632845_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3282632845_)))
             (_g3282433027_
              (lambda (_g3282632853_)
                (if (gx#stx-pair? _g3282632853_)
                    (let ((_e3282932856_ (gx#syntax-e _g3282632853_)))
                      (let ((_hd3283032860_ (##car _e3282932856_))
                            (_tl3283132863_ (##cdr _e3282932856_)))
                        (if (gx#stx-pair/null? _tl3283132863_)
                            (if (fx>= (gx#stx-length _tl3283132863_) '1)
                                (let ((_g42003_
                                       (gx#syntax-split-splice
                                        _tl3283132863_
                                        '1)))
                                  (begin
                                    (let ((_g42004_
                                           (if (##values? _g42003_)
                                               (##vector-length _g42003_)
                                               1)))
                                      (if (not (##fx= _g42004_ 2))
                                          (error "Context expects 2 values"
                                                 _g42004_)))
                                    (let ((_target3283232866_
                                           (##vector-ref _g42003_ 0))
                                          (_tl3283432869_
                                           (##vector-ref _g42003_ 1)))
                                      (if (gx#stx-pair? _tl3283432869_)
                                          (let ((_e3284132872_
                                                 (gx#syntax-e _tl3283432869_)))
                                            (let ((_hd3284232876_
                                                   (##car _e3284132872_))
                                                  (_tl3284332879_
                                                   (##cdr _e3284132872_)))
                                              (if (gx#stx-null? _tl3284332879_)
                                                  (letrec ((_loop3283532882_
                                                            (lambda (_hd3283332886_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _tgt3283932889_)
                      (if (gx#stx-pair? _hd3283332886_)
                          (let ((_e3283632892_ (gx#syntax-e _hd3283332886_)))
                            (let ((_lp-hd3283732896_ (##car _e3283632892_))
                                  (_lp-tl3283832899_ (##cdr _e3283632892_)))
                              (_loop3283532882_
                               _lp-tl3283832899_
                               (cons _lp-hd3283732896_ _tgt3283932889_))))
                          (let ((_tgt3284032902_ (reverse _tgt3283932889_)))
                            ((lambda (_L32906_ _L32908_)
                               (let* ((_g3292632943_
                                       (lambda (_g3292732939_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g3292732939_)))
                                      (_g3292533015_
                                       (lambda (_g3292732947_)
                                         (if (gx#stx-pair/null? _g3292732947_)
                                             (let ((_g42005_
                                                    (gx#syntax-split-splice
                                                     _g3292732947_
                                                     '0)))
                                               (begin
                                                 (let ((_g42006_
                                                        (if (##values?
                                                             _g42005_)
                                                            (##vector-length
                                                             _g42005_)
                                                            1)))
                                                   (if (not (##fx= _g42006_ 2))
                                                       (error "Context expects 2 values"
                                                              _g42006_)))
                                                 (let ((_target3292932950_
                                                        (##vector-ref
                                                         _g42005_
                                                         0))
                                                       (_tl3293132953_
                                                        (##vector-ref
                                                         _g42005_
                                                         1)))
                                                   (if (gx#stx-null?
                                                        _tl3293132953_)
                                                       (letrec ((_loop3293232956_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd3293032960_ _$e3293632963_)
                           (if (gx#stx-pair? _hd3293032960_)
                               (let ((_e3293332966_
                                      (gx#syntax-e _hd3293032960_)))
                                 (let ((_lp-hd3293432970_
                                        (##car _e3293332966_))
                                       (_lp-tl3293532973_
                                        (##cdr _e3293332966_)))
                                   (_loop3293232956_
                                    _lp-tl3293532973_
                                    (cons _lp-hd3293432970_ _$e3293632963_))))
                               (let ((_$e3293732976_ (reverse _$e3293632963_)))
                                 ((lambda (_L32980_)
                                    (let ()
                                      (cons (gx#datum->syntax '#f 'let-values)
                                            (cons (cons (cons (foldr (lambda (_g3299533001_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g3299633004_)
                               (cons _g3299533001_ _g3299633004_))
                             '()
                             _L32980_)
                      (cons _L32906_ '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (begin
                                                    (gx#syntax-check-splice-targets
                                                     _L32980_
                                                     _L32908_)
                                                    (foldr (lambda (_g3299733007_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g3299833010_
                            _g3299933012_)
                     (cons (cons (gx#datum->syntax '#f 'set!)
                                 (cons _g3299833010_ (cons _g3299733007_ '())))
                           _g3299933012_))
                   '()
                   _L32980_
                   _L32908_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _$e3293732976_))))))
                 (_loop3293232956_ _target3292932950_ '()))
               (_g3292632943_ _g3292732947_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g3292632943_ _g3292732947_)))))
                                 (_g3292533015_
                                  (gx#gentemps
                                   (foldr (lambda (_g3301833021_ _g3301933024_)
                                            (cons _g3301833021_ _g3301933024_))
                                          '()
                                          _L32908_)))))
                             _hd3284232876_
                             _tgt3284032902_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop3283532882_
                                                     _target3283232866_
                                                     '()))
                                                  (_g3282532849_
                                                   _g3282632853_))))
                                          (_g3282532849_ _g3282632853_)))))
                                (_g3282532849_ _g3282632853_))
                            (_g3282532849_ _g3282632853_))))
                    (_g3282532849_ _g3282632853_)))))
        (_g3282433027_ _stx32822_))))
  (define |gerbil/core$<more-sugar>[:0:]#parameterize|
    (lambda (_stx33033_)
      (let* ((___stx4152141522_ _stx33033_)
             (_g3303733095_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx4152141522_))))
        (let ((___kont4152441525_
               (lambda (_L33429_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons '()
                             (foldr (lambda (_g3344533448_ _g3344633451_)
                                      (cons _g3344533448_ _g3344633451_))
                                    '()
                                    _L33429_)))))
              (___kont4152841529_
               (lambda (_L33206_ _L33208_ _L33209_)
                 (let* ((_g3323233240_
                         (lambda (_g3323333236_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g3323333236_)))
                        (_g3323133360_
                         (lambda (_g3323333244_)
                           ((lambda (_L33247_)
                              (let ()
                                (let* ((_g3325933276_
                                        (lambda (_g3326033272_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g3326033272_)))
                                       (_g3325833340_
                                        (lambda (_g3326033280_)
                                          (if (gx#stx-pair/null? _g3326033280_)
                                              (let ((_g42007_
                                                     (gx#syntax-split-splice
                                                      _g3326033280_
                                                      '0)))
                                                (begin
                                                  (let ((_g42008_
                                                         (if (##values?
                                                              _g42007_)
                                                             (##vector-length
                                                              _g42007_)
                                                             1)))
                                                    (if (not (##fx= _g42008_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                (error "Context expects 2 values" _g42008_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target3326233283_
                                                         (##vector-ref
                                                          _g42007_
                                                          0))
                                                        (_tl3326433286_
                                                         (##vector-ref
                                                          _g42007_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl3326433286_)
                                                        (letrec ((_loop3326533289_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd3326333293_ _arg3326933296_)
                            (if (gx#stx-pair? _hd3326333293_)
                                (let ((_e3326633299_
                                       (gx#syntax-e _hd3326333293_)))
                                  (let ((_lp-hd3326733303_
                                         (##car _e3326633299_))
                                        (_lp-tl3326833306_
                                         (##cdr _e3326633299_)))
                                    (_loop3326533289_
                                     _lp-tl3326833306_
                                     (cons _lp-hd3326733303_
                                           _arg3326933296_))))
                                (let ((_arg3327033309_
                                       (reverse _arg3326933296_)))
                                  ((lambda (_L33313_)
                                     (let ()
                                       (let ()
                                         (cons (gx#datum->syntax
                                                '#f
                                                'call-with-parameters)
                                               (cons _L33247_
                                                     (foldr (lambda (_g3333133334_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g3333233337_)
                      (cons _g3333133334_ _g3333233337_))
                    '()
                    _L33313_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _arg3327033309_))))))
                  (_loop3326533289_ _target3326233283_ '()))
                (_g3325933276_ _g3326033280_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g3325933276_ _g3326033280_)))))
                                  (_g3325833340_
                                   (foldr cons*
                                          '()
                                          (gx#syntax->list
                                           (foldr (lambda (_g3334333346_
                                                           _g3334433349_)
                                                    (cons _g3334333346_
                                                          _g3334433349_))
                                                  '()
                                                  _L33209_))
                                          (gx#syntax->list
                                           (foldr (lambda (_g3335133354_
                                                           _g3335233357_)
                                                    (cons _g3335133354_
                                                          _g3335233357_))
                                                  '()
                                                  _L33208_)))))))
                            _g3323333244_))))
                   (_g3323133360_
                    (gx#stx-wrap-source
                     (cons (gx#datum->syntax '#f 'lambda)
                           (cons '()
                                 (foldr (lambda (_g3336333366_ _g3336433369_)
                                          (cons _g3336333366_ _g3336433369_))
                                        '()
                                        _L33206_)))
                     (gx#stx-source _stx33033_)))))))
          (let* ((___match4157641577_
                  (lambda (_e3305833102_
                           _hd3305933106_
                           _tl3306033109_
                           _e3306133112_
                           _hd3306233116_
                           _tl3306333119_
                           ___splice4153041531_
                           _target3306433122_
                           _tl3306633125_)
                    (letrec ((_loop3306733128_
                              (lambda (_hd3306533132_
                                       _expr3307133135_
                                       _param3307233137_)
                                (if (gx#stx-pair? _hd3306533132_)
                                    (let ((_e3306833140_
                                           (gx#syntax-e _hd3306533132_)))
                                      (let ((_lp-tl3307033147_
                                             (##cdr _e3306833140_))
                                            (_lp-hd3306933144_
                                             (##car _e3306833140_)))
                                        (if (gx#stx-pair? _lp-hd3306933144_)
                                            (let ((_e3307533150_
                                                   (gx#syntax-e
                                                    _lp-hd3306933144_)))
                                              (let ((_tl3307733157_
                                                     (##cdr _e3307533150_))
                                                    (_hd3307633154_
                                                     (##car _e3307533150_)))
                                                (if (gx#stx-pair?
                                                     _tl3307733157_)
                                                    (let ((_e3307833160_
                                                           (gx#syntax-e
                                                            _tl3307733157_)))
                                                      (let ((_tl3308033167_
                                                             (##cdr _e3307833160_))
                                                            (_hd3307933164_
                                                             (##car _e3307833160_)))
                                                        (if (gx#stx-null?
                                                             _tl3308033167_)
                                                            (_loop3306733128_
                                                             _lp-tl3307033147_
                                                             (cons _hd3307933164_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr3307133135_)
                     (cons _hd3307633154_ _param3307233137_))
                    (_g3303733095_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3303733095_))))
                                            (_g3303733095_))))
                                    (let ((_param3307433173_
                                           (reverse _param3307233137_))
                                          (_expr3307333170_
                                           (reverse _expr3307133135_)))
                                      (if (gx#stx-pair/null? _tl3306333119_)
                                          (let ((___splice4153241533_
                                                 (gx#syntax-split-splice
                                                  _tl3306333119_
                                                  '0)))
                                            (let ((_tl3308333179_
                                                   (##vector-ref
                                                    ___splice4153241533_
                                                    '1))
                                                  (_target3308133176_
                                                   (##vector-ref
                                                    ___splice4153241533_
                                                    '0)))
                                              (if (gx#stx-null? _tl3308333179_)
                                                  (letrec ((_loop3308433182_
                                                            (lambda (_hd3308233186_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _body3308833189_)
                      (if (gx#stx-pair? _hd3308233186_)
                          (let ((_e3308533192_ (gx#syntax-e _hd3308233186_)))
                            (let ((_lp-tl3308733199_ (##cdr _e3308533192_))
                                  (_lp-hd3308633196_ (##car _e3308533192_)))
                              (_loop3308433182_
                               _lp-tl3308733199_
                               (cons _lp-hd3308633196_ _body3308833189_))))
                          (let ((_body3308933202_ (reverse _body3308833189_)))
                            (___kont4152841529_
                             _body3308933202_
                             _expr3307333170_
                             _param3307433173_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop3308433182_
                                                     _target3308133176_
                                                     '()))
                                                  (_g3303733095_))))
                                          (_g3303733095_)))))))
                      (_loop3306733128_ _target3306433122_ '() '()))))
                 (___match4155641557_
                  (lambda (_e3304033379_
                           _hd3304133383_
                           _tl3304233386_
                           _e3304333389_
                           _hd3304433393_
                           _tl3304533396_
                           ___splice4152641527_
                           _target3304633399_
                           _tl3304833402_)
                    (letrec ((_loop3304933405_
                              (lambda (_hd3304733409_ _body3305333412_)
                                (if (gx#stx-pair? _hd3304733409_)
                                    (let ((_e3305033415_
                                           (gx#syntax-e _hd3304733409_)))
                                      (let ((_lp-tl3305233422_
                                             (##cdr _e3305033415_))
                                            (_lp-hd3305133419_
                                             (##car _e3305033415_)))
                                        (_loop3304933405_
                                         _lp-tl3305233422_
                                         (cons _lp-hd3305133419_
                                               _body3305333412_))))
                                    (let ((_body3305433425_
                                           (reverse _body3305333412_)))
                                      (___kont4152441525_
                                       _body3305433425_))))))
                      (_loop3304933405_ _target3304633399_ '())))))
            (if (gx#stx-pair? ___stx4152141522_)
                (let ((_e3304033379_ (gx#syntax-e ___stx4152141522_)))
                  (let ((_tl3304233386_ (##cdr _e3304033379_))
                        (_hd3304133383_ (##car _e3304033379_)))
                    (if (gx#stx-pair? _tl3304233386_)
                        (let ((_e3304333389_ (gx#syntax-e _tl3304233386_)))
                          (let ((_tl3304533396_ (##cdr _e3304333389_))
                                (_hd3304433393_ (##car _e3304333389_)))
                            (if (gx#stx-null? _hd3304433393_)
                                (if (gx#stx-pair/null? _tl3304533396_)
                                    (let ((___splice4152641527_
                                           (gx#syntax-split-splice
                                            _tl3304533396_
                                            '0)))
                                      (let ((_tl3304833402_
                                             (##vector-ref
                                              ___splice4152641527_
                                              '1))
                                            (_target3304633399_
                                             (##vector-ref
                                              ___splice4152641527_
                                              '0)))
                                        (if (gx#stx-null? _tl3304833402_)
                                            (___match4155641557_
                                             _e3304033379_
                                             _hd3304133383_
                                             _tl3304233386_
                                             _e3304333389_
                                             _hd3304433393_
                                             _tl3304533396_
                                             ___splice4152641527_
                                             _target3304633399_
                                             _tl3304833402_)
                                            (if (gx#stx-pair/null?
                                                 _hd3304433393_)
                                                (let ((___splice4153041531_
                                                       (gx#syntax-split-splice
                                                        _hd3304433393_
                                                        '0)))
                                                  (let ((_tl3306633125_
                                                         (##vector-ref
                                                          ___splice4153041531_
                                                          '1))
                                                        (_target3306433122_
                                                         (##vector-ref
                                                          ___splice4153041531_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl3306633125_)
                                                        (___match4157641577_
                                                         _e3304033379_
                                                         _hd3304133383_
                                                         _tl3304233386_
                                                         _e3304333389_
                                                         _hd3304433393_
                                                         _tl3304533396_
                                                         ___splice4153041531_
                                                         _target3306433122_
                                                         _tl3306633125_)
                                                        (_g3303733095_))))
                                                (_g3303733095_)))))
                                    (if (gx#stx-pair/null? _hd3304433393_)
                                        (let ((___splice4153041531_
                                               (gx#syntax-split-splice
                                                _hd3304433393_
                                                '0)))
                                          (let ((_tl3306633125_
                                                 (##vector-ref
                                                  ___splice4153041531_
                                                  '1))
                                                (_target3306433122_
                                                 (##vector-ref
                                                  ___splice4153041531_
                                                  '0)))
                                            (if (gx#stx-null? _tl3306633125_)
                                                (___match4157641577_
                                                 _e3304033379_
                                                 _hd3304133383_
                                                 _tl3304233386_
                                                 _e3304333389_
                                                 _hd3304433393_
                                                 _tl3304533396_
                                                 ___splice4153041531_
                                                 _target3306433122_
                                                 _tl3306633125_)
                                                (_g3303733095_))))
                                        (_g3303733095_)))
                                (if (gx#stx-pair/null? _hd3304433393_)
                                    (let ((___splice4153041531_
                                           (gx#syntax-split-splice
                                            _hd3304433393_
                                            '0)))
                                      (let ((_tl3306633125_
                                             (##vector-ref
                                              ___splice4153041531_
                                              '1))
                                            (_target3306433122_
                                             (##vector-ref
                                              ___splice4153041531_
                                              '0)))
                                        (if (gx#stx-null? _tl3306633125_)
                                            (___match4157641577_
                                             _e3304033379_
                                             _hd3304133383_
                                             _tl3304233386_
                                             _e3304333389_
                                             _hd3304433393_
                                             _tl3304533396_
                                             ___splice4153041531_
                                             _target3306433122_
                                             _tl3306633125_)
                                            (_g3303733095_))))
                                    (_g3303733095_)))))
                        (_g3303733095_))))
                (_g3303733095_)))))))
  (define |gerbil/core$<more-sugar>[:0:]#let/cc|
    (lambda (_$stx33462_)
      (let* ((_g3346633490_
              (lambda (_g3346733486_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3346733486_)))
             (_g3346533575_
              (lambda (_g3346733494_)
                (if (gx#stx-pair? _g3346733494_)
                    (let ((_e3347033497_ (gx#syntax-e _g3346733494_)))
                      (let ((_hd3347133501_ (##car _e3347033497_))
                            (_tl3347233504_ (##cdr _e3347033497_)))
                        (if (gx#stx-pair? _tl3347233504_)
                            (let ((_e3347333507_ (gx#syntax-e _tl3347233504_)))
                              (let ((_hd3347433511_ (##car _e3347333507_))
                                    (_tl3347533514_ (##cdr _e3347333507_)))
                                (if (gx#stx-pair/null? _tl3347533514_)
                                    (let ((_g42009_
                                           (gx#syntax-split-splice
                                            _tl3347533514_
                                            '0)))
                                      (begin
                                        (let ((_g42010_
                                               (if (##values? _g42009_)
                                                   (##vector-length _g42009_)
                                                   1)))
                                          (if (not (##fx= _g42010_ 2))
                                              (error "Context expects 2 values"
                                                     _g42010_)))
                                        (let ((_target3347633517_
                                               (##vector-ref _g42009_ 0))
                                              (_tl3347833520_
                                               (##vector-ref _g42009_ 1)))
                                          (if (gx#stx-null? _tl3347833520_)
                                              (letrec ((_loop3347933523_
                                                        (lambda (_hd3347733527_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body3348333530_)
                  (if (gx#stx-pair? _hd3347733527_)
                      (let ((_e3348033533_ (gx#syntax-e _hd3347733527_)))
                        (let ((_lp-hd3348133537_ (##car _e3348033533_))
                              (_lp-tl3348233540_ (##cdr _e3348033533_)))
                          (_loop3347933523_
                           _lp-tl3348233540_
                           (cons _lp-hd3348133537_ _body3348333530_))))
                      (let ((_body3348433543_ (reverse _body3348333530_)))
                        ((lambda (_L33547_ _L33549_)
                           (if (gx#identifier? _L33549_)
                               (cons (gx#datum->syntax '#f 'call/cc)
                                     (cons (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons (cons _L33549_ '())
                                                       (foldr (lambda (_g3356633569_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g3356733572_)
                        (cons _g3356633569_ _g3356733572_))
                      '()
                      _L33547_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))
                               (_g3346633490_ _g3346733494_)))
                         _body3348433543_
                         _hd3347433511_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop3347933523_
                                                 _target3347633517_
                                                 '()))
                                              (_g3346633490_ _g3346733494_)))))
                                    (_g3346633490_ _g3346733494_))))
                            (_g3346633490_ _g3346733494_))))
                    (_g3346633490_ _g3346733494_)))))
        (_g3346533575_ _$stx33462_))))
  (define |gerbil/core$<more-sugar>[:0:]#let/esc|
    (lambda (_$stx33580_)
      (let* ((_g3358433608_
              (lambda (_g3358533604_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3358533604_)))
             (_g3358333693_
              (lambda (_g3358533612_)
                (if (gx#stx-pair? _g3358533612_)
                    (let ((_e3358833615_ (gx#syntax-e _g3358533612_)))
                      (let ((_hd3358933619_ (##car _e3358833615_))
                            (_tl3359033622_ (##cdr _e3358833615_)))
                        (if (gx#stx-pair? _tl3359033622_)
                            (let ((_e3359133625_ (gx#syntax-e _tl3359033622_)))
                              (let ((_hd3359233629_ (##car _e3359133625_))
                                    (_tl3359333632_ (##cdr _e3359133625_)))
                                (if (gx#stx-pair/null? _tl3359333632_)
                                    (let ((_g42011_
                                           (gx#syntax-split-splice
                                            _tl3359333632_
                                            '0)))
                                      (begin
                                        (let ((_g42012_
                                               (if (##values? _g42011_)
                                                   (##vector-length _g42011_)
                                                   1)))
                                          (if (not (##fx= _g42012_ 2))
                                              (error "Context expects 2 values"
                                                     _g42012_)))
                                        (let ((_target3359433635_
                                               (##vector-ref _g42011_ 0))
                                              (_tl3359633638_
                                               (##vector-ref _g42011_ 1)))
                                          (if (gx#stx-null? _tl3359633638_)
                                              (letrec ((_loop3359733641_
                                                        (lambda (_hd3359533645_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body3360133648_)
                  (if (gx#stx-pair? _hd3359533645_)
                      (let ((_e3359833651_ (gx#syntax-e _hd3359533645_)))
                        (let ((_lp-hd3359933655_ (##car _e3359833651_))
                              (_lp-tl3360033658_ (##cdr _e3359833651_)))
                          (_loop3359733641_
                           _lp-tl3360033658_
                           (cons _lp-hd3359933655_ _body3360133648_))))
                      (let ((_body3360233661_ (reverse _body3360133648_)))
                        ((lambda (_L33665_ _L33667_)
                           (if (gx#identifier? _L33667_)
                               (cons (gx#datum->syntax '#f 'call/esc)
                                     (cons (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons (cons _L33667_ '())
                                                       (foldr (lambda (_g3368433687_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g3368533690_)
                        (cons _g3368433687_ _g3368533690_))
                      '()
                      _L33665_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))
                               (_g3358433608_ _g3358533612_)))
                         _body3360233661_
                         _hd3359233629_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop3359733641_
                                                 _target3359433635_
                                                 '()))
                                              (_g3358433608_ _g3358533612_)))))
                                    (_g3358433608_ _g3358533612_))))
                            (_g3358433608_ _g3358533612_))))
                    (_g3358433608_ _g3358533612_)))))
        (_g3358333693_ _$stx33580_))))
  (define |gerbil/core$<more-sugar>[:0:]#unwind-protect|
    (lambda (_$stx33698_)
      (let* ((_g3370233730_
              (lambda (_g3370333726_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3370333726_)))
             (_g3370133829_
              (lambda (_g3370333734_)
                (if (gx#stx-pair? _g3370333734_)
                    (let ((_e3370733737_ (gx#syntax-e _g3370333734_)))
                      (let ((_hd3370833741_ (##car _e3370733737_))
                            (_tl3370933744_ (##cdr _e3370733737_)))
                        (if (gx#stx-pair? _tl3370933744_)
                            (let ((_e3371033747_ (gx#syntax-e _tl3370933744_)))
                              (let ((_hd3371133751_ (##car _e3371033747_))
                                    (_tl3371233754_ (##cdr _e3371033747_)))
                                (if (gx#stx-pair? _tl3371233754_)
                                    (let ((_e3371333757_
                                           (gx#syntax-e _tl3371233754_)))
                                      (let ((_hd3371433761_
                                             (##car _e3371333757_))
                                            (_tl3371533764_
                                             (##cdr _e3371333757_)))
                                        (if (gx#stx-pair/null? _tl3371533764_)
                                            (let ((_g42013_
                                                   (gx#syntax-split-splice
                                                    _tl3371533764_
                                                    '0)))
                                              (begin
                                                (let ((_g42014_
                                                       (if (##values? _g42013_)
                                                           (##vector-length
                                                            _g42013_)
                                                           1)))
                                                  (if (not (##fx= _g42014_ 2))
                                                      (error "Context expects 2 values"
                                                             _g42014_)))
                                                (let ((_target3371633767_
                                                       (##vector-ref
                                                        _g42013_
                                                        0))
                                                      (_tl3371833770_
                                                       (##vector-ref
                                                        _g42013_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl3371833770_)
                                                      (letrec ((_loop3371933773_
                                                                (lambda (_hd3371733777_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _rest3372333780_)
                          (if (gx#stx-pair? _hd3371733777_)
                              (let ((_e3372033783_
                                     (gx#syntax-e _hd3371733777_)))
                                (let ((_lp-hd3372133787_ (##car _e3372033783_))
                                      (_lp-tl3372233790_
                                       (##cdr _e3372033783_)))
                                  (_loop3371933773_
                                   _lp-tl3372233790_
                                   (cons _lp-hd3372133787_ _rest3372333780_))))
                              (let ((_rest3372433793_
                                     (reverse _rest3372333780_)))
                                ((lambda (_L33797_ _L33799_ _L33800_)
                                   (cons (gx#datum->syntax
                                          '#f
                                          'with-unwind-protect)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons '()
                                                           (cons _L33800_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'lambda)
                                                           (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L33799_
                               (foldr (lambda (_g3382033823_ _g3382133826_)
                                        (cons _g3382033823_ _g3382133826_))
                                      '()
                                      _L33797_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                                 _rest3372433793_
                                 _hd3371433761_
                                 _hd3371133751_))))))
                (_loop3371933773_ _target3371633767_ '()))
              (_g3370233730_ _g3370333734_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g3370233730_ _g3370333734_))))
                                    (_g3370233730_ _g3370333734_))))
                            (_g3370233730_ _g3370333734_))))
                    (_g3370233730_ _g3370333734_)))))
        (_g3370133829_ _$stx33698_)))))
