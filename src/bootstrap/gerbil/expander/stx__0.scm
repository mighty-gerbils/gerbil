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
    (lambda _$args4000_
      (apply make-struct-instance gx#identifier-wrap::t _$args4000_)))
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
    (lambda _$args3997_
      (apply make-struct-instance gx#syntax-wrap::t _$args3997_)))
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
    (lambda _$args3994_
      (apply make-struct-instance gx#syntax-quote::t _$args3994_)))
  (define gx#syntax-quote-context
    (make-struct-field-accessor gx#syntax-quote::t '0))
  (define gx#syntax-quote-marks
    (make-struct-field-accessor gx#syntax-quote::t '1))
  (define gx#syntax-quote-context-set!
    (make-struct-field-mutator gx#syntax-quote::t '0))
  (define gx#syntax-quote-marks-set!
    (make-struct-field-mutator gx#syntax-quote::t '1))
  (define gx#identifier? (lambda (_stx3992_) (symbol? (gx#stx-e _stx3992_))))
  (define gx#identifier-quote?
    (lambda (_stx3990_)
      (if (##structure-direct-instance-of? _stx3990_ 'gx#syntax-quote::t)
          (symbol? (##structure-ref _stx3990_ '1 AST::t '#f))
          '#f)))
  (define gx#sealed-syntax?
    (lambda (_stx3985_)
      (let ((_$e3987_
             (##structure-direct-instance-of? _stx3985_ 'gx#syntax-quote::t)))
        (if _$e3987_
            _$e3987_
            (if (##structure-instance-of? _stx3985_ 'gerbil#AST::t)
                (gx#sealed-syntax? (##structure-ref _stx3985_ '1 AST::t '#f))
                '#f)))))
  (define gx#syntax-e
    (lambda (_stx3981_)
      (let ((_stx3983_ (gx#stx-unwrap__0 _stx3981_)))
        (if (##structure-instance-of? _stx3983_ 'gerbil#AST::t)
            (##structure-ref _stx3983_ '1 AST::t '#f)
            _stx3983_))))
  (define gx#syntax->datum
    (lambda (_stx3979_)
      (if (##structure-instance-of? _stx3979_ 'gerbil#AST::t)
          (gx#syntax->datum (##structure-ref _stx3979_ '1 AST::t '#f))
          (if (pair? _stx3979_)
              (cons (gx#syntax->datum (car _stx3979_))
                    (gx#syntax->datum (cdr _stx3979_)))
              (if (vector? _stx3979_)
                  (vector-map gx#syntax->datum _stx3979_)
                  (if (box? _stx3979_)
                      (box (gx#syntax->datum (unbox _stx3979_)))
                      _stx3979_))))))
  (begin
    (define gx#datum->syntax__opt-lambda3947
      (lambda (_stx3949_ _datum3950_ _src3951_)
        (let ((_wrap-datum3953_
               (lambda (_e3960_ _marks3961_)
                 ((letrec ((_recur3963_
                            (lambda (_e3965_)
                              (if (symbol? _e3965_)
                                  (##structure
                                   gx#identifier-wrap::t
                                   _e3965_
                                   _src3951_
                                   _marks3961_)
                                  (if (pair? _e3965_)
                                      (cons (_recur3963_ (car _e3965_))
                                            (_recur3963_ (cdr _e3965_)))
                                      (if (vector? _e3965_)
                                          (vector-map _recur3963_ _e3965_)
                                          (if (box? _e3965_)
                                              (box (_recur3963_
                                                    (unbox _e3965_)))
                                              _e3965_)))))))
                    _recur3963_)
                  _e3960_))))
          (let ((_wrap-outer3954_
                 (lambda (_e3958_)
                   (if (##structure-instance-of? _e3958_ 'gerbil#AST::t)
                       _e3958_
                       (##structure AST::t _e3958_ _src3951_)))))
            (if (##structure-instance-of? _datum3950_ 'gerbil#AST::t)
                _datum3950_
                (if (not _stx3949_)
                    (##structure AST::t _datum3950_ _src3951_)
                    (if (gx#identifier? _stx3949_)
                        (let ((_stx3956_ (gx#stx-unwrap__0 _stx3949_)))
                          (if (gx#identifier-quote? _stx3956_)
                              (##structure
                               gx#syntax-quote::t
                               _datum3950_
                               _src3951_
                               (##structure-ref
                                _stx3956_
                                '3
                                gx#syntax-quote::t
                                '#f)
                               (##structure-ref
                                _stx3956_
                                '4
                                gx#syntax-quote::t
                                '#f))
                              (_wrap-outer3954_
                               (_wrap-datum3953_
                                _datum3950_
                                (##structure-ref
                                 _stx3956_
                                 '3
                                 gx#identifier-wrap::t
                                 '#f)))))
                        (error '"Bad template syntax; expected identifier"
                               _stx3949_))))))))
    (begin
      (define gx#datum->syntax__0
        (lambda (_stx3970_ _datum3971_)
          (let ((_src3973_ '#f))
            (gx#datum->syntax__opt-lambda3947
             _stx3970_
             _datum3971_
             _src3973_))))
      (define gx#datum->syntax
        (lambda _g4003_
          (let ((_g4002_ (length _g4003_)))
            (cond ((fx= _g4002_ 2) (apply gx#datum->syntax__0 _g4003_))
                  ((fx= _g4002_ 3)
                   (apply gx#datum->syntax__opt-lambda3947 _g4003_))
                  (else (error "No clause matching arguments" _g4003_))))))))
  (begin
    (define gx#stx-unwrap__opt-lambda3923
      (lambda (_stx3925_ _marks3926_)
        ((letrec ((_lp3928_
                   (lambda (_e3930_ _marks3931_ _src3932_)
                     (if (##structure-direct-instance-of?
                          _e3930_
                          'gx#syntax-wrap::t)
                         (_lp3928_
                          (##structure-ref _e3930_ '1 AST::t '#f)
                          (gx#apply-mark
                           (##structure-ref _e3930_ '3 gx#syntax-wrap::t '#f)
                           _marks3931_)
                          (##structure-ref _e3930_ '2 AST::t '#f))
                         (if (##structure-direct-instance-of?
                              _e3930_
                              'gx#identifier-wrap::t)
                             (if (null? _marks3931_)
                                 _e3930_
                                 (##structure
                                  gx#identifier-wrap::t
                                  (##structure-ref _e3930_ '1 AST::t '#f)
                                  (##structure-ref _e3930_ '2 AST::t '#f)
                                  (foldl1 gx#apply-mark
                                          (##structure-ref
                                           _e3930_
                                           '3
                                           gx#identifier-wrap::t
                                           '#f)
                                          _marks3931_)))
                             (if (##structure-direct-instance-of?
                                  _e3930_
                                  'gx#syntax-quote::t)
                                 _e3930_
                                 (if (##structure-instance-of?
                                      _e3930_
                                      'gerbil#AST::t)
                                     (_lp3928_
                                      (##structure-ref _e3930_ '1 AST::t '#f)
                                      _marks3931_
                                      (##structure-ref _e3930_ '2 AST::t '#f))
                                     (if (symbol? _e3930_)
                                         (##structure
                                          gx#identifier-wrap::t
                                          _e3930_
                                          _src3932_
                                          (reverse _marks3931_))
                                         (if (null? _marks3931_)
                                             _e3930_
                                             (if (pair? _e3930_)
                                                 (cons (gx#stx-wrap
                                                        (car _e3930_)
                                                        _marks3931_)
                                                       (gx#stx-wrap
                                                        (cdr _e3930_)
                                                        _marks3931_))
                                                 (if (vector? _e3930_)
                                                     (vector-map
                                                      (lambda (_g39333935_)
                                                        (gx#stx-wrap
                                                         _g39333935_
                                                         _marks3931_))
                                                      _e3930_)
                                                     (if (box? _e3930_)
                                                         (box (gx#stx-wrap
                                                               (unbox _e3930_)
                                                               _marks3931_))
                                                         _e3930_))))))))))))
           _lp3928_)
         _stx3925_
         _marks3926_
         (gx#stx-source _stx3925_))))
    (begin
      (define gx#stx-unwrap__0
        (lambda (_stx3941_)
          (let ((_marks3943_ '()))
            (gx#stx-unwrap__opt-lambda3923 _stx3941_ _marks3943_))))
      (define gx#stx-unwrap
        (lambda _g4005_
          (let ((_g4004_ (length _g4005_)))
            (cond ((fx= _g4004_ 1) (apply gx#stx-unwrap__0 _g4005_))
                  ((fx= _g4004_ 2)
                   (apply gx#stx-unwrap__opt-lambda3923 _g4005_))
                  (else (error "No clause matching arguments" _g4005_))))))))
  (define gx#stx-wrap
    (lambda (_stx3918_ _marks3919_)
      (foldl1 (lambda (_mark3921_ _stx3922_)
                (gx#stx-apply-mark _stx3922_ _mark3921_))
              _stx3918_
              _marks3919_)))
  (define gx#stx-rewrap
    (lambda (_stx3912_ _marks3913_)
      (foldr1 (lambda (_mark3915_ _stx3916_)
                (gx#stx-apply-mark _stx3916_ _mark3915_))
              _stx3912_
              _marks3913_)))
  (define gx#stx-apply-mark
    (lambda (_stx3909_ _mark3910_)
      (if (##structure-direct-instance-of? _stx3909_ 'gx#syntax-quote::t)
          _stx3909_
          (if (if (##structure-direct-instance-of?
                   _stx3909_
                   'gx#syntax-wrap::t)
                  (eq? _mark3910_
                       (##structure-ref _stx3909_ '3 gx#syntax-wrap::t '#f))
                  '#f)
              (##structure-ref _stx3909_ '1 AST::t '#f)
              (##structure
               gx#syntax-wrap::t
               _stx3909_
               (gx#stx-source _stx3909_)
               _mark3910_)))))
  (define gx#apply-mark
    (lambda (_mark3873_ _marks3874_)
      (let ((_marks38753883_ _marks3874_))
        (let ((_E38783887_
               (lambda () (error '"No clause matching" _marks38753883_))))
          (let ((_else38773891_ (lambda () (cons _mark3873_ _marks3874_))))
            (let ((_K38793897_
                   (lambda (_rest3894_ _hd3895_)
                     (if (eq? _mark3873_ _hd3895_)
                         _rest3894_
                         (cons _mark3873_ _marks3874_)))))
              (if (##pair? _marks38753883_)
                  (let ((_hd38803900_ (##car _marks38753883_))
                        (_tl38813902_ (##cdr _marks38753883_)))
                    (let ((_hd3905_ _hd38803900_))
                      (let ((_rest3907_ _tl38813902_))
                        (_K38793897_ _rest3907_ _hd3905_))))
                  (_else38773891_))))))))
  (define gx#stx-e
    (lambda (_stx3871_)
      (if (##structure-instance-of? _stx3871_ 'gerbil#AST::t)
          (gx#stx-e (##structure-ref _stx3871_ '1 AST::t '#f))
          _stx3871_)))
  (define gx#stx-source
    (lambda (_stx3869_)
      (if (##structure-instance-of? _stx3869_ 'gerbil#AST::t)
          (##structure-ref _stx3869_ '2 AST::t '#f)
          '#f)))
  (define gx#stx-wrap-source
    (lambda (_stx3863_ _src3864_)
      (if (let ((_$e3866_ (##structure-instance-of? _stx3863_ 'gerbil#AST::t)))
            (if _$e3866_ _$e3866_ (not _src3864_)))
          _stx3863_
          (##structure AST::t _stx3863_ _src3864_))))
  (define gx#stx-datum?
    (lambda (_stx3861_) (gx#self-quoting? (gx#stx-e _stx3861_))))
  (define gx#self-quoting?
    (lambda (_x3841_)
      (let ((_$e3843_ (boolean? _x3841_)))
        (if _$e3843_
            _$e3843_
            (let ((_$e3846_ (char? _x3841_)))
              (if _$e3846_
                  _$e3846_
                  (let ((_$e3849_ (number? _x3841_)))
                    (if _$e3849_
                        _$e3849_
                        (let ((_$e3852_ (keyword? _x3841_)))
                          (if _$e3852_
                              _$e3852_
                              (let ((_$e3855_ (string? _x3841_)))
                                (if _$e3855_
                                    _$e3855_
                                    (let ((_$e3858_ (eq? _x3841_ '#!void)))
                                      (if _$e3858_
                                          _$e3858_
                                          (dssl-object? _x3841_)))))))))))))))
  (define gx#stx-boolean? (lambda (_e3839_) (boolean? (gx#stx-e _e3839_))))
  (define gx#stx-keyword? (lambda (_e3837_) (keyword? (gx#stx-e _e3837_))))
  (define gx#stx-char? (lambda (_e3835_) (char? (gx#stx-e _e3835_))))
  (define gx#stx-number? (lambda (_e3833_) (number? (gx#stx-e _e3833_))))
  (define gx#stx-fixnum? (lambda (_e3831_) (fixnum? (gx#stx-e _e3831_))))
  (define gx#stx-string? (lambda (_e3829_) (string? (gx#stx-e _e3829_))))
  (define gx#stx-null? (lambda (_e3827_) (null? (gx#stx-e _e3827_))))
  (define gx#stx-pair? (lambda (_e3825_) (pair? (gx#stx-e _e3825_))))
  (define gx#stx-list?
    (lambda (_e3785_)
      (let ((_g37863795_ (gx#stx-e _e3785_)))
        (let ((_E37893799_
               (lambda () (error '"No clause matching" _g37863795_))))
          (let ((_try-match37883810_
                 (lambda ()
                   (let ((_K37903805_
                          (lambda (_tail3803_) (null? _tail3803_))))
                     (let ((_tail3808_ _g37863795_)) (null? _tail3808_))))))
            (let ((_K37913815_
                   (lambda (_rest3813_) (gx#stx-list? _rest3813_))))
              (if (##pair? _g37863795_)
                  (let ((_hd37923818_ (##car _g37863795_))
                        (_tl37933820_ (##cdr _g37863795_)))
                    (let ((_rest3823_ _tl37933820_))
                      (gx#stx-list? _rest3823_)))
                  (_try-match37883810_))))))))
  (define gx#stx-pair/null?
    (lambda (_e3778_)
      (let ((_e3780_ (gx#stx-e _e3778_)))
        (let ((_$e3782_ (pair? _e3780_)))
          (if _$e3782_ _$e3782_ (null? _e3780_))))))
  (define gx#stx-vector? (lambda (_e3776_) (vector? (gx#stx-e _e3776_))))
  (define gx#stx-box? (lambda (_e3774_) (box? (gx#stx-e _e3774_))))
  (define gx#stx-eq?
    (lambda (_x3771_ _y3772_) (eq? (gx#stx-e _x3771_) (gx#stx-e _y3772_))))
  (define gx#stx-eqv?
    (lambda (_x3768_ _y3769_) (eqv? (gx#stx-e _x3768_) (gx#stx-e _y3769_))))
  (define gx#stx-equal?
    (lambda (_x3765_ _y3766_) (equal? (gx#stx-e _x3765_) (gx#stx-e _y3766_))))
  (define gx#stx-false? (lambda (_x3763_) (not (gx#stx-e _x3763_))))
  (define gx#stx-identifier
    (lambda (_template3760_ . _args3761_)
      (gx#datum->syntax__opt-lambda3947
       _template3760_
       (apply make-symbol (map gx#stx-e _args3761_))
       (gx#stx-source _template3760_))))
  (define gx#stx-identifier-marks
    (lambda (_stx3756_)
      (let ((_stx3758_ (gx#stx-unwrap__0 _stx3756_)))
        (if (##structure-direct-instance-of? _stx3758_ 'gx#identifier-wrap::t)
            (##structure-ref _stx3758_ '3 gx#identifier-wrap::t '#f)
            (##structure-ref _stx3758_ '4 gx#syntax-quote::t '#f)))))
  (define gx#stx-identifier-context
    (lambda (_stx3752_)
      (let ((_stx3754_ (gx#stx-unwrap__0 _stx3752_)))
        (if (gx#identifier-quote? _stx3754_)
            (##structure-ref _stx3754_ '3 gx#syntax-quote::t '#f)
            '#f))))
  (define gx#identifier-list?
    (lambda (_stx3707_)
      (let ((_g37083718_ (gx#stx-e _stx3707_)))
        (let ((_E37123722_
               (lambda () (error '"No clause matching" _g37083718_))))
          (let ((_else37113726_ (lambda () '#f)))
            (let ((_try-match37103734_
                   (lambda ()
                     (let ((_K37133731_ (lambda () '#t)))
                       (if (##null? _g37083718_)
                           (_K37133731_)
                           (_else37113726_))))))
              (let ((_K37143740_
                     (lambda (_rest3737_ _hd3738_)
                       (if (gx#identifier? _hd3738_)
                           (gx#identifier-list? _rest3737_)
                           '#f))))
                (if (##pair? _g37083718_)
                    (let ((_hd37153743_ (##car _g37083718_))
                          (_tl37163745_ (##cdr _g37083718_)))
                      (let ((_hd3748_ _hd37153743_))
                        (let ((_rest3750_ _tl37163745_))
                          (_K37143740_ _rest3750_ _hd3748_))))
                    (_try-match37103734_)))))))))
  (begin
    (define gx#genident__opt-lambda3682
      (lambda (_e3684_ _src3685_)
        (gx#stx-wrap-source
         (gensym (let ((_e3687_ (gx#stx-e _e3684_)))
                   (if (interned-symbol? _e3687_) _e3687_ 'g)))
         (let ((_$e3689_ (gx#stx-source _e3684_)))
           (if _$e3689_ _$e3689_ _src3685_)))))
    (begin
      (define gx#genident__0
        (lambda ()
          (let ((_e3696_ 'g))
            (let ((_src3698_ '#f))
              (gx#genident__opt-lambda3682 _e3696_ _src3698_)))))
      (define gx#genident__1
        (lambda (_e3700_)
          (let ((_src3702_ '#f))
            (gx#genident__opt-lambda3682 _e3700_ _src3702_))))
      (define gx#genident
        (lambda _g4007_
          (let ((_g4006_ (length _g4007_)))
            (cond ((fx= _g4006_ 0) (apply gx#genident__0 _g4007_))
                  ((fx= _g4006_ 1) (apply gx#genident__1 _g4007_))
                  ((fx= _g4006_ 2) (apply gx#genident__opt-lambda3682 _g4007_))
                  (else (error "No clause matching arguments" _g4007_))))))))
  (define gx#gentemps
    (lambda (_stx-lst3681_) (gx#stx-map1 gx#genident _stx-lst3681_)))
  (define gx#syntax->list (lambda (_stx3679_) (gx#stx-map1 values _stx3679_)))
  (define gx#stx-car (lambda (_stx3677_) (car (gx#syntax-e _stx3677_))))
  (define gx#stx-cdr (lambda (_stx3675_) (cdr (gx#syntax-e _stx3675_))))
  (define gx#stx-length
    (lambda (_stx3638_)
      ((letrec ((_lp3640_
                 (lambda (_rest3642_ _n3643_)
                   (let ((_g36443652_ (gx#stx-e _rest3642_)))
                     (let ((_E36473656_
                            (lambda ()
                              (error '"No clause matching" _g36443652_))))
                       (let ((_else36463660_ (lambda () _n3643_)))
                         (let ((_K36483665_
                                (lambda (_rest3663_)
                                  (_lp3640_ _rest3663_ (fx+ _n3643_ '1)))))
                           (if (##pair? _g36443652_)
                               (let ((_hd36493668_ (##car _g36443652_))
                                     (_tl36503670_ (##cdr _g36443652_)))
                                 (let ((_rest3673_ _tl36503670_))
                                   (_K36483665_ _rest3673_)))
                               (_else36463660_)))))))))
         _lp3640_)
       _stx3638_
       '0)))
  (define gx#stx-for-each
    (lambda _g4009_
      (let ((_g4008_ (length _g4009_)))
        (cond ((fx= _g4008_ 2) (apply gx#stx-for-each1 _g4009_))
              ((fx= _g4008_ 3) (apply gx#stx-for-each2 _g4009_))
              (else (error "No clause matching arguments" _g4009_))))))
  (define gx#stx-for-each1
    (lambda (_f3581_ _stx3582_)
      ((letrec ((_lp3584_
                 (lambda (_rest3586_)
                   (let ((_g35873597_ (gx#syntax-e _rest3586_)))
                     (let ((_E35913601_
                            (lambda ()
                              (error '"No clause matching" _g35873597_))))
                       (let ((_else35903605_ (lambda () (_f3581_ _rest3586_))))
                         (let ((_try-match35893613_
                                (lambda ()
                                  (let ((_K35923610_ (lambda () '#!void)))
                                    (if (##null? _g35873597_)
                                        (_K35923610_)
                                        (_else35903605_))))))
                           (let ((_K35933619_
                                  (lambda (_rest3616_ _hd3617_)
                                    (begin
                                      (_f3581_ _hd3617_)
                                      (_lp3584_ _rest3616_)))))
                             (if (##pair? _g35873597_)
                                 (let ((_hd35943622_ (##car _g35873597_))
                                       (_tl35953624_ (##cdr _g35873597_)))
                                   (let ((_hd3627_ _hd35943622_))
                                     (let ((_rest3629_ _tl35953624_))
                                       (_K35933619_ _rest3629_ _hd3627_))))
                                 (_try-match35893613_))))))))))
         _lp3584_)
       _stx3582_)))
  (define gx#stx-for-each2
    (lambda (_f3486_ _xstx3487_ _ystx3488_)
      ((letrec ((_lp3490_
                 (lambda (_xrest3492_ _yrest3493_)
                   (let ((_g34943504_ (gx#syntax-e _xrest3492_)))
                     (let ((_E34983508_
                            (lambda ()
                              (error '"No clause matching" _g34943504_))))
                       (let ((_else34973512_ (lambda () '#!void)))
                         (let ((_try-match34963535_
                                (lambda ()
                                  (let ((_K34993532_
                                         (lambda ()
                                           (let ((_yrest35163521_ _yrest3493_))
                                             (let ((_E35183525_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _yrest35163521_))))
                                               (let ((_K35193529_
                                                      (lambda ()
                                                        (_f3486_ _xrest3492_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _yrest3493_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (not (gx#stx-null?
                                                           _yrest35163521_))
                                                     (_K35193529_)
                                                     (_E35183525_))))))))
                                    (if (not (null? _g34943504_))
                                        (_K34993532_)
                                        (_else34973512_))))))
                           (let ((_K35003569_
                                  (lambda (_xrest3538_ _xhd3539_)
                                    (let ((_g35403547_
                                           (gx#syntax-e _yrest3493_)))
                                      (let ((_E35423551_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _g35403547_))))
                                        (let ((_K35433557_
                                               (lambda (_yrest3554_ _yhd3555_)
                                                 (begin
                                                   (_f3486_ _xhd3539_
                                                            _yhd3555_)
                                                   (_lp3490_
                                                    _xrest3538_
                                                    _yrest3554_)))))
                                          (if (##pair? _g35403547_)
                                              (let ((_hd35443560_
                                                     (##car _g35403547_))
                                                    (_tl35453562_
                                                     (##cdr _g35403547_)))
                                                (let ((_yhd3565_ _hd35443560_))
                                                  (let ((_yrest3567_
                                                         _tl35453562_))
                                                    (_K35433557_
                                                     _yrest3567_
                                                     _yhd3565_))))
                                              (_E35423551_))))))))
                             (if (##pair? _g34943504_)
                                 (let ((_hd35013572_ (##car _g34943504_))
                                       (_tl35023574_ (##cdr _g34943504_)))
                                   (let ((_xhd3577_ _hd35013572_))
                                     (let ((_xrest3579_ _tl35023574_))
                                       (_K35003569_ _xrest3579_ _xhd3577_))))
                                 (_try-match34963535_))))))))))
         _lp3490_)
       _xstx3487_
       _ystx3488_)))
  (define gx#stx-map
    (lambda _g4011_
      (let ((_g4010_ (length _g4011_)))
        (cond ((fx= _g4010_ 2) (apply gx#stx-map1 _g4011_))
              ((fx= _g4010_ 3) (apply gx#stx-map2 _g4011_))
              (else (error "No clause matching arguments" _g4011_))))))
  (define gx#stx-map1
    (lambda (_f3429_ _stx3430_)
      ((letrec ((_recur3432_
                 (lambda (_rest3434_)
                   (let ((_g34353445_ (gx#syntax-e _rest3434_)))
                     (let ((_E34393449_
                            (lambda ()
                              (error '"No clause matching" _g34353445_))))
                       (let ((_else34383453_ (lambda () (_f3429_ _rest3434_))))
                         (let ((_try-match34373461_
                                (lambda ()
                                  (let ((_K34403458_ (lambda () '())))
                                    (if (##null? _g34353445_)
                                        (_K34403458_)
                                        (_else34383453_))))))
                           (let ((_K34413467_
                                  (lambda (_rest3464_ _hd3465_)
                                    (cons (_f3429_ _hd3465_)
                                          (_recur3432_ _rest3464_)))))
                             (if (##pair? _g34353445_)
                                 (let ((_hd34423470_ (##car _g34353445_))
                                       (_tl34433472_ (##cdr _g34353445_)))
                                   (let ((_hd3475_ _hd34423470_))
                                     (let ((_rest3477_ _tl34433472_))
                                       (_K34413467_ _rest3477_ _hd3475_))))
                                 (_try-match34373461_))))))))))
         _recur3432_)
       _stx3430_)))
  (define gx#stx-map2
    (lambda (_f3334_ _xstx3335_ _ystx3336_)
      ((letrec ((_recur3338_
                 (lambda (_xrest3340_ _yrest3341_)
                   (let ((_g33423352_ (gx#syntax-e _xrest3340_)))
                     (let ((_E33463356_
                            (lambda ()
                              (error '"No clause matching" _g33423352_))))
                       (let ((_else33453360_ (lambda () '())))
                         (let ((_try-match33443383_
                                (lambda ()
                                  (let ((_K33473380_
                                         (lambda ()
                                           (let ((_yrest33643369_ _yrest3341_))
                                             (let ((_E33663373_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _yrest33643369_))))
                                               (let ((_K33673377_
                                                      (lambda ()
                                                        (_f3334_ _xrest3340_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _yrest3341_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (not (gx#stx-null?
                                                           _yrest33643369_))
                                                     (_K33673377_)
                                                     (_E33663373_))))))))
                                    (if (not (null? _g33423352_))
                                        (_K33473380_)
                                        (_else33453360_))))))
                           (let ((_K33483417_
                                  (lambda (_xrest3386_ _xhd3387_)
                                    (let ((_g33883395_
                                           (gx#syntax-e _yrest3341_)))
                                      (let ((_E33903399_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _g33883395_))))
                                        (let ((_K33913405_
                                               (lambda (_yrest3402_ _yhd3403_)
                                                 (cons (_f3334_ _xhd3387_
                                                                _yhd3403_)
                                                       (_recur3338_
                                                        _xrest3386_
                                                        _yrest3402_)))))
                                          (if (##pair? _g33883395_)
                                              (let ((_hd33923408_
                                                     (##car _g33883395_))
                                                    (_tl33933410_
                                                     (##cdr _g33883395_)))
                                                (let ((_yhd3413_ _hd33923408_))
                                                  (let ((_yrest3415_
                                                         _tl33933410_))
                                                    (_K33913405_
                                                     _yrest3415_
                                                     _yhd3413_))))
                                              (_E33903399_))))))))
                             (if (##pair? _g33423352_)
                                 (let ((_hd33493420_ (##car _g33423352_))
                                       (_tl33503422_ (##cdr _g33423352_)))
                                   (let ((_xhd3425_ _hd33493420_))
                                     (let ((_xrest3427_ _tl33503422_))
                                       (_K33483417_ _xrest3427_ _xhd3425_))))
                                 (_try-match33443383_))))))))))
         _recur3338_)
       _xstx3335_
       _ystx3336_)))
  (define gx#stx-andmap
    (lambda (_f3284_ _stx3285_)
      ((letrec ((_lp3287_
                 (lambda (_rest3289_)
                   (let ((_g32903300_ (gx#syntax-e _rest3289_)))
                     (let ((_E32943304_
                            (lambda ()
                              (error '"No clause matching" _g32903300_))))
                       (let ((_else32933308_ (lambda () (_f3284_ _rest3289_))))
                         (let ((_try-match32923316_
                                (lambda ()
                                  (let ((_K32953313_ (lambda () '#t)))
                                    (if (##null? _g32903300_)
                                        (_K32953313_)
                                        (_else32933308_))))))
                           (let ((_K32963322_
                                  (lambda (_rest3319_ _hd3320_)
                                    (if (_f3284_ _hd3320_)
                                        (_lp3287_ _rest3319_)
                                        '#f))))
                             (if (##pair? _g32903300_)
                                 (let ((_hd32973325_ (##car _g32903300_))
                                       (_tl32983327_ (##cdr _g32903300_)))
                                   (let ((_hd3330_ _hd32973325_))
                                     (let ((_rest3332_ _tl32983327_))
                                       (_K32963322_ _rest3332_ _hd3330_))))
                                 (_try-match32923316_))))))))))
         _lp3287_)
       _stx3285_)))
  (define gx#stx-ormap
    (lambda (_f3231_ _stx3232_)
      ((letrec ((_lp3234_
                 (lambda (_rest3236_)
                   (let ((_g32373247_ (gx#syntax-e _rest3236_)))
                     (let ((_E32413251_
                            (lambda ()
                              (error '"No clause matching" _g32373247_))))
                       (let ((_else32403255_ (lambda () (_f3231_ _rest3236_))))
                         (let ((_try-match32393263_
                                (lambda ()
                                  (let ((_K32423260_ (lambda () '#f)))
                                    (if (##null? _g32373247_)
                                        (_K32423260_)
                                        (_else32403255_))))))
                           (let ((_K32433272_
                                  (lambda (_rest3266_ _hd3267_)
                                    (let ((_$e3269_ (_f3231_ _hd3267_)))
                                      (if _$e3269_
                                          _$e3269_
                                          (_lp3234_ _rest3266_))))))
                             (if (##pair? _g32373247_)
                                 (let ((_hd32443275_ (##car _g32373247_))
                                       (_tl32453277_ (##cdr _g32373247_)))
                                   (let ((_hd3280_ _hd32443275_))
                                     (let ((_rest3282_ _tl32453277_))
                                       (_K32433272_ _rest3282_ _hd3280_))))
                                 (_try-match32393263_))))))))))
         _lp3234_)
       _stx3232_)))
  (define gx#stx-foldl
    (lambda (_f3179_ _iv3180_ _stx3181_)
      ((letrec ((_lp3183_
                 (lambda (_r3185_ _rest3186_)
                   (let ((_g31873197_ (gx#syntax-e _rest3186_)))
                     (let ((_E31913201_
                            (lambda ()
                              (error '"No clause matching" _g31873197_))))
                       (let ((_else31903205_
                              (lambda () (_f3179_ _rest3186_ _r3185_))))
                         (let ((_try-match31893213_
                                (lambda ()
                                  (let ((_K31923210_ (lambda () _r3185_)))
                                    (if (##null? _g31873197_)
                                        (_K31923210_)
                                        (_else31903205_))))))
                           (let ((_K31933219_
                                  (lambda (_rest3216_ _hd3217_)
                                    (_lp3183_
                                     (_f3179_ _hd3217_ _r3185_)
                                     _rest3216_))))
                             (if (##pair? _g31873197_)
                                 (let ((_hd31943222_ (##car _g31873197_))
                                       (_tl31953224_ (##cdr _g31873197_)))
                                   (let ((_hd3227_ _hd31943222_))
                                     (let ((_rest3229_ _tl31953224_))
                                       (_K31933219_ _rest3229_ _hd3227_))))
                                 (_try-match31893213_))))))))))
         _lp3183_)
       _iv3180_
       _stx3181_)))
  (define gx#stx-foldr
    (lambda (_f3128_ _iv3129_ _stx3130_)
      ((letrec ((_recur3132_
                 (lambda (_rest3134_)
                   (let ((_g31353145_ (gx#syntax-e _rest3134_)))
                     (let ((_E31393149_
                            (lambda ()
                              (error '"No clause matching" _g31353145_))))
                       (let ((_else31383153_
                              (lambda () (_f3128_ _rest3134_ _iv3129_))))
                         (let ((_try-match31373161_
                                (lambda ()
                                  (let ((_K31403158_ (lambda () _iv3129_)))
                                    (if (##null? _g31353145_)
                                        (_K31403158_)
                                        (_else31383153_))))))
                           (let ((_K31413167_
                                  (lambda (_rest3164_ _hd3165_)
                                    (_f3128_ _hd3165_
                                             (_recur3132_ _rest3164_)))))
                             (if (##pair? _g31353145_)
                                 (let ((_hd31423170_ (##car _g31353145_))
                                       (_tl31433172_ (##cdr _g31353145_)))
                                   (let ((_hd3175_ _hd31423170_))
                                     (let ((_rest3177_ _tl31433172_))
                                       (_K31413167_ _rest3177_ _hd3175_))))
                                 (_try-match31373161_))))))))))
         _recur3132_)
       _stx3130_)))
  (define gx#stx-reverse
    (lambda (_stx3126_) (gx#stx-foldl cons '() _stx3126_)))
  (define gx#stx-last
    (lambda (_stx3087_)
      ((letrec ((_lp3089_
                 (lambda (_rest3091_)
                   (let ((_g30923100_ (gx#syntax-e _rest3091_)))
                     (let ((_E30953104_
                            (lambda ()
                              (error '"No clause matching" _g30923100_))))
                       (let ((_else30943108_ (lambda () _rest3091_)))
                         (let ((_K30963114_
                                (lambda (_rest3111_ _hd3112_)
                                  (if (gx#stx-null? _rest3111_)
                                      _hd3112_
                                      (_lp3089_ _rest3111_)))))
                           (if (##pair? _g30923100_)
                               (let ((_hd30973117_ (##car _g30923100_))
                                     (_tl30983119_ (##cdr _g30923100_)))
                                 (let ((_hd3122_ _hd30973117_))
                                   (let ((_rest3124_ _tl30983119_))
                                     (_K30963114_ _rest3124_ _hd3122_))))
                               (_else30943108_)))))))))
         _lp3089_)
       _stx3087_)))
  (define gx#stx-last-pair
    (lambda (_stx3056_)
      ((letrec ((_lp3058_
                 (lambda (_hd3060_)
                   (let ((_g30613068_ (gx#syntax-e _hd3060_)))
                     (let ((_E30633072_
                            (lambda ()
                              (error '"No clause matching" _g30613068_))))
                       (let ((_K30643077_
                              (lambda (_rest3075_)
                                (if (gx#stx-pair? _rest3075_)
                                    (_lp3058_ _rest3075_)
                                    _hd3060_))))
                         (if (##pair? _g30613068_)
                             (let ((_hd30653080_ (##car _g30613068_))
                                   (_tl30663082_ (##cdr _g30613068_)))
                               (let ((_rest3085_ _tl30663082_))
                                 (_K30643077_ _rest3085_)))
                             (_E30633072_))))))))
         _lp3058_)
       _stx3056_)))
  (define gx#stx-list-tail
    (lambda (_stx3023_ _k3024_)
      ((letrec ((_lp3026_
                 (lambda (_rest3028_ _k3029_)
                   (if (fxpositive? _k3029_)
                       (let ((_g30303037_ (gx#syntax-e _rest3028_)))
                         (let ((_E30323041_
                                (lambda ()
                                  (error '"No clause matching" _g30303037_))))
                           (let ((_K30333046_
                                  (lambda (_rest3044_)
                                    (_lp3026_ _rest3044_ (fx- _k3029_ '1)))))
                             (if (##pair? _g30303037_)
                                 (let ((_hd30343049_ (##car _g30303037_))
                                       (_tl30353051_ (##cdr _g30303037_)))
                                   (let ((_rest3054_ _tl30353051_))
                                     (_K30333046_ _rest3054_)))
                                 (_E30323041_)))))
                       _rest3028_))))
         _lp3026_)
       _stx3023_
       _k3024_)))
  (define gx#stx-list-ref
    (lambda (_stx3020_ _k3021_)
      (gx#stx-car (gx#stx-list-tail _stx3020_ _k3021_))))
  (begin
    (define gx#stx-plist?__opt-lambda2928
      (lambda (_stx2930_ _key?2931_)
        ((letrec ((_lp2933_
                   (lambda (_rest2935_)
                     (let ((_g29362946_ (gx#stx-e _rest2935_)))
                       (let ((_E29402950_
                              (lambda ()
                                (error '"No clause matching" _g29362946_))))
                         (let ((_else29392954_ (lambda () '#f)))
                           (let ((_try-match29382962_
                                  (lambda ()
                                    (let ((_K29412959_ (lambda () '#t)))
                                      (if (##null? _g29362946_)
                                          (_K29412959_)
                                          (_else29392954_))))))
                             (let ((_K29422998_
                                    (lambda (_rest2965_ _hd2966_)
                                      (if (_key?2931_ _hd2966_)
                                          (let ((_g29672975_
                                                 (gx#stx-e _rest2965_)))
                                            (let ((_E29702979_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _g29672975_))))
                                              (let ((_else29692983_
                                                     (lambda () '#f)))
                                                (let ((_K29712988_
                                                       (lambda (_rest2986_)
                                                         (_lp2933_
                                                          _rest2986_))))
                                                  (if (##pair? _g29672975_)
                                                      (let ((_hd29722991_
                                                             (##car _g29672975_))
                                                            (_tl29732993_
                                                             (##cdr _g29672975_)))
                                                        (let ((_rest2996_
                                                               _tl29732993_))
                                                          (_K29712988_
                                                           _rest2996_)))
                                                      (_else29692983_))))))
                                          '#f))))
                               (if (##pair? _g29362946_)
                                   (let ((_hd29433001_ (##car _g29362946_))
                                         (_tl29443003_ (##cdr _g29362946_)))
                                     (let ((_hd3006_ _hd29433001_))
                                       (let ((_rest3008_ _tl29443003_))
                                         (_K29422998_ _rest3008_ _hd3006_))))
                                   (_try-match29382962_))))))))))
           _lp2933_)
         _stx2930_)))
    (begin
      (define gx#stx-plist?__0
        (lambda (_stx3013_)
          (let ((_key?3015_ gx#stx-keyword?))
            (gx#stx-plist?__opt-lambda2928 _stx3013_ _key?3015_))))
      (define gx#stx-plist?
        (lambda _g4013_
          (let ((_g4012_ (length _g4013_)))
            (cond ((fx= _g4012_ 1) (apply gx#stx-plist?__0 _g4013_))
                  ((fx= _g4012_ 2)
                   (apply gx#stx-plist?__opt-lambda2928 _g4013_))
                  (else (error "No clause matching arguments" _g4013_))))))))
  (begin
    (define gx#stx-getq__opt-lambda2846
      (lambda (_key2848_ _stx2849_ _key=?2850_)
        ((letrec ((_lp2852_
                   (lambda (_rest2854_)
                     (let ((_g28552863_ (gx#syntax-e _rest2854_)))
                       (let ((_E28582867_
                              (lambda ()
                                (error '"No clause matching" _g28552863_))))
                         (let ((_else28572871_ (lambda () '#f)))
                           (let ((_K28592905_
                                  (lambda (_rest2874_ _hd2875_)
                                    (let ((_g28762883_
                                           (gx#syntax-e _rest2874_)))
                                      (let ((_E28782887_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _g28762883_))))
                                        (let ((_K28792893_
                                               (lambda (_rest2890_ _val2891_)
                                                 (if (_key=?2850_
                                                      _hd2875_
                                                      _key2848_)
                                                     _val2891_
                                                     (_lp2852_ _rest2890_)))))
                                          (if (##pair? _g28762883_)
                                              (let ((_hd28802896_
                                                     (##car _g28762883_))
                                                    (_tl28812898_
                                                     (##cdr _g28762883_)))
                                                (let ((_val2901_ _hd28802896_))
                                                  (let ((_rest2903_
                                                         _tl28812898_))
                                                    (_K28792893_
                                                     _rest2903_
                                                     _val2901_))))
                                              (_E28782887_))))))))
                             (if (##pair? _g28552863_)
                                 (let ((_hd28602908_ (##car _g28552863_))
                                       (_tl28612910_ (##cdr _g28552863_)))
                                   (let ((_hd2913_ _hd28602908_))
                                     (let ((_rest2915_ _tl28612910_))
                                       (_K28592905_ _rest2915_ _hd2913_))))
                                 (_else28572871_)))))))))
           _lp2852_)
         _stx2849_)))
    (begin
      (define gx#stx-getq__0
        (lambda (_key2920_ _stx2921_)
          (let ((_key=?2923_ gx#stx-eq?))
            (gx#stx-getq__opt-lambda2846 _key2920_ _stx2921_ _key=?2923_))))
      (define gx#stx-getq
        (lambda _g4015_
          (let ((_g4014_ (length _g4015_)))
            (cond ((fx= _g4014_ 2) (apply gx#stx-getq__0 _g4015_))
                  ((fx= _g4014_ 3) (apply gx#stx-getq__opt-lambda2846 _g4015_))
                  (else (error "No clause matching arguments" _g4015_)))))))))
