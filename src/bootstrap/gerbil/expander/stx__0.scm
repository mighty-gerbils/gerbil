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
    (lambda _$args3996_
      (apply make-struct-instance gx#identifier-wrap::t _$args3996_)))
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
    (lambda _$args3993_
      (apply make-struct-instance gx#syntax-wrap::t _$args3993_)))
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
    (lambda _$args3990_
      (apply make-struct-instance gx#syntax-quote::t _$args3990_)))
  (define gx#syntax-quote-context
    (make-struct-field-accessor gx#syntax-quote::t '0))
  (define gx#syntax-quote-marks
    (make-struct-field-accessor gx#syntax-quote::t '1))
  (define gx#syntax-quote-context-set!
    (make-struct-field-mutator gx#syntax-quote::t '0))
  (define gx#syntax-quote-marks-set!
    (make-struct-field-mutator gx#syntax-quote::t '1))
  (define gx#identifier? (lambda (_stx3988_) (symbol? (gx#stx-e _stx3988_))))
  (define gx#identifier-quote?
    (lambda (_stx3986_)
      (if (##structure-direct-instance-of? _stx3986_ 'gx#syntax-quote::t)
          (symbol? (##structure-ref _stx3986_ '1 AST::t '#f))
          '#f)))
  (define gx#sealed-syntax?
    (lambda (_stx3981_)
      (let ((_$e3983_
             (##structure-direct-instance-of? _stx3981_ 'gx#syntax-quote::t)))
        (if _$e3983_
            _$e3983_
            (if (##structure-instance-of? _stx3981_ 'gerbil#AST::t)
                (gx#sealed-syntax? (##structure-ref _stx3981_ '1 AST::t '#f))
                '#f)))))
  (define gx#syntax-e
    (lambda (_stx3977_)
      (let ((_stx3979_ (gx#stx-unwrap__0 _stx3977_)))
        (if (##structure-instance-of? _stx3979_ 'gerbil#AST::t)
            (##structure-ref _stx3979_ '1 AST::t '#f)
            _stx3979_))))
  (define gx#syntax->datum
    (lambda (_stx3975_)
      (if (##structure-instance-of? _stx3975_ 'gerbil#AST::t)
          (gx#syntax->datum (##structure-ref _stx3975_ '1 AST::t '#f))
          (if (pair? _stx3975_)
              (cons (gx#syntax->datum (car _stx3975_))
                    (gx#syntax->datum (cdr _stx3975_)))
              (if (vector? _stx3975_)
                  (vector-map gx#syntax->datum _stx3975_)
                  (if (box? _stx3975_)
                      (box (gx#syntax->datum (unbox _stx3975_)))
                      _stx3975_))))))
  (begin
    (define gx#datum->syntax__opt-lambda3943
      (lambda (_stx3945_ _datum3946_ _src3947_)
        (let ((_wrap-datum3949_
               (lambda (_e3956_ _marks3957_)
                 ((letrec ((_recur3959_
                            (lambda (_e3961_)
                              (if (symbol? _e3961_)
                                  (##structure
                                   gx#identifier-wrap::t
                                   _e3961_
                                   _src3947_
                                   _marks3957_)
                                  (if (pair? _e3961_)
                                      (cons (_recur3959_ (car _e3961_))
                                            (_recur3959_ (cdr _e3961_)))
                                      (if (vector? _e3961_)
                                          (vector-map _recur3959_ _e3961_)
                                          (if (box? _e3961_)
                                              (box (_recur3959_
                                                    (unbox _e3961_)))
                                              _e3961_)))))))
                    _recur3959_)
                  _e3956_))))
          (let ((_wrap-outer3950_
                 (lambda (_e3954_)
                   (if (##structure-instance-of? _e3954_ 'gerbil#AST::t)
                       _e3954_
                       (##structure AST::t _e3954_ _src3947_)))))
            (if (##structure-instance-of? _datum3946_ 'gerbil#AST::t)
                _datum3946_
                (if (not _stx3945_)
                    (##structure AST::t _datum3946_ _src3947_)
                    (if (gx#identifier? _stx3945_)
                        (let ((_stx3952_ (gx#stx-unwrap__0 _stx3945_)))
                          (if (gx#identifier-quote? _stx3952_)
                              (##structure
                               gx#syntax-quote::t
                               _datum3946_
                               _src3947_
                               (##structure-ref
                                _stx3952_
                                '3
                                gx#syntax-quote::t
                                '#f)
                               (##structure-ref
                                _stx3952_
                                '4
                                gx#syntax-quote::t
                                '#f))
                              (_wrap-outer3950_
                               (_wrap-datum3949_
                                _datum3946_
                                (##structure-ref
                                 _stx3952_
                                 '3
                                 gx#identifier-wrap::t
                                 '#f)))))
                        (error '"Bad template syntax; expected identifier"
                               _stx3945_))))))))
    (begin
      (define gx#datum->syntax__0
        (lambda (_stx3966_ _datum3967_)
          (let ((_src3969_ '#f))
            (gx#datum->syntax__opt-lambda3943
             _stx3966_
             _datum3967_
             _src3969_))))
      (define gx#datum->syntax
        (lambda _g3999_
          (let ((_g3998_ (length _g3999_)))
            (cond ((fx= _g3998_ 2) (apply gx#datum->syntax__0 _g3999_))
                  ((fx= _g3998_ 3)
                   (apply gx#datum->syntax__opt-lambda3943 _g3999_))
                  (else (error "No clause matching arguments" _g3999_))))))))
  (begin
    (define gx#stx-unwrap__opt-lambda3919
      (lambda (_stx3921_ _marks3922_)
        ((letrec ((_lp3924_
                   (lambda (_e3926_ _marks3927_ _src3928_)
                     (if (##structure-direct-instance-of?
                          _e3926_
                          'gx#syntax-wrap::t)
                         (_lp3924_
                          (##structure-ref _e3926_ '1 AST::t '#f)
                          (gx#apply-mark
                           (##structure-ref _e3926_ '3 gx#syntax-wrap::t '#f)
                           _marks3927_)
                          (##structure-ref _e3926_ '2 AST::t '#f))
                         (if (##structure-direct-instance-of?
                              _e3926_
                              'gx#identifier-wrap::t)
                             (if (null? _marks3927_)
                                 _e3926_
                                 (##structure
                                  gx#identifier-wrap::t
                                  (##structure-ref _e3926_ '1 AST::t '#f)
                                  (##structure-ref _e3926_ '2 AST::t '#f)
                                  (foldl1 gx#apply-mark
                                          (##structure-ref
                                           _e3926_
                                           '3
                                           gx#identifier-wrap::t
                                           '#f)
                                          _marks3927_)))
                             (if (##structure-direct-instance-of?
                                  _e3926_
                                  'gx#syntax-quote::t)
                                 _e3926_
                                 (if (##structure-instance-of?
                                      _e3926_
                                      'gerbil#AST::t)
                                     (_lp3924_
                                      (##structure-ref _e3926_ '1 AST::t '#f)
                                      _marks3927_
                                      (##structure-ref _e3926_ '2 AST::t '#f))
                                     (if (symbol? _e3926_)
                                         (##structure
                                          gx#identifier-wrap::t
                                          _e3926_
                                          _src3928_
                                          (reverse _marks3927_))
                                         (if (null? _marks3927_)
                                             _e3926_
                                             (if (pair? _e3926_)
                                                 (cons (gx#stx-wrap
                                                        (car _e3926_)
                                                        _marks3927_)
                                                       (gx#stx-wrap
                                                        (cdr _e3926_)
                                                        _marks3927_))
                                                 (if (vector? _e3926_)
                                                     (vector-map
                                                      (lambda (_g39293931_)
                                                        (gx#stx-wrap
                                                         _g39293931_
                                                         _marks3927_))
                                                      _e3926_)
                                                     (if (box? _e3926_)
                                                         (box (gx#stx-wrap
                                                               (unbox _e3926_)
                                                               _marks3927_))
                                                         _e3926_))))))))))))
           _lp3924_)
         _stx3921_
         _marks3922_
         (gx#stx-source _stx3921_))))
    (begin
      (define gx#stx-unwrap__0
        (lambda (_stx3937_)
          (let ((_marks3939_ '()))
            (gx#stx-unwrap__opt-lambda3919 _stx3937_ _marks3939_))))
      (define gx#stx-unwrap
        (lambda _g4001_
          (let ((_g4000_ (length _g4001_)))
            (cond ((fx= _g4000_ 1) (apply gx#stx-unwrap__0 _g4001_))
                  ((fx= _g4000_ 2)
                   (apply gx#stx-unwrap__opt-lambda3919 _g4001_))
                  (else (error "No clause matching arguments" _g4001_))))))))
  (define gx#stx-wrap
    (lambda (_stx3914_ _marks3915_)
      (foldl1 (lambda (_mark3917_ _stx3918_)
                (gx#stx-apply-mark _stx3918_ _mark3917_))
              _stx3914_
              _marks3915_)))
  (define gx#stx-rewrap
    (lambda (_stx3908_ _marks3909_)
      (foldr1 (lambda (_mark3911_ _stx3912_)
                (gx#stx-apply-mark _stx3912_ _mark3911_))
              _stx3908_
              _marks3909_)))
  (define gx#stx-apply-mark
    (lambda (_stx3905_ _mark3906_)
      (if (##structure-direct-instance-of? _stx3905_ 'gx#syntax-quote::t)
          _stx3905_
          (if (if (##structure-direct-instance-of?
                   _stx3905_
                   'gx#syntax-wrap::t)
                  (eq? _mark3906_
                       (##structure-ref _stx3905_ '3 gx#syntax-wrap::t '#f))
                  '#f)
              (##structure-ref _stx3905_ '1 AST::t '#f)
              (##structure
               gx#syntax-wrap::t
               _stx3905_
               (gx#stx-source _stx3905_)
               _mark3906_)))))
  (define gx#apply-mark
    (lambda (_mark3869_ _marks3870_)
      (let ((_marks38713879_ _marks3870_))
        (let ((_E38743883_
               (lambda () (error '"No clause matching" _marks38713879_))))
          (let ((_else38733887_ (lambda () (cons _mark3869_ _marks3870_))))
            (let ((_K38753893_
                   (lambda (_rest3890_ _hd3891_)
                     (if (eq? _mark3869_ _hd3891_)
                         _rest3890_
                         (cons _mark3869_ _marks3870_)))))
              (if (##pair? _marks38713879_)
                  (let ((_hd38763896_ (##car _marks38713879_))
                        (_tl38773898_ (##cdr _marks38713879_)))
                    (let ((_hd3901_ _hd38763896_))
                      (let ((_rest3903_ _tl38773898_))
                        (_K38753893_ _rest3903_ _hd3901_))))
                  (_else38733887_))))))))
  (define gx#stx-e
    (lambda (_stx3867_)
      (if (##structure-instance-of? _stx3867_ 'gerbil#AST::t)
          (gx#stx-e (##structure-ref _stx3867_ '1 AST::t '#f))
          _stx3867_)))
  (define gx#stx-source
    (lambda (_stx3865_)
      (if (##structure-instance-of? _stx3865_ 'gerbil#AST::t)
          (##structure-ref _stx3865_ '2 AST::t '#f)
          '#f)))
  (define gx#stx-wrap-source
    (lambda (_stx3859_ _src3860_)
      (if (let ((_$e3862_ (##structure-instance-of? _stx3859_ 'gerbil#AST::t)))
            (if _$e3862_ _$e3862_ (not _src3860_)))
          _stx3859_
          (##structure AST::t _stx3859_ _src3860_))))
  (define gx#stx-datum?
    (lambda (_stx3857_) (gx#self-quoting? (gx#stx-e _stx3857_))))
  (define gx#self-quoting?
    (lambda (_x3837_)
      (let ((_$e3839_ (boolean? _x3837_)))
        (if _$e3839_
            _$e3839_
            (let ((_$e3842_ (char? _x3837_)))
              (if _$e3842_
                  _$e3842_
                  (let ((_$e3845_ (number? _x3837_)))
                    (if _$e3845_
                        _$e3845_
                        (let ((_$e3848_ (keyword? _x3837_)))
                          (if _$e3848_
                              _$e3848_
                              (let ((_$e3851_ (string? _x3837_)))
                                (if _$e3851_
                                    _$e3851_
                                    (let ((_$e3854_ (eq? _x3837_ '#!void)))
                                      (if _$e3854_
                                          _$e3854_
                                          (dssl-object? _x3837_)))))))))))))))
  (define gx#stx-boolean? (lambda (_e3835_) (boolean? (gx#stx-e _e3835_))))
  (define gx#stx-keyword? (lambda (_e3833_) (keyword? (gx#stx-e _e3833_))))
  (define gx#stx-char? (lambda (_e3831_) (char? (gx#stx-e _e3831_))))
  (define gx#stx-number? (lambda (_e3829_) (number? (gx#stx-e _e3829_))))
  (define gx#stx-fixnum? (lambda (_e3827_) (fixnum? (gx#stx-e _e3827_))))
  (define gx#stx-string? (lambda (_e3825_) (string? (gx#stx-e _e3825_))))
  (define gx#stx-null? (lambda (_e3823_) (null? (gx#stx-e _e3823_))))
  (define gx#stx-pair? (lambda (_e3821_) (pair? (gx#stx-e _e3821_))))
  (define gx#stx-list?
    (lambda (_e3781_)
      (let ((_g37823791_ (gx#stx-e _e3781_)))
        (let ((_E37853795_
               (lambda () (error '"No clause matching" _g37823791_))))
          (let ((_try-match37843806_
                 (lambda ()
                   (let ((_K37863801_
                          (lambda (_tail3799_) (null? _tail3799_))))
                     (let ((_tail3804_ _g37823791_)) (null? _tail3804_))))))
            (let ((_K37873811_
                   (lambda (_rest3809_) (gx#stx-list? _rest3809_))))
              (if (##pair? _g37823791_)
                  (let ((_hd37883814_ (##car _g37823791_))
                        (_tl37893816_ (##cdr _g37823791_)))
                    (let ((_rest3819_ _tl37893816_))
                      (gx#stx-list? _rest3819_)))
                  (_try-match37843806_))))))))
  (define gx#stx-pair/null?
    (lambda (_e3774_)
      (let ((_e3776_ (gx#stx-e _e3774_)))
        (let ((_$e3778_ (pair? _e3776_)))
          (if _$e3778_ _$e3778_ (null? _e3776_))))))
  (define gx#stx-vector? (lambda (_e3772_) (vector? (gx#stx-e _e3772_))))
  (define gx#stx-box? (lambda (_e3770_) (box? (gx#stx-e _e3770_))))
  (define gx#stx-eq?
    (lambda (_x3767_ _y3768_) (eq? (gx#stx-e _x3767_) (gx#stx-e _y3768_))))
  (define gx#stx-eqv?
    (lambda (_x3764_ _y3765_) (eqv? (gx#stx-e _x3764_) (gx#stx-e _y3765_))))
  (define gx#stx-equal?
    (lambda (_x3761_ _y3762_) (equal? (gx#stx-e _x3761_) (gx#stx-e _y3762_))))
  (define gx#stx-false? (lambda (_x3759_) (not (gx#stx-e _x3759_))))
  (define gx#stx-identifier
    (lambda (_template3756_ . _args3757_)
      (gx#datum->syntax__opt-lambda3943
       _template3756_
       (apply make-symbol (map gx#stx-e _args3757_))
       (gx#stx-source _template3756_))))
  (define gx#stx-identifier-marks
    (lambda (_stx3752_)
      (let ((_stx3754_ (gx#stx-unwrap__0 _stx3752_)))
        (if (##structure-direct-instance-of? _stx3754_ 'gx#identifier-wrap::t)
            (##structure-ref _stx3754_ '3 gx#identifier-wrap::t '#f)
            (##structure-ref _stx3754_ '4 gx#syntax-quote::t '#f)))))
  (define gx#stx-identifier-context
    (lambda (_stx3748_)
      (let ((_stx3750_ (gx#stx-unwrap__0 _stx3748_)))
        (if (gx#identifier-quote? _stx3750_)
            (##structure-ref _stx3750_ '3 gx#syntax-quote::t '#f)
            '#f))))
  (define gx#identifier-list?
    (lambda (_stx3703_)
      (let ((_g37043714_ (gx#stx-e _stx3703_)))
        (let ((_E37083718_
               (lambda () (error '"No clause matching" _g37043714_))))
          (let ((_else37073722_ (lambda () '#f)))
            (let ((_try-match37063730_
                   (lambda ()
                     (let ((_K37093727_ (lambda () '#t)))
                       (if (##null? _g37043714_)
                           (_K37093727_)
                           (_else37073722_))))))
              (let ((_K37103736_
                     (lambda (_rest3733_ _hd3734_)
                       (if (gx#identifier? _hd3734_)
                           (gx#identifier-list? _rest3733_)
                           '#f))))
                (if (##pair? _g37043714_)
                    (let ((_hd37113739_ (##car _g37043714_))
                          (_tl37123741_ (##cdr _g37043714_)))
                      (let ((_hd3744_ _hd37113739_))
                        (let ((_rest3746_ _tl37123741_))
                          (_K37103736_ _rest3746_ _hd3744_))))
                    (_try-match37063730_)))))))))
  (begin
    (define gx#genident__opt-lambda3678
      (lambda (_e3680_ _src3681_)
        (gx#stx-wrap-source
         (gensym (let ((_e3683_ (gx#stx-e _e3680_)))
                   (if (interned-symbol? _e3683_) _e3683_ 'g)))
         (let ((_$e3685_ (gx#stx-source _e3680_)))
           (if _$e3685_ _$e3685_ _src3681_)))))
    (begin
      (define gx#genident__0
        (lambda ()
          (let ((_e3692_ 'g))
            (let ((_src3694_ '#f))
              (gx#genident__opt-lambda3678 _e3692_ _src3694_)))))
      (define gx#genident__1
        (lambda (_e3696_)
          (let ((_src3698_ '#f))
            (gx#genident__opt-lambda3678 _e3696_ _src3698_))))
      (define gx#genident
        (lambda _g4003_
          (let ((_g4002_ (length _g4003_)))
            (cond ((fx= _g4002_ 0) (apply gx#genident__0 _g4003_))
                  ((fx= _g4002_ 1) (apply gx#genident__1 _g4003_))
                  ((fx= _g4002_ 2) (apply gx#genident__opt-lambda3678 _g4003_))
                  (else (error "No clause matching arguments" _g4003_))))))))
  (define gx#gentemps
    (lambda (_stx-lst3677_) (gx#stx-map1 gx#genident _stx-lst3677_)))
  (define gx#syntax->list (lambda (_stx3675_) (gx#stx-map1 values _stx3675_)))
  (define gx#stx-car (lambda (_stx3673_) (car (gx#syntax-e _stx3673_))))
  (define gx#stx-cdr (lambda (_stx3671_) (cdr (gx#syntax-e _stx3671_))))
  (define gx#stx-length
    (lambda (_stx3634_)
      ((letrec ((_lp3636_
                 (lambda (_rest3638_ _n3639_)
                   (let ((_g36403648_ (gx#stx-e _rest3638_)))
                     (let ((_E36433652_
                            (lambda ()
                              (error '"No clause matching" _g36403648_))))
                       (let ((_else36423656_ (lambda () _n3639_)))
                         (let ((_K36443661_
                                (lambda (_rest3659_)
                                  (_lp3636_ _rest3659_ (fx+ _n3639_ '1)))))
                           (if (##pair? _g36403648_)
                               (let ((_hd36453664_ (##car _g36403648_))
                                     (_tl36463666_ (##cdr _g36403648_)))
                                 (let ((_rest3669_ _tl36463666_))
                                   (_K36443661_ _rest3669_)))
                               (_else36423656_)))))))))
         _lp3636_)
       _stx3634_
       '0)))
  (define gx#stx-for-each
    (lambda _g4005_
      (let ((_g4004_ (length _g4005_)))
        (cond ((fx= _g4004_ 2) (apply gx#stx-for-each1 _g4005_))
              ((fx= _g4004_ 3) (apply gx#stx-for-each2 _g4005_))
              (else (error "No clause matching arguments" _g4005_))))))
  (define gx#stx-for-each1
    (lambda (_f3577_ _stx3578_)
      ((letrec ((_lp3580_
                 (lambda (_rest3582_)
                   (let ((_g35833593_ (gx#syntax-e _rest3582_)))
                     (let ((_E35873597_
                            (lambda ()
                              (error '"No clause matching" _g35833593_))))
                       (let ((_else35863601_ (lambda () (_f3577_ _rest3582_))))
                         (let ((_try-match35853609_
                                (lambda ()
                                  (let ((_K35883606_ (lambda () '#!void)))
                                    (if (##null? _g35833593_)
                                        (_K35883606_)
                                        (_else35863601_))))))
                           (let ((_K35893615_
                                  (lambda (_rest3612_ _hd3613_)
                                    (begin
                                      (_f3577_ _hd3613_)
                                      (_lp3580_ _rest3612_)))))
                             (if (##pair? _g35833593_)
                                 (let ((_hd35903618_ (##car _g35833593_))
                                       (_tl35913620_ (##cdr _g35833593_)))
                                   (let ((_hd3623_ _hd35903618_))
                                     (let ((_rest3625_ _tl35913620_))
                                       (_K35893615_ _rest3625_ _hd3623_))))
                                 (_try-match35853609_))))))))))
         _lp3580_)
       _stx3578_)))
  (define gx#stx-for-each2
    (lambda (_f3482_ _xstx3483_ _ystx3484_)
      ((letrec ((_lp3486_
                 (lambda (_xrest3488_ _yrest3489_)
                   (let ((_g34903500_ (gx#syntax-e _xrest3488_)))
                     (let ((_E34943504_
                            (lambda ()
                              (error '"No clause matching" _g34903500_))))
                       (let ((_else34933508_ (lambda () '#!void)))
                         (let ((_try-match34923531_
                                (lambda ()
                                  (let ((_K34953528_
                                         (lambda ()
                                           (let ((_yrest35123517_ _yrest3489_))
                                             (let ((_E35143521_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _yrest35123517_))))
                                               (let ((_K35153525_
                                                      (lambda ()
                                                        (_f3482_ _xrest3488_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _yrest3489_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (not (gx#stx-null?
                                                           _yrest35123517_))
                                                     (_K35153525_)
                                                     (_E35143521_))))))))
                                    (if (not (null? _g34903500_))
                                        (_K34953528_)
                                        (_else34933508_))))))
                           (let ((_K34963565_
                                  (lambda (_xrest3534_ _xhd3535_)
                                    (let ((_g35363543_
                                           (gx#syntax-e _yrest3489_)))
                                      (let ((_E35383547_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _g35363543_))))
                                        (let ((_K35393553_
                                               (lambda (_yrest3550_ _yhd3551_)
                                                 (begin
                                                   (_f3482_ _xhd3535_
                                                            _yhd3551_)
                                                   (_lp3486_
                                                    _xrest3534_
                                                    _yrest3550_)))))
                                          (if (##pair? _g35363543_)
                                              (let ((_hd35403556_
                                                     (##car _g35363543_))
                                                    (_tl35413558_
                                                     (##cdr _g35363543_)))
                                                (let ((_yhd3561_ _hd35403556_))
                                                  (let ((_yrest3563_
                                                         _tl35413558_))
                                                    (_K35393553_
                                                     _yrest3563_
                                                     _yhd3561_))))
                                              (_E35383547_))))))))
                             (if (##pair? _g34903500_)
                                 (let ((_hd34973568_ (##car _g34903500_))
                                       (_tl34983570_ (##cdr _g34903500_)))
                                   (let ((_xhd3573_ _hd34973568_))
                                     (let ((_xrest3575_ _tl34983570_))
                                       (_K34963565_ _xrest3575_ _xhd3573_))))
                                 (_try-match34923531_))))))))))
         _lp3486_)
       _xstx3483_
       _ystx3484_)))
  (define gx#stx-map
    (lambda _g4007_
      (let ((_g4006_ (length _g4007_)))
        (cond ((fx= _g4006_ 2) (apply gx#stx-map1 _g4007_))
              ((fx= _g4006_ 3) (apply gx#stx-map2 _g4007_))
              (else (error "No clause matching arguments" _g4007_))))))
  (define gx#stx-map1
    (lambda (_f3425_ _stx3426_)
      ((letrec ((_recur3428_
                 (lambda (_rest3430_)
                   (let ((_g34313441_ (gx#syntax-e _rest3430_)))
                     (let ((_E34353445_
                            (lambda ()
                              (error '"No clause matching" _g34313441_))))
                       (let ((_else34343449_ (lambda () (_f3425_ _rest3430_))))
                         (let ((_try-match34333457_
                                (lambda ()
                                  (let ((_K34363454_ (lambda () '())))
                                    (if (##null? _g34313441_)
                                        (_K34363454_)
                                        (_else34343449_))))))
                           (let ((_K34373463_
                                  (lambda (_rest3460_ _hd3461_)
                                    (cons (_f3425_ _hd3461_)
                                          (_recur3428_ _rest3460_)))))
                             (if (##pair? _g34313441_)
                                 (let ((_hd34383466_ (##car _g34313441_))
                                       (_tl34393468_ (##cdr _g34313441_)))
                                   (let ((_hd3471_ _hd34383466_))
                                     (let ((_rest3473_ _tl34393468_))
                                       (_K34373463_ _rest3473_ _hd3471_))))
                                 (_try-match34333457_))))))))))
         _recur3428_)
       _stx3426_)))
  (define gx#stx-map2
    (lambda (_f3330_ _xstx3331_ _ystx3332_)
      ((letrec ((_recur3334_
                 (lambda (_xrest3336_ _yrest3337_)
                   (let ((_g33383348_ (gx#syntax-e _xrest3336_)))
                     (let ((_E33423352_
                            (lambda ()
                              (error '"No clause matching" _g33383348_))))
                       (let ((_else33413356_ (lambda () '())))
                         (let ((_try-match33403379_
                                (lambda ()
                                  (let ((_K33433376_
                                         (lambda ()
                                           (let ((_yrest33603365_ _yrest3337_))
                                             (let ((_E33623369_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _yrest33603365_))))
                                               (let ((_K33633373_
                                                      (lambda ()
                                                        (_f3330_ _xrest3336_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _yrest3337_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (not (gx#stx-null?
                                                           _yrest33603365_))
                                                     (_K33633373_)
                                                     (_E33623369_))))))))
                                    (if (not (null? _g33383348_))
                                        (_K33433376_)
                                        (_else33413356_))))))
                           (let ((_K33443413_
                                  (lambda (_xrest3382_ _xhd3383_)
                                    (let ((_g33843391_
                                           (gx#syntax-e _yrest3337_)))
                                      (let ((_E33863395_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _g33843391_))))
                                        (let ((_K33873401_
                                               (lambda (_yrest3398_ _yhd3399_)
                                                 (cons (_f3330_ _xhd3383_
                                                                _yhd3399_)
                                                       (_recur3334_
                                                        _xrest3382_
                                                        _yrest3398_)))))
                                          (if (##pair? _g33843391_)
                                              (let ((_hd33883404_
                                                     (##car _g33843391_))
                                                    (_tl33893406_
                                                     (##cdr _g33843391_)))
                                                (let ((_yhd3409_ _hd33883404_))
                                                  (let ((_yrest3411_
                                                         _tl33893406_))
                                                    (_K33873401_
                                                     _yrest3411_
                                                     _yhd3409_))))
                                              (_E33863395_))))))))
                             (if (##pair? _g33383348_)
                                 (let ((_hd33453416_ (##car _g33383348_))
                                       (_tl33463418_ (##cdr _g33383348_)))
                                   (let ((_xhd3421_ _hd33453416_))
                                     (let ((_xrest3423_ _tl33463418_))
                                       (_K33443413_ _xrest3423_ _xhd3421_))))
                                 (_try-match33403379_))))))))))
         _recur3334_)
       _xstx3331_
       _ystx3332_)))
  (define gx#stx-andmap
    (lambda (_f3280_ _stx3281_)
      ((letrec ((_lp3283_
                 (lambda (_rest3285_)
                   (let ((_g32863296_ (gx#syntax-e _rest3285_)))
                     (let ((_E32903300_
                            (lambda ()
                              (error '"No clause matching" _g32863296_))))
                       (let ((_else32893304_ (lambda () (_f3280_ _rest3285_))))
                         (let ((_try-match32883312_
                                (lambda ()
                                  (let ((_K32913309_ (lambda () '#t)))
                                    (if (##null? _g32863296_)
                                        (_K32913309_)
                                        (_else32893304_))))))
                           (let ((_K32923318_
                                  (lambda (_rest3315_ _hd3316_)
                                    (if (_f3280_ _hd3316_)
                                        (_lp3283_ _rest3315_)
                                        '#f))))
                             (if (##pair? _g32863296_)
                                 (let ((_hd32933321_ (##car _g32863296_))
                                       (_tl32943323_ (##cdr _g32863296_)))
                                   (let ((_hd3326_ _hd32933321_))
                                     (let ((_rest3328_ _tl32943323_))
                                       (_K32923318_ _rest3328_ _hd3326_))))
                                 (_try-match32883312_))))))))))
         _lp3283_)
       _stx3281_)))
  (define gx#stx-ormap
    (lambda (_f3227_ _stx3228_)
      ((letrec ((_lp3230_
                 (lambda (_rest3232_)
                   (let ((_g32333243_ (gx#syntax-e _rest3232_)))
                     (let ((_E32373247_
                            (lambda ()
                              (error '"No clause matching" _g32333243_))))
                       (let ((_else32363251_ (lambda () (_f3227_ _rest3232_))))
                         (let ((_try-match32353259_
                                (lambda ()
                                  (let ((_K32383256_ (lambda () '#f)))
                                    (if (##null? _g32333243_)
                                        (_K32383256_)
                                        (_else32363251_))))))
                           (let ((_K32393268_
                                  (lambda (_rest3262_ _hd3263_)
                                    (let ((_$e3265_ (_f3227_ _hd3263_)))
                                      (if _$e3265_
                                          _$e3265_
                                          (_lp3230_ _rest3262_))))))
                             (if (##pair? _g32333243_)
                                 (let ((_hd32403271_ (##car _g32333243_))
                                       (_tl32413273_ (##cdr _g32333243_)))
                                   (let ((_hd3276_ _hd32403271_))
                                     (let ((_rest3278_ _tl32413273_))
                                       (_K32393268_ _rest3278_ _hd3276_))))
                                 (_try-match32353259_))))))))))
         _lp3230_)
       _stx3228_)))
  (define gx#stx-foldl
    (lambda (_f3175_ _iv3176_ _stx3177_)
      ((letrec ((_lp3179_
                 (lambda (_r3181_ _rest3182_)
                   (let ((_g31833193_ (gx#syntax-e _rest3182_)))
                     (let ((_E31873197_
                            (lambda ()
                              (error '"No clause matching" _g31833193_))))
                       (let ((_else31863201_
                              (lambda () (_f3175_ _rest3182_ _r3181_))))
                         (let ((_try-match31853209_
                                (lambda ()
                                  (let ((_K31883206_ (lambda () _r3181_)))
                                    (if (##null? _g31833193_)
                                        (_K31883206_)
                                        (_else31863201_))))))
                           (let ((_K31893215_
                                  (lambda (_rest3212_ _hd3213_)
                                    (_lp3179_
                                     (_f3175_ _hd3213_ _r3181_)
                                     _rest3212_))))
                             (if (##pair? _g31833193_)
                                 (let ((_hd31903218_ (##car _g31833193_))
                                       (_tl31913220_ (##cdr _g31833193_)))
                                   (let ((_hd3223_ _hd31903218_))
                                     (let ((_rest3225_ _tl31913220_))
                                       (_K31893215_ _rest3225_ _hd3223_))))
                                 (_try-match31853209_))))))))))
         _lp3179_)
       _iv3176_
       _stx3177_)))
  (define gx#stx-foldr
    (lambda (_f3124_ _iv3125_ _stx3126_)
      ((letrec ((_recur3128_
                 (lambda (_rest3130_)
                   (let ((_g31313141_ (gx#syntax-e _rest3130_)))
                     (let ((_E31353145_
                            (lambda ()
                              (error '"No clause matching" _g31313141_))))
                       (let ((_else31343149_
                              (lambda () (_f3124_ _rest3130_ _iv3125_))))
                         (let ((_try-match31333157_
                                (lambda ()
                                  (let ((_K31363154_ (lambda () _iv3125_)))
                                    (if (##null? _g31313141_)
                                        (_K31363154_)
                                        (_else31343149_))))))
                           (let ((_K31373163_
                                  (lambda (_rest3160_ _hd3161_)
                                    (_f3124_ _hd3161_
                                             (_recur3128_ _rest3160_)))))
                             (if (##pair? _g31313141_)
                                 (let ((_hd31383166_ (##car _g31313141_))
                                       (_tl31393168_ (##cdr _g31313141_)))
                                   (let ((_hd3171_ _hd31383166_))
                                     (let ((_rest3173_ _tl31393168_))
                                       (_K31373163_ _rest3173_ _hd3171_))))
                                 (_try-match31333157_))))))))))
         _recur3128_)
       _stx3126_)))
  (define gx#stx-reverse
    (lambda (_stx3122_) (gx#stx-foldl cons '() _stx3122_)))
  (define gx#stx-last
    (lambda (_stx3083_)
      ((letrec ((_lp3085_
                 (lambda (_rest3087_)
                   (let ((_g30883096_ (gx#syntax-e _rest3087_)))
                     (let ((_E30913100_
                            (lambda ()
                              (error '"No clause matching" _g30883096_))))
                       (let ((_else30903104_ (lambda () _rest3087_)))
                         (let ((_K30923110_
                                (lambda (_rest3107_ _hd3108_)
                                  (if (gx#stx-null? _rest3107_)
                                      _hd3108_
                                      (_lp3085_ _rest3107_)))))
                           (if (##pair? _g30883096_)
                               (let ((_hd30933113_ (##car _g30883096_))
                                     (_tl30943115_ (##cdr _g30883096_)))
                                 (let ((_hd3118_ _hd30933113_))
                                   (let ((_rest3120_ _tl30943115_))
                                     (_K30923110_ _rest3120_ _hd3118_))))
                               (_else30903104_)))))))))
         _lp3085_)
       _stx3083_)))
  (define gx#stx-last-pair
    (lambda (_stx3052_)
      ((letrec ((_lp3054_
                 (lambda (_hd3056_)
                   (let ((_g30573064_ (gx#syntax-e _hd3056_)))
                     (let ((_E30593068_
                            (lambda ()
                              (error '"No clause matching" _g30573064_))))
                       (let ((_K30603073_
                              (lambda (_rest3071_)
                                (if (gx#stx-pair? _rest3071_)
                                    (_lp3054_ _rest3071_)
                                    _hd3056_))))
                         (if (##pair? _g30573064_)
                             (let ((_hd30613076_ (##car _g30573064_))
                                   (_tl30623078_ (##cdr _g30573064_)))
                               (let ((_rest3081_ _tl30623078_))
                                 (_K30603073_ _rest3081_)))
                             (_E30593068_))))))))
         _lp3054_)
       _stx3052_)))
  (define gx#stx-list-tail
    (lambda (_stx3019_ _k3020_)
      ((letrec ((_lp3022_
                 (lambda (_rest3024_ _k3025_)
                   (if (fxpositive? _k3025_)
                       (let ((_g30263033_ (gx#syntax-e _rest3024_)))
                         (let ((_E30283037_
                                (lambda ()
                                  (error '"No clause matching" _g30263033_))))
                           (let ((_K30293042_
                                  (lambda (_rest3040_)
                                    (_lp3022_ _rest3040_ (fx- _k3025_ '1)))))
                             (if (##pair? _g30263033_)
                                 (let ((_hd30303045_ (##car _g30263033_))
                                       (_tl30313047_ (##cdr _g30263033_)))
                                   (let ((_rest3050_ _tl30313047_))
                                     (_K30293042_ _rest3050_)))
                                 (_E30283037_)))))
                       _rest3024_))))
         _lp3022_)
       _stx3019_
       _k3020_)))
  (define gx#stx-list-ref
    (lambda (_stx3016_ _k3017_)
      (gx#stx-car (gx#stx-list-tail _stx3016_ _k3017_))))
  (begin
    (define gx#stx-plist?__opt-lambda2924
      (lambda (_stx2926_ _key?2927_)
        ((letrec ((_lp2929_
                   (lambda (_rest2931_)
                     (let ((_g29322942_ (gx#stx-e _rest2931_)))
                       (let ((_E29362946_
                              (lambda ()
                                (error '"No clause matching" _g29322942_))))
                         (let ((_else29352950_ (lambda () '#f)))
                           (let ((_try-match29342958_
                                  (lambda ()
                                    (let ((_K29372955_ (lambda () '#t)))
                                      (if (##null? _g29322942_)
                                          (_K29372955_)
                                          (_else29352950_))))))
                             (let ((_K29382994_
                                    (lambda (_rest2961_ _hd2962_)
                                      (if (_key?2927_ _hd2962_)
                                          (let ((_g29632971_
                                                 (gx#stx-e _rest2961_)))
                                            (let ((_E29662975_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _g29632971_))))
                                              (let ((_else29652979_
                                                     (lambda () '#f)))
                                                (let ((_K29672984_
                                                       (lambda (_rest2982_)
                                                         (_lp2929_
                                                          _rest2982_))))
                                                  (if (##pair? _g29632971_)
                                                      (let ((_hd29682987_
                                                             (##car _g29632971_))
                                                            (_tl29692989_
                                                             (##cdr _g29632971_)))
                                                        (let ((_rest2992_
                                                               _tl29692989_))
                                                          (_K29672984_
                                                           _rest2992_)))
                                                      (_else29652979_))))))
                                          '#f))))
                               (if (##pair? _g29322942_)
                                   (let ((_hd29392997_ (##car _g29322942_))
                                         (_tl29402999_ (##cdr _g29322942_)))
                                     (let ((_hd3002_ _hd29392997_))
                                       (let ((_rest3004_ _tl29402999_))
                                         (_K29382994_ _rest3004_ _hd3002_))))
                                   (_try-match29342958_))))))))))
           _lp2929_)
         _stx2926_)))
    (begin
      (define gx#stx-plist?__0
        (lambda (_stx3009_)
          (let ((_key?3011_ gx#stx-keyword?))
            (gx#stx-plist?__opt-lambda2924 _stx3009_ _key?3011_))))
      (define gx#stx-plist?
        (lambda _g4009_
          (let ((_g4008_ (length _g4009_)))
            (cond ((fx= _g4008_ 1) (apply gx#stx-plist?__0 _g4009_))
                  ((fx= _g4008_ 2)
                   (apply gx#stx-plist?__opt-lambda2924 _g4009_))
                  (else (error "No clause matching arguments" _g4009_))))))))
  (begin
    (define gx#stx-getq__opt-lambda2842
      (lambda (_key2844_ _stx2845_ _key=?2846_)
        ((letrec ((_lp2848_
                   (lambda (_rest2850_)
                     (let ((_g28512859_ (gx#syntax-e _rest2850_)))
                       (let ((_E28542863_
                              (lambda ()
                                (error '"No clause matching" _g28512859_))))
                         (let ((_else28532867_ (lambda () '#f)))
                           (let ((_K28552901_
                                  (lambda (_rest2870_ _hd2871_)
                                    (let ((_g28722879_
                                           (gx#syntax-e _rest2870_)))
                                      (let ((_E28742883_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _g28722879_))))
                                        (let ((_K28752889_
                                               (lambda (_rest2886_ _val2887_)
                                                 (if (_key=?2846_
                                                      _hd2871_
                                                      _key2844_)
                                                     _val2887_
                                                     (_lp2848_ _rest2886_)))))
                                          (if (##pair? _g28722879_)
                                              (let ((_hd28762892_
                                                     (##car _g28722879_))
                                                    (_tl28772894_
                                                     (##cdr _g28722879_)))
                                                (let ((_val2897_ _hd28762892_))
                                                  (let ((_rest2899_
                                                         _tl28772894_))
                                                    (_K28752889_
                                                     _rest2899_
                                                     _val2897_))))
                                              (_E28742883_))))))))
                             (if (##pair? _g28512859_)
                                 (let ((_hd28562904_ (##car _g28512859_))
                                       (_tl28572906_ (##cdr _g28512859_)))
                                   (let ((_hd2909_ _hd28562904_))
                                     (let ((_rest2911_ _tl28572906_))
                                       (_K28552901_ _rest2911_ _hd2909_))))
                                 (_else28532867_)))))))))
           _lp2848_)
         _stx2845_)))
    (begin
      (define gx#stx-getq__0
        (lambda (_key2916_ _stx2917_)
          (let ((_key=?2919_ gx#stx-eq?))
            (gx#stx-getq__opt-lambda2842 _key2916_ _stx2917_ _key=?2919_))))
      (define gx#stx-getq
        (lambda _g4011_
          (let ((_g4010_ (length _g4011_)))
            (cond ((fx= _g4010_ 2) (apply gx#stx-getq__0 _g4011_))
                  ((fx= _g4010_ 3) (apply gx#stx-getq__opt-lambda2842 _g4011_))
                  (else (error "No clause matching arguments" _g4011_)))))))))
