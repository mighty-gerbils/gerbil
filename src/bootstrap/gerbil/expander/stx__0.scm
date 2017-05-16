(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#identifier-wrap::t
    (make-struct-type
     'gx#identifier-wrap::t
     AST::t
     '1
     'syntax
     '((final: . #t))
     '#f))
  (define gx#identifier-wrap? (make-struct-predicate gx#identifier-wrap::t))
  (define gx#make-identifier-wrap
    (lambda _$args3758_
      (apply make-struct-instance gx#identifier-wrap::t _$args3758_)))
  (define gx#identifier-wrap-marks
    (make-struct-field-accessor gx#identifier-wrap::t '0))
  (define gx#identifier-wrap-marks-set!
    (make-struct-field-mutator gx#identifier-wrap::t '0))
  (define gx#syntax-wrap::t
    (make-struct-type
     'gx#syntax-wrap::t
     AST::t
     '1
     'syntax
     '((final: . #t))
     '#f))
  (define gx#syntax-wrap? (make-struct-predicate gx#syntax-wrap::t))
  (define gx#make-syntax-wrap
    (lambda _$args3755_
      (apply make-struct-instance gx#syntax-wrap::t _$args3755_)))
  (define gx#syntax-wrap-mark
    (make-struct-field-accessor gx#syntax-wrap::t '0))
  (define gx#syntax-wrap-mark-set!
    (make-struct-field-mutator gx#syntax-wrap::t '0))
  (define gx#syntax-quote::t
    (make-struct-type
     'gx#syntax-quote::t
     AST::t
     '2
     'syntax
     '((final: . #t))
     '#f))
  (define gx#syntax-quote? (make-struct-predicate gx#syntax-quote::t))
  (define gx#make-syntax-quote
    (lambda _$args3752_
      (apply make-struct-instance gx#syntax-quote::t _$args3752_)))
  (define gx#syntax-quote-context
    (make-struct-field-accessor gx#syntax-quote::t '0))
  (define gx#syntax-quote-marks
    (make-struct-field-accessor gx#syntax-quote::t '1))
  (define gx#syntax-quote-context-set!
    (make-struct-field-mutator gx#syntax-quote::t '0))
  (define gx#syntax-quote-marks-set!
    (make-struct-field-mutator gx#syntax-quote::t '1))
  (define gx#identifier? (lambda (_stx3750_) (symbol? (gx#stx-e _stx3750_))))
  (define gx#identifier-quote?
    (lambda (_stx3748_)
      (if (##structure-direct-instance-of? _stx3748_ 'gx#syntax-quote::t)
          (symbol? (##structure-ref _stx3748_ '1 AST::t '#f))
          '#f)))
  (define gx#sealed-syntax?
    (lambda (_stx3743_)
      (let ((_$e3745_
             (##structure-direct-instance-of? _stx3743_ 'gx#syntax-quote::t)))
        (if _$e3745_
            _$e3745_
            (if (##structure-instance-of? _stx3743_ 'gerbil#AST::t)
                (gx#sealed-syntax? (##structure-ref _stx3743_ '1 AST::t '#f))
                '#f)))))
  (define gx#syntax-e
    (lambda (_stx3739_)
      (let ((_stx3741_ (gx#stx-unwrap__0 _stx3739_)))
        (if (##structure-instance-of? _stx3741_ 'gerbil#AST::t)
            (##structure-ref _stx3741_ '1 AST::t '#f)
            _stx3741_))))
  (define gx#syntax->datum
    (lambda (_stx3737_)
      (if (##structure-instance-of? _stx3737_ 'gerbil#AST::t)
          (gx#syntax->datum (##structure-ref _stx3737_ '1 AST::t '#f))
          (if (pair? _stx3737_)
              (cons (gx#syntax->datum (car _stx3737_))
                    (gx#syntax->datum (cdr _stx3737_)))
              (if (vector? _stx3737_)
                  (vector-map gx#syntax->datum _stx3737_)
                  (if (box? _stx3737_)
                      (box (gx#syntax->datum (unbox _stx3737_)))
                      _stx3737_))))))
  (begin
    (define gx#datum->syntax__opt-lambda3705
      (lambda (_stx3707_ _datum3708_ _src3709_)
        (let ((_wrap-datum3711_
               (lambda (_e3718_ _marks3719_)
                 ((letrec ((_recur3721_
                            (lambda (_e3723_)
                              (if (symbol? _e3723_)
                                  (##structure
                                   gx#identifier-wrap::t
                                   _e3723_
                                   _src3709_
                                   _marks3719_)
                                  (if (pair? _e3723_)
                                      (cons (_recur3721_ (car _e3723_))
                                            (_recur3721_ (cdr _e3723_)))
                                      (if (vector? _e3723_)
                                          (vector-map _recur3721_ _e3723_)
                                          (if (box? _e3723_)
                                              (box (_recur3721_
                                                    (unbox _e3723_)))
                                              _e3723_)))))))
                    _recur3721_)
                  _e3718_))))
          (let ((_wrap-outer3712_
                 (lambda (_e3716_)
                   (if (##structure-instance-of? _e3716_ 'gerbil#AST::t)
                       _e3716_
                       (##structure AST::t _e3716_ _src3709_)))))
            (if (##structure-instance-of? _datum3708_ 'gerbil#AST::t)
                _datum3708_
                (if (not _stx3707_)
                    (##structure AST::t _datum3708_ _src3709_)
                    (if (gx#identifier? _stx3707_)
                        (let ((_stx3714_ (gx#stx-unwrap__0 _stx3707_)))
                          (if (gx#identifier-quote? _stx3714_)
                              (##structure
                               gx#syntax-quote::t
                               _datum3708_
                               _src3709_
                               (##structure-ref
                                _stx3714_
                                '3
                                gx#syntax-quote::t
                                '#f)
                               (##structure-ref
                                _stx3714_
                                '4
                                gx#syntax-quote::t
                                '#f))
                              (_wrap-outer3712_
                               (_wrap-datum3711_
                                _datum3708_
                                (##structure-ref
                                 _stx3714_
                                 '3
                                 gx#identifier-wrap::t
                                 '#f)))))
                        (error '"Bad template syntax; expected identifier"
                               _stx3707_))))))))
    (begin
      (define gx#datum->syntax__0
        (lambda (_stx3728_ _datum3729_)
          (let ((_src3731_ '#f))
            (gx#datum->syntax__opt-lambda3705
             _stx3728_
             _datum3729_
             _src3731_))))
      (define gx#datum->syntax
        (lambda _g3761_
          (let ((_g3760_ (length _g3761_)))
            (cond ((fx= _g3760_ 2) (apply gx#datum->syntax__0 _g3761_))
                  ((fx= _g3760_ 3)
                   (apply gx#datum->syntax__opt-lambda3705 _g3761_))
                  (else (error "No clause matching arguments" _g3761_))))))))
  (begin
    (define gx#stx-unwrap__opt-lambda3681
      (lambda (_stx3683_ _marks3684_)
        ((letrec ((_lp3686_
                   (lambda (_e3688_ _marks3689_ _src3690_)
                     (if (##structure-direct-instance-of?
                          _e3688_
                          'gx#syntax-wrap::t)
                         (_lp3686_
                          (##structure-ref _e3688_ '1 AST::t '#f)
                          (gx#apply-mark
                           (##structure-ref _e3688_ '3 gx#syntax-wrap::t '#f)
                           _marks3689_)
                          (##structure-ref _e3688_ '2 AST::t '#f))
                         (if (##structure-direct-instance-of?
                              _e3688_
                              'gx#identifier-wrap::t)
                             (if (null? _marks3689_)
                                 _e3688_
                                 (##structure
                                  gx#identifier-wrap::t
                                  (##structure-ref _e3688_ '1 AST::t '#f)
                                  (##structure-ref _e3688_ '2 AST::t '#f)
                                  (foldl1 gx#apply-mark
                                          (##structure-ref
                                           _e3688_
                                           '3
                                           gx#identifier-wrap::t
                                           '#f)
                                          _marks3689_)))
                             (if (##structure-direct-instance-of?
                                  _e3688_
                                  'gx#syntax-quote::t)
                                 _e3688_
                                 (if (##structure-instance-of?
                                      _e3688_
                                      'gerbil#AST::t)
                                     (_lp3686_
                                      (##structure-ref _e3688_ '1 AST::t '#f)
                                      _marks3689_
                                      (##structure-ref _e3688_ '2 AST::t '#f))
                                     (if (symbol? _e3688_)
                                         (##structure
                                          gx#identifier-wrap::t
                                          _e3688_
                                          _src3690_
                                          (reverse _marks3689_))
                                         (if (null? _marks3689_)
                                             _e3688_
                                             (if (pair? _e3688_)
                                                 (cons (gx#stx-wrap
                                                        (car _e3688_)
                                                        _marks3689_)
                                                       (gx#stx-wrap
                                                        (cdr _e3688_)
                                                        _marks3689_))
                                                 (if (vector? _e3688_)
                                                     (vector-map
                                                      (lambda (_g36913693_)
                                                        (gx#stx-wrap
                                                         _g36913693_
                                                         _marks3689_))
                                                      _e3688_)
                                                     (if (box? _e3688_)
                                                         (box (gx#stx-wrap
                                                               (unbox _e3688_)
                                                               _marks3689_))
                                                         _e3688_))))))))))))
           _lp3686_)
         _stx3683_
         _marks3684_
         (gx#stx-source _stx3683_))))
    (begin
      (define gx#stx-unwrap__0
        (lambda (_stx3699_)
          (let ((_marks3701_ '()))
            (gx#stx-unwrap__opt-lambda3681 _stx3699_ _marks3701_))))
      (define gx#stx-unwrap
        (lambda _g3763_
          (let ((_g3762_ (length _g3763_)))
            (cond ((fx= _g3762_ 1) (apply gx#stx-unwrap__0 _g3763_))
                  ((fx= _g3762_ 2)
                   (apply gx#stx-unwrap__opt-lambda3681 _g3763_))
                  (else (error "No clause matching arguments" _g3763_))))))))
  (define gx#stx-wrap
    (lambda (_stx3676_ _marks3677_)
      (foldl1 (lambda (_mark3679_ _stx3680_)
                (gx#stx-apply-mark _stx3680_ _mark3679_))
              _stx3676_
              _marks3677_)))
  (define gx#stx-rewrap
    (lambda (_stx3670_ _marks3671_)
      (foldr1 (lambda (_mark3673_ _stx3674_)
                (gx#stx-apply-mark _stx3674_ _mark3673_))
              _stx3670_
              _marks3671_)))
  (define gx#stx-apply-mark
    (lambda (_stx3667_ _mark3668_)
      (if (##structure-direct-instance-of? _stx3667_ 'gx#syntax-quote::t)
          _stx3667_
          (if (if (##structure-direct-instance-of?
                   _stx3667_
                   'gx#syntax-wrap::t)
                  (eq? _mark3668_
                       (##structure-ref _stx3667_ '3 gx#syntax-wrap::t '#f))
                  '#f)
              (##structure-ref _stx3667_ '1 AST::t '#f)
              (##structure
               gx#syntax-wrap::t
               _stx3667_
               (gx#stx-source _stx3667_)
               _mark3668_)))))
  (define gx#apply-mark
    (lambda (_mark3631_ _marks3632_)
      (let ((_marks36333641_ _marks3632_))
        (let ((_E36363645_
               (lambda () (error '"No clause matching" _marks36333641_))))
          (let ((_else36353649_ (lambda () (cons _mark3631_ _marks3632_))))
            (let ((_K36373655_
                   (lambda (_rest3652_ _hd3653_)
                     (if (eq? _mark3631_ _hd3653_)
                         _rest3652_
                         (cons _mark3631_ _marks3632_)))))
              (if (##pair? _marks36333641_)
                  (let ((_hd36383658_ (##car _marks36333641_))
                        (_tl36393660_ (##cdr _marks36333641_)))
                    (let ((_hd3663_ _hd36383658_))
                      (let ((_rest3665_ _tl36393660_))
                        (_K36373655_ _rest3665_ _hd3663_))))
                  (_else36353649_))))))))
  (define gx#stx-e
    (lambda (_stx3629_)
      (if (##structure-instance-of? _stx3629_ 'gerbil#AST::t)
          (gx#stx-e (##structure-ref _stx3629_ '1 AST::t '#f))
          _stx3629_)))
  (define gx#stx-source
    (lambda (_stx3627_)
      (if (##structure-instance-of? _stx3627_ 'gerbil#AST::t)
          (##structure-ref _stx3627_ '2 AST::t '#f)
          '#f)))
  (define gx#stx-wrap-source
    (lambda (_stx3621_ _src3622_)
      (if (let ((_$e3624_ (##structure-instance-of? _stx3621_ 'gerbil#AST::t)))
            (if _$e3624_ _$e3624_ (not _src3622_)))
          _stx3621_
          (##structure AST::t _stx3621_ _src3622_))))
  (define gx#stx-datum?
    (lambda (_stx3619_) (gx#self-quoting? (gx#stx-e _stx3619_))))
  (define gx#self-quoting?
    (lambda (_x3599_)
      (let ((_$e3601_ (boolean? _x3599_)))
        (if _$e3601_
            _$e3601_
            (let ((_$e3604_ (char? _x3599_)))
              (if _$e3604_
                  _$e3604_
                  (let ((_$e3607_ (number? _x3599_)))
                    (if _$e3607_
                        _$e3607_
                        (let ((_$e3610_ (keyword? _x3599_)))
                          (if _$e3610_
                              _$e3610_
                              (let ((_$e3613_ (string? _x3599_)))
                                (if _$e3613_
                                    _$e3613_
                                    (let ((_$e3616_ (eq? _x3599_ '#!void)))
                                      (if _$e3616_
                                          _$e3616_
                                          (dssl-object? _x3599_)))))))))))))))
  (define gx#stx-boolean? (lambda (_e3597_) (boolean? (gx#stx-e _e3597_))))
  (define gx#stx-keyword? (lambda (_e3595_) (keyword? (gx#stx-e _e3595_))))
  (define gx#stx-char? (lambda (_e3593_) (char? (gx#stx-e _e3593_))))
  (define gx#stx-number? (lambda (_e3591_) (number? (gx#stx-e _e3591_))))
  (define gx#stx-fixnum? (lambda (_e3589_) (fixnum? (gx#stx-e _e3589_))))
  (define gx#stx-string? (lambda (_e3587_) (string? (gx#stx-e _e3587_))))
  (define gx#stx-null? (lambda (_e3585_) (null? (gx#stx-e _e3585_))))
  (define gx#stx-pair? (lambda (_e3583_) (pair? (gx#stx-e _e3583_))))
  (define gx#stx-list?
    (lambda (_e3543_)
      (let ((_g35443553_ (gx#stx-e _e3543_)))
        (let ((_E35473557_
               (lambda () (error '"No clause matching" _g35443553_))))
          (let ((_try-match35463568_
                 (lambda ()
                   (let ((_K35483563_
                          (lambda (_tail3561_) (null? _tail3561_))))
                     (let ((_tail3566_ _g35443553_)) (null? _tail3566_))))))
            (let ((_K35493573_
                   (lambda (_rest3571_) (gx#stx-list? _rest3571_))))
              (if (##pair? _g35443553_)
                  (let ((_hd35503576_ (##car _g35443553_))
                        (_tl35513578_ (##cdr _g35443553_)))
                    (let ((_rest3581_ _tl35513578_))
                      (gx#stx-list? _rest3581_)))
                  (_try-match35463568_))))))))
  (define gx#stx-pair/null?
    (lambda (_e3536_)
      (let ((_e3538_ (gx#stx-e _e3536_)))
        (let ((_$e3540_ (pair? _e3538_)))
          (if _$e3540_ _$e3540_ (null? _e3538_))))))
  (define gx#stx-vector? (lambda (_e3534_) (vector? (gx#stx-e _e3534_))))
  (define gx#stx-box? (lambda (_e3532_) (box? (gx#stx-e _e3532_))))
  (define gx#stx-eq?
    (lambda (_x3529_ _y3530_) (eq? (gx#stx-e _x3529_) (gx#stx-e _y3530_))))
  (define gx#stx-eqv?
    (lambda (_x3526_ _y3527_) (eqv? (gx#stx-e _x3526_) (gx#stx-e _y3527_))))
  (define gx#stx-equal?
    (lambda (_x3523_ _y3524_) (equal? (gx#stx-e _x3523_) (gx#stx-e _y3524_))))
  (define gx#stx-false? (lambda (_x3521_) (not (gx#stx-e _x3521_))))
  (define gx#stx-identifier
    (lambda (_template3518_ . _args3519_)
      (gx#datum->syntax__opt-lambda3705
       _template3518_
       (apply make-symbol (map gx#stx-e _args3519_))
       (gx#stx-source _template3518_))))
  (define gx#stx-identifier-marks
    (lambda (_stx3514_)
      (let ((_stx3516_ (gx#stx-unwrap__0 _stx3514_)))
        (if (##structure-direct-instance-of? _stx3516_ 'gx#identifier-wrap::t)
            (##structure-ref _stx3516_ '3 gx#identifier-wrap::t '#f)
            (##structure-ref _stx3516_ '4 gx#syntax-quote::t '#f)))))
  (define gx#stx-identifier-context
    (lambda (_stx3510_)
      (let ((_stx3512_ (gx#stx-unwrap__0 _stx3510_)))
        (if (gx#identifier-quote? _stx3512_)
            (##structure-ref _stx3512_ '3 gx#syntax-quote::t '#f)
            '#f))))
  (define gx#identifier-list?
    (lambda (_stx3465_)
      (let ((_g34663476_ (gx#stx-e _stx3465_)))
        (let ((_E34703480_
               (lambda () (error '"No clause matching" _g34663476_))))
          (let ((_else34693484_ (lambda () '#f)))
            (let ((_try-match34683492_
                   (lambda ()
                     (let ((_K34713489_ (lambda () '#t)))
                       (if (##null? _g34663476_)
                           (_K34713489_)
                           (_else34693484_))))))
              (let ((_K34723498_
                     (lambda (_rest3495_ _hd3496_)
                       (if (gx#identifier? _hd3496_)
                           (gx#identifier-list? _rest3495_)
                           '#f))))
                (if (##pair? _g34663476_)
                    (let ((_hd34733501_ (##car _g34663476_))
                          (_tl34743503_ (##cdr _g34663476_)))
                      (let ((_hd3506_ _hd34733501_))
                        (let ((_rest3508_ _tl34743503_))
                          (_K34723498_ _rest3508_ _hd3506_))))
                    (_try-match34683492_)))))))))
  (begin
    (define gx#genident__opt-lambda3440
      (lambda (_e3442_ _src3443_)
        (gx#stx-wrap-source
         (gensym (let ((_e3445_ (gx#stx-e _e3442_)))
                   (if (interned-symbol? _e3445_) _e3445_ 'g)))
         (let ((_$e3447_ (gx#stx-source _e3442_)))
           (if _$e3447_ _$e3447_ _src3443_)))))
    (begin
      (define gx#genident__0
        (lambda ()
          (let ((_e3454_ 'g))
            (let ((_src3456_ '#f))
              (gx#genident__opt-lambda3440 _e3454_ _src3456_)))))
      (define gx#genident__1
        (lambda (_e3458_)
          (let ((_src3460_ '#f))
            (gx#genident__opt-lambda3440 _e3458_ _src3460_))))
      (define gx#genident
        (lambda _g3765_
          (let ((_g3764_ (length _g3765_)))
            (cond ((fx= _g3764_ 0) (apply gx#genident__0 _g3765_))
                  ((fx= _g3764_ 1) (apply gx#genident__1 _g3765_))
                  ((fx= _g3764_ 2) (apply gx#genident__opt-lambda3440 _g3765_))
                  (else (error "No clause matching arguments" _g3765_))))))))
  (define gx#gentemps
    (lambda (_stx-lst3439_) (gx#stx-map1 gx#genident _stx-lst3439_)))
  (define gx#syntax->list (lambda (_stx3437_) (gx#stx-map1 values _stx3437_)))
  (define gx#stx-car (lambda (_stx3435_) (car (gx#syntax-e _stx3435_))))
  (define gx#stx-cdr (lambda (_stx3433_) (cdr (gx#syntax-e _stx3433_))))
  (define gx#stx-length
    (lambda (_stx3396_)
      ((letrec ((_lp3398_
                 (lambda (_rest3400_ _n3401_)
                   (let ((_g34023410_ (gx#stx-e _rest3400_)))
                     (let ((_E34053414_
                            (lambda ()
                              (error '"No clause matching" _g34023410_))))
                       (let ((_else34043418_ (lambda () _n3401_)))
                         (let ((_K34063423_
                                (lambda (_rest3421_)
                                  (_lp3398_ _rest3421_ (fx+ _n3401_ '1)))))
                           (if (##pair? _g34023410_)
                               (let ((_hd34073426_ (##car _g34023410_))
                                     (_tl34083428_ (##cdr _g34023410_)))
                                 (let ((_rest3431_ _tl34083428_))
                                   (_K34063423_ _rest3431_)))
                               (_else34043418_)))))))))
         _lp3398_)
       _stx3396_
       '0)))
  (define gx#stx-for-each
    (lambda _g3767_
      (let ((_g3766_ (length _g3767_)))
        (cond ((fx= _g3766_ 2) (apply gx#stx-for-each1 _g3767_))
              ((fx= _g3766_ 3) (apply gx#stx-for-each2 _g3767_))
              (else (error "No clause matching arguments" _g3767_))))))
  (define gx#stx-for-each1
    (lambda (_f3339_ _stx3340_)
      ((letrec ((_lp3342_
                 (lambda (_rest3344_)
                   (let ((_g33453355_ (gx#syntax-e _rest3344_)))
                     (let ((_E33493359_
                            (lambda ()
                              (error '"No clause matching" _g33453355_))))
                       (let ((_else33483363_ (lambda () (_f3339_ _rest3344_))))
                         (let ((_try-match33473371_
                                (lambda ()
                                  (let ((_K33503368_ (lambda () '#!void)))
                                    (if (##null? _g33453355_)
                                        (_K33503368_)
                                        (_else33483363_))))))
                           (let ((_K33513377_
                                  (lambda (_rest3374_ _hd3375_)
                                    (begin
                                      (_f3339_ _hd3375_)
                                      (_lp3342_ _rest3374_)))))
                             (if (##pair? _g33453355_)
                                 (let ((_hd33523380_ (##car _g33453355_))
                                       (_tl33533382_ (##cdr _g33453355_)))
                                   (let ((_hd3385_ _hd33523380_))
                                     (let ((_rest3387_ _tl33533382_))
                                       (_K33513377_ _rest3387_ _hd3385_))))
                                 (_try-match33473371_))))))))))
         _lp3342_)
       _stx3340_)))
  (define gx#stx-for-each2
    (lambda (_f3244_ _xstx3245_ _ystx3246_)
      ((letrec ((_lp3248_
                 (lambda (_xrest3250_ _yrest3251_)
                   (let ((_g32523262_ (gx#syntax-e _xrest3250_)))
                     (let ((_E32563266_
                            (lambda ()
                              (error '"No clause matching" _g32523262_))))
                       (let ((_else32553270_ (lambda () '#!void)))
                         (let ((_try-match32543293_
                                (lambda ()
                                  (let ((_K32573290_
                                         (lambda ()
                                           (let ((_yrest32743279_ _yrest3251_))
                                             (let ((_E32763283_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _yrest32743279_))))
                                               (let ((_K32773287_
                                                      (lambda ()
                                                        (_f3244_ _xrest3250_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _yrest3251_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (not (gx#stx-null?
                                                           _yrest32743279_))
                                                     (_K32773287_)
                                                     (_E32763283_))))))))
                                    (if (not (null? _g32523262_))
                                        (_K32573290_)
                                        (_else32553270_))))))
                           (let ((_K32583327_
                                  (lambda (_xrest3296_ _xhd3297_)
                                    (let ((_g32983305_
                                           (gx#syntax-e _yrest3251_)))
                                      (let ((_E33003309_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _g32983305_))))
                                        (let ((_K33013315_
                                               (lambda (_yrest3312_ _yhd3313_)
                                                 (begin
                                                   (_f3244_ _xhd3297_
                                                            _yhd3313_)
                                                   (_lp3248_
                                                    _xrest3296_
                                                    _yrest3312_)))))
                                          (if (##pair? _g32983305_)
                                              (let ((_hd33023318_
                                                     (##car _g32983305_))
                                                    (_tl33033320_
                                                     (##cdr _g32983305_)))
                                                (let ((_yhd3323_ _hd33023318_))
                                                  (let ((_yrest3325_
                                                         _tl33033320_))
                                                    (_K33013315_
                                                     _yrest3325_
                                                     _yhd3323_))))
                                              (_E33003309_))))))))
                             (if (##pair? _g32523262_)
                                 (let ((_hd32593330_ (##car _g32523262_))
                                       (_tl32603332_ (##cdr _g32523262_)))
                                   (let ((_xhd3335_ _hd32593330_))
                                     (let ((_xrest3337_ _tl32603332_))
                                       (_K32583327_ _xrest3337_ _xhd3335_))))
                                 (_try-match32543293_))))))))))
         _lp3248_)
       _xstx3245_
       _ystx3246_)))
  (define gx#stx-map
    (lambda _g3769_
      (let ((_g3768_ (length _g3769_)))
        (cond ((fx= _g3768_ 2) (apply gx#stx-map1 _g3769_))
              ((fx= _g3768_ 3) (apply gx#stx-map2 _g3769_))
              (else (error "No clause matching arguments" _g3769_))))))
  (define gx#stx-map1
    (lambda (_f3187_ _stx3188_)
      ((letrec ((_recur3190_
                 (lambda (_rest3192_)
                   (let ((_g31933203_ (gx#syntax-e _rest3192_)))
                     (let ((_E31973207_
                            (lambda ()
                              (error '"No clause matching" _g31933203_))))
                       (let ((_else31963211_ (lambda () (_f3187_ _rest3192_))))
                         (let ((_try-match31953219_
                                (lambda ()
                                  (let ((_K31983216_ (lambda () '())))
                                    (if (##null? _g31933203_)
                                        (_K31983216_)
                                        (_else31963211_))))))
                           (let ((_K31993225_
                                  (lambda (_rest3222_ _hd3223_)
                                    (cons (_f3187_ _hd3223_)
                                          (_recur3190_ _rest3222_)))))
                             (if (##pair? _g31933203_)
                                 (let ((_hd32003228_ (##car _g31933203_))
                                       (_tl32013230_ (##cdr _g31933203_)))
                                   (let ((_hd3233_ _hd32003228_))
                                     (let ((_rest3235_ _tl32013230_))
                                       (_K31993225_ _rest3235_ _hd3233_))))
                                 (_try-match31953219_))))))))))
         _recur3190_)
       _stx3188_)))
  (define gx#stx-map2
    (lambda (_f3092_ _xstx3093_ _ystx3094_)
      ((letrec ((_recur3096_
                 (lambda (_xrest3098_ _yrest3099_)
                   (let ((_g31003110_ (gx#syntax-e _xrest3098_)))
                     (let ((_E31043114_
                            (lambda ()
                              (error '"No clause matching" _g31003110_))))
                       (let ((_else31033118_ (lambda () '())))
                         (let ((_try-match31023141_
                                (lambda ()
                                  (let ((_K31053138_
                                         (lambda ()
                                           (let ((_yrest31223127_ _yrest3099_))
                                             (let ((_E31243131_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _yrest31223127_))))
                                               (let ((_K31253135_
                                                      (lambda ()
                                                        (_f3092_ _xrest3098_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _yrest3099_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (not (gx#stx-null?
                                                           _yrest31223127_))
                                                     (_K31253135_)
                                                     (_E31243131_))))))))
                                    (if (not (null? _g31003110_))
                                        (_K31053138_)
                                        (_else31033118_))))))
                           (let ((_K31063175_
                                  (lambda (_xrest3144_ _xhd3145_)
                                    (let ((_g31463153_
                                           (gx#syntax-e _yrest3099_)))
                                      (let ((_E31483157_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _g31463153_))))
                                        (let ((_K31493163_
                                               (lambda (_yrest3160_ _yhd3161_)
                                                 (cons (_f3092_ _xhd3145_
                                                                _yhd3161_)
                                                       (_recur3096_
                                                        _xrest3144_
                                                        _yrest3160_)))))
                                          (if (##pair? _g31463153_)
                                              (let ((_hd31503166_
                                                     (##car _g31463153_))
                                                    (_tl31513168_
                                                     (##cdr _g31463153_)))
                                                (let ((_yhd3171_ _hd31503166_))
                                                  (let ((_yrest3173_
                                                         _tl31513168_))
                                                    (_K31493163_
                                                     _yrest3173_
                                                     _yhd3171_))))
                                              (_E31483157_))))))))
                             (if (##pair? _g31003110_)
                                 (let ((_hd31073178_ (##car _g31003110_))
                                       (_tl31083180_ (##cdr _g31003110_)))
                                   (let ((_xhd3183_ _hd31073178_))
                                     (let ((_xrest3185_ _tl31083180_))
                                       (_K31063175_ _xrest3185_ _xhd3183_))))
                                 (_try-match31023141_))))))))))
         _recur3096_)
       _xstx3093_
       _ystx3094_)))
  (define gx#stx-andmap
    (lambda (_f3042_ _stx3043_)
      ((letrec ((_lp3045_
                 (lambda (_rest3047_)
                   (let ((_g30483058_ (gx#syntax-e _rest3047_)))
                     (let ((_E30523062_
                            (lambda ()
                              (error '"No clause matching" _g30483058_))))
                       (let ((_else30513066_ (lambda () (_f3042_ _rest3047_))))
                         (let ((_try-match30503074_
                                (lambda ()
                                  (let ((_K30533071_ (lambda () '#t)))
                                    (if (##null? _g30483058_)
                                        (_K30533071_)
                                        (_else30513066_))))))
                           (let ((_K30543080_
                                  (lambda (_rest3077_ _hd3078_)
                                    (if (_f3042_ _hd3078_)
                                        (_lp3045_ _rest3077_)
                                        '#f))))
                             (if (##pair? _g30483058_)
                                 (let ((_hd30553083_ (##car _g30483058_))
                                       (_tl30563085_ (##cdr _g30483058_)))
                                   (let ((_hd3088_ _hd30553083_))
                                     (let ((_rest3090_ _tl30563085_))
                                       (_K30543080_ _rest3090_ _hd3088_))))
                                 (_try-match30503074_))))))))))
         _lp3045_)
       _stx3043_)))
  (define gx#stx-ormap
    (lambda (_f2989_ _stx2990_)
      ((letrec ((_lp2992_
                 (lambda (_rest2994_)
                   (let ((_g29953005_ (gx#syntax-e _rest2994_)))
                     (let ((_E29993009_
                            (lambda ()
                              (error '"No clause matching" _g29953005_))))
                       (let ((_else29983013_ (lambda () (_f2989_ _rest2994_))))
                         (let ((_try-match29973021_
                                (lambda ()
                                  (let ((_K30003018_ (lambda () '#f)))
                                    (if (##null? _g29953005_)
                                        (_K30003018_)
                                        (_else29983013_))))))
                           (let ((_K30013030_
                                  (lambda (_rest3024_ _hd3025_)
                                    (let ((_$e3027_ (_f2989_ _hd3025_)))
                                      (if _$e3027_
                                          _$e3027_
                                          (_lp2992_ _rest3024_))))))
                             (if (##pair? _g29953005_)
                                 (let ((_hd30023033_ (##car _g29953005_))
                                       (_tl30033035_ (##cdr _g29953005_)))
                                   (let ((_hd3038_ _hd30023033_))
                                     (let ((_rest3040_ _tl30033035_))
                                       (_K30013030_ _rest3040_ _hd3038_))))
                                 (_try-match29973021_))))))))))
         _lp2992_)
       _stx2990_)))
  (define gx#stx-foldl
    (lambda (_f2937_ _iv2938_ _stx2939_)
      ((letrec ((_lp2941_
                 (lambda (_r2943_ _rest2944_)
                   (let ((_g29452955_ (gx#syntax-e _rest2944_)))
                     (let ((_E29492959_
                            (lambda ()
                              (error '"No clause matching" _g29452955_))))
                       (let ((_else29482963_
                              (lambda () (_f2937_ _rest2944_ _r2943_))))
                         (let ((_try-match29472971_
                                (lambda ()
                                  (let ((_K29502968_ (lambda () _r2943_)))
                                    (if (##null? _g29452955_)
                                        (_K29502968_)
                                        (_else29482963_))))))
                           (let ((_K29512977_
                                  (lambda (_rest2974_ _hd2975_)
                                    (_lp2941_
                                     (_f2937_ _hd2975_ _r2943_)
                                     _rest2974_))))
                             (if (##pair? _g29452955_)
                                 (let ((_hd29522980_ (##car _g29452955_))
                                       (_tl29532982_ (##cdr _g29452955_)))
                                   (let ((_hd2985_ _hd29522980_))
                                     (let ((_rest2987_ _tl29532982_))
                                       (_K29512977_ _rest2987_ _hd2985_))))
                                 (_try-match29472971_))))))))))
         _lp2941_)
       _iv2938_
       _stx2939_)))
  (define gx#stx-foldr
    (lambda (_f2886_ _iv2887_ _stx2888_)
      ((letrec ((_recur2890_
                 (lambda (_rest2892_)
                   (let ((_g28932903_ (gx#syntax-e _rest2892_)))
                     (let ((_E28972907_
                            (lambda ()
                              (error '"No clause matching" _g28932903_))))
                       (let ((_else28962911_
                              (lambda () (_f2886_ _rest2892_ _iv2887_))))
                         (let ((_try-match28952919_
                                (lambda ()
                                  (let ((_K28982916_ (lambda () _iv2887_)))
                                    (if (##null? _g28932903_)
                                        (_K28982916_)
                                        (_else28962911_))))))
                           (let ((_K28992925_
                                  (lambda (_rest2922_ _hd2923_)
                                    (_f2886_ _hd2923_
                                             (_recur2890_ _rest2922_)))))
                             (if (##pair? _g28932903_)
                                 (let ((_hd29002928_ (##car _g28932903_))
                                       (_tl29012930_ (##cdr _g28932903_)))
                                   (let ((_hd2933_ _hd29002928_))
                                     (let ((_rest2935_ _tl29012930_))
                                       (_K28992925_ _rest2935_ _hd2933_))))
                                 (_try-match28952919_))))))))))
         _recur2890_)
       _stx2888_)))
  (define gx#stx-reverse
    (lambda (_stx2884_) (gx#stx-foldl cons '() _stx2884_)))
  (define gx#stx-last
    (lambda (_stx2845_)
      ((letrec ((_lp2847_
                 (lambda (_rest2849_)
                   (let ((_g28502858_ (gx#syntax-e _rest2849_)))
                     (let ((_E28532862_
                            (lambda ()
                              (error '"No clause matching" _g28502858_))))
                       (let ((_else28522866_ (lambda () _rest2849_)))
                         (let ((_K28542872_
                                (lambda (_rest2869_ _hd2870_)
                                  (if (gx#stx-null? _rest2869_)
                                      _hd2870_
                                      (_lp2847_ _rest2869_)))))
                           (if (##pair? _g28502858_)
                               (let ((_hd28552875_ (##car _g28502858_))
                                     (_tl28562877_ (##cdr _g28502858_)))
                                 (let ((_hd2880_ _hd28552875_))
                                   (let ((_rest2882_ _tl28562877_))
                                     (_K28542872_ _rest2882_ _hd2880_))))
                               (_else28522866_)))))))))
         _lp2847_)
       _stx2845_)))
  (define gx#stx-last-pair
    (lambda (_stx2814_)
      ((letrec ((_lp2816_
                 (lambda (_hd2818_)
                   (let ((_g28192826_ (gx#syntax-e _hd2818_)))
                     (let ((_E28212830_
                            (lambda ()
                              (error '"No clause matching" _g28192826_))))
                       (let ((_K28222835_
                              (lambda (_rest2833_)
                                (if (gx#stx-pair? _rest2833_)
                                    (_lp2816_ _rest2833_)
                                    _hd2818_))))
                         (if (##pair? _g28192826_)
                             (let ((_hd28232838_ (##car _g28192826_))
                                   (_tl28242840_ (##cdr _g28192826_)))
                               (let ((_rest2843_ _tl28242840_))
                                 (_K28222835_ _rest2843_)))
                             (_E28212830_))))))))
         _lp2816_)
       _stx2814_)))
  (define gx#stx-list-tail
    (lambda (_stx2781_ _k2782_)
      ((letrec ((_lp2784_
                 (lambda (_rest2786_ _k2787_)
                   (if (fxpositive? _k2787_)
                       (let ((_g27882795_ (gx#syntax-e _rest2786_)))
                         (let ((_E27902799_
                                (lambda ()
                                  (error '"No clause matching" _g27882795_))))
                           (let ((_K27912804_
                                  (lambda (_rest2802_)
                                    (_lp2784_ _rest2802_ (fx- _k2787_ '1)))))
                             (if (##pair? _g27882795_)
                                 (let ((_hd27922807_ (##car _g27882795_))
                                       (_tl27932809_ (##cdr _g27882795_)))
                                   (let ((_rest2812_ _tl27932809_))
                                     (_K27912804_ _rest2812_)))
                                 (_E27902799_)))))
                       _rest2786_))))
         _lp2784_)
       _stx2781_
       _k2782_)))
  (define gx#stx-list-ref
    (lambda (_stx2778_ _k2779_)
      (gx#stx-car (gx#stx-list-tail _stx2778_ _k2779_))))
  (begin
    (define gx#stx-plist?__opt-lambda2686
      (lambda (_stx2688_ _key?2689_)
        ((letrec ((_lp2691_
                   (lambda (_rest2693_)
                     (let ((_g26942704_ (gx#stx-e _rest2693_)))
                       (let ((_E26982708_
                              (lambda ()
                                (error '"No clause matching" _g26942704_))))
                         (let ((_else26972712_ (lambda () '#f)))
                           (let ((_try-match26962720_
                                  (lambda ()
                                    (let ((_K26992717_ (lambda () '#t)))
                                      (if (##null? _g26942704_)
                                          (_K26992717_)
                                          (_else26972712_))))))
                             (let ((_K27002756_
                                    (lambda (_rest2723_ _hd2724_)
                                      (if (_key?2689_ _hd2724_)
                                          (let ((_g27252733_
                                                 (gx#stx-e _rest2723_)))
                                            (let ((_E27282737_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _g27252733_))))
                                              (let ((_else27272741_
                                                     (lambda () '#f)))
                                                (let ((_K27292746_
                                                       (lambda (_rest2744_)
                                                         (_lp2691_
                                                          _rest2744_))))
                                                  (if (##pair? _g27252733_)
                                                      (let ((_hd27302749_
                                                             (##car _g27252733_))
                                                            (_tl27312751_
                                                             (##cdr _g27252733_)))
                                                        (let ((_rest2754_
                                                               _tl27312751_))
                                                          (_K27292746_
                                                           _rest2754_)))
                                                      (_else27272741_))))))
                                          '#f))))
                               (if (##pair? _g26942704_)
                                   (let ((_hd27012759_ (##car _g26942704_))
                                         (_tl27022761_ (##cdr _g26942704_)))
                                     (let ((_hd2764_ _hd27012759_))
                                       (let ((_rest2766_ _tl27022761_))
                                         (_K27002756_ _rest2766_ _hd2764_))))
                                   (_try-match26962720_))))))))))
           _lp2691_)
         _stx2688_)))
    (begin
      (define gx#stx-plist?__0
        (lambda (_stx2771_)
          (let ((_key?2773_ gx#stx-keyword?))
            (gx#stx-plist?__opt-lambda2686 _stx2771_ _key?2773_))))
      (define gx#stx-plist?
        (lambda _g3771_
          (let ((_g3770_ (length _g3771_)))
            (cond ((fx= _g3770_ 1) (apply gx#stx-plist?__0 _g3771_))
                  ((fx= _g3770_ 2)
                   (apply gx#stx-plist?__opt-lambda2686 _g3771_))
                  (else (error "No clause matching arguments" _g3771_))))))))
  (begin
    (define gx#stx-getq__opt-lambda2604
      (lambda (_key2606_ _stx2607_ _key=?2608_)
        ((letrec ((_lp2610_
                   (lambda (_rest2612_)
                     (let ((_g26132621_ (gx#syntax-e _rest2612_)))
                       (let ((_E26162625_
                              (lambda ()
                                (error '"No clause matching" _g26132621_))))
                         (let ((_else26152629_ (lambda () '#f)))
                           (let ((_K26172663_
                                  (lambda (_rest2632_ _hd2633_)
                                    (let ((_g26342641_
                                           (gx#syntax-e _rest2632_)))
                                      (let ((_E26362645_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _g26342641_))))
                                        (let ((_K26372651_
                                               (lambda (_rest2648_ _val2649_)
                                                 (if (_key=?2608_
                                                      _hd2633_
                                                      _key2606_)
                                                     _val2649_
                                                     (_lp2610_ _rest2648_)))))
                                          (if (##pair? _g26342641_)
                                              (let ((_hd26382654_
                                                     (##car _g26342641_))
                                                    (_tl26392656_
                                                     (##cdr _g26342641_)))
                                                (let ((_val2659_ _hd26382654_))
                                                  (let ((_rest2661_
                                                         _tl26392656_))
                                                    (_K26372651_
                                                     _rest2661_
                                                     _val2659_))))
                                              (_E26362645_))))))))
                             (if (##pair? _g26132621_)
                                 (let ((_hd26182666_ (##car _g26132621_))
                                       (_tl26192668_ (##cdr _g26132621_)))
                                   (let ((_hd2671_ _hd26182666_))
                                     (let ((_rest2673_ _tl26192668_))
                                       (_K26172663_ _rest2673_ _hd2671_))))
                                 (_else26152629_)))))))))
           _lp2610_)
         _stx2607_)))
    (begin
      (define gx#stx-getq__0
        (lambda (_key2678_ _stx2679_)
          (let ((_key=?2681_ gx#stx-eq?))
            (gx#stx-getq__opt-lambda2604 _key2678_ _stx2679_ _key=?2681_))))
      (define gx#stx-getq
        (lambda _g3773_
          (let ((_g3772_ (length _g3773_)))
            (cond ((fx= _g3772_ 2) (apply gx#stx-getq__0 _g3773_))
                  ((fx= _g3772_ 3) (apply gx#stx-getq__opt-lambda2604 _g3773_))
                  (else (error "No clause matching arguments" _g3773_)))))))))
