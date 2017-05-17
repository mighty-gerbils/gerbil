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
    (lambda _$args3834_
      (apply make-struct-instance gx#identifier-wrap::t _$args3834_)))
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
    (lambda _$args3831_
      (apply make-struct-instance gx#syntax-wrap::t _$args3831_)))
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
    (lambda _$args3828_
      (apply make-struct-instance gx#syntax-quote::t _$args3828_)))
  (define gx#syntax-quote-context
    (make-struct-field-accessor gx#syntax-quote::t '0))
  (define gx#syntax-quote-marks
    (make-struct-field-accessor gx#syntax-quote::t '1))
  (define gx#syntax-quote-context-set!
    (make-struct-field-mutator gx#syntax-quote::t '0))
  (define gx#syntax-quote-marks-set!
    (make-struct-field-mutator gx#syntax-quote::t '1))
  (define gx#identifier? (lambda (_stx3826_) (symbol? (gx#stx-e _stx3826_))))
  (define gx#identifier-quote?
    (lambda (_stx3824_)
      (if (##structure-direct-instance-of? _stx3824_ 'gx#syntax-quote::t)
          (symbol? (##structure-ref _stx3824_ '1 AST::t '#f))
          '#f)))
  (define gx#sealed-syntax?
    (lambda (_stx3819_)
      (let ((_$e3821_
             (##structure-direct-instance-of? _stx3819_ 'gx#syntax-quote::t)))
        (if _$e3821_
            _$e3821_
            (if (##structure-instance-of? _stx3819_ 'gerbil#AST::t)
                (gx#sealed-syntax? (##structure-ref _stx3819_ '1 AST::t '#f))
                '#f)))))
  (define gx#syntax-e
    (lambda (_stx3815_)
      (let ((_stx3817_ (gx#stx-unwrap__0 _stx3815_)))
        (if (##structure-instance-of? _stx3817_ 'gerbil#AST::t)
            (##structure-ref _stx3817_ '1 AST::t '#f)
            _stx3817_))))
  (define gx#syntax->datum
    (lambda (_stx3813_)
      (if (##structure-instance-of? _stx3813_ 'gerbil#AST::t)
          (gx#syntax->datum (##structure-ref _stx3813_ '1 AST::t '#f))
          (if (pair? _stx3813_)
              (cons (gx#syntax->datum (car _stx3813_))
                    (gx#syntax->datum (cdr _stx3813_)))
              (if (vector? _stx3813_)
                  (vector-map gx#syntax->datum _stx3813_)
                  (if (box? _stx3813_)
                      (box (gx#syntax->datum (unbox _stx3813_)))
                      _stx3813_))))))
  (begin
    (define gx#datum->syntax__opt-lambda3781
      (lambda (_stx3783_ _datum3784_ _src3785_)
        (let ((_wrap-datum3787_
               (lambda (_e3794_ _marks3795_)
                 ((letrec ((_recur3797_
                            (lambda (_e3799_)
                              (if (symbol? _e3799_)
                                  (##structure
                                   gx#identifier-wrap::t
                                   _e3799_
                                   _src3785_
                                   _marks3795_)
                                  (if (pair? _e3799_)
                                      (cons (_recur3797_ (car _e3799_))
                                            (_recur3797_ (cdr _e3799_)))
                                      (if (vector? _e3799_)
                                          (vector-map _recur3797_ _e3799_)
                                          (if (box? _e3799_)
                                              (box (_recur3797_
                                                    (unbox _e3799_)))
                                              _e3799_)))))))
                    _recur3797_)
                  _e3794_))))
          (let ((_wrap-outer3788_
                 (lambda (_e3792_)
                   (if (##structure-instance-of? _e3792_ 'gerbil#AST::t)
                       _e3792_
                       (##structure AST::t _e3792_ _src3785_)))))
            (if (##structure-instance-of? _datum3784_ 'gerbil#AST::t)
                _datum3784_
                (if (not _stx3783_)
                    (##structure AST::t _datum3784_ _src3785_)
                    (if (gx#identifier? _stx3783_)
                        (let ((_stx3790_ (gx#stx-unwrap__0 _stx3783_)))
                          (if (gx#identifier-quote? _stx3790_)
                              (##structure
                               gx#syntax-quote::t
                               _datum3784_
                               _src3785_
                               (##structure-ref
                                _stx3790_
                                '3
                                gx#syntax-quote::t
                                '#f)
                               (##structure-ref
                                _stx3790_
                                '4
                                gx#syntax-quote::t
                                '#f))
                              (_wrap-outer3788_
                               (_wrap-datum3787_
                                _datum3784_
                                (##structure-ref
                                 _stx3790_
                                 '3
                                 gx#identifier-wrap::t
                                 '#f)))))
                        (error '"Bad template syntax; expected identifier"
                               _stx3783_))))))))
    (begin
      (define gx#datum->syntax__0
        (lambda (_stx3804_ _datum3805_)
          (let ((_src3807_ '#f))
            (gx#datum->syntax__opt-lambda3781
             _stx3804_
             _datum3805_
             _src3807_))))
      (define gx#datum->syntax
        (lambda _g3837_
          (let ((_g3836_ (length _g3837_)))
            (cond ((fx= _g3836_ 2) (apply gx#datum->syntax__0 _g3837_))
                  ((fx= _g3836_ 3)
                   (apply gx#datum->syntax__opt-lambda3781 _g3837_))
                  (else (error "No clause matching arguments" _g3837_))))))))
  (begin
    (define gx#stx-unwrap__opt-lambda3757
      (lambda (_stx3759_ _marks3760_)
        ((letrec ((_lp3762_
                   (lambda (_e3764_ _marks3765_ _src3766_)
                     (if (##structure-direct-instance-of?
                          _e3764_
                          'gx#syntax-wrap::t)
                         (_lp3762_
                          (##structure-ref _e3764_ '1 AST::t '#f)
                          (gx#apply-mark
                           (##structure-ref _e3764_ '3 gx#syntax-wrap::t '#f)
                           _marks3765_)
                          (##structure-ref _e3764_ '2 AST::t '#f))
                         (if (##structure-direct-instance-of?
                              _e3764_
                              'gx#identifier-wrap::t)
                             (if (null? _marks3765_)
                                 _e3764_
                                 (##structure
                                  gx#identifier-wrap::t
                                  (##structure-ref _e3764_ '1 AST::t '#f)
                                  (##structure-ref _e3764_ '2 AST::t '#f)
                                  (foldl1 gx#apply-mark
                                          (##structure-ref
                                           _e3764_
                                           '3
                                           gx#identifier-wrap::t
                                           '#f)
                                          _marks3765_)))
                             (if (##structure-direct-instance-of?
                                  _e3764_
                                  'gx#syntax-quote::t)
                                 _e3764_
                                 (if (##structure-instance-of?
                                      _e3764_
                                      'gerbil#AST::t)
                                     (_lp3762_
                                      (##structure-ref _e3764_ '1 AST::t '#f)
                                      _marks3765_
                                      (##structure-ref _e3764_ '2 AST::t '#f))
                                     (if (symbol? _e3764_)
                                         (##structure
                                          gx#identifier-wrap::t
                                          _e3764_
                                          _src3766_
                                          (reverse _marks3765_))
                                         (if (null? _marks3765_)
                                             _e3764_
                                             (if (pair? _e3764_)
                                                 (cons (gx#stx-wrap
                                                        (car _e3764_)
                                                        _marks3765_)
                                                       (gx#stx-wrap
                                                        (cdr _e3764_)
                                                        _marks3765_))
                                                 (if (vector? _e3764_)
                                                     (vector-map
                                                      (lambda (_g37673769_)
                                                        (gx#stx-wrap
                                                         _g37673769_
                                                         _marks3765_))
                                                      _e3764_)
                                                     (if (box? _e3764_)
                                                         (box (gx#stx-wrap
                                                               (unbox _e3764_)
                                                               _marks3765_))
                                                         _e3764_))))))))))))
           _lp3762_)
         _stx3759_
         _marks3760_
         (gx#stx-source _stx3759_))))
    (begin
      (define gx#stx-unwrap__0
        (lambda (_stx3775_)
          (let ((_marks3777_ '()))
            (gx#stx-unwrap__opt-lambda3757 _stx3775_ _marks3777_))))
      (define gx#stx-unwrap
        (lambda _g3839_
          (let ((_g3838_ (length _g3839_)))
            (cond ((fx= _g3838_ 1) (apply gx#stx-unwrap__0 _g3839_))
                  ((fx= _g3838_ 2)
                   (apply gx#stx-unwrap__opt-lambda3757 _g3839_))
                  (else (error "No clause matching arguments" _g3839_))))))))
  (define gx#stx-wrap
    (lambda (_stx3752_ _marks3753_)
      (foldl1 (lambda (_mark3755_ _stx3756_)
                (gx#stx-apply-mark _stx3756_ _mark3755_))
              _stx3752_
              _marks3753_)))
  (define gx#stx-rewrap
    (lambda (_stx3746_ _marks3747_)
      (foldr1 (lambda (_mark3749_ _stx3750_)
                (gx#stx-apply-mark _stx3750_ _mark3749_))
              _stx3746_
              _marks3747_)))
  (define gx#stx-apply-mark
    (lambda (_stx3743_ _mark3744_)
      (if (##structure-direct-instance-of? _stx3743_ 'gx#syntax-quote::t)
          _stx3743_
          (if (if (##structure-direct-instance-of?
                   _stx3743_
                   'gx#syntax-wrap::t)
                  (eq? _mark3744_
                       (##structure-ref _stx3743_ '3 gx#syntax-wrap::t '#f))
                  '#f)
              (##structure-ref _stx3743_ '1 AST::t '#f)
              (##structure
               gx#syntax-wrap::t
               _stx3743_
               (gx#stx-source _stx3743_)
               _mark3744_)))))
  (define gx#apply-mark
    (lambda (_mark3707_ _marks3708_)
      (let ((_marks37093717_ _marks3708_))
        (let ((_E37123721_
               (lambda () (error '"No clause matching" _marks37093717_))))
          (let ((_else37113725_ (lambda () (cons _mark3707_ _marks3708_))))
            (let ((_K37133731_
                   (lambda (_rest3728_ _hd3729_)
                     (if (eq? _mark3707_ _hd3729_)
                         _rest3728_
                         (cons _mark3707_ _marks3708_)))))
              (if (##pair? _marks37093717_)
                  (let ((_hd37143734_ (##car _marks37093717_))
                        (_tl37153736_ (##cdr _marks37093717_)))
                    (let ((_hd3739_ _hd37143734_))
                      (let ((_rest3741_ _tl37153736_))
                        (_K37133731_ _rest3741_ _hd3739_))))
                  (_else37113725_))))))))
  (define gx#stx-e
    (lambda (_stx3705_)
      (if (##structure-instance-of? _stx3705_ 'gerbil#AST::t)
          (gx#stx-e (##structure-ref _stx3705_ '1 AST::t '#f))
          _stx3705_)))
  (define gx#stx-source
    (lambda (_stx3703_)
      (if (##structure-instance-of? _stx3703_ 'gerbil#AST::t)
          (##structure-ref _stx3703_ '2 AST::t '#f)
          '#f)))
  (define gx#stx-wrap-source
    (lambda (_stx3697_ _src3698_)
      (if (let ((_$e3700_ (##structure-instance-of? _stx3697_ 'gerbil#AST::t)))
            (if _$e3700_ _$e3700_ (not _src3698_)))
          _stx3697_
          (##structure AST::t _stx3697_ _src3698_))))
  (define gx#stx-datum?
    (lambda (_stx3695_) (gx#self-quoting? (gx#stx-e _stx3695_))))
  (define gx#self-quoting?
    (lambda (_x3675_)
      (let ((_$e3677_ (boolean? _x3675_)))
        (if _$e3677_
            _$e3677_
            (let ((_$e3680_ (char? _x3675_)))
              (if _$e3680_
                  _$e3680_
                  (let ((_$e3683_ (number? _x3675_)))
                    (if _$e3683_
                        _$e3683_
                        (let ((_$e3686_ (keyword? _x3675_)))
                          (if _$e3686_
                              _$e3686_
                              (let ((_$e3689_ (string? _x3675_)))
                                (if _$e3689_
                                    _$e3689_
                                    (let ((_$e3692_ (eq? _x3675_ '#!void)))
                                      (if _$e3692_
                                          _$e3692_
                                          (dssl-object? _x3675_)))))))))))))))
  (define gx#stx-boolean? (lambda (_e3673_) (boolean? (gx#stx-e _e3673_))))
  (define gx#stx-keyword? (lambda (_e3671_) (keyword? (gx#stx-e _e3671_))))
  (define gx#stx-char? (lambda (_e3669_) (char? (gx#stx-e _e3669_))))
  (define gx#stx-number? (lambda (_e3667_) (number? (gx#stx-e _e3667_))))
  (define gx#stx-fixnum? (lambda (_e3665_) (fixnum? (gx#stx-e _e3665_))))
  (define gx#stx-string? (lambda (_e3663_) (string? (gx#stx-e _e3663_))))
  (define gx#stx-null? (lambda (_e3661_) (null? (gx#stx-e _e3661_))))
  (define gx#stx-pair? (lambda (_e3659_) (pair? (gx#stx-e _e3659_))))
  (define gx#stx-list?
    (lambda (_e3619_)
      (let ((_g36203629_ (gx#stx-e _e3619_)))
        (let ((_E36233633_
               (lambda () (error '"No clause matching" _g36203629_))))
          (let ((_try-match36223644_
                 (lambda ()
                   (let ((_K36243639_
                          (lambda (_tail3637_) (null? _tail3637_))))
                     (let ((_tail3642_ _g36203629_)) (null? _tail3642_))))))
            (let ((_K36253649_
                   (lambda (_rest3647_) (gx#stx-list? _rest3647_))))
              (if (##pair? _g36203629_)
                  (let ((_hd36263652_ (##car _g36203629_))
                        (_tl36273654_ (##cdr _g36203629_)))
                    (let ((_rest3657_ _tl36273654_))
                      (gx#stx-list? _rest3657_)))
                  (_try-match36223644_))))))))
  (define gx#stx-pair/null?
    (lambda (_e3612_)
      (let ((_e3614_ (gx#stx-e _e3612_)))
        (let ((_$e3616_ (pair? _e3614_)))
          (if _$e3616_ _$e3616_ (null? _e3614_))))))
  (define gx#stx-vector? (lambda (_e3610_) (vector? (gx#stx-e _e3610_))))
  (define gx#stx-box? (lambda (_e3608_) (box? (gx#stx-e _e3608_))))
  (define gx#stx-eq?
    (lambda (_x3605_ _y3606_) (eq? (gx#stx-e _x3605_) (gx#stx-e _y3606_))))
  (define gx#stx-eqv?
    (lambda (_x3602_ _y3603_) (eqv? (gx#stx-e _x3602_) (gx#stx-e _y3603_))))
  (define gx#stx-equal?
    (lambda (_x3599_ _y3600_) (equal? (gx#stx-e _x3599_) (gx#stx-e _y3600_))))
  (define gx#stx-false? (lambda (_x3597_) (not (gx#stx-e _x3597_))))
  (define gx#stx-identifier
    (lambda (_template3594_ . _args3595_)
      (gx#datum->syntax__opt-lambda3781
       _template3594_
       (apply make-symbol (map gx#stx-e _args3595_))
       (gx#stx-source _template3594_))))
  (define gx#stx-identifier-marks
    (lambda (_stx3590_)
      (let ((_stx3592_ (gx#stx-unwrap__0 _stx3590_)))
        (if (##structure-direct-instance-of? _stx3592_ 'gx#identifier-wrap::t)
            (##structure-ref _stx3592_ '3 gx#identifier-wrap::t '#f)
            (##structure-ref _stx3592_ '4 gx#syntax-quote::t '#f)))))
  (define gx#stx-identifier-context
    (lambda (_stx3586_)
      (let ((_stx3588_ (gx#stx-unwrap__0 _stx3586_)))
        (if (gx#identifier-quote? _stx3588_)
            (##structure-ref _stx3588_ '3 gx#syntax-quote::t '#f)
            '#f))))
  (define gx#identifier-list?
    (lambda (_stx3541_)
      (let ((_g35423552_ (gx#stx-e _stx3541_)))
        (let ((_E35463556_
               (lambda () (error '"No clause matching" _g35423552_))))
          (let ((_else35453560_ (lambda () '#f)))
            (let ((_try-match35443568_
                   (lambda ()
                     (let ((_K35473565_ (lambda () '#t)))
                       (if (##null? _g35423552_)
                           (_K35473565_)
                           (_else35453560_))))))
              (let ((_K35483574_
                     (lambda (_rest3571_ _hd3572_)
                       (if (gx#identifier? _hd3572_)
                           (gx#identifier-list? _rest3571_)
                           '#f))))
                (if (##pair? _g35423552_)
                    (let ((_hd35493577_ (##car _g35423552_))
                          (_tl35503579_ (##cdr _g35423552_)))
                      (let ((_hd3582_ _hd35493577_))
                        (let ((_rest3584_ _tl35503579_))
                          (_K35483574_ _rest3584_ _hd3582_))))
                    (_try-match35443568_)))))))))
  (begin
    (define gx#genident__opt-lambda3516
      (lambda (_e3518_ _src3519_)
        (gx#stx-wrap-source
         (gensym (let ((_e3521_ (gx#stx-e _e3518_)))
                   (if (interned-symbol? _e3521_) _e3521_ 'g)))
         (let ((_$e3523_ (gx#stx-source _e3518_)))
           (if _$e3523_ _$e3523_ _src3519_)))))
    (begin
      (define gx#genident__0
        (lambda ()
          (let ((_e3530_ 'g))
            (let ((_src3532_ '#f))
              (gx#genident__opt-lambda3516 _e3530_ _src3532_)))))
      (define gx#genident__1
        (lambda (_e3534_)
          (let ((_src3536_ '#f))
            (gx#genident__opt-lambda3516 _e3534_ _src3536_))))
      (define gx#genident
        (lambda _g3841_
          (let ((_g3840_ (length _g3841_)))
            (cond ((fx= _g3840_ 0) (apply gx#genident__0 _g3841_))
                  ((fx= _g3840_ 1) (apply gx#genident__1 _g3841_))
                  ((fx= _g3840_ 2) (apply gx#genident__opt-lambda3516 _g3841_))
                  (else (error "No clause matching arguments" _g3841_))))))))
  (define gx#gentemps
    (lambda (_stx-lst3515_) (gx#stx-map1 gx#genident _stx-lst3515_)))
  (define gx#syntax->list (lambda (_stx3513_) (gx#stx-map1 values _stx3513_)))
  (define gx#stx-car (lambda (_stx3511_) (car (gx#syntax-e _stx3511_))))
  (define gx#stx-cdr (lambda (_stx3509_) (cdr (gx#syntax-e _stx3509_))))
  (define gx#stx-length
    (lambda (_stx3472_)
      ((letrec ((_lp3474_
                 (lambda (_rest3476_ _n3477_)
                   (let ((_g34783486_ (gx#stx-e _rest3476_)))
                     (let ((_E34813490_
                            (lambda ()
                              (error '"No clause matching" _g34783486_))))
                       (let ((_else34803494_ (lambda () _n3477_)))
                         (let ((_K34823499_
                                (lambda (_rest3497_)
                                  (_lp3474_ _rest3497_ (fx+ _n3477_ '1)))))
                           (if (##pair? _g34783486_)
                               (let ((_hd34833502_ (##car _g34783486_))
                                     (_tl34843504_ (##cdr _g34783486_)))
                                 (let ((_rest3507_ _tl34843504_))
                                   (_K34823499_ _rest3507_)))
                               (_else34803494_)))))))))
         _lp3474_)
       _stx3472_
       '0)))
  (define gx#stx-for-each
    (lambda _g3843_
      (let ((_g3842_ (length _g3843_)))
        (cond ((fx= _g3842_ 2) (apply gx#stx-for-each1 _g3843_))
              ((fx= _g3842_ 3) (apply gx#stx-for-each2 _g3843_))
              (else (error "No clause matching arguments" _g3843_))))))
  (define gx#stx-for-each1
    (lambda (_f3415_ _stx3416_)
      ((letrec ((_lp3418_
                 (lambda (_rest3420_)
                   (let ((_g34213431_ (gx#syntax-e _rest3420_)))
                     (let ((_E34253435_
                            (lambda ()
                              (error '"No clause matching" _g34213431_))))
                       (let ((_else34243439_ (lambda () (_f3415_ _rest3420_))))
                         (let ((_try-match34233447_
                                (lambda ()
                                  (let ((_K34263444_ (lambda () '#!void)))
                                    (if (##null? _g34213431_)
                                        (_K34263444_)
                                        (_else34243439_))))))
                           (let ((_K34273453_
                                  (lambda (_rest3450_ _hd3451_)
                                    (begin
                                      (_f3415_ _hd3451_)
                                      (_lp3418_ _rest3450_)))))
                             (if (##pair? _g34213431_)
                                 (let ((_hd34283456_ (##car _g34213431_))
                                       (_tl34293458_ (##cdr _g34213431_)))
                                   (let ((_hd3461_ _hd34283456_))
                                     (let ((_rest3463_ _tl34293458_))
                                       (_K34273453_ _rest3463_ _hd3461_))))
                                 (_try-match34233447_))))))))))
         _lp3418_)
       _stx3416_)))
  (define gx#stx-for-each2
    (lambda (_f3320_ _xstx3321_ _ystx3322_)
      ((letrec ((_lp3324_
                 (lambda (_xrest3326_ _yrest3327_)
                   (let ((_g33283338_ (gx#syntax-e _xrest3326_)))
                     (let ((_E33323342_
                            (lambda ()
                              (error '"No clause matching" _g33283338_))))
                       (let ((_else33313346_ (lambda () '#!void)))
                         (let ((_try-match33303369_
                                (lambda ()
                                  (let ((_K33333366_
                                         (lambda ()
                                           (let ((_yrest33503355_ _yrest3327_))
                                             (let ((_E33523359_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _yrest33503355_))))
                                               (let ((_K33533363_
                                                      (lambda ()
                                                        (_f3320_ _xrest3326_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _yrest3327_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (not (gx#stx-null?
                                                           _yrest33503355_))
                                                     (_K33533363_)
                                                     (_E33523359_))))))))
                                    (if (not (null? _g33283338_))
                                        (_K33333366_)
                                        (_else33313346_))))))
                           (let ((_K33343403_
                                  (lambda (_xrest3372_ _xhd3373_)
                                    (let ((_g33743381_
                                           (gx#syntax-e _yrest3327_)))
                                      (let ((_E33763385_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _g33743381_))))
                                        (let ((_K33773391_
                                               (lambda (_yrest3388_ _yhd3389_)
                                                 (begin
                                                   (_f3320_ _xhd3373_
                                                            _yhd3389_)
                                                   (_lp3324_
                                                    _xrest3372_
                                                    _yrest3388_)))))
                                          (if (##pair? _g33743381_)
                                              (let ((_hd33783394_
                                                     (##car _g33743381_))
                                                    (_tl33793396_
                                                     (##cdr _g33743381_)))
                                                (let ((_yhd3399_ _hd33783394_))
                                                  (let ((_yrest3401_
                                                         _tl33793396_))
                                                    (_K33773391_
                                                     _yrest3401_
                                                     _yhd3399_))))
                                              (_E33763385_))))))))
                             (if (##pair? _g33283338_)
                                 (let ((_hd33353406_ (##car _g33283338_))
                                       (_tl33363408_ (##cdr _g33283338_)))
                                   (let ((_xhd3411_ _hd33353406_))
                                     (let ((_xrest3413_ _tl33363408_))
                                       (_K33343403_ _xrest3413_ _xhd3411_))))
                                 (_try-match33303369_))))))))))
         _lp3324_)
       _xstx3321_
       _ystx3322_)))
  (define gx#stx-map
    (lambda _g3845_
      (let ((_g3844_ (length _g3845_)))
        (cond ((fx= _g3844_ 2) (apply gx#stx-map1 _g3845_))
              ((fx= _g3844_ 3) (apply gx#stx-map2 _g3845_))
              (else (error "No clause matching arguments" _g3845_))))))
  (define gx#stx-map1
    (lambda (_f3263_ _stx3264_)
      ((letrec ((_recur3266_
                 (lambda (_rest3268_)
                   (let ((_g32693279_ (gx#syntax-e _rest3268_)))
                     (let ((_E32733283_
                            (lambda ()
                              (error '"No clause matching" _g32693279_))))
                       (let ((_else32723287_ (lambda () (_f3263_ _rest3268_))))
                         (let ((_try-match32713295_
                                (lambda ()
                                  (let ((_K32743292_ (lambda () '())))
                                    (if (##null? _g32693279_)
                                        (_K32743292_)
                                        (_else32723287_))))))
                           (let ((_K32753301_
                                  (lambda (_rest3298_ _hd3299_)
                                    (cons (_f3263_ _hd3299_)
                                          (_recur3266_ _rest3298_)))))
                             (if (##pair? _g32693279_)
                                 (let ((_hd32763304_ (##car _g32693279_))
                                       (_tl32773306_ (##cdr _g32693279_)))
                                   (let ((_hd3309_ _hd32763304_))
                                     (let ((_rest3311_ _tl32773306_))
                                       (_K32753301_ _rest3311_ _hd3309_))))
                                 (_try-match32713295_))))))))))
         _recur3266_)
       _stx3264_)))
  (define gx#stx-map2
    (lambda (_f3168_ _xstx3169_ _ystx3170_)
      ((letrec ((_recur3172_
                 (lambda (_xrest3174_ _yrest3175_)
                   (let ((_g31763186_ (gx#syntax-e _xrest3174_)))
                     (let ((_E31803190_
                            (lambda ()
                              (error '"No clause matching" _g31763186_))))
                       (let ((_else31793194_ (lambda () '())))
                         (let ((_try-match31783217_
                                (lambda ()
                                  (let ((_K31813214_
                                         (lambda ()
                                           (let ((_yrest31983203_ _yrest3175_))
                                             (let ((_E32003207_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _yrest31983203_))))
                                               (let ((_K32013211_
                                                      (lambda ()
                                                        (_f3168_ _xrest3174_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _yrest3175_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (not (gx#stx-null?
                                                           _yrest31983203_))
                                                     (_K32013211_)
                                                     (_E32003207_))))))))
                                    (if (not (null? _g31763186_))
                                        (_K31813214_)
                                        (_else31793194_))))))
                           (let ((_K31823251_
                                  (lambda (_xrest3220_ _xhd3221_)
                                    (let ((_g32223229_
                                           (gx#syntax-e _yrest3175_)))
                                      (let ((_E32243233_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _g32223229_))))
                                        (let ((_K32253239_
                                               (lambda (_yrest3236_ _yhd3237_)
                                                 (cons (_f3168_ _xhd3221_
                                                                _yhd3237_)
                                                       (_recur3172_
                                                        _xrest3220_
                                                        _yrest3236_)))))
                                          (if (##pair? _g32223229_)
                                              (let ((_hd32263242_
                                                     (##car _g32223229_))
                                                    (_tl32273244_
                                                     (##cdr _g32223229_)))
                                                (let ((_yhd3247_ _hd32263242_))
                                                  (let ((_yrest3249_
                                                         _tl32273244_))
                                                    (_K32253239_
                                                     _yrest3249_
                                                     _yhd3247_))))
                                              (_E32243233_))))))))
                             (if (##pair? _g31763186_)
                                 (let ((_hd31833254_ (##car _g31763186_))
                                       (_tl31843256_ (##cdr _g31763186_)))
                                   (let ((_xhd3259_ _hd31833254_))
                                     (let ((_xrest3261_ _tl31843256_))
                                       (_K31823251_ _xrest3261_ _xhd3259_))))
                                 (_try-match31783217_))))))))))
         _recur3172_)
       _xstx3169_
       _ystx3170_)))
  (define gx#stx-andmap
    (lambda (_f3118_ _stx3119_)
      ((letrec ((_lp3121_
                 (lambda (_rest3123_)
                   (let ((_g31243134_ (gx#syntax-e _rest3123_)))
                     (let ((_E31283138_
                            (lambda ()
                              (error '"No clause matching" _g31243134_))))
                       (let ((_else31273142_ (lambda () (_f3118_ _rest3123_))))
                         (let ((_try-match31263150_
                                (lambda ()
                                  (let ((_K31293147_ (lambda () '#t)))
                                    (if (##null? _g31243134_)
                                        (_K31293147_)
                                        (_else31273142_))))))
                           (let ((_K31303156_
                                  (lambda (_rest3153_ _hd3154_)
                                    (if (_f3118_ _hd3154_)
                                        (_lp3121_ _rest3153_)
                                        '#f))))
                             (if (##pair? _g31243134_)
                                 (let ((_hd31313159_ (##car _g31243134_))
                                       (_tl31323161_ (##cdr _g31243134_)))
                                   (let ((_hd3164_ _hd31313159_))
                                     (let ((_rest3166_ _tl31323161_))
                                       (_K31303156_ _rest3166_ _hd3164_))))
                                 (_try-match31263150_))))))))))
         _lp3121_)
       _stx3119_)))
  (define gx#stx-ormap
    (lambda (_f3065_ _stx3066_)
      ((letrec ((_lp3068_
                 (lambda (_rest3070_)
                   (let ((_g30713081_ (gx#syntax-e _rest3070_)))
                     (let ((_E30753085_
                            (lambda ()
                              (error '"No clause matching" _g30713081_))))
                       (let ((_else30743089_ (lambda () (_f3065_ _rest3070_))))
                         (let ((_try-match30733097_
                                (lambda ()
                                  (let ((_K30763094_ (lambda () '#f)))
                                    (if (##null? _g30713081_)
                                        (_K30763094_)
                                        (_else30743089_))))))
                           (let ((_K30773106_
                                  (lambda (_rest3100_ _hd3101_)
                                    (let ((_$e3103_ (_f3065_ _hd3101_)))
                                      (if _$e3103_
                                          _$e3103_
                                          (_lp3068_ _rest3100_))))))
                             (if (##pair? _g30713081_)
                                 (let ((_hd30783109_ (##car _g30713081_))
                                       (_tl30793111_ (##cdr _g30713081_)))
                                   (let ((_hd3114_ _hd30783109_))
                                     (let ((_rest3116_ _tl30793111_))
                                       (_K30773106_ _rest3116_ _hd3114_))))
                                 (_try-match30733097_))))))))))
         _lp3068_)
       _stx3066_)))
  (define gx#stx-foldl
    (lambda (_f3013_ _iv3014_ _stx3015_)
      ((letrec ((_lp3017_
                 (lambda (_r3019_ _rest3020_)
                   (let ((_g30213031_ (gx#syntax-e _rest3020_)))
                     (let ((_E30253035_
                            (lambda ()
                              (error '"No clause matching" _g30213031_))))
                       (let ((_else30243039_
                              (lambda () (_f3013_ _rest3020_ _r3019_))))
                         (let ((_try-match30233047_
                                (lambda ()
                                  (let ((_K30263044_ (lambda () _r3019_)))
                                    (if (##null? _g30213031_)
                                        (_K30263044_)
                                        (_else30243039_))))))
                           (let ((_K30273053_
                                  (lambda (_rest3050_ _hd3051_)
                                    (_lp3017_
                                     (_f3013_ _hd3051_ _r3019_)
                                     _rest3050_))))
                             (if (##pair? _g30213031_)
                                 (let ((_hd30283056_ (##car _g30213031_))
                                       (_tl30293058_ (##cdr _g30213031_)))
                                   (let ((_hd3061_ _hd30283056_))
                                     (let ((_rest3063_ _tl30293058_))
                                       (_K30273053_ _rest3063_ _hd3061_))))
                                 (_try-match30233047_))))))))))
         _lp3017_)
       _iv3014_
       _stx3015_)))
  (define gx#stx-foldr
    (lambda (_f2962_ _iv2963_ _stx2964_)
      ((letrec ((_recur2966_
                 (lambda (_rest2968_)
                   (let ((_g29692979_ (gx#syntax-e _rest2968_)))
                     (let ((_E29732983_
                            (lambda ()
                              (error '"No clause matching" _g29692979_))))
                       (let ((_else29722987_
                              (lambda () (_f2962_ _rest2968_ _iv2963_))))
                         (let ((_try-match29712995_
                                (lambda ()
                                  (let ((_K29742992_ (lambda () _iv2963_)))
                                    (if (##null? _g29692979_)
                                        (_K29742992_)
                                        (_else29722987_))))))
                           (let ((_K29753001_
                                  (lambda (_rest2998_ _hd2999_)
                                    (_f2962_ _hd2999_
                                             (_recur2966_ _rest2998_)))))
                             (if (##pair? _g29692979_)
                                 (let ((_hd29763004_ (##car _g29692979_))
                                       (_tl29773006_ (##cdr _g29692979_)))
                                   (let ((_hd3009_ _hd29763004_))
                                     (let ((_rest3011_ _tl29773006_))
                                       (_K29753001_ _rest3011_ _hd3009_))))
                                 (_try-match29712995_))))))))))
         _recur2966_)
       _stx2964_)))
  (define gx#stx-reverse
    (lambda (_stx2960_) (gx#stx-foldl cons '() _stx2960_)))
  (define gx#stx-last
    (lambda (_stx2921_)
      ((letrec ((_lp2923_
                 (lambda (_rest2925_)
                   (let ((_g29262934_ (gx#syntax-e _rest2925_)))
                     (let ((_E29292938_
                            (lambda ()
                              (error '"No clause matching" _g29262934_))))
                       (let ((_else29282942_ (lambda () _rest2925_)))
                         (let ((_K29302948_
                                (lambda (_rest2945_ _hd2946_)
                                  (if (gx#stx-null? _rest2945_)
                                      _hd2946_
                                      (_lp2923_ _rest2945_)))))
                           (if (##pair? _g29262934_)
                               (let ((_hd29312951_ (##car _g29262934_))
                                     (_tl29322953_ (##cdr _g29262934_)))
                                 (let ((_hd2956_ _hd29312951_))
                                   (let ((_rest2958_ _tl29322953_))
                                     (_K29302948_ _rest2958_ _hd2956_))))
                               (_else29282942_)))))))))
         _lp2923_)
       _stx2921_)))
  (define gx#stx-last-pair
    (lambda (_stx2890_)
      ((letrec ((_lp2892_
                 (lambda (_hd2894_)
                   (let ((_g28952902_ (gx#syntax-e _hd2894_)))
                     (let ((_E28972906_
                            (lambda ()
                              (error '"No clause matching" _g28952902_))))
                       (let ((_K28982911_
                              (lambda (_rest2909_)
                                (if (gx#stx-pair? _rest2909_)
                                    (_lp2892_ _rest2909_)
                                    _hd2894_))))
                         (if (##pair? _g28952902_)
                             (let ((_hd28992914_ (##car _g28952902_))
                                   (_tl29002916_ (##cdr _g28952902_)))
                               (let ((_rest2919_ _tl29002916_))
                                 (_K28982911_ _rest2919_)))
                             (_E28972906_))))))))
         _lp2892_)
       _stx2890_)))
  (define gx#stx-list-tail
    (lambda (_stx2857_ _k2858_)
      ((letrec ((_lp2860_
                 (lambda (_rest2862_ _k2863_)
                   (if (fxpositive? _k2863_)
                       (let ((_g28642871_ (gx#syntax-e _rest2862_)))
                         (let ((_E28662875_
                                (lambda ()
                                  (error '"No clause matching" _g28642871_))))
                           (let ((_K28672880_
                                  (lambda (_rest2878_)
                                    (_lp2860_ _rest2878_ (fx- _k2863_ '1)))))
                             (if (##pair? _g28642871_)
                                 (let ((_hd28682883_ (##car _g28642871_))
                                       (_tl28692885_ (##cdr _g28642871_)))
                                   (let ((_rest2888_ _tl28692885_))
                                     (_K28672880_ _rest2888_)))
                                 (_E28662875_)))))
                       _rest2862_))))
         _lp2860_)
       _stx2857_
       _k2858_)))
  (define gx#stx-list-ref
    (lambda (_stx2854_ _k2855_)
      (gx#stx-car (gx#stx-list-tail _stx2854_ _k2855_))))
  (begin
    (define gx#stx-plist?__opt-lambda2762
      (lambda (_stx2764_ _key?2765_)
        ((letrec ((_lp2767_
                   (lambda (_rest2769_)
                     (let ((_g27702780_ (gx#stx-e _rest2769_)))
                       (let ((_E27742784_
                              (lambda ()
                                (error '"No clause matching" _g27702780_))))
                         (let ((_else27732788_ (lambda () '#f)))
                           (let ((_try-match27722796_
                                  (lambda ()
                                    (let ((_K27752793_ (lambda () '#t)))
                                      (if (##null? _g27702780_)
                                          (_K27752793_)
                                          (_else27732788_))))))
                             (let ((_K27762832_
                                    (lambda (_rest2799_ _hd2800_)
                                      (if (_key?2765_ _hd2800_)
                                          (let ((_g28012809_
                                                 (gx#stx-e _rest2799_)))
                                            (let ((_E28042813_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _g28012809_))))
                                              (let ((_else28032817_
                                                     (lambda () '#f)))
                                                (let ((_K28052822_
                                                       (lambda (_rest2820_)
                                                         (_lp2767_
                                                          _rest2820_))))
                                                  (if (##pair? _g28012809_)
                                                      (let ((_hd28062825_
                                                             (##car _g28012809_))
                                                            (_tl28072827_
                                                             (##cdr _g28012809_)))
                                                        (let ((_rest2830_
                                                               _tl28072827_))
                                                          (_K28052822_
                                                           _rest2830_)))
                                                      (_else28032817_))))))
                                          '#f))))
                               (if (##pair? _g27702780_)
                                   (let ((_hd27772835_ (##car _g27702780_))
                                         (_tl27782837_ (##cdr _g27702780_)))
                                     (let ((_hd2840_ _hd27772835_))
                                       (let ((_rest2842_ _tl27782837_))
                                         (_K27762832_ _rest2842_ _hd2840_))))
                                   (_try-match27722796_))))))))))
           _lp2767_)
         _stx2764_)))
    (begin
      (define gx#stx-plist?__0
        (lambda (_stx2847_)
          (let ((_key?2849_ gx#stx-keyword?))
            (gx#stx-plist?__opt-lambda2762 _stx2847_ _key?2849_))))
      (define gx#stx-plist?
        (lambda _g3847_
          (let ((_g3846_ (length _g3847_)))
            (cond ((fx= _g3846_ 1) (apply gx#stx-plist?__0 _g3847_))
                  ((fx= _g3846_ 2)
                   (apply gx#stx-plist?__opt-lambda2762 _g3847_))
                  (else (error "No clause matching arguments" _g3847_))))))))
  (begin
    (define gx#stx-getq__opt-lambda2680
      (lambda (_key2682_ _stx2683_ _key=?2684_)
        ((letrec ((_lp2686_
                   (lambda (_rest2688_)
                     (let ((_g26892697_ (gx#syntax-e _rest2688_)))
                       (let ((_E26922701_
                              (lambda ()
                                (error '"No clause matching" _g26892697_))))
                         (let ((_else26912705_ (lambda () '#f)))
                           (let ((_K26932739_
                                  (lambda (_rest2708_ _hd2709_)
                                    (let ((_g27102717_
                                           (gx#syntax-e _rest2708_)))
                                      (let ((_E27122721_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _g27102717_))))
                                        (let ((_K27132727_
                                               (lambda (_rest2724_ _val2725_)
                                                 (if (_key=?2684_
                                                      _hd2709_
                                                      _key2682_)
                                                     _val2725_
                                                     (_lp2686_ _rest2724_)))))
                                          (if (##pair? _g27102717_)
                                              (let ((_hd27142730_
                                                     (##car _g27102717_))
                                                    (_tl27152732_
                                                     (##cdr _g27102717_)))
                                                (let ((_val2735_ _hd27142730_))
                                                  (let ((_rest2737_
                                                         _tl27152732_))
                                                    (_K27132727_
                                                     _rest2737_
                                                     _val2735_))))
                                              (_E27122721_))))))))
                             (if (##pair? _g26892697_)
                                 (let ((_hd26942742_ (##car _g26892697_))
                                       (_tl26952744_ (##cdr _g26892697_)))
                                   (let ((_hd2747_ _hd26942742_))
                                     (let ((_rest2749_ _tl26952744_))
                                       (_K26932739_ _rest2749_ _hd2747_))))
                                 (_else26912705_)))))))))
           _lp2686_)
         _stx2683_)))
    (begin
      (define gx#stx-getq__0
        (lambda (_key2754_ _stx2755_)
          (let ((_key=?2757_ gx#stx-eq?))
            (gx#stx-getq__opt-lambda2680 _key2754_ _stx2755_ _key=?2757_))))
      (define gx#stx-getq
        (lambda _g3849_
          (let ((_g3848_ (length _g3849_)))
            (cond ((fx= _g3848_ 2) (apply gx#stx-getq__0 _g3849_))
                  ((fx= _g3848_ 3) (apply gx#stx-getq__opt-lambda2680 _g3849_))
                  (else (error "No clause matching arguments" _g3849_)))))))))
