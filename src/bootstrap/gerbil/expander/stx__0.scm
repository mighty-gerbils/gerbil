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
    (lambda _$args4001_
      (apply make-struct-instance gx#identifier-wrap::t _$args4001_)))
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
    (lambda _$args3998_
      (apply make-struct-instance gx#syntax-wrap::t _$args3998_)))
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
    (lambda _$args3995_
      (apply make-struct-instance gx#syntax-quote::t _$args3995_)))
  (define gx#syntax-quote-context
    (make-struct-field-accessor gx#syntax-quote::t '0))
  (define gx#syntax-quote-marks
    (make-struct-field-accessor gx#syntax-quote::t '1))
  (define gx#syntax-quote-context-set!
    (make-struct-field-mutator gx#syntax-quote::t '0))
  (define gx#syntax-quote-marks-set!
    (make-struct-field-mutator gx#syntax-quote::t '1))
  (define gx#identifier? (lambda (_stx3993_) (symbol? (gx#stx-e _stx3993_))))
  (define gx#identifier-quote?
    (lambda (_stx3991_)
      (if (##structure-direct-instance-of? _stx3991_ 'gx#syntax-quote::t)
          (symbol? (##structure-ref _stx3991_ '1 AST::t '#f))
          '#f)))
  (define gx#sealed-syntax?
    (lambda (_stx3986_)
      (let ((_$e3988_
             (##structure-direct-instance-of? _stx3986_ 'gx#syntax-quote::t)))
        (if _$e3988_
            _$e3988_
            (if (##structure-instance-of? _stx3986_ 'gerbil#AST::t)
                (gx#sealed-syntax? (##structure-ref _stx3986_ '1 AST::t '#f))
                '#f)))))
  (define gx#syntax-e
    (lambda (_stx3982_)
      (let ((_stx3984_ (gx#stx-unwrap__0 _stx3982_)))
        (if (##structure-instance-of? _stx3984_ 'gerbil#AST::t)
            (##structure-ref _stx3984_ '1 AST::t '#f)
            _stx3984_))))
  (define gx#syntax->datum
    (lambda (_stx3980_)
      (if (##structure-instance-of? _stx3980_ 'gerbil#AST::t)
          (gx#syntax->datum (##structure-ref _stx3980_ '1 AST::t '#f))
          (if (pair? _stx3980_)
              (cons (gx#syntax->datum (car _stx3980_))
                    (gx#syntax->datum (cdr _stx3980_)))
              (if (vector? _stx3980_)
                  (vector-map gx#syntax->datum _stx3980_)
                  (if (box? _stx3980_)
                      (box (gx#syntax->datum (unbox _stx3980_)))
                      _stx3980_))))))
  (begin
    (define gx#datum->syntax__opt-lambda3948
      (lambda (_stx3950_ _datum3951_ _src3952_)
        (let ((_wrap-datum3954_
               (lambda (_e3961_ _marks3962_)
                 ((letrec ((_recur3964_
                            (lambda (_e3966_)
                              (if (symbol? _e3966_)
                                  (##structure
                                   gx#identifier-wrap::t
                                   _e3966_
                                   _src3952_
                                   _marks3962_)
                                  (if (pair? _e3966_)
                                      (cons (_recur3964_ (car _e3966_))
                                            (_recur3964_ (cdr _e3966_)))
                                      (if (vector? _e3966_)
                                          (vector-map _recur3964_ _e3966_)
                                          (if (box? _e3966_)
                                              (box (_recur3964_
                                                    (unbox _e3966_)))
                                              _e3966_)))))))
                    _recur3964_)
                  _e3961_))))
          (let ((_wrap-outer3955_
                 (lambda (_e3959_)
                   (if (##structure-instance-of? _e3959_ 'gerbil#AST::t)
                       _e3959_
                       (##structure AST::t _e3959_ _src3952_)))))
            (if (##structure-instance-of? _datum3951_ 'gerbil#AST::t)
                _datum3951_
                (if (not _stx3950_)
                    (##structure AST::t _datum3951_ _src3952_)
                    (if (gx#identifier? _stx3950_)
                        (let ((_stx3957_ (gx#stx-unwrap__0 _stx3950_)))
                          (if (gx#identifier-quote? _stx3957_)
                              (##structure
                               gx#syntax-quote::t
                               _datum3951_
                               _src3952_
                               (##direct-structure-ref
                                _stx3957_
                                '3
                                gx#syntax-quote::t
                                '#f)
                               (##direct-structure-ref
                                _stx3957_
                                '4
                                gx#syntax-quote::t
                                '#f))
                              (_wrap-outer3955_
                               (_wrap-datum3954_
                                _datum3951_
                                (##direct-structure-ref
                                 _stx3957_
                                 '3
                                 gx#identifier-wrap::t
                                 '#f)))))
                        (error '"Bad template syntax; expected identifier"
                               _stx3950_))))))))
    (begin
      (define gx#datum->syntax__0
        (lambda (_stx3971_ _datum3972_)
          (let ((_src3974_ '#f))
            (gx#datum->syntax__opt-lambda3948
             _stx3971_
             _datum3972_
             _src3974_))))
      (define gx#datum->syntax
        (lambda _g4004_
          (let ((_g4003_ (length _g4004_)))
            (cond ((fx= _g4003_ 2) (apply gx#datum->syntax__0 _g4004_))
                  ((fx= _g4003_ 3)
                   (apply gx#datum->syntax__opt-lambda3948 _g4004_))
                  (else (error "No clause matching arguments" _g4004_))))))))
  (begin
    (define gx#stx-unwrap__opt-lambda3924
      (lambda (_stx3926_ _marks3927_)
        ((letrec ((_lp3929_
                   (lambda (_e3931_ _marks3932_ _src3933_)
                     (if (##structure-direct-instance-of?
                          _e3931_
                          'gx#syntax-wrap::t)
                         (_lp3929_
                          (##structure-ref _e3931_ '1 AST::t '#f)
                          (gx#apply-mark
                           (##direct-structure-ref
                            _e3931_
                            '3
                            gx#syntax-wrap::t
                            '#f)
                           _marks3932_)
                          (##structure-ref _e3931_ '2 AST::t '#f))
                         (if (##structure-direct-instance-of?
                              _e3931_
                              'gx#identifier-wrap::t)
                             (if (null? _marks3932_)
                                 _e3931_
                                 (##structure
                                  gx#identifier-wrap::t
                                  (##structure-ref _e3931_ '1 AST::t '#f)
                                  (##structure-ref _e3931_ '2 AST::t '#f)
                                  (foldl1 gx#apply-mark
                                          (##direct-structure-ref
                                           _e3931_
                                           '3
                                           gx#identifier-wrap::t
                                           '#f)
                                          _marks3932_)))
                             (if (##structure-direct-instance-of?
                                  _e3931_
                                  'gx#syntax-quote::t)
                                 _e3931_
                                 (if (##structure-instance-of?
                                      _e3931_
                                      'gerbil#AST::t)
                                     (_lp3929_
                                      (##structure-ref _e3931_ '1 AST::t '#f)
                                      _marks3932_
                                      (##structure-ref _e3931_ '2 AST::t '#f))
                                     (if (symbol? _e3931_)
                                         (##structure
                                          gx#identifier-wrap::t
                                          _e3931_
                                          _src3933_
                                          (reverse _marks3932_))
                                         (if (null? _marks3932_)
                                             _e3931_
                                             (if (pair? _e3931_)
                                                 (cons (gx#stx-wrap
                                                        (car _e3931_)
                                                        _marks3932_)
                                                       (gx#stx-wrap
                                                        (cdr _e3931_)
                                                        _marks3932_))
                                                 (if (vector? _e3931_)
                                                     (vector-map
                                                      (lambda (_g39343936_)
                                                        (gx#stx-wrap
                                                         _g39343936_
                                                         _marks3932_))
                                                      _e3931_)
                                                     (if (box? _e3931_)
                                                         (box (gx#stx-wrap
                                                               (unbox _e3931_)
                                                               _marks3932_))
                                                         _e3931_))))))))))))
           _lp3929_)
         _stx3926_
         _marks3927_
         (gx#stx-source _stx3926_))))
    (begin
      (define gx#stx-unwrap__0
        (lambda (_stx3942_)
          (let ((_marks3944_ '()))
            (gx#stx-unwrap__opt-lambda3924 _stx3942_ _marks3944_))))
      (define gx#stx-unwrap
        (lambda _g4006_
          (let ((_g4005_ (length _g4006_)))
            (cond ((fx= _g4005_ 1) (apply gx#stx-unwrap__0 _g4006_))
                  ((fx= _g4005_ 2)
                   (apply gx#stx-unwrap__opt-lambda3924 _g4006_))
                  (else (error "No clause matching arguments" _g4006_))))))))
  (define gx#stx-wrap
    (lambda (_stx3919_ _marks3920_)
      (foldl1 (lambda (_mark3922_ _stx3923_)
                (gx#stx-apply-mark _stx3923_ _mark3922_))
              _stx3919_
              _marks3920_)))
  (define gx#stx-rewrap
    (lambda (_stx3913_ _marks3914_)
      (foldr1 (lambda (_mark3916_ _stx3917_)
                (gx#stx-apply-mark _stx3917_ _mark3916_))
              _stx3913_
              _marks3914_)))
  (define gx#stx-apply-mark
    (lambda (_stx3910_ _mark3911_)
      (if (##structure-direct-instance-of? _stx3910_ 'gx#syntax-quote::t)
          _stx3910_
          (if (if (##structure-direct-instance-of?
                   _stx3910_
                   'gx#syntax-wrap::t)
                  (eq? _mark3911_
                       (##direct-structure-ref
                        _stx3910_
                        '3
                        gx#syntax-wrap::t
                        '#f))
                  '#f)
              (##structure-ref _stx3910_ '1 AST::t '#f)
              (##structure
               gx#syntax-wrap::t
               _stx3910_
               (gx#stx-source _stx3910_)
               _mark3911_)))))
  (define gx#apply-mark
    (lambda (_mark3874_ _marks3875_)
      (let ((_marks38763884_ _marks3875_))
        (let ((_E38793888_
               (lambda () (error '"No clause matching" _marks38763884_))))
          (let ((_else38783892_ (lambda () (cons _mark3874_ _marks3875_))))
            (let ((_K38803898_
                   (lambda (_rest3895_ _hd3896_)
                     (if (eq? _mark3874_ _hd3896_)
                         _rest3895_
                         (cons _mark3874_ _marks3875_)))))
              (if (##pair? _marks38763884_)
                  (let ((_hd38813901_ (##car _marks38763884_))
                        (_tl38823903_ (##cdr _marks38763884_)))
                    (let ((_hd3906_ _hd38813901_))
                      (let ((_rest3908_ _tl38823903_))
                        (_K38803898_ _rest3908_ _hd3906_))))
                  (_else38783892_))))))))
  (define gx#stx-e
    (lambda (_stx3872_)
      (if (##structure-instance-of? _stx3872_ 'gerbil#AST::t)
          (gx#stx-e (##structure-ref _stx3872_ '1 AST::t '#f))
          _stx3872_)))
  (define gx#stx-source
    (lambda (_stx3870_)
      (if (##structure-instance-of? _stx3870_ 'gerbil#AST::t)
          (##structure-ref _stx3870_ '2 AST::t '#f)
          '#f)))
  (define gx#stx-wrap-source
    (lambda (_stx3864_ _src3865_)
      (if (let ((_$e3867_ (##structure-instance-of? _stx3864_ 'gerbil#AST::t)))
            (if _$e3867_ _$e3867_ (not _src3865_)))
          _stx3864_
          (##structure AST::t _stx3864_ _src3865_))))
  (define gx#stx-datum?
    (lambda (_stx3862_) (gx#self-quoting? (gx#stx-e _stx3862_))))
  (define gx#self-quoting?
    (lambda (_x3842_)
      (let ((_$e3844_ (boolean? _x3842_)))
        (if _$e3844_
            _$e3844_
            (let ((_$e3847_ (char? _x3842_)))
              (if _$e3847_
                  _$e3847_
                  (let ((_$e3850_ (number? _x3842_)))
                    (if _$e3850_
                        _$e3850_
                        (let ((_$e3853_ (keyword? _x3842_)))
                          (if _$e3853_
                              _$e3853_
                              (let ((_$e3856_ (string? _x3842_)))
                                (if _$e3856_
                                    _$e3856_
                                    (let ((_$e3859_ (eq? _x3842_ '#!void)))
                                      (if _$e3859_
                                          _$e3859_
                                          (dssl-object? _x3842_)))))))))))))))
  (define gx#stx-boolean? (lambda (_e3840_) (boolean? (gx#stx-e _e3840_))))
  (define gx#stx-keyword? (lambda (_e3838_) (keyword? (gx#stx-e _e3838_))))
  (define gx#stx-char? (lambda (_e3836_) (char? (gx#stx-e _e3836_))))
  (define gx#stx-number? (lambda (_e3834_) (number? (gx#stx-e _e3834_))))
  (define gx#stx-fixnum? (lambda (_e3832_) (fixnum? (gx#stx-e _e3832_))))
  (define gx#stx-string? (lambda (_e3830_) (string? (gx#stx-e _e3830_))))
  (define gx#stx-null? (lambda (_e3828_) (null? (gx#stx-e _e3828_))))
  (define gx#stx-pair? (lambda (_e3826_) (pair? (gx#stx-e _e3826_))))
  (define gx#stx-list?
    (lambda (_e3786_)
      (let ((_g37873796_ (gx#stx-e _e3786_)))
        (let ((_E37903800_
               (lambda () (error '"No clause matching" _g37873796_))))
          (let ((_try-match37893811_
                 (lambda ()
                   (let ((_K37913806_
                          (lambda (_tail3804_) (null? _tail3804_))))
                     (let ((_tail3809_ _g37873796_)) (null? _tail3809_))))))
            (let ((_K37923816_
                   (lambda (_rest3814_) (gx#stx-list? _rest3814_))))
              (if (##pair? _g37873796_)
                  (let ((_hd37933819_ (##car _g37873796_))
                        (_tl37943821_ (##cdr _g37873796_)))
                    (let ((_rest3824_ _tl37943821_))
                      (gx#stx-list? _rest3824_)))
                  (_try-match37893811_))))))))
  (define gx#stx-pair/null?
    (lambda (_e3779_)
      (let ((_e3781_ (gx#stx-e _e3779_)))
        (let ((_$e3783_ (pair? _e3781_)))
          (if _$e3783_ _$e3783_ (null? _e3781_))))))
  (define gx#stx-vector? (lambda (_e3777_) (vector? (gx#stx-e _e3777_))))
  (define gx#stx-box? (lambda (_e3775_) (box? (gx#stx-e _e3775_))))
  (define gx#stx-eq?
    (lambda (_x3772_ _y3773_) (eq? (gx#stx-e _x3772_) (gx#stx-e _y3773_))))
  (define gx#stx-eqv?
    (lambda (_x3769_ _y3770_) (eqv? (gx#stx-e _x3769_) (gx#stx-e _y3770_))))
  (define gx#stx-equal?
    (lambda (_x3766_ _y3767_) (equal? (gx#stx-e _x3766_) (gx#stx-e _y3767_))))
  (define gx#stx-false? (lambda (_x3764_) (not (gx#stx-e _x3764_))))
  (define gx#stx-identifier
    (lambda (_template3761_ . _args3762_)
      (gx#datum->syntax__opt-lambda3948
       _template3761_
       (apply make-symbol (map gx#stx-e _args3762_))
       (gx#stx-source _template3761_))))
  (define gx#stx-identifier-marks
    (lambda (_stx3757_)
      (let ((_stx3759_ (gx#stx-unwrap__0 _stx3757_)))
        (if (##structure-direct-instance-of? _stx3759_ 'gx#identifier-wrap::t)
            (##direct-structure-ref _stx3759_ '3 gx#identifier-wrap::t '#f)
            (##direct-structure-ref _stx3759_ '4 gx#syntax-quote::t '#f)))))
  (define gx#stx-identifier-context
    (lambda (_stx3753_)
      (let ((_stx3755_ (gx#stx-unwrap__0 _stx3753_)))
        (if (gx#identifier-quote? _stx3755_)
            (##direct-structure-ref _stx3755_ '3 gx#syntax-quote::t '#f)
            '#f))))
  (define gx#identifier-list?
    (lambda (_stx3708_)
      (let ((_g37093719_ (gx#stx-e _stx3708_)))
        (let ((_E37133723_
               (lambda () (error '"No clause matching" _g37093719_))))
          (let ((_else37123727_ (lambda () '#f)))
            (let ((_try-match37113735_
                   (lambda ()
                     (let ((_K37143732_ (lambda () '#t)))
                       (if (##null? _g37093719_)
                           (_K37143732_)
                           (_else37123727_))))))
              (let ((_K37153741_
                     (lambda (_rest3738_ _hd3739_)
                       (if (gx#identifier? _hd3739_)
                           (gx#identifier-list? _rest3738_)
                           '#f))))
                (if (##pair? _g37093719_)
                    (let ((_hd37163744_ (##car _g37093719_))
                          (_tl37173746_ (##cdr _g37093719_)))
                      (let ((_hd3749_ _hd37163744_))
                        (let ((_rest3751_ _tl37173746_))
                          (_K37153741_ _rest3751_ _hd3749_))))
                    (_try-match37113735_)))))))))
  (begin
    (define gx#genident__opt-lambda3683
      (lambda (_e3685_ _src3686_)
        (gx#stx-wrap-source
         (gensym (let ((_e3688_ (gx#stx-e _e3685_)))
                   (if (interned-symbol? _e3688_) _e3688_ 'g)))
         (let ((_$e3690_ (gx#stx-source _e3685_)))
           (if _$e3690_ _$e3690_ _src3686_)))))
    (begin
      (define gx#genident__0
        (lambda ()
          (let ((_e3697_ 'g))
            (let ((_src3699_ '#f))
              (gx#genident__opt-lambda3683 _e3697_ _src3699_)))))
      (define gx#genident__1
        (lambda (_e3701_)
          (let ((_src3703_ '#f))
            (gx#genident__opt-lambda3683 _e3701_ _src3703_))))
      (define gx#genident
        (lambda _g4008_
          (let ((_g4007_ (length _g4008_)))
            (cond ((fx= _g4007_ 0) (apply gx#genident__0 _g4008_))
                  ((fx= _g4007_ 1) (apply gx#genident__1 _g4008_))
                  ((fx= _g4007_ 2) (apply gx#genident__opt-lambda3683 _g4008_))
                  (else (error "No clause matching arguments" _g4008_))))))))
  (define gx#gentemps
    (lambda (_stx-lst3682_) (gx#stx-map1 gx#genident _stx-lst3682_)))
  (define gx#syntax->list (lambda (_stx3680_) (gx#stx-map1 values _stx3680_)))
  (define gx#stx-car (lambda (_stx3678_) (car (gx#syntax-e _stx3678_))))
  (define gx#stx-cdr (lambda (_stx3676_) (cdr (gx#syntax-e _stx3676_))))
  (define gx#stx-length
    (lambda (_stx3639_)
      ((letrec ((_lp3641_
                 (lambda (_rest3643_ _n3644_)
                   (let ((_g36453653_ (gx#stx-e _rest3643_)))
                     (let ((_E36483657_
                            (lambda ()
                              (error '"No clause matching" _g36453653_))))
                       (let ((_else36473661_ (lambda () _n3644_)))
                         (let ((_K36493666_
                                (lambda (_rest3664_)
                                  (_lp3641_ _rest3664_ (fx+ _n3644_ '1)))))
                           (if (##pair? _g36453653_)
                               (let ((_hd36503669_ (##car _g36453653_))
                                     (_tl36513671_ (##cdr _g36453653_)))
                                 (let ((_rest3674_ _tl36513671_))
                                   (_K36493666_ _rest3674_)))
                               (_else36473661_)))))))))
         _lp3641_)
       _stx3639_
       '0)))
  (define gx#stx-for-each
    (lambda _g4010_
      (let ((_g4009_ (length _g4010_)))
        (cond ((fx= _g4009_ 2) (apply gx#stx-for-each1 _g4010_))
              ((fx= _g4009_ 3) (apply gx#stx-for-each2 _g4010_))
              (else (error "No clause matching arguments" _g4010_))))))
  (define gx#stx-for-each1
    (lambda (_f3582_ _stx3583_)
      ((letrec ((_lp3585_
                 (lambda (_rest3587_)
                   (let ((_g35883598_ (gx#syntax-e _rest3587_)))
                     (let ((_E35923602_
                            (lambda ()
                              (error '"No clause matching" _g35883598_))))
                       (let ((_else35913606_ (lambda () (_f3582_ _rest3587_))))
                         (let ((_try-match35903614_
                                (lambda ()
                                  (let ((_K35933611_ (lambda () '#!void)))
                                    (if (##null? _g35883598_)
                                        (_K35933611_)
                                        (_else35913606_))))))
                           (let ((_K35943620_
                                  (lambda (_rest3617_ _hd3618_)
                                    (begin
                                      (_f3582_ _hd3618_)
                                      (_lp3585_ _rest3617_)))))
                             (if (##pair? _g35883598_)
                                 (let ((_hd35953623_ (##car _g35883598_))
                                       (_tl35963625_ (##cdr _g35883598_)))
                                   (let ((_hd3628_ _hd35953623_))
                                     (let ((_rest3630_ _tl35963625_))
                                       (_K35943620_ _rest3630_ _hd3628_))))
                                 (_try-match35903614_))))))))))
         _lp3585_)
       _stx3583_)))
  (define gx#stx-for-each2
    (lambda (_f3487_ _xstx3488_ _ystx3489_)
      ((letrec ((_lp3491_
                 (lambda (_xrest3493_ _yrest3494_)
                   (let ((_g34953505_ (gx#syntax-e _xrest3493_)))
                     (let ((_E34993509_
                            (lambda ()
                              (error '"No clause matching" _g34953505_))))
                       (let ((_else34983513_ (lambda () '#!void)))
                         (let ((_try-match34973536_
                                (lambda ()
                                  (let ((_K35003533_
                                         (lambda ()
                                           (let ((_yrest35173522_ _yrest3494_))
                                             (let ((_E35193526_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _yrest35173522_))))
                                               (let ((_K35203530_
                                                      (lambda ()
                                                        (_f3487_ _xrest3493_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _yrest3494_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (not (gx#stx-null?
                                                           _yrest35173522_))
                                                     (_K35203530_)
                                                     (_E35193526_))))))))
                                    (if (not (null? _g34953505_))
                                        (_K35003533_)
                                        (_else34983513_))))))
                           (let ((_K35013570_
                                  (lambda (_xrest3539_ _xhd3540_)
                                    (let ((_g35413548_
                                           (gx#syntax-e _yrest3494_)))
                                      (let ((_E35433552_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _g35413548_))))
                                        (let ((_K35443558_
                                               (lambda (_yrest3555_ _yhd3556_)
                                                 (begin
                                                   (_f3487_ _xhd3540_
                                                            _yhd3556_)
                                                   (_lp3491_
                                                    _xrest3539_
                                                    _yrest3555_)))))
                                          (if (##pair? _g35413548_)
                                              (let ((_hd35453561_
                                                     (##car _g35413548_))
                                                    (_tl35463563_
                                                     (##cdr _g35413548_)))
                                                (let ((_yhd3566_ _hd35453561_))
                                                  (let ((_yrest3568_
                                                         _tl35463563_))
                                                    (_K35443558_
                                                     _yrest3568_
                                                     _yhd3566_))))
                                              (_E35433552_))))))))
                             (if (##pair? _g34953505_)
                                 (let ((_hd35023573_ (##car _g34953505_))
                                       (_tl35033575_ (##cdr _g34953505_)))
                                   (let ((_xhd3578_ _hd35023573_))
                                     (let ((_xrest3580_ _tl35033575_))
                                       (_K35013570_ _xrest3580_ _xhd3578_))))
                                 (_try-match34973536_))))))))))
         _lp3491_)
       _xstx3488_
       _ystx3489_)))
  (define gx#stx-map
    (lambda _g4012_
      (let ((_g4011_ (length _g4012_)))
        (cond ((fx= _g4011_ 2) (apply gx#stx-map1 _g4012_))
              ((fx= _g4011_ 3) (apply gx#stx-map2 _g4012_))
              (else (error "No clause matching arguments" _g4012_))))))
  (define gx#stx-map1
    (lambda (_f3430_ _stx3431_)
      ((letrec ((_recur3433_
                 (lambda (_rest3435_)
                   (let ((_g34363446_ (gx#syntax-e _rest3435_)))
                     (let ((_E34403450_
                            (lambda ()
                              (error '"No clause matching" _g34363446_))))
                       (let ((_else34393454_ (lambda () (_f3430_ _rest3435_))))
                         (let ((_try-match34383462_
                                (lambda ()
                                  (let ((_K34413459_ (lambda () '())))
                                    (if (##null? _g34363446_)
                                        (_K34413459_)
                                        (_else34393454_))))))
                           (let ((_K34423468_
                                  (lambda (_rest3465_ _hd3466_)
                                    (cons (_f3430_ _hd3466_)
                                          (_recur3433_ _rest3465_)))))
                             (if (##pair? _g34363446_)
                                 (let ((_hd34433471_ (##car _g34363446_))
                                       (_tl34443473_ (##cdr _g34363446_)))
                                   (let ((_hd3476_ _hd34433471_))
                                     (let ((_rest3478_ _tl34443473_))
                                       (_K34423468_ _rest3478_ _hd3476_))))
                                 (_try-match34383462_))))))))))
         _recur3433_)
       _stx3431_)))
  (define gx#stx-map2
    (lambda (_f3335_ _xstx3336_ _ystx3337_)
      ((letrec ((_recur3339_
                 (lambda (_xrest3341_ _yrest3342_)
                   (let ((_g33433353_ (gx#syntax-e _xrest3341_)))
                     (let ((_E33473357_
                            (lambda ()
                              (error '"No clause matching" _g33433353_))))
                       (let ((_else33463361_ (lambda () '())))
                         (let ((_try-match33453384_
                                (lambda ()
                                  (let ((_K33483381_
                                         (lambda ()
                                           (let ((_yrest33653370_ _yrest3342_))
                                             (let ((_E33673374_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _yrest33653370_))))
                                               (let ((_K33683378_
                                                      (lambda ()
                                                        (_f3335_ _xrest3341_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _yrest3342_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (not (gx#stx-null?
                                                           _yrest33653370_))
                                                     (_K33683378_)
                                                     (_E33673374_))))))))
                                    (if (not (null? _g33433353_))
                                        (_K33483381_)
                                        (_else33463361_))))))
                           (let ((_K33493418_
                                  (lambda (_xrest3387_ _xhd3388_)
                                    (let ((_g33893396_
                                           (gx#syntax-e _yrest3342_)))
                                      (let ((_E33913400_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _g33893396_))))
                                        (let ((_K33923406_
                                               (lambda (_yrest3403_ _yhd3404_)
                                                 (cons (_f3335_ _xhd3388_
                                                                _yhd3404_)
                                                       (_recur3339_
                                                        _xrest3387_
                                                        _yrest3403_)))))
                                          (if (##pair? _g33893396_)
                                              (let ((_hd33933409_
                                                     (##car _g33893396_))
                                                    (_tl33943411_
                                                     (##cdr _g33893396_)))
                                                (let ((_yhd3414_ _hd33933409_))
                                                  (let ((_yrest3416_
                                                         _tl33943411_))
                                                    (_K33923406_
                                                     _yrest3416_
                                                     _yhd3414_))))
                                              (_E33913400_))))))))
                             (if (##pair? _g33433353_)
                                 (let ((_hd33503421_ (##car _g33433353_))
                                       (_tl33513423_ (##cdr _g33433353_)))
                                   (let ((_xhd3426_ _hd33503421_))
                                     (let ((_xrest3428_ _tl33513423_))
                                       (_K33493418_ _xrest3428_ _xhd3426_))))
                                 (_try-match33453384_))))))))))
         _recur3339_)
       _xstx3336_
       _ystx3337_)))
  (define gx#stx-andmap
    (lambda (_f3285_ _stx3286_)
      ((letrec ((_lp3288_
                 (lambda (_rest3290_)
                   (let ((_g32913301_ (gx#syntax-e _rest3290_)))
                     (let ((_E32953305_
                            (lambda ()
                              (error '"No clause matching" _g32913301_))))
                       (let ((_else32943309_ (lambda () (_f3285_ _rest3290_))))
                         (let ((_try-match32933317_
                                (lambda ()
                                  (let ((_K32963314_ (lambda () '#t)))
                                    (if (##null? _g32913301_)
                                        (_K32963314_)
                                        (_else32943309_))))))
                           (let ((_K32973323_
                                  (lambda (_rest3320_ _hd3321_)
                                    (if (_f3285_ _hd3321_)
                                        (_lp3288_ _rest3320_)
                                        '#f))))
                             (if (##pair? _g32913301_)
                                 (let ((_hd32983326_ (##car _g32913301_))
                                       (_tl32993328_ (##cdr _g32913301_)))
                                   (let ((_hd3331_ _hd32983326_))
                                     (let ((_rest3333_ _tl32993328_))
                                       (_K32973323_ _rest3333_ _hd3331_))))
                                 (_try-match32933317_))))))))))
         _lp3288_)
       _stx3286_)))
  (define gx#stx-ormap
    (lambda (_f3232_ _stx3233_)
      ((letrec ((_lp3235_
                 (lambda (_rest3237_)
                   (let ((_g32383248_ (gx#syntax-e _rest3237_)))
                     (let ((_E32423252_
                            (lambda ()
                              (error '"No clause matching" _g32383248_))))
                       (let ((_else32413256_ (lambda () (_f3232_ _rest3237_))))
                         (let ((_try-match32403264_
                                (lambda ()
                                  (let ((_K32433261_ (lambda () '#f)))
                                    (if (##null? _g32383248_)
                                        (_K32433261_)
                                        (_else32413256_))))))
                           (let ((_K32443273_
                                  (lambda (_rest3267_ _hd3268_)
                                    (let ((_$e3270_ (_f3232_ _hd3268_)))
                                      (if _$e3270_
                                          _$e3270_
                                          (_lp3235_ _rest3267_))))))
                             (if (##pair? _g32383248_)
                                 (let ((_hd32453276_ (##car _g32383248_))
                                       (_tl32463278_ (##cdr _g32383248_)))
                                   (let ((_hd3281_ _hd32453276_))
                                     (let ((_rest3283_ _tl32463278_))
                                       (_K32443273_ _rest3283_ _hd3281_))))
                                 (_try-match32403264_))))))))))
         _lp3235_)
       _stx3233_)))
  (define gx#stx-foldl
    (lambda (_f3180_ _iv3181_ _stx3182_)
      ((letrec ((_lp3184_
                 (lambda (_r3186_ _rest3187_)
                   (let ((_g31883198_ (gx#syntax-e _rest3187_)))
                     (let ((_E31923202_
                            (lambda ()
                              (error '"No clause matching" _g31883198_))))
                       (let ((_else31913206_
                              (lambda () (_f3180_ _rest3187_ _r3186_))))
                         (let ((_try-match31903214_
                                (lambda ()
                                  (let ((_K31933211_ (lambda () _r3186_)))
                                    (if (##null? _g31883198_)
                                        (_K31933211_)
                                        (_else31913206_))))))
                           (let ((_K31943220_
                                  (lambda (_rest3217_ _hd3218_)
                                    (_lp3184_
                                     (_f3180_ _hd3218_ _r3186_)
                                     _rest3217_))))
                             (if (##pair? _g31883198_)
                                 (let ((_hd31953223_ (##car _g31883198_))
                                       (_tl31963225_ (##cdr _g31883198_)))
                                   (let ((_hd3228_ _hd31953223_))
                                     (let ((_rest3230_ _tl31963225_))
                                       (_K31943220_ _rest3230_ _hd3228_))))
                                 (_try-match31903214_))))))))))
         _lp3184_)
       _iv3181_
       _stx3182_)))
  (define gx#stx-foldr
    (lambda (_f3129_ _iv3130_ _stx3131_)
      ((letrec ((_recur3133_
                 (lambda (_rest3135_)
                   (let ((_g31363146_ (gx#syntax-e _rest3135_)))
                     (let ((_E31403150_
                            (lambda ()
                              (error '"No clause matching" _g31363146_))))
                       (let ((_else31393154_
                              (lambda () (_f3129_ _rest3135_ _iv3130_))))
                         (let ((_try-match31383162_
                                (lambda ()
                                  (let ((_K31413159_ (lambda () _iv3130_)))
                                    (if (##null? _g31363146_)
                                        (_K31413159_)
                                        (_else31393154_))))))
                           (let ((_K31423168_
                                  (lambda (_rest3165_ _hd3166_)
                                    (_f3129_ _hd3166_
                                             (_recur3133_ _rest3165_)))))
                             (if (##pair? _g31363146_)
                                 (let ((_hd31433171_ (##car _g31363146_))
                                       (_tl31443173_ (##cdr _g31363146_)))
                                   (let ((_hd3176_ _hd31433171_))
                                     (let ((_rest3178_ _tl31443173_))
                                       (_K31423168_ _rest3178_ _hd3176_))))
                                 (_try-match31383162_))))))))))
         _recur3133_)
       _stx3131_)))
  (define gx#stx-reverse
    (lambda (_stx3127_) (gx#stx-foldl cons '() _stx3127_)))
  (define gx#stx-last
    (lambda (_stx3088_)
      ((letrec ((_lp3090_
                 (lambda (_rest3092_)
                   (let ((_g30933101_ (gx#syntax-e _rest3092_)))
                     (let ((_E30963105_
                            (lambda ()
                              (error '"No clause matching" _g30933101_))))
                       (let ((_else30953109_ (lambda () _rest3092_)))
                         (let ((_K30973115_
                                (lambda (_rest3112_ _hd3113_)
                                  (if (gx#stx-null? _rest3112_)
                                      _hd3113_
                                      (_lp3090_ _rest3112_)))))
                           (if (##pair? _g30933101_)
                               (let ((_hd30983118_ (##car _g30933101_))
                                     (_tl30993120_ (##cdr _g30933101_)))
                                 (let ((_hd3123_ _hd30983118_))
                                   (let ((_rest3125_ _tl30993120_))
                                     (_K30973115_ _rest3125_ _hd3123_))))
                               (_else30953109_)))))))))
         _lp3090_)
       _stx3088_)))
  (define gx#stx-last-pair
    (lambda (_stx3057_)
      ((letrec ((_lp3059_
                 (lambda (_hd3061_)
                   (let ((_g30623069_ (gx#syntax-e _hd3061_)))
                     (let ((_E30643073_
                            (lambda ()
                              (error '"No clause matching" _g30623069_))))
                       (let ((_K30653078_
                              (lambda (_rest3076_)
                                (if (gx#stx-pair? _rest3076_)
                                    (_lp3059_ _rest3076_)
                                    _hd3061_))))
                         (if (##pair? _g30623069_)
                             (let ((_hd30663081_ (##car _g30623069_))
                                   (_tl30673083_ (##cdr _g30623069_)))
                               (let ((_rest3086_ _tl30673083_))
                                 (_K30653078_ _rest3086_)))
                             (_E30643073_))))))))
         _lp3059_)
       _stx3057_)))
  (define gx#stx-list-tail
    (lambda (_stx3024_ _k3025_)
      ((letrec ((_lp3027_
                 (lambda (_rest3029_ _k3030_)
                   (if (fxpositive? _k3030_)
                       (let ((_g30313038_ (gx#syntax-e _rest3029_)))
                         (let ((_E30333042_
                                (lambda ()
                                  (error '"No clause matching" _g30313038_))))
                           (let ((_K30343047_
                                  (lambda (_rest3045_)
                                    (_lp3027_ _rest3045_ (fx- _k3030_ '1)))))
                             (if (##pair? _g30313038_)
                                 (let ((_hd30353050_ (##car _g30313038_))
                                       (_tl30363052_ (##cdr _g30313038_)))
                                   (let ((_rest3055_ _tl30363052_))
                                     (_K30343047_ _rest3055_)))
                                 (_E30333042_)))))
                       _rest3029_))))
         _lp3027_)
       _stx3024_
       _k3025_)))
  (define gx#stx-list-ref
    (lambda (_stx3021_ _k3022_)
      (gx#stx-car (gx#stx-list-tail _stx3021_ _k3022_))))
  (begin
    (define gx#stx-plist?__opt-lambda2929
      (lambda (_stx2931_ _key?2932_)
        ((letrec ((_lp2934_
                   (lambda (_rest2936_)
                     (let ((_g29372947_ (gx#stx-e _rest2936_)))
                       (let ((_E29412951_
                              (lambda ()
                                (error '"No clause matching" _g29372947_))))
                         (let ((_else29402955_ (lambda () '#f)))
                           (let ((_try-match29392963_
                                  (lambda ()
                                    (let ((_K29422960_ (lambda () '#t)))
                                      (if (##null? _g29372947_)
                                          (_K29422960_)
                                          (_else29402955_))))))
                             (let ((_K29432999_
                                    (lambda (_rest2966_ _hd2967_)
                                      (if (_key?2932_ _hd2967_)
                                          (let ((_g29682976_
                                                 (gx#stx-e _rest2966_)))
                                            (let ((_E29712980_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _g29682976_))))
                                              (let ((_else29702984_
                                                     (lambda () '#f)))
                                                (let ((_K29722989_
                                                       (lambda (_rest2987_)
                                                         (_lp2934_
                                                          _rest2987_))))
                                                  (if (##pair? _g29682976_)
                                                      (let ((_hd29732992_
                                                             (##car _g29682976_))
                                                            (_tl29742994_
                                                             (##cdr _g29682976_)))
                                                        (let ((_rest2997_
                                                               _tl29742994_))
                                                          (_K29722989_
                                                           _rest2997_)))
                                                      (_else29702984_))))))
                                          '#f))))
                               (if (##pair? _g29372947_)
                                   (let ((_hd29443002_ (##car _g29372947_))
                                         (_tl29453004_ (##cdr _g29372947_)))
                                     (let ((_hd3007_ _hd29443002_))
                                       (let ((_rest3009_ _tl29453004_))
                                         (_K29432999_ _rest3009_ _hd3007_))))
                                   (_try-match29392963_))))))))))
           _lp2934_)
         _stx2931_)))
    (begin
      (define gx#stx-plist?__0
        (lambda (_stx3014_)
          (let ((_key?3016_ gx#stx-keyword?))
            (gx#stx-plist?__opt-lambda2929 _stx3014_ _key?3016_))))
      (define gx#stx-plist?
        (lambda _g4014_
          (let ((_g4013_ (length _g4014_)))
            (cond ((fx= _g4013_ 1) (apply gx#stx-plist?__0 _g4014_))
                  ((fx= _g4013_ 2)
                   (apply gx#stx-plist?__opt-lambda2929 _g4014_))
                  (else (error "No clause matching arguments" _g4014_))))))))
  (begin
    (define gx#stx-getq__opt-lambda2847
      (lambda (_key2849_ _stx2850_ _key=?2851_)
        ((letrec ((_lp2853_
                   (lambda (_rest2855_)
                     (let ((_g28562864_ (gx#syntax-e _rest2855_)))
                       (let ((_E28592868_
                              (lambda ()
                                (error '"No clause matching" _g28562864_))))
                         (let ((_else28582872_ (lambda () '#f)))
                           (let ((_K28602906_
                                  (lambda (_rest2875_ _hd2876_)
                                    (let ((_g28772884_
                                           (gx#syntax-e _rest2875_)))
                                      (let ((_E28792888_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _g28772884_))))
                                        (let ((_K28802894_
                                               (lambda (_rest2891_ _val2892_)
                                                 (if (_key=?2851_
                                                      _hd2876_
                                                      _key2849_)
                                                     _val2892_
                                                     (_lp2853_ _rest2891_)))))
                                          (if (##pair? _g28772884_)
                                              (let ((_hd28812897_
                                                     (##car _g28772884_))
                                                    (_tl28822899_
                                                     (##cdr _g28772884_)))
                                                (let ((_val2902_ _hd28812897_))
                                                  (let ((_rest2904_
                                                         _tl28822899_))
                                                    (_K28802894_
                                                     _rest2904_
                                                     _val2902_))))
                                              (_E28792888_))))))))
                             (if (##pair? _g28562864_)
                                 (let ((_hd28612909_ (##car _g28562864_))
                                       (_tl28622911_ (##cdr _g28562864_)))
                                   (let ((_hd2914_ _hd28612909_))
                                     (let ((_rest2916_ _tl28622911_))
                                       (_K28602906_ _rest2916_ _hd2914_))))
                                 (_else28582872_)))))))))
           _lp2853_)
         _stx2850_)))
    (begin
      (define gx#stx-getq__0
        (lambda (_key2921_ _stx2922_)
          (let ((_key=?2924_ gx#stx-eq?))
            (gx#stx-getq__opt-lambda2847 _key2921_ _stx2922_ _key=?2924_))))
      (define gx#stx-getq
        (lambda _g4016_
          (let ((_g4015_ (length _g4016_)))
            (cond ((fx= _g4015_ 2) (apply gx#stx-getq__0 _g4016_))
                  ((fx= _g4015_ 3) (apply gx#stx-getq__opt-lambda2847 _g4016_))
                  (else (error "No clause matching arguments" _g4016_)))))))))
