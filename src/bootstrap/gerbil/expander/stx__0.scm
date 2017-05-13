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
    (lambda _$args3741_
      (apply make-struct-instance gx#identifier-wrap::t _$args3741_)))
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
    (lambda _$args3738_
      (apply make-struct-instance gx#syntax-wrap::t _$args3738_)))
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
    (lambda _$args3735_
      (apply make-struct-instance gx#syntax-quote::t _$args3735_)))
  (define gx#syntax-quote-context
    (make-struct-field-accessor gx#syntax-quote::t '0))
  (define gx#syntax-quote-marks
    (make-struct-field-accessor gx#syntax-quote::t '1))
  (define gx#syntax-quote-context-set!
    (make-struct-field-mutator gx#syntax-quote::t '0))
  (define gx#syntax-quote-marks-set!
    (make-struct-field-mutator gx#syntax-quote::t '1))
  (define gx#identifier? (lambda (_stx3733_) (symbol? (gx#stx-e _stx3733_))))
  (define gx#identifier-quote?
    (lambda (_stx3731_)
      (if (##structure-direct-instance-of? _stx3731_ 'gx#syntax-quote::t)
          (symbol? (##structure-ref _stx3731_ '1 AST::t '#f))
          '#f)))
  (define gx#sealed-syntax?
    (lambda (_stx3726_)
      (let ((_$e3728_
             (##structure-direct-instance-of? _stx3726_ 'gx#syntax-quote::t)))
        (if _$e3728_
            _$e3728_
            (if (##structure-instance-of? _stx3726_ 'gerbil#AST::t)
                (gx#sealed-syntax? (##structure-ref _stx3726_ '1 AST::t '#f))
                '#f)))))
  (define gx#syntax-e
    (lambda (_stx3722_)
      (let ((_stx3724_ (gx#stx-unwrap__0 _stx3722_)))
        (if (##structure-instance-of? _stx3724_ 'gerbil#AST::t)
            (##structure-ref _stx3724_ '1 AST::t '#f)
            _stx3724_))))
  (define gx#syntax->datum
    (lambda (_stx3720_)
      (if (##structure-instance-of? _stx3720_ 'gerbil#AST::t)
          (gx#syntax->datum (##structure-ref _stx3720_ '1 AST::t '#f))
          (if (pair? _stx3720_)
              (cons (gx#syntax->datum (car _stx3720_))
                    (gx#syntax->datum (cdr _stx3720_)))
              (if (vector? _stx3720_)
                  (vector-map gx#syntax->datum _stx3720_)
                  (if (box? _stx3720_)
                      (box (gx#syntax->datum (unbox _stx3720_)))
                      _stx3720_))))))
  (begin
    (define gx#datum->syntax__opt-lambda3688
      (lambda (_stx3690_ _datum3691_ _src3692_)
        (let ((_wrap-datum3694_
               (lambda (_e3701_ _marks3702_)
                 ((letrec ((_recur3704_
                            (lambda (_e3706_)
                              (if (symbol? _e3706_)
                                  (##structure
                                   gx#identifier-wrap::t
                                   _e3706_
                                   _src3692_
                                   _marks3702_)
                                  (if (pair? _e3706_)
                                      (cons (_recur3704_ (car _e3706_))
                                            (_recur3704_ (cdr _e3706_)))
                                      (if (vector? _e3706_)
                                          (vector-map _recur3704_ _e3706_)
                                          (if (box? _e3706_)
                                              (box (_recur3704_
                                                    (unbox _e3706_)))
                                              _e3706_)))))))
                    _recur3704_)
                  _e3701_))))
          (let ((_wrap-outer3695_
                 (lambda (_e3699_)
                   (if (##structure-instance-of? _e3699_ 'gerbil#AST::t)
                       _e3699_
                       (##structure AST::t _e3699_ _src3692_)))))
            (if (##structure-instance-of? _datum3691_ 'gerbil#AST::t)
                _datum3691_
                (if (not _stx3690_)
                    (##structure AST::t _datum3691_ _src3692_)
                    (if (gx#identifier? _stx3690_)
                        (let ((_stx3697_ (gx#stx-unwrap__0 _stx3690_)))
                          (if (gx#identifier-quote? _stx3697_)
                              (##structure
                               gx#syntax-quote::t
                               _datum3691_
                               _src3692_
                               (##structure-ref
                                _stx3697_
                                '3
                                gx#syntax-quote::t
                                '#f)
                               (##structure-ref
                                _stx3697_
                                '4
                                gx#syntax-quote::t
                                '#f))
                              (_wrap-outer3695_
                               (_wrap-datum3694_
                                _datum3691_
                                (##structure-ref
                                 _stx3697_
                                 '3
                                 gx#identifier-wrap::t
                                 '#f)))))
                        (error '"Bad template syntax; expected identifier"
                               _stx3690_))))))))
    (begin
      (define gx#datum->syntax__0
        (lambda (_stx3711_ _datum3712_)
          (let ((_src3714_ '#f))
            (gx#datum->syntax__opt-lambda3688
             _stx3711_
             _datum3712_
             _src3714_))))
      (define gx#datum->syntax
        (lambda _g3744_
          (let ((_g3743_ (length _g3744_)))
            (cond ((fx= _g3743_ 2) (apply gx#datum->syntax__0 _g3744_))
                  ((fx= _g3743_ 3)
                   (apply gx#datum->syntax__opt-lambda3688 _g3744_))
                  (else (error "No clause matching arguments" _g3744_))))))))
  (begin
    (define gx#stx-unwrap__opt-lambda3664
      (lambda (_stx3666_ _marks3667_)
        ((letrec ((_lp3669_
                   (lambda (_e3671_ _marks3672_ _src3673_)
                     (if (##structure-direct-instance-of?
                          _e3671_
                          'gx#syntax-wrap::t)
                         (_lp3669_
                          (##structure-ref _e3671_ '1 AST::t '#f)
                          (gx#apply-mark
                           (##structure-ref _e3671_ '3 gx#syntax-wrap::t '#f)
                           _marks3672_)
                          (##structure-ref _e3671_ '2 AST::t '#f))
                         (if (##structure-direct-instance-of?
                              _e3671_
                              'gx#identifier-wrap::t)
                             (if (null? _marks3672_)
                                 _e3671_
                                 (##structure
                                  gx#identifier-wrap::t
                                  (##structure-ref _e3671_ '1 AST::t '#f)
                                  (##structure-ref _e3671_ '2 AST::t '#f)
                                  (foldl gx#apply-mark
                                         (##structure-ref
                                          _e3671_
                                          '3
                                          gx#identifier-wrap::t
                                          '#f)
                                         _marks3672_)))
                             (if (##structure-direct-instance-of?
                                  _e3671_
                                  'gx#syntax-quote::t)
                                 _e3671_
                                 (if (##structure-instance-of?
                                      _e3671_
                                      'gerbil#AST::t)
                                     (_lp3669_
                                      (##structure-ref _e3671_ '1 AST::t '#f)
                                      _marks3672_
                                      (##structure-ref _e3671_ '2 AST::t '#f))
                                     (if (symbol? _e3671_)
                                         (##structure
                                          gx#identifier-wrap::t
                                          _e3671_
                                          _src3673_
                                          (reverse _marks3672_))
                                         (if (null? _marks3672_)
                                             _e3671_
                                             (if (pair? _e3671_)
                                                 (cons (gx#stx-wrap
                                                        (car _e3671_)
                                                        _marks3672_)
                                                       (gx#stx-wrap
                                                        (cdr _e3671_)
                                                        _marks3672_))
                                                 (if (vector? _e3671_)
                                                     (vector-map
                                                      (lambda (_g36743676_)
                                                        (gx#stx-wrap
                                                         _g36743676_
                                                         _marks3672_))
                                                      _e3671_)
                                                     (if (box? _e3671_)
                                                         (box (gx#stx-wrap
                                                               (unbox _e3671_)
                                                               _marks3672_))
                                                         _e3671_))))))))))))
           _lp3669_)
         _stx3666_
         _marks3667_
         (gx#stx-source _stx3666_))))
    (begin
      (define gx#stx-unwrap__0
        (lambda (_stx3682_)
          (let ((_marks3684_ '()))
            (gx#stx-unwrap__opt-lambda3664 _stx3682_ _marks3684_))))
      (define gx#stx-unwrap
        (lambda _g3746_
          (let ((_g3745_ (length _g3746_)))
            (cond ((fx= _g3745_ 1) (apply gx#stx-unwrap__0 _g3746_))
                  ((fx= _g3745_ 2)
                   (apply gx#stx-unwrap__opt-lambda3664 _g3746_))
                  (else (error "No clause matching arguments" _g3746_))))))))
  (define gx#stx-wrap
    (lambda (_stx3659_ _marks3660_)
      (foldl (lambda (_mark3662_ _stx3663_)
               (gx#stx-apply-mark _stx3663_ _mark3662_))
             _stx3659_
             _marks3660_)))
  (define gx#stx-rewrap
    (lambda (_stx3653_ _marks3654_)
      (foldr (lambda (_mark3656_ _stx3657_)
               (gx#stx-apply-mark _stx3657_ _mark3656_))
             _stx3653_
             _marks3654_)))
  (define gx#stx-apply-mark
    (lambda (_stx3650_ _mark3651_)
      (if (##structure-direct-instance-of? _stx3650_ 'gx#syntax-quote::t)
          _stx3650_
          (if (if (##structure-direct-instance-of?
                   _stx3650_
                   'gx#syntax-wrap::t)
                  (eq? _mark3651_
                       (##structure-ref _stx3650_ '3 gx#syntax-wrap::t '#f))
                  '#f)
              (##structure-ref _stx3650_ '1 AST::t '#f)
              (##structure
               gx#syntax-wrap::t
               _stx3650_
               (gx#stx-source _stx3650_)
               _mark3651_)))))
  (define gx#apply-mark
    (lambda (_mark3614_ _marks3615_)
      (let ((_marks36163624_ _marks3615_))
        (let ((_E36193628_
               (lambda () (error '"No clause matching" _marks36163624_))))
          (let ((_else36183632_ (lambda () (cons _mark3614_ _marks3615_))))
            (let ((_K36203638_
                   (lambda (_rest3635_ _hd3636_)
                     (if (eq? _mark3614_ _hd3636_)
                         _rest3635_
                         (cons _mark3614_ _marks3615_)))))
              (if (##pair? _marks36163624_)
                  (let ((_hd36213641_ (##car _marks36163624_))
                        (_tl36223643_ (##cdr _marks36163624_)))
                    (let ((_hd3646_ _hd36213641_))
                      (let ((_rest3648_ _tl36223643_))
                        (_K36203638_ _rest3648_ _hd3646_))))
                  (_else36183632_))))))))
  (define gx#stx-e
    (lambda (_stx3612_)
      (if (##structure-instance-of? _stx3612_ 'gerbil#AST::t)
          (gx#stx-e (##structure-ref _stx3612_ '1 AST::t '#f))
          _stx3612_)))
  (define gx#stx-source
    (lambda (_stx3610_)
      (if (##structure-instance-of? _stx3610_ 'gerbil#AST::t)
          (##structure-ref _stx3610_ '2 AST::t '#f)
          '#f)))
  (define gx#stx-wrap-source
    (lambda (_stx3604_ _src3605_)
      (if (let ((_$e3607_ (##structure-instance-of? _stx3604_ 'gerbil#AST::t)))
            (if _$e3607_ _$e3607_ (not _src3605_)))
          _stx3604_
          (##structure AST::t _stx3604_ _src3605_))))
  (define gx#stx-datum?
    (lambda (_stx3602_) (gx#self-quoting? (gx#stx-e _stx3602_))))
  (define gx#self-quoting?
    (lambda (_x3582_)
      (let ((_$e3584_ (boolean? _x3582_)))
        (if _$e3584_
            _$e3584_
            (let ((_$e3587_ (char? _x3582_)))
              (if _$e3587_
                  _$e3587_
                  (let ((_$e3590_ (number? _x3582_)))
                    (if _$e3590_
                        _$e3590_
                        (let ((_$e3593_ (keyword? _x3582_)))
                          (if _$e3593_
                              _$e3593_
                              (let ((_$e3596_ (string? _x3582_)))
                                (if _$e3596_
                                    _$e3596_
                                    (let ((_$e3599_ (eq? _x3582_ '#!void)))
                                      (if _$e3599_
                                          _$e3599_
                                          (dssl-object? _x3582_)))))))))))))))
  (define gx#stx-boolean? (lambda (_e3580_) (boolean? (gx#stx-e _e3580_))))
  (define gx#stx-keyword? (lambda (_e3578_) (keyword? (gx#stx-e _e3578_))))
  (define gx#stx-char? (lambda (_e3576_) (char? (gx#stx-e _e3576_))))
  (define gx#stx-number? (lambda (_e3574_) (number? (gx#stx-e _e3574_))))
  (define gx#stx-fixnum? (lambda (_e3572_) (fixnum? (gx#stx-e _e3572_))))
  (define gx#stx-string? (lambda (_e3570_) (string? (gx#stx-e _e3570_))))
  (define gx#stx-null? (lambda (_e3568_) (null? (gx#stx-e _e3568_))))
  (define gx#stx-pair? (lambda (_e3566_) (pair? (gx#stx-e _e3566_))))
  (define gx#stx-list?
    (lambda (_e3526_)
      (let ((_g35273536_ (gx#stx-e _e3526_)))
        (let ((_E35303540_
               (lambda () (error '"No clause matching" _g35273536_))))
          (let ((_try-match35293551_
                 (lambda ()
                   (let ((_K35313546_
                          (lambda (_tail3544_) (null? _tail3544_))))
                     (let ((_tail3549_ _g35273536_))
                       (_K35313546_ _tail3549_))))))
            (let ((_K35323556_
                   (lambda (_rest3554_) (gx#stx-list? _rest3554_))))
              (if (##pair? _g35273536_)
                  (let ((_hd35333559_ (##car _g35273536_))
                        (_tl35343561_ (##cdr _g35273536_)))
                    (let ((_rest3564_ _tl35343561_)) (_K35323556_ _rest3564_)))
                  (_try-match35293551_))))))))
  (define gx#stx-pair/null?
    (lambda (_e3519_)
      (let ((_e3521_ (gx#stx-e _e3519_)))
        (let ((_$e3523_ (pair? _e3521_)))
          (if _$e3523_ _$e3523_ (null? _e3521_))))))
  (define gx#stx-vector? (lambda (_e3517_) (vector? (gx#stx-e _e3517_))))
  (define gx#stx-box? (lambda (_e3515_) (box? (gx#stx-e _e3515_))))
  (define gx#stx-eq?
    (lambda (_x3512_ _y3513_) (eq? (gx#stx-e _x3512_) (gx#stx-e _y3513_))))
  (define gx#stx-eqv?
    (lambda (_x3509_ _y3510_) (eqv? (gx#stx-e _x3509_) (gx#stx-e _y3510_))))
  (define gx#stx-equal?
    (lambda (_x3506_ _y3507_) (equal? (gx#stx-e _x3506_) (gx#stx-e _y3507_))))
  (define gx#stx-false? (lambda (_x3504_) (not (gx#stx-e _x3504_))))
  (define gx#stx-identifier
    (lambda (_template3501_ . _args3502_)
      (gx#datum->syntax__opt-lambda3688
       _template3501_
       (apply make-symbol (map gx#stx-e _args3502_))
       (gx#stx-source _template3501_))))
  (define gx#stx-identifier-marks
    (lambda (_stx3497_)
      (let ((_stx3499_ (gx#stx-unwrap__0 _stx3497_)))
        (if (##structure-direct-instance-of? _stx3499_ 'gx#identifier-wrap::t)
            (##structure-ref _stx3499_ '3 gx#identifier-wrap::t '#f)
            (##structure-ref _stx3499_ '4 gx#syntax-quote::t '#f)))))
  (define gx#stx-identifier-context
    (lambda (_stx3493_)
      (let ((_stx3495_ (gx#stx-unwrap__0 _stx3493_)))
        (if (gx#identifier-quote? _stx3495_)
            (##structure-ref _stx3495_ '3 gx#syntax-quote::t '#f)
            '#f))))
  (define gx#identifier-list?
    (lambda (_stx3448_)
      (let ((_g34493459_ (gx#stx-e _stx3448_)))
        (let ((_E34533463_
               (lambda () (error '"No clause matching" _g34493459_))))
          (let ((_else34523467_ (lambda () '#f)))
            (let ((_try-match34513475_
                   (lambda ()
                     (let ((_K34543472_ (lambda () '#t)))
                       (if (##null? _g34493459_)
                           (_K34543472_)
                           (_else34523467_))))))
              (let ((_K34553481_
                     (lambda (_rest3478_ _hd3479_)
                       (if (gx#identifier? _hd3479_)
                           (gx#identifier-list? _rest3478_)
                           '#f))))
                (if (##pair? _g34493459_)
                    (let ((_hd34563484_ (##car _g34493459_))
                          (_tl34573486_ (##cdr _g34493459_)))
                      (let ((_hd3489_ _hd34563484_))
                        (let ((_rest3491_ _tl34573486_))
                          (_K34553481_ _rest3491_ _hd3489_))))
                    (_try-match34513475_)))))))))
  (begin
    (define gx#genident__opt-lambda3423
      (lambda (_e3425_ _src3426_)
        (gx#stx-wrap-source
         (gensym (let ((_e3428_ (gx#stx-e _e3425_)))
                   (if (interned-symbol? _e3428_) _e3428_ 'g)))
         (let ((_$e3430_ (gx#stx-source _e3425_)))
           (if _$e3430_ _$e3430_ _src3426_)))))
    (begin
      (define gx#genident__0
        (lambda ()
          (let ((_e3437_ 'g))
            (let ((_src3439_ '#f))
              (gx#genident__opt-lambda3423 _e3437_ _src3439_)))))
      (define gx#genident__1
        (lambda (_e3441_)
          (let ((_src3443_ '#f))
            (gx#genident__opt-lambda3423 _e3441_ _src3443_))))
      (define gx#genident
        (lambda _g3748_
          (let ((_g3747_ (length _g3748_)))
            (cond ((fx= _g3747_ 0) (apply gx#genident__0 _g3748_))
                  ((fx= _g3747_ 1) (apply gx#genident__1 _g3748_))
                  ((fx= _g3747_ 2) (apply gx#genident__opt-lambda3423 _g3748_))
                  (else (error "No clause matching arguments" _g3748_))))))))
  (define gx#gentemps
    (lambda (_stx-lst3422_) (gx#stx-map1 gx#genident _stx-lst3422_)))
  (define gx#syntax->list (lambda (_stx3420_) (gx#stx-map1 values _stx3420_)))
  (define gx#stx-car (lambda (_stx3418_) (car (gx#syntax-e _stx3418_))))
  (define gx#stx-cdr (lambda (_stx3416_) (cdr (gx#syntax-e _stx3416_))))
  (define gx#stx-length
    (lambda (_stx3379_)
      ((letrec ((_lp3381_
                 (lambda (_rest3383_ _n3384_)
                   (let ((_g33853393_ (gx#stx-e _rest3383_)))
                     (let ((_E33883397_
                            (lambda ()
                              (error '"No clause matching" _g33853393_))))
                       (let ((_else33873401_ (lambda () _n3384_)))
                         (let ((_K33893406_
                                (lambda (_rest3404_)
                                  (_lp3381_ _rest3404_ (fx+ _n3384_ '1)))))
                           (if (##pair? _g33853393_)
                               (let ((_hd33903409_ (##car _g33853393_))
                                     (_tl33913411_ (##cdr _g33853393_)))
                                 (let ((_rest3414_ _tl33913411_))
                                   (_K33893406_ _rest3414_)))
                               (_else33873401_)))))))))
         _lp3381_)
       _stx3379_
       '0)))
  (define gx#stx-for-each
    (lambda _g3750_
      (let ((_g3749_ (length _g3750_)))
        (cond ((fx= _g3749_ 2) (apply gx#stx-for-each1 _g3750_))
              ((fx= _g3749_ 3) (apply gx#stx-for-each2 _g3750_))
              (else (error "No clause matching arguments" _g3750_))))))
  (define gx#stx-for-each1
    (lambda (_f3322_ _stx3323_)
      ((letrec ((_lp3325_
                 (lambda (_rest3327_)
                   (let ((_g33283338_ (gx#syntax-e _rest3327_)))
                     (let ((_E33323342_
                            (lambda ()
                              (error '"No clause matching" _g33283338_))))
                       (let ((_else33313346_ (lambda () (_f3322_ _rest3327_))))
                         (let ((_try-match33303354_
                                (lambda ()
                                  (let ((_K33333351_ (lambda () '#!void)))
                                    (if (##null? _g33283338_)
                                        (_K33333351_)
                                        (_else33313346_))))))
                           (let ((_K33343360_
                                  (lambda (_rest3357_ _hd3358_)
                                    (begin
                                      (_f3322_ _hd3358_)
                                      (_lp3325_ _rest3357_)))))
                             (if (##pair? _g33283338_)
                                 (let ((_hd33353363_ (##car _g33283338_))
                                       (_tl33363365_ (##cdr _g33283338_)))
                                   (let ((_hd3368_ _hd33353363_))
                                     (let ((_rest3370_ _tl33363365_))
                                       (_K33343360_ _rest3370_ _hd3368_))))
                                 (_try-match33303354_))))))))))
         _lp3325_)
       _stx3323_)))
  (define gx#stx-for-each2
    (lambda (_f3227_ _xstx3228_ _ystx3229_)
      ((letrec ((_lp3231_
                 (lambda (_xrest3233_ _yrest3234_)
                   (let ((_g32353245_ (gx#syntax-e _xrest3233_)))
                     (let ((_E32393249_
                            (lambda ()
                              (error '"No clause matching" _g32353245_))))
                       (let ((_else32383253_ (lambda () '#!void)))
                         (let ((_try-match32373276_
                                (lambda ()
                                  (let ((_K32403273_
                                         (lambda ()
                                           (let ((_yrest32573262_ _yrest3234_))
                                             (let ((_E32593266_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _yrest32573262_))))
                                               (let ((_K32603270_
                                                      (lambda ()
                                                        (_f3227_ _xrest3233_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _yrest3234_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (not (gx#stx-null?
                                                           _yrest32573262_))
                                                     (_K32603270_)
                                                     (_E32593266_))))))))
                                    (if (not (null? _g32353245_))
                                        (_K32403273_)
                                        (_else32383253_))))))
                           (let ((_K32413310_
                                  (lambda (_xrest3279_ _xhd3280_)
                                    (let ((_g32813288_
                                           (gx#syntax-e _yrest3234_)))
                                      (let ((_E32833292_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _g32813288_))))
                                        (let ((_K32843298_
                                               (lambda (_yrest3295_ _yhd3296_)
                                                 (begin
                                                   (_f3227_ _xhd3280_
                                                            _yhd3296_)
                                                   (_lp3231_
                                                    _xrest3279_
                                                    _yrest3295_)))))
                                          (if (##pair? _g32813288_)
                                              (let ((_hd32853301_
                                                     (##car _g32813288_))
                                                    (_tl32863303_
                                                     (##cdr _g32813288_)))
                                                (let ((_yhd3306_ _hd32853301_))
                                                  (let ((_yrest3308_
                                                         _tl32863303_))
                                                    (_K32843298_
                                                     _yrest3308_
                                                     _yhd3306_))))
                                              (_E32833292_))))))))
                             (if (##pair? _g32353245_)
                                 (let ((_hd32423313_ (##car _g32353245_))
                                       (_tl32433315_ (##cdr _g32353245_)))
                                   (let ((_xhd3318_ _hd32423313_))
                                     (let ((_xrest3320_ _tl32433315_))
                                       (_K32413310_ _xrest3320_ _xhd3318_))))
                                 (_try-match32373276_))))))))))
         _lp3231_)
       _xstx3228_
       _ystx3229_)))
  (define gx#stx-map
    (lambda _g3752_
      (let ((_g3751_ (length _g3752_)))
        (cond ((fx= _g3751_ 2) (apply gx#stx-map1 _g3752_))
              ((fx= _g3751_ 3) (apply gx#stx-map2 _g3752_))
              (else (error "No clause matching arguments" _g3752_))))))
  (define gx#stx-map1
    (lambda (_f3170_ _stx3171_)
      ((letrec ((_recur3173_
                 (lambda (_rest3175_)
                   (let ((_g31763186_ (gx#syntax-e _rest3175_)))
                     (let ((_E31803190_
                            (lambda ()
                              (error '"No clause matching" _g31763186_))))
                       (let ((_else31793194_ (lambda () (_f3170_ _rest3175_))))
                         (let ((_try-match31783202_
                                (lambda ()
                                  (let ((_K31813199_ (lambda () '())))
                                    (if (##null? _g31763186_)
                                        (_K31813199_)
                                        (_else31793194_))))))
                           (let ((_K31823208_
                                  (lambda (_rest3205_ _hd3206_)
                                    (cons (_f3170_ _hd3206_)
                                          (_recur3173_ _rest3205_)))))
                             (if (##pair? _g31763186_)
                                 (let ((_hd31833211_ (##car _g31763186_))
                                       (_tl31843213_ (##cdr _g31763186_)))
                                   (let ((_hd3216_ _hd31833211_))
                                     (let ((_rest3218_ _tl31843213_))
                                       (_K31823208_ _rest3218_ _hd3216_))))
                                 (_try-match31783202_))))))))))
         _recur3173_)
       _stx3171_)))
  (define gx#stx-map2
    (lambda (_f3075_ _xstx3076_ _ystx3077_)
      ((letrec ((_recur3079_
                 (lambda (_xrest3081_ _yrest3082_)
                   (let ((_g30833093_ (gx#syntax-e _xrest3081_)))
                     (let ((_E30873097_
                            (lambda ()
                              (error '"No clause matching" _g30833093_))))
                       (let ((_else30863101_ (lambda () '())))
                         (let ((_try-match30853124_
                                (lambda ()
                                  (let ((_K30883121_
                                         (lambda ()
                                           (let ((_yrest31053110_ _yrest3082_))
                                             (let ((_E31073114_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _yrest31053110_))))
                                               (let ((_K31083118_
                                                      (lambda ()
                                                        (_f3075_ _xrest3081_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _yrest3082_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (not (gx#stx-null?
                                                           _yrest31053110_))
                                                     (_K31083118_)
                                                     (_E31073114_))))))))
                                    (if (not (null? _g30833093_))
                                        (_K30883121_)
                                        (_else30863101_))))))
                           (let ((_K30893158_
                                  (lambda (_xrest3127_ _xhd3128_)
                                    (let ((_g31293136_
                                           (gx#syntax-e _yrest3082_)))
                                      (let ((_E31313140_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _g31293136_))))
                                        (let ((_K31323146_
                                               (lambda (_yrest3143_ _yhd3144_)
                                                 (cons (_f3075_ _xhd3128_
                                                                _yhd3144_)
                                                       (_recur3079_
                                                        _xrest3127_
                                                        _yrest3143_)))))
                                          (if (##pair? _g31293136_)
                                              (let ((_hd31333149_
                                                     (##car _g31293136_))
                                                    (_tl31343151_
                                                     (##cdr _g31293136_)))
                                                (let ((_yhd3154_ _hd31333149_))
                                                  (let ((_yrest3156_
                                                         _tl31343151_))
                                                    (_K31323146_
                                                     _yrest3156_
                                                     _yhd3154_))))
                                              (_E31313140_))))))))
                             (if (##pair? _g30833093_)
                                 (let ((_hd30903161_ (##car _g30833093_))
                                       (_tl30913163_ (##cdr _g30833093_)))
                                   (let ((_xhd3166_ _hd30903161_))
                                     (let ((_xrest3168_ _tl30913163_))
                                       (_K30893158_ _xrest3168_ _xhd3166_))))
                                 (_try-match30853124_))))))))))
         _recur3079_)
       _xstx3076_
       _ystx3077_)))
  (define gx#stx-andmap
    (lambda (_f3025_ _stx3026_)
      ((letrec ((_lp3028_
                 (lambda (_rest3030_)
                   (let ((_g30313041_ (gx#syntax-e _rest3030_)))
                     (let ((_E30353045_
                            (lambda ()
                              (error '"No clause matching" _g30313041_))))
                       (let ((_else30343049_ (lambda () (_f3025_ _rest3030_))))
                         (let ((_try-match30333057_
                                (lambda ()
                                  (let ((_K30363054_ (lambda () '#t)))
                                    (if (##null? _g30313041_)
                                        (_K30363054_)
                                        (_else30343049_))))))
                           (let ((_K30373063_
                                  (lambda (_rest3060_ _hd3061_)
                                    (if (_f3025_ _hd3061_)
                                        (_lp3028_ _rest3060_)
                                        '#f))))
                             (if (##pair? _g30313041_)
                                 (let ((_hd30383066_ (##car _g30313041_))
                                       (_tl30393068_ (##cdr _g30313041_)))
                                   (let ((_hd3071_ _hd30383066_))
                                     (let ((_rest3073_ _tl30393068_))
                                       (_K30373063_ _rest3073_ _hd3071_))))
                                 (_try-match30333057_))))))))))
         _lp3028_)
       _stx3026_)))
  (define gx#stx-ormap
    (lambda (_f2972_ _stx2973_)
      ((letrec ((_lp2975_
                 (lambda (_rest2977_)
                   (let ((_g29782988_ (gx#syntax-e _rest2977_)))
                     (let ((_E29822992_
                            (lambda ()
                              (error '"No clause matching" _g29782988_))))
                       (let ((_else29812996_ (lambda () (_f2972_ _rest2977_))))
                         (let ((_try-match29803004_
                                (lambda ()
                                  (let ((_K29833001_ (lambda () '#f)))
                                    (if (##null? _g29782988_)
                                        (_K29833001_)
                                        (_else29812996_))))))
                           (let ((_K29843013_
                                  (lambda (_rest3007_ _hd3008_)
                                    (let ((_$e3010_ (_f2972_ _hd3008_)))
                                      (if _$e3010_
                                          _$e3010_
                                          (_lp2975_ _rest3007_))))))
                             (if (##pair? _g29782988_)
                                 (let ((_hd29853016_ (##car _g29782988_))
                                       (_tl29863018_ (##cdr _g29782988_)))
                                   (let ((_hd3021_ _hd29853016_))
                                     (let ((_rest3023_ _tl29863018_))
                                       (_K29843013_ _rest3023_ _hd3021_))))
                                 (_try-match29803004_))))))))))
         _lp2975_)
       _stx2973_)))
  (define gx#stx-foldl
    (lambda (_f2920_ _iv2921_ _stx2922_)
      ((letrec ((_lp2924_
                 (lambda (_r2926_ _rest2927_)
                   (let ((_g29282938_ (gx#syntax-e _rest2927_)))
                     (let ((_E29322942_
                            (lambda ()
                              (error '"No clause matching" _g29282938_))))
                       (let ((_else29312946_
                              (lambda () (_f2920_ _rest2927_ _r2926_))))
                         (let ((_try-match29302954_
                                (lambda ()
                                  (let ((_K29332951_ (lambda () _r2926_)))
                                    (if (##null? _g29282938_)
                                        (_K29332951_)
                                        (_else29312946_))))))
                           (let ((_K29342960_
                                  (lambda (_rest2957_ _hd2958_)
                                    (_lp2924_
                                     (_f2920_ _hd2958_ _r2926_)
                                     _rest2957_))))
                             (if (##pair? _g29282938_)
                                 (let ((_hd29352963_ (##car _g29282938_))
                                       (_tl29362965_ (##cdr _g29282938_)))
                                   (let ((_hd2968_ _hd29352963_))
                                     (let ((_rest2970_ _tl29362965_))
                                       (_K29342960_ _rest2970_ _hd2968_))))
                                 (_try-match29302954_))))))))))
         _lp2924_)
       _iv2921_
       _stx2922_)))
  (define gx#stx-foldr
    (lambda (_f2869_ _iv2870_ _stx2871_)
      ((letrec ((_recur2873_
                 (lambda (_rest2875_)
                   (let ((_g28762886_ (gx#syntax-e _rest2875_)))
                     (let ((_E28802890_
                            (lambda ()
                              (error '"No clause matching" _g28762886_))))
                       (let ((_else28792894_
                              (lambda () (_f2869_ _rest2875_ _iv2870_))))
                         (let ((_try-match28782902_
                                (lambda ()
                                  (let ((_K28812899_ (lambda () _iv2870_)))
                                    (if (##null? _g28762886_)
                                        (_K28812899_)
                                        (_else28792894_))))))
                           (let ((_K28822908_
                                  (lambda (_rest2905_ _hd2906_)
                                    (_f2869_ _hd2906_
                                             (_recur2873_ _rest2905_)))))
                             (if (##pair? _g28762886_)
                                 (let ((_hd28832911_ (##car _g28762886_))
                                       (_tl28842913_ (##cdr _g28762886_)))
                                   (let ((_hd2916_ _hd28832911_))
                                     (let ((_rest2918_ _tl28842913_))
                                       (_K28822908_ _rest2918_ _hd2916_))))
                                 (_try-match28782902_))))))))))
         _recur2873_)
       _stx2871_)))
  (define gx#stx-reverse
    (lambda (_stx2867_) (gx#stx-foldl cons '() _stx2867_)))
  (define gx#stx-last
    (lambda (_stx2828_)
      ((letrec ((_lp2830_
                 (lambda (_rest2832_)
                   (let ((_g28332841_ (gx#syntax-e _rest2832_)))
                     (let ((_E28362845_
                            (lambda ()
                              (error '"No clause matching" _g28332841_))))
                       (let ((_else28352849_ (lambda () _rest2832_)))
                         (let ((_K28372855_
                                (lambda (_rest2852_ _hd2853_)
                                  (if (gx#stx-null? _rest2852_)
                                      _hd2853_
                                      (_lp2830_ _rest2852_)))))
                           (if (##pair? _g28332841_)
                               (let ((_hd28382858_ (##car _g28332841_))
                                     (_tl28392860_ (##cdr _g28332841_)))
                                 (let ((_hd2863_ _hd28382858_))
                                   (let ((_rest2865_ _tl28392860_))
                                     (_K28372855_ _rest2865_ _hd2863_))))
                               (_else28352849_)))))))))
         _lp2830_)
       _stx2828_)))
  (define gx#stx-last-pair
    (lambda (_stx2797_)
      ((letrec ((_lp2799_
                 (lambda (_hd2801_)
                   (let ((_g28022809_ (gx#syntax-e _hd2801_)))
                     (let ((_E28042813_
                            (lambda ()
                              (error '"No clause matching" _g28022809_))))
                       (let ((_K28052818_
                              (lambda (_rest2816_)
                                (if (gx#stx-pair? _rest2816_)
                                    (_lp2799_ _rest2816_)
                                    _hd2801_))))
                         (if (##pair? _g28022809_)
                             (let ((_hd28062821_ (##car _g28022809_))
                                   (_tl28072823_ (##cdr _g28022809_)))
                               (let ((_rest2826_ _tl28072823_))
                                 (_K28052818_ _rest2826_)))
                             (_E28042813_))))))))
         _lp2799_)
       _stx2797_)))
  (define gx#stx-list-tail
    (lambda (_stx2764_ _k2765_)
      ((letrec ((_lp2767_
                 (lambda (_rest2769_ _k2770_)
                   (if (fxpositive? _k2770_)
                       (let ((_g27712778_ (gx#syntax-e _rest2769_)))
                         (let ((_E27732782_
                                (lambda ()
                                  (error '"No clause matching" _g27712778_))))
                           (let ((_K27742787_
                                  (lambda (_rest2785_)
                                    (_lp2767_ _rest2785_ (fx- _k2770_ '1)))))
                             (if (##pair? _g27712778_)
                                 (let ((_hd27752790_ (##car _g27712778_))
                                       (_tl27762792_ (##cdr _g27712778_)))
                                   (let ((_rest2795_ _tl27762792_))
                                     (_K27742787_ _rest2795_)))
                                 (_E27732782_)))))
                       _rest2769_))))
         _lp2767_)
       _stx2764_
       _k2765_)))
  (define gx#stx-list-ref
    (lambda (_stx2761_ _k2762_)
      (gx#stx-car (gx#stx-list-tail _stx2761_ _k2762_))))
  (begin
    (define gx#stx-plist?__opt-lambda2669
      (lambda (_stx2671_ _key?2672_)
        ((letrec ((_lp2674_
                   (lambda (_rest2676_)
                     (let ((_g26772687_ (gx#stx-e _rest2676_)))
                       (let ((_E26812691_
                              (lambda ()
                                (error '"No clause matching" _g26772687_))))
                         (let ((_else26802695_ (lambda () '#f)))
                           (let ((_try-match26792703_
                                  (lambda ()
                                    (let ((_K26822700_ (lambda () '#t)))
                                      (if (##null? _g26772687_)
                                          (_K26822700_)
                                          (_else26802695_))))))
                             (let ((_K26832739_
                                    (lambda (_rest2706_ _hd2707_)
                                      (if (_key?2672_ _hd2707_)
                                          (let ((_g27082716_
                                                 (gx#stx-e _rest2706_)))
                                            (let ((_E27112720_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _g27082716_))))
                                              (let ((_else27102724_
                                                     (lambda () '#f)))
                                                (let ((_K27122729_
                                                       (lambda (_rest2727_)
                                                         (_lp2674_
                                                          _rest2727_))))
                                                  (if (##pair? _g27082716_)
                                                      (let ((_hd27132732_
                                                             (##car _g27082716_))
                                                            (_tl27142734_
                                                             (##cdr _g27082716_)))
                                                        (let ((_rest2737_
                                                               _tl27142734_))
                                                          (_K27122729_
                                                           _rest2737_)))
                                                      (_else27102724_))))))
                                          '#f))))
                               (if (##pair? _g26772687_)
                                   (let ((_hd26842742_ (##car _g26772687_))
                                         (_tl26852744_ (##cdr _g26772687_)))
                                     (let ((_hd2747_ _hd26842742_))
                                       (let ((_rest2749_ _tl26852744_))
                                         (_K26832739_ _rest2749_ _hd2747_))))
                                   (_try-match26792703_))))))))))
           _lp2674_)
         _stx2671_)))
    (begin
      (define gx#stx-plist?__0
        (lambda (_stx2754_)
          (let ((_key?2756_ gx#stx-keyword?))
            (gx#stx-plist?__opt-lambda2669 _stx2754_ _key?2756_))))
      (define gx#stx-plist?
        (lambda _g3754_
          (let ((_g3753_ (length _g3754_)))
            (cond ((fx= _g3753_ 1) (apply gx#stx-plist?__0 _g3754_))
                  ((fx= _g3753_ 2)
                   (apply gx#stx-plist?__opt-lambda2669 _g3754_))
                  (else (error "No clause matching arguments" _g3754_))))))))
  (begin
    (define gx#stx-getq__opt-lambda2587
      (lambda (_key2589_ _stx2590_ _key=?2591_)
        ((letrec ((_lp2593_
                   (lambda (_rest2595_)
                     (let ((_g25962604_ (gx#syntax-e _rest2595_)))
                       (let ((_E25992608_
                              (lambda ()
                                (error '"No clause matching" _g25962604_))))
                         (let ((_else25982612_ (lambda () '#f)))
                           (let ((_K26002646_
                                  (lambda (_rest2615_ _hd2616_)
                                    (let ((_g26172624_
                                           (gx#syntax-e _rest2615_)))
                                      (let ((_E26192628_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _g26172624_))))
                                        (let ((_K26202634_
                                               (lambda (_rest2631_ _val2632_)
                                                 (if (_key=?2591_
                                                      _hd2616_
                                                      _key2589_)
                                                     _val2632_
                                                     (_lp2593_ _rest2631_)))))
                                          (if (##pair? _g26172624_)
                                              (let ((_hd26212637_
                                                     (##car _g26172624_))
                                                    (_tl26222639_
                                                     (##cdr _g26172624_)))
                                                (let ((_val2642_ _hd26212637_))
                                                  (let ((_rest2644_
                                                         _tl26222639_))
                                                    (_K26202634_
                                                     _rest2644_
                                                     _val2642_))))
                                              (_E26192628_))))))))
                             (if (##pair? _g25962604_)
                                 (let ((_hd26012649_ (##car _g25962604_))
                                       (_tl26022651_ (##cdr _g25962604_)))
                                   (let ((_hd2654_ _hd26012649_))
                                     (let ((_rest2656_ _tl26022651_))
                                       (_K26002646_ _rest2656_ _hd2654_))))
                                 (_else25982612_)))))))))
           _lp2593_)
         _stx2590_)))
    (begin
      (define gx#stx-getq__0
        (lambda (_key2661_ _stx2662_)
          (let ((_key=?2664_ gx#stx-eq?))
            (gx#stx-getq__opt-lambda2587 _key2661_ _stx2662_ _key=?2664_))))
      (define gx#stx-getq
        (lambda _g3756_
          (let ((_g3755_ (length _g3756_)))
            (cond ((fx= _g3755_ 2) (apply gx#stx-getq__0 _g3756_))
                  ((fx= _g3755_ 3) (apply gx#stx-getq__opt-lambda2587 _g3756_))
                  (else (error "No clause matching arguments" _g3756_)))))))))
