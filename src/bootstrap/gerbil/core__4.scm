(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g41797_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g41798_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g41799_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g41835_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g41836_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g41837_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g41844_|
    (##structure
     gx#syntax-quote::t
     'unquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g41845_|
    (##structure
     gx#syntax-quote::t
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g41846_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g41847_|
    (##structure
     gx#syntax-quote::t
     'unquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g41848_|
    (##structure
     gx#syntax-quote::t
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g41849_|
    (##structure
     gx#syntax-quote::t
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g41850_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g41851_|
    (##structure
     gx#syntax-quote::t
     '<...>
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#lambda|
      (lambda (_stx4923_)
        (letrec ((_simple-lambda?4926_
                  (lambda (_hd8323_) (gx#stx-andmap gx#identifier? _hd8323_)))
                 (_opt-lambda?4928_
                  (lambda (_hd8175_)
                    (let _lp8178_ ((_rest8181_ _hd8175_) (_opt?8183_ '#f))
                      (let* ((___stx3710937110_ _rest8181_)
                             (_g81868198_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx3710937110_))))
                        (let ((___kont3711237113_
                               (lambda (_L8230_ _L8232_)
                                 (let* ((___stx3708537086_ _L8232_)
                                        (_g82488262_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            ___stx3708537086_))))
                                   (let ((___kont3708837089_
                                          (lambda (_L8300_)
                                            (_lp8178_ _L8230_ '#t)))
                                         (___kont3709037091_
                                          (lambda ()
                                            (if (gx#identifier? _L8232_)
                                                (if (not _opt?8183_)
                                                    (_lp8178_ _L8230_ '#f)
                                                    '#f)
                                                '#f))))
                                     (let ((___match3710637107_
                                            (lambda (_e82518280_
                                                     _hd82528284_
                                                     _tl82538287_
                                                     _e82548290_
                                                     _hd82558294_
                                                     _tl82568297_)
                                              (let ((_L8300_ _hd82528284_))
                                                (if (gx#identifier? _L8300_)
                                                    (___kont3708837089_
                                                     _L8300_)
                                                    (___kont3709037091_))))))
                                       (if (gx#stx-pair? ___stx3708537086_)
                                           (let ((_e82518280_
                                                  (gx#syntax-e
                                                   ___stx3708537086_)))
                                             (let ((_tl82538287_
                                                    (##cdr _e82518280_))
                                                   (_hd82528284_
                                                    (##car _e82518280_)))
                                               (if (gx#stx-pair? _tl82538287_)
                                                   (let ((_e82548290_
                                                          (gx#syntax-e
                                                           _tl82538287_)))
                                                     (let ((_tl82568297_
                                                            (##cdr _e82548290_))
                                                           (_hd82558294_
                                                            (##car _e82548290_)))
                                                       (if (gx#stx-null?
                                                            _tl82568297_)
                                                           (___match3710637107_
                                                            _e82518280_
                                                            _hd82528284_
                                                            _tl82538287_
                                                            _e82548290_
                                                            _hd82558294_
                                                            _tl82568297_)
                                                           (___kont3709037091_))))
                                                   (___kont3709037091_))))
                                           (___kont3709037091_)))))))
                              (___kont3711437115_
                               (lambda ()
                                 (if _opt?8183_
                                     (let ((_$e8209_
                                            (gx#stx-null? _rest8181_)))
                                       (if _$e8209_
                                           _$e8209_
                                           (gx#identifier? _rest8181_)))
                                     '#f))))
                          (if (gx#stx-pair? ___stx3710937110_)
                              (let ((_e81908220_
                                     (gx#syntax-e ___stx3710937110_)))
                                (let ((_tl81928227_ (##cdr _e81908220_))
                                      (_hd81918224_ (##car _e81908220_)))
                                  (___kont3711237113_
                                   _tl81928227_
                                   _hd81918224_)))
                              (___kont3711437115_)))))))
                 (_opt-lambda-split4929_
                  (lambda (_hd8027_)
                    (let _lp8030_ ((_rest8033_ _hd8027_)
                                   (_pre8035_ '())
                                   (_opt8036_ '()))
                      (let* ((___stx3714937150_ _rest8033_)
                             (_g80398051_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx3714937150_))))
                        (let ((___kont3715237153_
                               (lambda (_L8079_ _L8081_)
                                 (let* ((___stx3712537126_ _L8081_)
                                        (_g80978112_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            ___stx3712537126_))))
                                   (let ((___kont3712837129_
                                          (lambda (_L8150_ _L8152_)
                                            (_lp8030_
                                             _L8079_
                                             _pre8035_
                                             (cons (cons (_generate-bind4932_
                                                          _L8152_)
                                                         _L8150_)
                                                   _opt8036_))))
                                         (___kont3713037131_
                                          (lambda ()
                                            (_lp8030_
                                             _L8079_
                                             (cons (_generate-bind4932_
                                                    _L8081_)
                                                   _pre8035_)
                                             _opt8036_))))
                                     (if (gx#stx-pair? ___stx3712537126_)
                                         (let ((_e81018130_
                                                (gx#syntax-e
                                                 ___stx3712537126_)))
                                           (let ((_tl81038137_
                                                  (##cdr _e81018130_))
                                                 (_hd81028134_
                                                  (##car _e81018130_)))
                                             (if (gx#stx-pair? _tl81038137_)
                                                 (let ((_e81048140_
                                                        (gx#syntax-e
                                                         _tl81038137_)))
                                                   (let ((_tl81068147_
                                                          (##cdr _e81048140_))
                                                         (_hd81058144_
                                                          (##car _e81048140_)))
                                                     (if (gx#stx-null?
                                                          _tl81068147_)
                                                         (___kont3712837129_
                                                          _hd81058144_
                                                          _hd81028134_)
                                                         (___kont3713037131_))))
                                                 (___kont3713037131_))))
                                         (___kont3713037131_))))))
                              (___kont3715437155_
                               (lambda ()
                                 (values (reverse _pre8035_)
                                         (reverse _opt8036_)
                                         (if (gx#identifier? _rest8033_)
                                             (_generate-bind4932_ _rest8033_)
                                             _rest8033_)))))
                          (if (gx#stx-pair? ___stx3714937150_)
                              (let ((_e80438069_
                                     (gx#syntax-e ___stx3714937150_)))
                                (let ((_tl80458076_ (##cdr _e80438069_))
                                      (_hd80448073_ (##car _e80438069_)))
                                  (___kont3715237153_
                                   _tl80458076_
                                   _hd80448073_)))
                              (___kont3715437155_)))))))
                 (_kw-lambda?4930_
                  (lambda (_hd7695_)
                    (let _lp7698_ ((_rest7701_ _hd7695_)
                                   (_opt?7703_ '#f)
                                   (_key?7704_ '#f))
                      (let* ((___stx3721337214_ _rest7701_)
                             (_g77097739_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx3721337214_))))
                        (let ((___kont3721637217_
                               (lambda (_L7934_ _L7936_ _L7937_)
                                 (let* ((___stx3718937190_ _L7936_)
                                        (_g79527966_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            ___stx3718937190_))))
                                   (let ((___kont3719237193_
                                          (lambda (_L8004_)
                                            (if (gx#identifier? _L8004_)
                                                (_lp7698_
                                                 _L7934_
                                                 _opt?7703_
                                                 '#t)
                                                '#f)))
                                         (___kont3719437195_
                                          (lambda ()
                                            (if (gx#identifier? _L7936_)
                                                (_lp7698_
                                                 _L7934_
                                                 _opt?7703_
                                                 '#t)
                                                '#f))))
                                     (if (gx#stx-pair? ___stx3718937190_)
                                         (let ((_e79557984_
                                                (gx#syntax-e
                                                 ___stx3718937190_)))
                                           (let ((_tl79577991_
                                                  (##cdr _e79557984_))
                                                 (_hd79567988_
                                                  (##car _e79557984_)))
                                             (if (gx#stx-pair? _tl79577991_)
                                                 (let ((_e79587994_
                                                        (gx#syntax-e
                                                         _tl79577991_)))
                                                   (let ((_tl79608001_
                                                          (##cdr _e79587994_))
                                                         (_hd79597998_
                                                          (##car _e79587994_)))
                                                     (if (gx#stx-null?
                                                          _tl79608001_)
                                                         (___kont3719237193_
                                                          _hd79567988_)
                                                         (___kont3719437195_))))
                                                 (___kont3719437195_))))
                                         (___kont3719437195_))))))
                              (___kont3721837219_
                               (lambda (_L7891_ _L7893_)
                                 (if (gx#identifier? _L7893_)
                                     (_lp7698_ _L7891_ _opt?7703_ '#t)
                                     '#f)))
                              (___kont3722037221_
                               (lambda (_L7771_ _L7773_)
                                 (let* ((___stx3716537166_ _L7773_)
                                        (_g77897803_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            ___stx3716537166_))))
                                   (let ((___kont3716837169_
                                          (lambda (_L7841_)
                                            (if (gx#identifier? _L7841_)
                                                (_lp7698_
                                                 _L7771_
                                                 '#t
                                                 _key?7704_)
                                                '#f)))
                                         (___kont3717037171_
                                          (lambda ()
                                            (if (gx#identifier? _L7773_)
                                                (if (not _opt?7703_)
                                                    (_lp7698_
                                                     _L7771_
                                                     '#f
                                                     _key?7704_)
                                                    '#f)
                                                '#f))))
                                     (if (gx#stx-pair? ___stx3716537166_)
                                         (let ((_e77927821_
                                                (gx#syntax-e
                                                 ___stx3716537166_)))
                                           (let ((_tl77947828_
                                                  (##cdr _e77927821_))
                                                 (_hd77937825_
                                                  (##car _e77927821_)))
                                             (if (gx#stx-pair? _tl77947828_)
                                                 (let ((_e77957831_
                                                        (gx#syntax-e
                                                         _tl77947828_)))
                                                   (let ((_tl77977838_
                                                          (##cdr _e77957831_))
                                                         (_hd77967835_
                                                          (##car _e77957831_)))
                                                     (if (gx#stx-null?
                                                          _tl77977838_)
                                                         (___kont3716837169_
                                                          _hd77937825_)
                                                         (___kont3717037171_))))
                                                 (___kont3717037171_))))
                                         (___kont3717037171_))))))
                              (___kont3722237223_
                               (lambda ()
                                 (if _key?7704_
                                     (let ((_$e7750_
                                            (gx#stx-null? _rest7701_)))
                                       (if _$e7750_
                                           _$e7750_
                                           (gx#identifier? _rest7701_)))
                                     '#f))))
                          (let ((___match3723637237_
                                 (lambda (_e77147914_
                                          _hd77157918_
                                          _tl77167921_
                                          _e77177924_
                                          _hd77187928_
                                          _tl77197931_)
                                   (let ((_L7934_ _tl77197931_)
                                         (_L7936_ _hd77187928_)
                                         (_L7937_ _hd77157918_))
                                     (if (gx#stx-keyword? _L7937_)
                                         (___kont3721637217_
                                          _L7934_
                                          _L7936_
                                          _L7937_)
                                         (if (gx#stx-datum? _hd77157918_)
                                             (let ((_e77257877_
                                                    (gx#stx-e _hd77157918_)))
                                               (if (equal? _e77257877_ '#!key)
                                                   (___kont3721837219_
                                                    _tl77197931_
                                                    _hd77187928_)
                                                   (___kont3722037221_
                                                    _tl77167921_
                                                    _hd77157918_)))
                                             (___kont3722037221_
                                              _tl77167921_
                                              _hd77157918_)))))))
                            (if (gx#stx-pair? ___stx3721337214_)
                                (let ((_e77147914_
                                       (gx#syntax-e ___stx3721337214_)))
                                  (let ((_tl77167921_ (##cdr _e77147914_))
                                        (_hd77157918_ (##car _e77147914_)))
                                    (if (gx#stx-pair? _tl77167921_)
                                        (let ((_e77177924_
                                               (gx#syntax-e _tl77167921_)))
                                          (let ((_tl77197931_
                                                 (##cdr _e77177924_))
                                                (_hd77187928_
                                                 (##car _e77177924_)))
                                            (___match3723637237_
                                             _e77147914_
                                             _hd77157918_
                                             _tl77167921_
                                             _e77177924_
                                             _hd77187928_
                                             _tl77197931_)))
                                        (if (gx#stx-datum? _hd77157918_)
                                            (let ((_e77257877_
                                                   (gx#stx-e _hd77157918_)))
                                              (___kont3722037221_
                                               _tl77167921_
                                               _hd77157918_))
                                            (___kont3722037221_
                                             _tl77167921_
                                             _hd77157918_)))))
                                (___kont3722237223_))))))))
                 (_kw-lambda-split4931_
                  (lambda (_hd7428_)
                    (let _lp7431_ ((_rest7434_ _hd7428_)
                                   (_kwvar7436_ '#f)
                                   (_kwargs7437_ '())
                                   (_args7438_ '()))
                      (let* ((___stx3728737288_ _rest7434_)
                             (_g74437473_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx3728737288_))))
                        (let ((___kont3729037291_
                               (lambda (_L7592_ _L7594_ _L7595_)
                                 (let ((_key7609_ (gx#stx-e _L7595_)))
                                   (if (find (lambda (_kwarg7612_)
                                               (eq? _key7609_
                                                    (car _kwarg7612_)))
                                             _kwargs7437_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; duplicate keyword argument"
                                        _stx4923_
                                        _hd7428_
                                        _key7609_)
                                       (let* ((___stx3726337264_ _L7594_)
                                              (_g76167631_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  ___stx3726337264_))))
                                         (let ((___kont3726637267_
                                                (lambda (_L7669_ _L7671_)
                                                  (_lp7431_
                                                   _L7592_
                                                   _kwvar7436_
                                                   (cons (list _key7609_
                                                               (_generate-bind4932_
                                                                _L7671_)
                                                               _L7669_)
                                                         _kwargs7437_)
                                                   _args7438_)))
                                               (___kont3726837269_
                                                (lambda ()
                                                  (_lp7431_
                                                   _L7592_
                                                   _kwvar7436_
                                                   (cons (list _key7609_
                                                               (_generate-bind4932_
                                                                _L7594_)
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'error)
                             (cons '"Missing required keyword argument"
                                   (cons _L7595_ '()))))
                 _kwargs7437_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _args7438_))))
                                           (if (gx#stx-pair? ___stx3726337264_)
                                               (let ((_e76207649_
                                                      (gx#syntax-e
                                                       ___stx3726337264_)))
                                                 (let ((_tl76227656_
                                                        (##cdr _e76207649_))
                                                       (_hd76217653_
                                                        (##car _e76207649_)))
                                                   (if (gx#stx-pair?
                                                        _tl76227656_)
                                                       (let ((_e76237659_
                                                              (gx#syntax-e
                                                               _tl76227656_)))
                                                         (let ((_tl76257666_
                                                                (##cdr _e76237659_))
                                                               (_hd76247663_
                                                                (##car _e76237659_)))
                                                           (if (gx#stx-null?
                                                                _tl76257666_)
                                                               (___kont3726637267_
                                                                _hd76247663_
                                                                _hd76217653_)
                                                               (___kont3726837269_))))
                                                       (___kont3726837269_))))
                                               (___kont3726837269_))))))))
                              (___kont3729237293_
                               (lambda (_L7549_ _L7551_)
                                 (if _kwvar7436_
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; duplicate #!key argument"
                                      _stx4923_
                                      _hd7428_
                                      _L7551_)
                                     (_lp7431_
                                      _L7549_
                                      (_generate-bind4932_ _L7551_)
                                      _kwargs7437_
                                      _args7438_))))
                              (___kont3729437295_
                               (lambda (_L7501_ _L7503_)
                                 (_lp7431_
                                  _L7501_
                                  _kwvar7436_
                                  _kwargs7437_
                                  (cons _L7503_ _args7438_))))
                              (___kont3729637297_
                               (lambda ()
                                 (values _kwvar7436_
                                         (reverse _kwargs7437_)
                                         (foldl cons _rest7434_ _args7438_)))))
                          (let ((___match3731037311_
                                 (lambda (_e74487572_
                                          _hd74497576_
                                          _tl74507579_
                                          _e74517582_
                                          _hd74527586_
                                          _tl74537589_)
                                   (let ((_L7592_ _tl74537589_)
                                         (_L7594_ _hd74527586_)
                                         (_L7595_ _hd74497576_))
                                     (if (gx#stx-keyword? _L7595_)
                                         (___kont3729037291_
                                          _L7592_
                                          _L7594_
                                          _L7595_)
                                         (if (gx#stx-datum? _hd74497576_)
                                             (let ((_e74597535_
                                                    (gx#stx-e _hd74497576_)))
                                               (if (equal? _e74597535_ '#!key)
                                                   (___kont3729237293_
                                                    _tl74537589_
                                                    _hd74527586_)
                                                   (___kont3729437295_
                                                    _tl74507579_
                                                    _hd74497576_)))
                                             (___kont3729437295_
                                              _tl74507579_
                                              _hd74497576_)))))))
                            (if (gx#stx-pair? ___stx3728737288_)
                                (let ((_e74487572_
                                       (gx#syntax-e ___stx3728737288_)))
                                  (let ((_tl74507579_ (##cdr _e74487572_))
                                        (_hd74497576_ (##car _e74487572_)))
                                    (if (gx#stx-pair? _tl74507579_)
                                        (let ((_e74517582_
                                               (gx#syntax-e _tl74507579_)))
                                          (let ((_tl74537589_
                                                 (##cdr _e74517582_))
                                                (_hd74527586_
                                                 (##car _e74517582_)))
                                            (___match3731037311_
                                             _e74487572_
                                             _hd74497576_
                                             _tl74507579_
                                             _e74517582_
                                             _hd74527586_
                                             _tl74537589_)))
                                        (if (gx#stx-datum? _hd74497576_)
                                            (let ((_e74597535_
                                                   (gx#stx-e _hd74497576_)))
                                              (___kont3729437295_
                                               _tl74507579_
                                               _hd74497576_))
                                            (___kont3729437295_
                                             _tl74507579_
                                             _hd74497576_)))))
                                (___kont3729637297_))))))))
                 (_generate-bind4932_
                  (lambda (_e7425_)
                    (if (gx#underscore? _e7425_)
                        (gx#genident _e7425_)
                        _e7425_)))
                 (_check-duplicate-bindings4933_
                  (lambda (_hd7122_)
                    (letrec ((_cons-id7125_
                              (lambda (_id7421_ _ids7423_)
                                (if (gx#underscore? _id7421_)
                                    _ids7423_
                                    (cons _id7421_ _ids7423_)))))
                      (let _lp7128_ ((_rest7131_ _hd7122_) (_ids7133_ '()))
                        (let* ((___stx3736137362_ _rest7131_)
                               (_g71367148_
                                (lambda ()
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   ___stx3736137362_))))
                          (let ((___kont3736437365_
                                 (lambda (_L7176_ _L7178_)
                                   (if (gx#identifier? _L7178_)
                                       (_lp7128_
                                        _L7176_
                                        (_cons-id7125_ _L7178_ _ids7133_))
                                       (if (gx#stx-pair? _L7178_)
                                           (let* ((_g71947208_
                                                   (lambda (_g71957204_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g71957204_)))
                                                  (_g71937249_
                                                   (lambda (_g71957212_)
                                                     (if (gx#stx-pair?
                                                          _g71957212_)
                                                         (let ((_e71977215_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g71957212_)))
                   (let ((_hd71987219_ (##car _e71977215_))
                         (_tl71997222_ (##cdr _e71977215_)))
                     (if (gx#stx-pair? _tl71997222_)
                         (let ((_e72007225_ (gx#syntax-e _tl71997222_)))
                           (let ((_hd72017229_ (##car _e72007225_))
                                 (_tl72027232_ (##cdr _e72007225_)))
                             (if (gx#stx-null? _tl72027232_)
                                 ((lambda (_L7235_)
                                    (_lp7128_
                                     _L7176_
                                     (_cons-id7125_ _L7235_ _ids7133_)))
                                  _hd71987219_)
                                 (_g71947208_ _g71957212_))))
                         (_g71947208_ _g71957212_))))
                 (_g71947208_ _g71957212_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g71937249_ _L7178_))
                                           (if (gx#stx-keyword? _L7178_)
                                               (let* ((_g72537265_
                                                       (lambda (_g72547261_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g72547261_)))
                                                      (_g72527367_
                                                       (lambda (_g72547269_)
                                                         (if (gx#stx-pair?
                                                              _g72547269_)
                                                             (let ((_e72577272_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _g72547269_)))
                       (let ((_hd72587276_ (##car _e72577272_))
                             (_tl72597279_ (##cdr _e72577272_)))
                         ((lambda (_L7282_ _L7284_)
                            (let* ((___stx3733737338_ _L7284_)
                                   (_g72967310_
                                    (lambda ()
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       ___stx3733737338_))))
                              (let ((___kont3734037341_
                                     (lambda (_L7348_)
                                       (_lp7128_
                                        _L7282_
                                        (_cons-id7125_ _L7348_ _ids7133_))))
                                    (___kont3734237343_
                                     (lambda ()
                                       (_lp7128_
                                        _L7282_
                                        (_cons-id7125_ _L7284_ _ids7133_)))))
                                (if (gx#stx-pair? ___stx3733737338_)
                                    (let ((_e72997328_
                                           (gx#syntax-e ___stx3733737338_)))
                                      (let ((_tl73017335_ (##cdr _e72997328_))
                                            (_hd73007332_ (##car _e72997328_)))
                                        (if (gx#stx-pair? _tl73017335_)
                                            (let ((_e73027338_
                                                   (gx#syntax-e _tl73017335_)))
                                              (let ((_tl73047345_
                                                     (##cdr _e73027338_))
                                                    (_hd73037342_
                                                     (##car _e73027338_)))
                                                (if (gx#stx-null? _tl73047345_)
                                                    (___kont3734037341_
                                                     _hd73007332_)
                                                    (___kont3734237343_))))
                                            (___kont3734237343_))))
                                    (___kont3734237343_)))))
                          _tl72597279_
                          _hd72587276_)))
                     (_g72537265_ _g72547269_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g72527367_ _L7176_))
                                               (if (eq? (gx#stx-e _L7178_)
                                                        '#!key)
                                                   (let* ((_g73717383_
                                                           (lambda (_g73727379_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g73727379_)))
                                                          (_g73707413_
                                                           (lambda (_g73727387_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g73727387_)
                         (let ((_e73757390_ (gx#syntax-e _g73727387_)))
                           (let ((_hd73767394_ (##car _e73757390_))
                                 (_tl73777397_ (##cdr _e73757390_)))
                             ((lambda (_L7400_ _L7402_)
                                (_lp7128_
                                 _L7400_
                                 (_cons-id7125_ _L7402_ _ids7133_)))
                              _tl73777397_
                              _hd73767394_)))
                         (_g73717383_ _g73727387_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g73707413_ _L7176_))
                                                   (error '"BUG: check-duplicate-bindings"
                                                          _stx4923_
                                                          _rest7131_)))))))
                                (___kont3736637367_
                                 (lambda ()
                                   (gx#check-duplicate-identifiers
                                    (if (gx#stx-null? _rest7131_)
                                        _ids7133_
                                        (_cons-id7125_ _rest7131_ _ids7133_))
                                    _stx4923_))))
                            (if (gx#stx-pair? ___stx3736137362_)
                                (let ((_e71407166_
                                       (gx#syntax-e ___stx3736137362_)))
                                  (let ((_tl71427173_ (##cdr _e71407166_))
                                        (_hd71417170_ (##car _e71407166_)))
                                    (___kont3736437365_
                                     _tl71427173_
                                     _hd71417170_)))
                                (___kont3736637367_))))))))
                 (_generate-opt-primary4934_
                  (lambda (_pre6914_ _opt6916_ _tail6917_ _body6918_)
                    (let* ((_g69206961_
                            (lambda (_g69216957_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g69216957_)))
                           (_g69197118_
                            (lambda (_g69216965_)
                              (if (gx#stx-pair? _g69216965_)
                                  (let ((_e69266968_
                                         (gx#syntax-e _g69216965_)))
                                    (let ((_hd69276972_ (##car _e69266968_))
                                          (_tl69286975_ (##cdr _e69266968_)))
                                      (if (gx#stx-pair/null? _hd69276972_)
                                          (let ((_g41767_
                                                 (gx#syntax-split-splice
                                                  _hd69276972_
                                                  '0)))
                                            (begin
                                              (let ((_g41768_
                                                     (if (##values? _g41767_)
                                                         (##vector-length
                                                          _g41767_)
                                                         1)))
                                                (if (not (##fx= _g41768_ 2))
                                                    (error "Context expects 2 values"
                                                           _g41768_)))
                                              (let ((_target69296978_
                                                     (##vector-ref _g41767_ 0))
                                                    (_tl69316981_
                                                     (##vector-ref
                                                      _g41767_
                                                      1)))
                                                (if (gx#stx-null? _tl69316981_)
                                                    (letrec ((_loop69326984_
                                                              (lambda (_hd69306988_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _pre69366991_)
                        (if (gx#stx-pair? _hd69306988_)
                            (let ((_e69336994_ (gx#syntax-e _hd69306988_)))
                              (let ((_lp-hd69346998_ (##car _e69336994_))
                                    (_lp-tl69357001_ (##cdr _e69336994_)))
                                (_loop69326984_
                                 _lp-tl69357001_
                                 (cons _lp-hd69346998_ _pre69366991_))))
                            (let ((_pre69377004_ (reverse _pre69366991_)))
                              (if (gx#stx-pair? _tl69286975_)
                                  (let ((_e69387008_
                                         (gx#syntax-e _tl69286975_)))
                                    (let ((_hd69397012_ (##car _e69387008_))
                                          (_tl69407015_ (##cdr _e69387008_)))
                                      (if (gx#stx-pair/null? _hd69397012_)
                                          (let ((_g41769_
                                                 (gx#syntax-split-splice
                                                  _hd69397012_
                                                  '0)))
                                            (begin
                                              (let ((_g41770_
                                                     (if (##values? _g41769_)
                                                         (##vector-length
                                                          _g41769_)
                                                         1)))
                                                (if (not (##fx= _g41770_ 2))
                                                    (error "Context expects 2 values"
                                                           _g41770_)))
                                              (let ((_target69417018_
                                                     (##vector-ref _g41769_ 0))
                                                    (_tl69437021_
                                                     (##vector-ref
                                                      _g41769_
                                                      1)))
                                                (if (gx#stx-null? _tl69437021_)
                                                    (letrec ((_loop69447024_
                                                              (lambda (_hd69427028_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _opt69487031_)
                        (if (gx#stx-pair? _hd69427028_)
                            (let ((_e69457034_ (gx#syntax-e _hd69427028_)))
                              (let ((_lp-hd69467038_ (##car _e69457034_))
                                    (_lp-tl69477041_ (##cdr _e69457034_)))
                                (_loop69447024_
                                 _lp-tl69477041_
                                 (cons _lp-hd69467038_ _opt69487031_))))
                            (let ((_opt69497044_ (reverse _opt69487031_)))
                              (if (gx#stx-pair? _tl69407015_)
                                  (let ((_e69507048_
                                         (gx#syntax-e _tl69407015_)))
                                    (let ((_hd69517052_ (##car _e69507048_))
                                          (_tl69527055_ (##cdr _e69507048_)))
                                      (if (gx#stx-pair? _tl69527055_)
                                          (let ((_e69537058_
                                                 (gx#syntax-e _tl69527055_)))
                                            (let ((_hd69547062_
                                                   (##car _e69537058_))
                                                  (_tl69557065_
                                                   (##cdr _e69537058_)))
                                              (if (gx#stx-null? _tl69557065_)
                                                  ((lambda (_L7068_
                                                            _L7070_
                                                            _L7071_
                                                            _L7072_)
                                                     (let ()
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda%)
                                                             (cons (foldr (lambda (_g71017106_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _g71027109_)
                                    (cons _g71017106_ _g71027109_))
                                  (foldr (lambda (_g71037112_ _g71047115_)
                                           (cons _g71037112_ _g71047115_))
                                         _L7070_
                                         _L7071_)
                                  _L7072_)
                           _L7068_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _hd69547062_
                                                   _hd69517052_
                                                   _opt69497044_
                                                   _pre69377004_)
                                                  (_g69206961_ _g69216965_))))
                                          (_g69206961_ _g69216965_))))
                                  (_g69206961_ _g69216965_)))))))
              (_loop69447024_ _target69417018_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g69206961_
                                                     _g69216965_)))))
                                          (_g69206961_ _g69216965_))))
                                  (_g69206961_ _g69216965_)))))))
              (_loop69326984_ _target69296978_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g69206961_
                                                     _g69216965_)))))
                                          (_g69206961_ _g69216965_))))
                                  (_g69206961_ _g69216965_)))))
                      (_g69197118_
                       (list _pre6914_
                             (map car _opt6916_)
                             _tail6917_
                             _body6918_)))))
                 (_generate-opt-dispatch4935_
                  (lambda (_primary6908_ _pre6910_ _opt6911_ _tail6912_)
                    (cons (list _pre6910_
                                (_generate-opt-clause4937_
                                 _primary6908_
                                 _pre6910_
                                 _opt6911_))
                          (_generate-opt-dispatch*4936_
                           _primary6908_
                           _pre6910_
                           _opt6911_
                           _tail6912_))))
                 (_generate-opt-dispatch*4936_
                  (lambda (_primary6465_ _pre6467_ _opt6468_ _tail6469_)
                    (let _recur6471_ ((_opt-rest6474_ _opt6468_)
                                      (_right6476_ '()))
                      (if (pair? _opt-rest6474_)
                          (let* ((_hd6478_ (caar _opt-rest6474_))
                                 (_rest6481_ (cdr _opt-rest6474_))
                                 (_right*6484_ (cons _hd6478_ _right6476_))
                                 (_g64876504_
                                  (lambda (_g64886500_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g64886500_)))
                                 (_g64866687_
                                  (lambda (_g64886508_)
                                    (if (gx#stx-pair/null? _g64886508_)
                                        (let ((_g41771_
                                               (gx#syntax-split-splice
                                                _g64886508_
                                                '0)))
                                          (begin
                                            (let ((_g41772_
                                                   (if (##values? _g41771_)
                                                       (##vector-length
                                                        _g41771_)
                                                       1)))
                                              (if (not (##fx= _g41772_ 2))
                                                  (error "Context expects 2 values"
                                                         _g41772_)))
                                            (let ((_target64906511_
                                                   (##vector-ref _g41771_ 0))
                                                  (_tl64926514_
                                                   (##vector-ref _g41771_ 1)))
                                              (if (gx#stx-null? _tl64926514_)
                                                  (letrec ((_loop64936517_
                                                            (lambda (_hd64916521_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _pre-bind64976524_)
                      (if (gx#stx-pair? _hd64916521_)
                          (let ((_e64946527_ (gx#syntax-e _hd64916521_)))
                            (let ((_lp-hd64956531_ (##car _e64946527_))
                                  (_lp-tl64966534_ (##cdr _e64946527_)))
                              (_loop64936517_
                               _lp-tl64966534_
                               (cons _lp-hd64956531_ _pre-bind64976524_))))
                          (let ((_pre-bind64986537_
                                 (reverse _pre-bind64976524_)))
                            ((lambda (_L6541_)
                               (let ()
                                 (let* ((_g65626579_
                                         (lambda (_g65636575_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g65636575_)))
                                        (_g65616683_
                                         (lambda (_g65636583_)
                                           (if (gx#stx-pair/null? _g65636583_)
                                               (let ((_g41773_
                                                      (gx#syntax-split-splice
                                                       _g65636583_
                                                       '0)))
                                                 (begin
                                                   (let ((_g41774_
                                                          (if (##values?
                                                               _g41773_)
                                                              (##vector-length
                                                               _g41773_)
                                                              1)))
                                                     (if (not (##fx= _g41774_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                 (error "Context expects 2 values" _g41774_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target65656586_
                                                          (##vector-ref
                                                           _g41773_
                                                           0))
                                                         (_tl65676589_
                                                          (##vector-ref
                                                           _g41773_
                                                           1)))
                                                     (if (gx#stx-null?
                                                          _tl65676589_)
                                                         (letrec ((_loop65686592_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd65666596_ _opt-bind65726599_)
                             (if (gx#stx-pair? _hd65666596_)
                                 (let ((_e65696602_
                                        (gx#syntax-e _hd65666596_)))
                                   (let ((_lp-hd65706606_ (##car _e65696602_))
                                         (_lp-tl65716609_ (##cdr _e65696602_)))
                                     (_loop65686592_
                                      _lp-tl65716609_
                                      (cons _lp-hd65706606_
                                            _opt-bind65726599_))))
                                 (let ((_opt-bind65736612_
                                        (reverse _opt-bind65726599_)))
                                   ((lambda (_L6616_)
                                      (let ()
                                        (let* ((_g66336641_
                                                (lambda (_g66346637_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g66346637_)))
                                               (_g66326679_
                                                (lambda (_g66346645_)
                                                  ((lambda (_L6648_)
                                                     (let ()
                                                       (let ()
                                                         (cons (list (foldr (lambda (_g66626667_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             _g66636670_)
                                      (cons _g66626667_ _g66636670_))
                                    (foldr (lambda (_g66646673_ _g66656676_)
                                             (cons _g66646673_ _g66656676_))
                                           (cons _L6648_ '())
                                           _L6616_)
                                    _L6541_)
                             (_generate-opt-clause4937_
                              _primary6465_
                              (foldr cons (reverse _right*6484_) _pre6467_)
                              _rest6481_))
                       (_recur6471_ _rest6481_ _right*6484_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g66346645_))))
                                          (_g66326679_ _hd6478_))))
                                    _opt-bind65736612_))))))
                   (_loop65686592_ _target65656586_ '()))
                 (_g65626579_ _g65636583_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g65626579_ _g65636583_)))))
                                   (_g65616683_ (reverse _right6476_)))))
                             _pre-bind64986537_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop64936517_
                                                     _target64906511_
                                                     '()))
                                                  (_g64876504_ _g64886508_)))))
                                        (_g64876504_ _g64886508_)))))
                            (_g64866687_ _pre6467_))
                          (if (gx#stx-null? _tail6469_)
                              '()
                              (let* ((_g66916732_
                                      (lambda (_g66926728_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g66926728_)))
                                     (_g66906904_
                                      (lambda (_g66926736_)
                                        (if (gx#stx-pair? _g66926736_)
                                            (let ((_e66976739_
                                                   (gx#syntax-e _g66926736_)))
                                              (let ((_hd66986743_
                                                     (##car _e66976739_))
                                                    (_tl66996746_
                                                     (##cdr _e66976739_)))
                                                (if (gx#stx-pair/null?
                                                     _hd66986743_)
                                                    (let ((_g41775_
                                                           (gx#syntax-split-splice
                                                            _hd66986743_
                                                            '0)))
                                                      (begin
                                                        (let ((_g41776_
                                                               (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g41775_)
                           (##vector-length _g41775_)
                           1)))
                  (if (not (##fx= _g41776_ 2))
                      (error "Context expects 2 values" _g41776_)))
                (let ((_target67006749_ (##vector-ref _g41775_ 0))
                      (_tl67026752_ (##vector-ref _g41775_ 1)))
                  (if (gx#stx-null? _tl67026752_)
                      (letrec ((_loop67036755_
                                (lambda (_hd67016759_ _pre67076762_)
                                  (if (gx#stx-pair? _hd67016759_)
                                      (let ((_e67046765_
                                             (gx#syntax-e _hd67016759_)))
                                        (let ((_lp-hd67056769_
                                               (##car _e67046765_))
                                              (_lp-tl67066772_
                                               (##cdr _e67046765_)))
                                          (_loop67036755_
                                           _lp-tl67066772_
                                           (cons _lp-hd67056769_
                                                 _pre67076762_))))
                                      (let ((_pre67086775_
                                             (reverse _pre67076762_)))
                                        (if (gx#stx-pair? _tl66996746_)
                                            (let ((_e67096779_
                                                   (gx#syntax-e _tl66996746_)))
                                              (let ((_hd67106783_
                                                     (##car _e67096779_))
                                                    (_tl67116786_
                                                     (##cdr _e67096779_)))
                                                (if (gx#stx-pair/null?
                                                     _hd67106783_)
                                                    (let ((_g41777_
                                                           (gx#syntax-split-splice
                                                            _hd67106783_
                                                            '0)))
                                                      (begin
                                                        (let ((_g41778_
                                                               (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g41777_)
                           (##vector-length _g41777_)
                           1)))
                  (if (not (##fx= _g41778_ 2))
                      (error "Context expects 2 values" _g41778_)))
                (let ((_target67126789_ (##vector-ref _g41777_ 0))
                      (_tl67146792_ (##vector-ref _g41777_ 1)))
                  (if (gx#stx-null? _tl67146792_)
                      (letrec ((_loop67156795_
                                (lambda (_hd67136799_ _opt67196802_)
                                  (if (gx#stx-pair? _hd67136799_)
                                      (let ((_e67166805_
                                             (gx#syntax-e _hd67136799_)))
                                        (let ((_lp-hd67176809_
                                               (##car _e67166805_))
                                              (_lp-tl67186812_
                                               (##cdr _e67166805_)))
                                          (_loop67156795_
                                           _lp-tl67186812_
                                           (cons _lp-hd67176809_
                                                 _opt67196802_))))
                                      (let ((_opt67206815_
                                             (reverse _opt67196802_)))
                                        (if (gx#stx-pair? _tl67116786_)
                                            (let ((_e67216819_
                                                   (gx#syntax-e _tl67116786_)))
                                              (let ((_hd67226823_
                                                     (##car _e67216819_))
                                                    (_tl67236826_
                                                     (##cdr _e67216819_)))
                                                (if (gx#stx-pair? _tl67236826_)
                                                    (let ((_e67246829_
                                                           (gx#syntax-e
                                                            _tl67236826_)))
                                                      (let ((_hd67256833_
                                                             (##car _e67246829_))
                                                            (_tl67266836_
                                                             (##cdr _e67246829_)))
                                                        (if (gx#stx-null?
                                                             _tl67266836_)
                                                            ((lambda (_L6839_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L6841_
                              _L6842_
                              _L6843_)
                       (let ()
                         (list (list (foldr (lambda (_g68716876_ _g68726879_)
                                              (cons _g68716876_ _g68726879_))
                                            (foldr (lambda (_g68736882_
                                                            _g68746885_)
                                                     (cons _g68736882_
                                                           _g68746885_))
                                                   _L6841_
                                                   _L6842_)
                                            _L6843_)
                                     (gx#stx-wrap-source
                                      (cons (gx#datum->syntax '#f 'apply)
                                            (cons _L6839_
                                                  (foldr (lambda (_g68876892_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g68886895_)
                   (cons _g68876892_ _g68886895_))
                 (foldr (lambda (_g68896898_ _g68906901_)
                          (cons _g68896898_ _g68906901_))
                        (cons _L6841_ '())
                        _L6842_)
                 _L6843_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (gx#stx-source _stx4923_))))))
                     _hd67256833_
                     _hd67226823_
                     _opt67206815_
                     _pre67086775_)
                    (_g66916732_ _g66926736_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g66916732_
                                                     _g66926736_))))
                                            (_g66916732_ _g66926736_)))))))
                        (_loop67156795_ _target67126789_ '()))
                      (_g66916732_ _g66926736_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g66916732_
                                                     _g66926736_))))
                                            (_g66916732_ _g66926736_)))))))
                        (_loop67036755_ _target67006749_ '()))
                      (_g66916732_ _g66926736_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g66916732_
                                                     _g66926736_))))
                                            (_g66916732_ _g66926736_)))))
                                (_g66906904_
                                 (list _pre6467_
                                       (reverse _right6476_)
                                       _tail6469_
                                       _primary6465_))))))))
                 (_generate-opt-clause4937_
                  (lambda (_primary6163_ _pre6165_ _opt6166_)
                    (let _recur6168_ ((_opt-rest6171_ _opt6166_)
                                      (_right6173_ '()))
                      (if (pair? _opt-rest6171_)
                          (let* ((_hd6175_ (car _opt-rest6171_))
                                 (_rest6178_ (cdr _opt-rest6171_))
                                 (_g61816189_
                                  (lambda (_g61826185_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g61826185_)))
                                 (_g61806278_
                                  (lambda (_g61826193_)
                                    ((lambda (_L6196_)
                                       (let ()
                                         (let* ((_g62126220_
                                                 (lambda (_g62136216_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g62136216_)))
                                                (_g62116274_
                                                 (lambda (_g62136224_)
                                                   ((lambda (_L6227_)
                                                      (let ()
                                                        (let* ((_g62406248_
                                                                (lambda (_g62416244_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g62416244_)))
                       (_g62396270_
                        (lambda (_g62416252_)
                          ((lambda (_L6255_)
                             (let ()
                               (let ()
                                 (cons (gx#datum->syntax '#f 'let-values)
                                       (cons (cons (cons (cons _L6196_ '())
                                                         (cons _L6227_ '()))
                                                   '())
                                             (cons _L6255_ '()))))))
                           _g62416252_))))
                  (_g62396270_
                   (_recur6168_ _rest6178_ (cons _L6196_ _right6173_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g62136224_))))
                                           (_g62116274_ (cdr _hd6175_)))))
                                     _g61826193_))))
                            (_g61806278_ (car _hd6175_)))
                          (let* ((_g62826319_
                                  (lambda (_g62836315_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g62836315_)))
                                 (_g62816461_
                                  (lambda (_g62836323_)
                                    (if (gx#stx-pair? _g62836323_)
                                        (let ((_e62876326_
                                               (gx#syntax-e _g62836323_)))
                                          (let ((_hd62886330_
                                                 (##car _e62876326_))
                                                (_tl62896333_
                                                 (##cdr _e62876326_)))
                                            (if (gx#stx-pair/null?
                                                 _hd62886330_)
                                                (let ((_g41779_
                                                       (gx#syntax-split-splice
                                                        _hd62886330_
                                                        '0)))
                                                  (begin
                                                    (let ((_g41780_
                                                           (if (##values?
                                                                _g41779_)
                                                               (##vector-length
                                                                _g41779_)
                                                               1)))
                                                      (if (not (##fx= _g41780_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                  (error "Context expects 2 values" _g41780_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target62906336_
                                                           (##vector-ref
                                                            _g41779_
                                                            0))
                                                          (_tl62926339_
                                                           (##vector-ref
                                                            _g41779_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl62926339_)
                                                          (letrec ((_loop62936342_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd62916346_ _pre62976349_)
                              (if (gx#stx-pair? _hd62916346_)
                                  (let ((_e62946352_
                                         (gx#syntax-e _hd62916346_)))
                                    (let ((_lp-hd62956356_ (##car _e62946352_))
                                          (_lp-tl62966359_
                                           (##cdr _e62946352_)))
                                      (_loop62936342_
                                       _lp-tl62966359_
                                       (cons _lp-hd62956356_ _pre62976349_))))
                                  (let ((_pre62986362_
                                         (reverse _pre62976349_)))
                                    (if (gx#stx-pair? _tl62896333_)
                                        (let ((_e62996366_
                                               (gx#syntax-e _tl62896333_)))
                                          (let ((_hd63006370_
                                                 (##car _e62996366_))
                                                (_tl63016373_
                                                 (##cdr _e62996366_)))
                                            (if (gx#stx-pair/null?
                                                 _hd63006370_)
                                                (let ((_g41781_
                                                       (gx#syntax-split-splice
                                                        _hd63006370_
                                                        '0)))
                                                  (begin
                                                    (let ((_g41782_
                                                           (if (##values?
                                                                _g41781_)
                                                               (##vector-length
                                                                _g41781_)
                                                               1)))
                                                      (if (not (##fx= _g41782_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                  (error "Context expects 2 values" _g41782_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target63026376_
                                                           (##vector-ref
                                                            _g41781_
                                                            0))
                                                          (_tl63046379_
                                                           (##vector-ref
                                                            _g41781_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl63046379_)
                                                          (letrec ((_loop63056382_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd63036386_ _opt63096389_)
                              (if (gx#stx-pair? _hd63036386_)
                                  (let ((_e63066392_
                                         (gx#syntax-e _hd63036386_)))
                                    (let ((_lp-hd63076396_ (##car _e63066392_))
                                          (_lp-tl63086399_
                                           (##cdr _e63066392_)))
                                      (_loop63056382_
                                       _lp-tl63086399_
                                       (cons _lp-hd63076396_ _opt63096389_))))
                                  (let ((_opt63106402_
                                         (reverse _opt63096389_)))
                                    (if (gx#stx-pair? _tl63016373_)
                                        (let ((_e63116406_
                                               (gx#syntax-e _tl63016373_)))
                                          (let ((_hd63126410_
                                                 (##car _e63116406_))
                                                (_tl63136413_
                                                 (##cdr _e63116406_)))
                                            (if (gx#stx-null? _tl63136413_)
                                                ((lambda (_L6416_
                                                          _L6418_
                                                          _L6419_)
                                                   (let ()
                                                     (gx#stx-wrap-source
                                                      (cons _L6416_
                                                            (foldr (lambda (_g64446449_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g64456452_)
                             (cons _g64446449_ _g64456452_))
                           (foldr (lambda (_g64466455_ _g64476458_)
                                    (cons _g64466455_ _g64476458_))
                                  '()
                                  _L6418_)
                           _L6419_))
              (gx#stx-source _stx4923_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd63126410_
                                                 _opt63106402_
                                                 _pre62986362_)
                                                (_g62826319_ _g62836323_))))
                                        (_g62826319_ _g62836323_)))))))
                    (_loop63056382_ _target63026376_ '()))
                  (_g62826319_ _g62836323_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g62826319_ _g62836323_))))
                                        (_g62826319_ _g62836323_)))))))
                    (_loop62936342_ _target62906336_ '()))
                  (_g62826319_ _g62836323_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g62826319_ _g62836323_))))
                                        (_g62826319_ _g62836323_)))))
                            (_g62816461_
                             (list _pre6165_
                                   (reverse _right6173_)
                                   _primary6163_)))))))
                 (_generate-kw-primary4938_
                  (lambda (_key5539_ _kwargs5541_ _args5542_ _body5543_)
                    (letrec ((_make-body5545_
                              (lambda (_kwargs6032_ _kwvals6034_)
                                (if (pair? _kwargs6032_)
                                    (let* ((_kwarg6036_ (car _kwargs6032_))
                                           (_var6039_ (cadr _kwarg6036_))
                                           (_default6042_ (caddr _kwarg6036_))
                                           (_kwval6045_ (car _kwvals6034_))
                                           (_rest-kwargs6048_
                                            (cdr _kwargs6032_))
                                           (_rest-kwvals6051_
                                            (cdr _kwvals6034_)))
                                      (let* ((_g60566079_
                                              (lambda (_g60576075_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _g60576075_)))
                                             (_g60556159_
                                              (lambda (_g60576083_)
                                                (if (gx#stx-pair? _g60576083_)
                                                    (let ((_e60626086_
                                                           (gx#syntax-e
                                                            _g60576083_)))
                                                      (let ((_hd60636090_
                                                             (##car _e60626086_))
                                                            (_tl60646093_
                                                             (##cdr _e60626086_)))
                                                        (if (gx#stx-pair?
                                                             _tl60646093_)
                                                            (let ((_e60656096_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl60646093_)))
                      (let ((_hd60666100_ (##car _e60656096_))
                            (_tl60676103_ (##cdr _e60656096_)))
                        (if (gx#stx-pair? _tl60676103_)
                            (let ((_e60686106_ (gx#syntax-e _tl60676103_)))
                              (let ((_hd60696110_ (##car _e60686106_))
                                    (_tl60706113_ (##cdr _e60686106_)))
                                (if (gx#stx-pair? _tl60706113_)
                                    (let ((_e60716116_
                                           (gx#syntax-e _tl60706113_)))
                                      (let ((_hd60726120_ (##car _e60716116_))
                                            (_tl60736123_ (##cdr _e60716116_)))
                                        (if (gx#stx-null? _tl60736123_)
                                            ((lambda (_L6126_
                                                      _L6128_
                                                      _L6129_
                                                      _L6130_)
                                               (let ()
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'let-values)
                                                       (cons (cons (cons (cons _L6130_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (cons (gx#datum->syntax '#f 'if)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'eq?)
                                                         (cons _L6129_
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'absent-value)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _L6128_
                                                         (cons _L6129_ '()))))
                                       '()))
                           '())
                     (cons _L6126_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd60726120_
                                             _hd60696110_
                                             _hd60666100_
                                             _hd60636090_)
                                            (_g60566079_ _g60576083_))))
                                    (_g60566079_ _g60576083_))))
                            (_g60566079_ _g60576083_))))
                    (_g60566079_ _g60576083_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g60566079_
                                                     _g60576083_)))))
                                        (_g60556159_
                                         (list _var6039_
                                               _kwval6045_
                                               _default6042_
                                               (_make-body5545_
                                                _rest-kwargs6048_
                                                _rest-kwvals6051_)))))
                                    (cons 'begin _body5543_))))
                             (_make-main5547_
                              (lambda ()
                                (let* ((_g58405848_
                                        (lambda (_g58415844_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g58415844_)))
                                       (_g58396024_
                                        (lambda (_g58415852_)
                                          ((lambda (_L5855_)
                                             (let ()
                                               (let* ((_g58675884_
                                                       (lambda (_g58685880_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g58685880_)))
                                                      (_g58666020_
                                                       (lambda (_g58685888_)
                                                         (if (gx#stx-pair/null?
                                                              _g58685888_)
                                                             (let ((_g41783_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _g58685888_ '0)))
                       (begin
                         (let ((_g41784_
                                (if (##values? _g41783_)
                                    (##vector-length _g41783_)
                                    1)))
                           (if (not (##fx= _g41784_ 2))
                               (error "Context expects 2 values" _g41784_)))
                         (let ((_target58705891_ (##vector-ref _g41783_ 0))
                               (_tl58725894_ (##vector-ref _g41783_ 1)))
                           (if (gx#stx-null? _tl58725894_)
                               (letrec ((_loop58735897_
                                         (lambda (_hd58715901_ _kwval58775904_)
                                           (if (gx#stx-pair? _hd58715901_)
                                               (let ((_e58745907_
                                                      (gx#syntax-e
                                                       _hd58715901_)))
                                                 (let ((_lp-hd58755911_
                                                        (##car _e58745907_))
                                                       (_lp-tl58765914_
                                                        (##cdr _e58745907_)))
                                                   (_loop58735897_
                                                    _lp-tl58765914_
                                                    (cons _lp-hd58755911_
                                                          _kwval58775904_))))
                                               (let ((_kwval58785917_
                                                      (reverse _kwval58775904_)))
                                                 ((lambda (_L5921_)
                                                    (let ()
                                                      (let* ((_g59385946_
                                                              (lambda (_g59395942_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax"
                         _g59395942_)))
                     (_g59376016_
                      (lambda (_g59395950_)
                        ((lambda (_L5953_)
                           (let ()
                             (let* ((_g59665974_
                                     (lambda (_g59675970_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g59675970_)))
                                    (_g59656004_
                                     (lambda (_g59675978_)
                                       ((lambda (_L5981_)
                                          (let ()
                                            (let ()
                                              (gx#stx-wrap-source
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons _L5855_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_g59955998_ _g59966001_)
                                  (cons _g59955998_ _g59966001_))
                                _L5953_
                                _L5921_))
                   (cons _L5981_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (gx#stx-source _stx4923_)))))
                                        _g59675978_))))
                               (_g59656004_
                                (_make-body5545_
                                 _kwargs5541_
                                 (foldr (lambda (_g60076010_ _g60086013_)
                                          (cons _g60076010_ _g60086013_))
                                        '()
                                        _L5921_))))))
                         _g59395950_))))
                (_g59376016_ _args5542_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _kwval58785917_))))))
                                 (_loop58735897_ _target58705891_ '()))
                               (_g58675884_ _g58685888_)))))
                     (_g58675884_ _g58685888_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g58666020_
                                                  (gx#gentemps
                                                   (map cadr _kwargs5541_))))))
                                           _g58415852_))))
                                  (_g58396024_
                                   (let ((_$e6028_ _key5539_))
                                     (if _$e6028_ _$e6028_ '_))))))
                             (_make-dispatch5548_
                              (lambda (_main5648_)
                                (let* ((_g56515659_
                                        (lambda (_g56525655_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g56525655_)))
                                       (_g56505830_
                                        (lambda (_g56525663_)
                                          ((lambda (_L5666_)
                                             (let ()
                                               (let* ((_g56785695_
                                                       (lambda (_g56795691_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g56795691_)))
                                                      (_g56775791_
                                                       (lambda (_g56795699_)
                                                         (if (gx#stx-pair/null?
                                                              _g56795699_)
                                                             (let ((_g41785_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _g56795699_ '0)))
                       (begin
                         (let ((_g41786_
                                (if (##values? _g41785_)
                                    (##vector-length _g41785_)
                                    1)))
                           (if (not (##fx= _g41786_ 2))
                               (error "Context expects 2 values" _g41786_)))
                         (let ((_target56815702_ (##vector-ref _g41785_ 0))
                               (_tl56835705_ (##vector-ref _g41785_ 1)))
                           (if (gx#stx-null? _tl56835705_)
                               (letrec ((_loop56845708_
                                         (lambda (_hd56825712_
                                                  _get-kw56885715_)
                                           (if (gx#stx-pair? _hd56825712_)
                                               (let ((_e56855718_
                                                      (gx#syntax-e
                                                       _hd56825712_)))
                                                 (let ((_lp-hd56865722_
                                                        (##car _e56855718_))
                                                       (_lp-tl56875725_
                                                        (##cdr _e56855718_)))
                                                   (_loop56845708_
                                                    _lp-tl56875725_
                                                    (cons _lp-hd56865722_
                                                          _get-kw56885715_))))
                                               (let ((_get-kw56895728_
                                                      (reverse _get-kw56885715_)))
                                                 ((lambda (_L5732_)
                                                    (let ()
                                                      (let* ((_g57495757_
                                                              (lambda (_g57505753_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax"
                         _g57505753_)))
                     (_g57485787_
                      (lambda (_g57505761_)
                        ((lambda (_L5764_)
                           (let ()
                             (let ()
                               (gx#stx-wrap-source
                                (cons (gx#datum->syntax '#f 'lambda)
                                      (cons (cons _L5666_
                                                  (gx#datum->syntax '#f 'args))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'apply)
                                                        (cons _L5764_
                                                              (cons _L5666_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (foldr (lambda (_g57785781_ _g57795784_)
                                     (cons _g57785781_ _g57795784_))
                                   (cons (gx#datum->syntax '#f 'args) '())
                                   _L5732_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                (gx#stx-source _stx4923_)))))
                         _g57505761_))))
                (_g57485787_ _main5648_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _get-kw56895728_))))))
                                 (_loop56845708_ _target56815702_ '()))
                               (_g56785695_ _g56795699_)))))
                     (_g56785695_ _g56795699_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g56775791_
                                                  (map (lambda (_kwarg5795_)
                                                         (let* ((_g57985806_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g57995802_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g57995802_)))
                        (_g57975826_
                         (lambda (_g57995810_)
                           ((lambda (_L5813_)
                              (let ()
                                (cons (gx#datum->syntax '#f 'hash-ref)
                                      (cons _L5666_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'quote)
                                                        (cons _L5813_ '()))
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'absent-value)
                                                        '()))))))
                            _g57995810_))))
                   (_g57975826_ (car _kwarg5795_))))
               _kwargs5541_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _g56525663_))))
                                  (_g56505830_
                                   (let ((_$e5834_ _key5539_))
                                     (if _$e5834_
                                         _$e5834_
                                         (gx#genident 'keys))))))))
                      (let* ((_g55505558_
                              (lambda (_g55515554_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g55515554_)))
                             (_g55495644_
                              (lambda (_g55515562_)
                                ((lambda (_L5565_)
                                   (let ()
                                     (let* ((_g55785586_
                                             (lambda (_g55795582_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g55795582_)))
                                            (_g55775640_
                                             (lambda (_g55795590_)
                                               ((lambda (_L5593_)
                                                  (let ()
                                                    (let* ((_g56065614_
                                                            (lambda (_g56075610_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g56075610_)))
                                                           (_g56055636_
                                                            (lambda (_g56075618_)
                                                              ((lambda (_L5621_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ()
                             (cons (gx#datum->syntax '#f 'let-values)
                                   (cons (cons (cons (cons _L5565_ '())
                                                     (cons _L5621_ '()))
                                               '())
                                         (cons _L5593_ '()))))))
                       _g56075618_))))
              (_g56055636_ (_make-main5547_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g55795590_))))
                                       (_g55775640_
                                        (_make-dispatch5548_ _L5565_)))))
                                 _g55515562_))))
                        (_g55495644_ (gx#genident 'kw-lambda-main))))))
                 (_generate-kw-dispatch4939_
                  (lambda (_primary5452_ _kwargs5454_ _strict?5455_)
                    (let* ((_g54575476_
                            (lambda (_g54585472_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g54585472_)))
                           (_g54565535_
                            (lambda (_g54585480_)
                              (if (gx#stx-pair? _g54585480_)
                                  (let ((_e54625483_
                                         (gx#syntax-e _g54585480_)))
                                    (let ((_hd54635487_ (##car _e54625483_))
                                          (_tl54645490_ (##cdr _e54625483_)))
                                      (if (gx#stx-pair? _tl54645490_)
                                          (let ((_e54655493_
                                                 (gx#syntax-e _tl54645490_)))
                                            (let ((_hd54665497_
                                                   (##car _e54655493_))
                                                  (_tl54675500_
                                                   (##cdr _e54655493_)))
                                              (if (gx#stx-pair? _tl54675500_)
                                                  (let ((_e54685503_
                                                         (gx#syntax-e
                                                          _tl54675500_)))
                                                    (let ((_hd54695507_
                                                           (##car _e54685503_))
                                                          (_tl54705510_
                                                           (##cdr _e54685503_)))
                                                      (if (gx#stx-null?
                                                           _tl54705510_)
                                                          ((lambda (_L5513_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L5515_
                            _L5516_)
                     (let ()
                       (cons (gx#datum->syntax '#f 'lambda%)
                             (cons _L5513_
                                   (cons (cons (gx#datum->syntax '#f 'apply)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'keyword-dispatch)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _L5516_ '()))
                   (cons _L5515_ (cons _L5513_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))))
                   _hd54695507_
                   _hd54665497_
                   _hd54635487_)
                  (_g54575476_ _g54585480_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g54575476_ _g54585480_))))
                                          (_g54575476_ _g54585480_))))
                                  (_g54575476_ _g54585480_)))))
                      (_g54565535_
                       (list (if _strict?5455_
                                 (_generate-kw-table4940_
                                  (map car _kwargs5454_))
                                 '#f)
                             _primary5452_
                             (gx#genident 'args))))))
                 (_generate-kw-table4940_
                  (lambda (_kws5426_)
                    (let _rehash5429_ ((_pht5432_
                                        (make-vector (length _kws5426_) '#f)))
                      (let _lp5435_ ((_rest5438_ _kws5426_))
                        (if (pair? _rest5438_)
                            (let* ((_key5441_ (car _rest5438_))
                                   (_rest5444_ (cdr _rest5438_))
                                   (_pos5447_
                                    (fxmodulo
                                     (keyword-hash _key5441_)
                                     (vector-length _pht5432_))))
                              (if (vector-ref _pht5432_ _pos5447_)
                                  (if (fx< (vector-length _pht5432_) '8192)
                                      (_rehash5429_
                                       (make-vector
                                        (quotient
                                         (fx* '3 (vector-length _pht5432_))
                                         '2)
                                        '#f))
                                      (error '"Unresolvable keyword collision"
                                             _kws5426_))
                                  (begin
                                    (vector-set! _pht5432_ _pos5447_ _key5441_)
                                    (_lp5435_ _rest5444_))))
                            _pht5432_))))))
          (let* ((___stx3737737378_ _stx4923_)
                 (_g49444975_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     ___stx3737737378_))))
            (let ((___kont3738037381_
                   (lambda (_L5407_ _L5409_)
                     (cons (gx#datum->syntax '#f 'lambda%)
                           (cons _L5409_ _L5407_))))
                  (___kont3738237383_
                   (lambda (_L5179_ _L5181_)
                     (let ((_g41787_ (_opt-lambda-split4929_ _L5181_)))
                       (begin
                         (let ((_g41788_
                                (if (##values? _g41787_)
                                    (##vector-length _g41787_)
                                    1)))
                           (if (not (##fx= _g41788_ 3))
                               (error "Context expects 3 values" _g41788_)))
                         (let ((_pre5194_ (##vector-ref _g41787_ 0))
                               (_opt5196_ (##vector-ref _g41787_ 1))
                               (_tail5197_ (##vector-ref _g41787_ 2)))
                           (let* ((_g51995207_
                                   (lambda (_g52005203_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g52005203_)))
                                  (_g51985376_
                                   (lambda (_g52005211_)
                                     ((lambda (_L5214_)
                                        (let ()
                                          (let* ((_g52275235_
                                                  (lambda (_g52285231_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g52285231_)))
                                                 (_g52265372_
                                                  (lambda (_g52285239_)
                                                    ((lambda (_L5242_)
                                                       (let ()
                                                         (let* ((_g52555272_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g52565268_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g52565268_)))
                        (_g52545368_
                         (lambda (_g52565276_)
                           (if (gx#stx-pair/null? _g52565276_)
                               (let ((_g41789_
                                      (gx#syntax-split-splice _g52565276_ '0)))
                                 (begin
                                   (let ((_g41790_
                                          (if (##values? _g41789_)
                                              (##vector-length _g41789_)
                                              1)))
                                     (if (not (##fx= _g41790_ 2))
                                         (error "Context expects 2 values"
                                                _g41790_)))
                                   (let ((_target52585279_
                                          (##vector-ref _g41789_ 0))
                                         (_tl52605282_
                                          (##vector-ref _g41789_ 1)))
                                     (if (gx#stx-null? _tl52605282_)
                                         (letrec ((_loop52615285_
                                                   (lambda (_hd52595289_
                                                            _clause52655292_)
                                                     (if (gx#stx-pair?
                                                          _hd52595289_)
                                                         (let ((_e52625295_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd52595289_)))
                   (let ((_lp-hd52635299_ (##car _e52625295_))
                         (_lp-tl52645302_ (##cdr _e52625295_)))
                     (_loop52615285_
                      _lp-tl52645302_
                      (cons _lp-hd52635299_ _clause52655292_))))
                 (let ((_clause52665305_ (reverse _clause52655292_)))
                   ((lambda (_L5309_)
                      (let ()
                        (let* ((_g53265334_
                                (lambda (_g53275330_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g53275330_)))
                               (_g53255356_
                                (lambda (_g53275338_)
                                  ((lambda (_L5341_)
                                     (let ()
                                       (let ()
                                         (cons (gx#datum->syntax
                                                '#f
                                                'let-values)
                                               (cons (cons (cons (cons _L5214_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '())
                         (cons _L5242_ '()))
                   '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _L5341_ '()))))))
                                   _g53275338_))))
                          (_g53255356_
                           (gx#stx-wrap-source
                            (cons (gx#datum->syntax '#f 'case-lambda)
                                  (foldr (lambda (_g53595362_ _g53605365_)
                                           (cons _g53595362_ _g53605365_))
                                         '()
                                         _L5309_))
                            (gx#stx-source _stx4923_))))))
                    _clause52665305_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop52615285_
                                            _target52585279_
                                            '()))
                                         (_g52555272_ _g52565276_)))))
                               (_g52555272_ _g52565276_)))))
                   (_g52545368_
                    (_generate-opt-dispatch4935_
                     _L5214_
                     _pre5194_
                     _opt5196_
                     _tail5197_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g52285239_))))
                                            (_g52265372_
                                             (gx#stx-wrap-source
                                              (_generate-opt-primary4934_
                                               _pre5194_
                                               _opt5196_
                                               _tail5197_
                                               _L5179_)
                                              (gx#stx-source _stx4923_))))))
                                      _g52005211_))))
                             (_g51985376_ (gx#genident 'opt-lambda))))))))
                  (___kont3738437385_
                   (lambda (_L5002_ _L5004_)
                     (let* ((_g50205027_
                             (lambda (_g50215023_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g50215023_)))
                            (_g50195148_
                             (lambda (_g50215031_)
                               ((lambda ()
                                  (let ()
                                    (let ((_g41791_
                                           (_kw-lambda-split4931_ _L5004_)))
                                      (begin
                                        (let ((_g41792_
                                               (if (##values? _g41791_)
                                                   (##vector-length _g41791_)
                                                   1)))
                                          (if (not (##fx= _g41792_ 3))
                                              (error "Context expects 3 values"
                                                     _g41792_)))
                                        (let ((_key5040_
                                               (##vector-ref _g41791_ 0))
                                              (_kwargs5042_
                                               (##vector-ref _g41791_ 1))
                                              (_args5043_
                                               (##vector-ref _g41791_ 2)))
                                          (let* ((_g50455053_
                                                  (lambda (_g50465049_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g50465049_)))
                                                 (_g50445144_
                                                  (lambda (_g50465057_)
                                                    ((lambda (_L5060_)
                                                       (let ()
                                                         (let* ((_g50785086_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g50795082_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g50795082_)))
                        (_g50775140_
                         (lambda (_g50795090_)
                           ((lambda (_L5093_)
                              (let ()
                                (let* ((_g51065114_
                                        (lambda (_g51075110_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g51075110_)))
                                       (_g51055136_
                                        (lambda (_g51075118_)
                                          ((lambda (_L5121_)
                                             (let ()
                                               (let ()
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'let-values)
                                                       (cons (cons (cons (cons _L5060_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons _L5093_ '()))
                           '())
                     (cons _L5121_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _g51075118_))))
                                  (_g51055136_
                                   (gx#stx-wrap-source
                                    (_generate-kw-dispatch4939_
                                     _L5060_
                                     _kwargs5042_
                                     (not _key5040_))
                                    (gx#stx-source _stx4923_))))))
                            _g50795090_))))
                   (_g50775140_
                    (gx#stx-wrap-source
                     (_generate-kw-primary4938_
                      _key5040_
                      _kwargs5042_
                      _args5043_
                      _L5002_)
                     (gx#stx-source _stx4923_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g50465057_))))
                                            (_g50445144_
                                             (gx#genident
                                              'kw-lambda))))))))))))
                       (_g50195148_
                        (_check-duplicate-bindings4933_ _L5004_))))))
              (let* ((___match3742237423_
                      (lambda (_e49644982_
                               _hd49654986_
                               _tl49664989_
                               _e49674992_
                               _hd49684996_
                               _tl49694999_)
                        (let ((_L5002_ _tl49694999_) (_L5004_ _hd49684996_))
                          (if (_kw-lambda?4930_ _L5004_)
                              (___kont3738437385_ _L5002_ _L5004_)
                              (_g49444975_)))))
                     (___match3741037411_
                      (lambda (_e49565159_
                               _hd49575163_
                               _tl49585166_
                               _e49595169_
                               _hd49605173_
                               _tl49615176_)
                        (let ((_L5179_ _tl49615176_) (_L5181_ _hd49605173_))
                          (if (_opt-lambda?4928_ _L5181_)
                              (___kont3738237383_ _L5179_ _L5181_)
                              (___match3742237423_
                               _e49565159_
                               _hd49575163_
                               _tl49585166_
                               _e49595169_
                               _hd49605173_
                               _tl49615176_)))))
                     (___match3739837399_
                      (lambda (_e49485387_
                               _hd49495391_
                               _tl49505394_
                               _e49515397_
                               _hd49525401_
                               _tl49535404_)
                        (let ((_L5407_ _tl49535404_) (_L5409_ _hd49525401_))
                          (if (_simple-lambda?4926_ _L5409_)
                              (___kont3738037381_ _L5407_ _L5409_)
                              (___match3741037411_
                               _e49485387_
                               _hd49495391_
                               _tl49505394_
                               _e49515397_
                               _hd49525401_
                               _tl49535404_))))))
                (if (gx#stx-pair? ___stx3737737378_)
                    (let ((_e49485387_ (gx#syntax-e ___stx3737737378_)))
                      (let ((_tl49505394_ (##cdr _e49485387_))
                            (_hd49495391_ (##car _e49485387_)))
                        (if (gx#stx-pair? _tl49505394_)
                            (let ((_e49515397_ (gx#syntax-e _tl49505394_)))
                              (let ((_tl49535404_ (##cdr _e49515397_))
                                    (_hd49525401_ (##car _e49515397_)))
                                (___match3739837399_
                                 _e49485387_
                                 _hd49495391_
                                 _tl49505394_
                                 _e49515397_
                                 _hd49525401_
                                 _tl49535404_)))
                            (_g49444975_))))
                    (_g49444975_))))))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#def|
      (lambda (_$stx8339_)
        (let* ((___stx3742537426_ _$stx8339_)
               (_g83448383_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3742537426_))))
          (let ((___kont3742837429_
                 (lambda (_L8505_ _L8507_ _L8508_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _L8508_ '())
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons _L8507_
                                                 (foldr (lambda (_g85278530_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g85288533_)
                  (cons _g85278530_ _g85288533_))
                '()
                _L8505_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (___kont3743237433_
                 (lambda (_L8420_ _L8422_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _L8422_ '()) (cons _L8420_ '()))))))
            (let* ((___match3748037481_
                    (lambda (_e83698390_
                             _hd83708394_
                             _tl83718397_
                             _e83728400_
                             _hd83738404_
                             _tl83748407_
                             _e83758410_
                             _hd83768414_
                             _tl83778417_)
                      (let ((_L8420_ _hd83768414_) (_L8422_ _hd83738404_))
                        (if (gx#identifier? _L8422_)
                            (___kont3743237433_ _L8420_ _L8422_)
                            (_g83448383_)))))
                   (___match3747237473_
                    (lambda (_e83698390_
                             _hd83708394_
                             _tl83718397_
                             _e83728400_
                             _hd83738404_
                             _tl83748407_)
                      (if (gx#stx-pair? _tl83748407_)
                          (let ((_e83758410_ (gx#syntax-e _tl83748407_)))
                            (let ((_tl83778417_ (##cdr _e83758410_))
                                  (_hd83768414_ (##car _e83758410_)))
                              (if (gx#stx-null? _tl83778417_)
                                  (___match3748037481_
                                   _e83698390_
                                   _hd83708394_
                                   _tl83718397_
                                   _e83728400_
                                   _hd83738404_
                                   _tl83748407_
                                   _e83758410_
                                   _hd83768414_
                                   _tl83778417_)
                                  (_g83448383_))))
                          (_g83448383_))))
                   (___match3746037461_
                    (lambda (_e83498445_
                             _hd83508449_
                             _tl83518452_
                             _e83528455_
                             _hd83538459_
                             _tl83548462_
                             _e83558465_
                             _hd83568469_
                             _tl83578472_
                             ___splice3743037431_
                             _target83588475_
                             _tl83608478_)
                      (letrec ((_loop83618481_
                                (lambda (_hd83598485_ _body83658488_)
                                  (if (gx#stx-pair? _hd83598485_)
                                      (let ((_e83628491_
                                             (gx#syntax-e _hd83598485_)))
                                        (let ((_lp-tl83648498_
                                               (##cdr _e83628491_))
                                              (_lp-hd83638495_
                                               (##car _e83628491_)))
                                          (_loop83618481_
                                           _lp-tl83648498_
                                           (cons _lp-hd83638495_
                                                 _body83658488_))))
                                      (let ((_body83668501_
                                             (reverse _body83658488_)))
                                        (let ((_L8505_ _body83668501_)
                                              (_L8507_ _tl83578472_)
                                              (_L8508_ _hd83568469_))
                                          (if (gx#identifier? _L8508_)
                                              (___kont3742837429_
                                               _L8505_
                                               _L8507_
                                               _L8508_)
                                              (___match3747237473_
                                               _e83498445_
                                               _hd83508449_
                                               _tl83518452_
                                               _e83528455_
                                               _hd83538459_
                                               _tl83548462_))))))))
                        (_loop83618481_ _target83588475_ '())))))
              (if (gx#stx-pair? ___stx3742537426_)
                  (let ((_e83498445_ (gx#syntax-e ___stx3742537426_)))
                    (let ((_tl83518452_ (##cdr _e83498445_))
                          (_hd83508449_ (##car _e83498445_)))
                      (if (gx#stx-pair? _tl83518452_)
                          (let ((_e83528455_ (gx#syntax-e _tl83518452_)))
                            (let ((_tl83548462_ (##cdr _e83528455_))
                                  (_hd83538459_ (##car _e83528455_)))
                              (if (gx#stx-pair? _hd83538459_)
                                  (let ((_e83558465_
                                         (gx#syntax-e _hd83538459_)))
                                    (let ((_tl83578472_ (##cdr _e83558465_))
                                          (_hd83568469_ (##car _e83558465_)))
                                      (if (gx#stx-pair/null? _tl83548462_)
                                          (let ((___splice3743037431_
                                                 (gx#syntax-split-splice
                                                  _tl83548462_
                                                  '0)))
                                            (let ((_tl83608478_
                                                   (##vector-ref
                                                    ___splice3743037431_
                                                    '1))
                                                  (_target83588475_
                                                   (##vector-ref
                                                    ___splice3743037431_
                                                    '0)))
                                              (if (gx#stx-null? _tl83608478_)
                                                  (___match3746037461_
                                                   _e83498445_
                                                   _hd83508449_
                                                   _tl83518452_
                                                   _e83528455_
                                                   _hd83538459_
                                                   _tl83548462_
                                                   _e83558465_
                                                   _hd83568469_
                                                   _tl83578472_
                                                   ___splice3743037431_
                                                   _target83588475_
                                                   _tl83608478_)
                                                  (if (gx#stx-pair?
                                                       _tl83548462_)
                                                      (let ((_e83758410_
                                                             (gx#syntax-e
                                                              _tl83548462_)))
                                                        (let ((_tl83778417_
                                                               (##cdr _e83758410_))
                                                              (_hd83768414_
                                                               (##car _e83758410_)))
                                                          (if (gx#stx-null?
                                                               _tl83778417_)
                                                              (___match3748037481_
                                                               _e83498445_
                                                               _hd83508449_
                                                               _tl83518452_
                                                               _e83528455_
                                                               _hd83538459_
                                                               _tl83548462_
                                                               _e83758410_
                                                               _hd83768414_
                                                               _tl83778417_)
                                                              (_g83448383_))))
                                                      (_g83448383_)))))
                                          (if (gx#stx-pair? _tl83548462_)
                                              (let ((_e83758410_
                                                     (gx#syntax-e
                                                      _tl83548462_)))
                                                (let ((_tl83778417_
                                                       (##cdr _e83758410_))
                                                      (_hd83768414_
                                                       (##car _e83758410_)))
                                                  (if (gx#stx-null?
                                                       _tl83778417_)
                                                      (___match3748037481_
                                                       _e83498445_
                                                       _hd83508449_
                                                       _tl83518452_
                                                       _e83528455_
                                                       _hd83538459_
                                                       _tl83548462_
                                                       _e83758410_
                                                       _hd83768414_
                                                       _tl83778417_)
                                                      (_g83448383_))))
                                              (_g83448383_)))))
                                  (if (gx#stx-pair? _tl83548462_)
                                      (let ((_e83758410_
                                             (gx#syntax-e _tl83548462_)))
                                        (let ((_tl83778417_
                                               (##cdr _e83758410_))
                                              (_hd83768414_
                                               (##car _e83758410_)))
                                          (if (gx#stx-null? _tl83778417_)
                                              (___match3748037481_
                                               _e83498445_
                                               _hd83508449_
                                               _tl83518452_
                                               _e83528455_
                                               _hd83538459_
                                               _tl83548462_
                                               _e83758410_
                                               _hd83768414_
                                               _tl83778417_)
                                              (_g83448383_))))
                                      (_g83448383_)))))
                          (_g83448383_))))
                  (_g83448383_)))))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#def*|
      (lambda (_$stx8541_)
        (let* ((_g85458569_
                (lambda (_g85468565_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g85468565_)))
               (_g85448654_
                (lambda (_g85468573_)
                  (if (gx#stx-pair? _g85468573_)
                      (let ((_e85498576_ (gx#syntax-e _g85468573_)))
                        (let ((_hd85508580_ (##car _e85498576_))
                              (_tl85518583_ (##cdr _e85498576_)))
                          (if (gx#stx-pair? _tl85518583_)
                              (let ((_e85528586_ (gx#syntax-e _tl85518583_)))
                                (let ((_hd85538590_ (##car _e85528586_))
                                      (_tl85548593_ (##cdr _e85528586_)))
                                  (if (gx#stx-pair/null? _tl85548593_)
                                      (let ((_g41793_
                                             (gx#syntax-split-splice
                                              _tl85548593_
                                              '0)))
                                        (begin
                                          (let ((_g41794_
                                                 (if (##values? _g41793_)
                                                     (##vector-length _g41793_)
                                                     1)))
                                            (if (not (##fx= _g41794_ 2))
                                                (error "Context expects 2 values"
                                                       _g41794_)))
                                          (let ((_target85558596_
                                                 (##vector-ref _g41793_ 0))
                                                (_tl85578599_
                                                 (##vector-ref _g41793_ 1)))
                                            (if (gx#stx-null? _tl85578599_)
                                                (letrec ((_loop85588602_
                                                          (lambda (_hd85568606_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clauses85628609_)
                    (if (gx#stx-pair? _hd85568606_)
                        (let ((_e85598612_ (gx#syntax-e _hd85568606_)))
                          (let ((_lp-hd85608616_ (##car _e85598612_))
                                (_lp-tl85618619_ (##cdr _e85598612_)))
                            (_loop85588602_
                             _lp-tl85618619_
                             (cons _lp-hd85608616_ _clauses85628609_))))
                        (let ((_clauses85638622_ (reverse _clauses85628609_)))
                          ((lambda (_L8626_ _L8628_)
                             (if (gx#identifier? _L8628_)
                                 (cons (gx#datum->syntax '#f 'define-values)
                                       (cons (cons _L8628_ '())
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'case-lambda)
                                                         (foldr (lambda (_g86458648_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g86468651_)
                          (cons _g86458648_ _g86468651_))
                        '()
                        _L8626_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                 (_g85458569_ _g85468573_)))
                           _clauses85638622_
                           _hd85538590_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop85588602_
                                                   _target85558596_
                                                   '()))
                                                (_g85458569_ _g85468573_)))))
                                      (_g85458569_ _g85468573_))))
                              (_g85458569_ _g85468573_))))
                      (_g85458569_ _g85468573_)))))
          (_g85448654_ _$stx8541_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#defvalues|
      (lambda (_$stx8659_)
        (let* ((_g86638681_
                (lambda (_g86648677_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g86648677_)))
               (_g86628736_
                (lambda (_g86648685_)
                  (if (gx#stx-pair? _g86648685_)
                      (let ((_e86678688_ (gx#syntax-e _g86648685_)))
                        (let ((_hd86688692_ (##car _e86678688_))
                              (_tl86698695_ (##cdr _e86678688_)))
                          (if (gx#stx-pair? _tl86698695_)
                              (let ((_e86708698_ (gx#syntax-e _tl86698695_)))
                                (let ((_hd86718702_ (##car _e86708698_))
                                      (_tl86728705_ (##cdr _e86708698_)))
                                  (if (gx#stx-pair? _tl86728705_)
                                      (let ((_e86738708_
                                             (gx#syntax-e _tl86728705_)))
                                        (let ((_hd86748712_
                                               (##car _e86738708_))
                                              (_tl86758715_
                                               (##cdr _e86738708_)))
                                          (if (gx#stx-null? _tl86758715_)
                                              ((lambda (_L8718_ _L8720_)
                                                 (if (gx#identifier-list?
                                                      _L8720_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'define-values)
                                                           (cons _L8720_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L8718_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g86638681_
                                                      _g86648685_)))
                                               _hd86748712_
                                               _hd86718702_)
                                              (_g86638681_ _g86648685_))))
                                      (_g86638681_ _g86648685_))))
                              (_g86638681_ _g86648685_))))
                      (_g86638681_ _g86648685_)))))
          (_g86628736_ _$stx8659_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#case|
      (lambda (_$stx8740_)
        (let* ((_g87448768_
                (lambda (_g87458764_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g87458764_)))
               (_g87438853_
                (lambda (_g87458772_)
                  (if (gx#stx-pair? _g87458772_)
                      (let ((_e87488775_ (gx#syntax-e _g87458772_)))
                        (let ((_hd87498779_ (##car _e87488775_))
                              (_tl87508782_ (##cdr _e87488775_)))
                          (if (gx#stx-pair? _tl87508782_)
                              (let ((_e87518785_ (gx#syntax-e _tl87508782_)))
                                (let ((_hd87528789_ (##car _e87518785_))
                                      (_tl87538792_ (##cdr _e87518785_)))
                                  (if (gx#stx-pair/null? _tl87538792_)
                                      (let ((_g41795_
                                             (gx#syntax-split-splice
                                              _tl87538792_
                                              '0)))
                                        (begin
                                          (let ((_g41796_
                                                 (if (##values? _g41795_)
                                                     (##vector-length _g41795_)
                                                     1)))
                                            (if (not (##fx= _g41796_ 2))
                                                (error "Context expects 2 values"
                                                       _g41796_)))
                                          (let ((_target87548795_
                                                 (##vector-ref _g41795_ 0))
                                                (_tl87568798_
                                                 (##vector-ref _g41795_ 1)))
                                            (if (gx#stx-null? _tl87568798_)
                                                (letrec ((_loop87578801_
                                                          (lambda (_hd87558805_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause87618808_)
                    (if (gx#stx-pair? _hd87558805_)
                        (let ((_e87588811_ (gx#syntax-e _hd87558805_)))
                          (let ((_lp-hd87598815_ (##car _e87588811_))
                                (_lp-tl87608818_ (##cdr _e87588811_)))
                            (_loop87578801_
                             _lp-tl87608818_
                             (cons _lp-hd87598815_ _clause87618808_))))
                        (let ((_clause87628821_ (reverse _clause87618808_)))
                          ((lambda (_L8825_ _L8827_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (cons (gx#datum->syntax '#f '$e)
                                               (cons _L8827_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '~case)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            '$e)
                                                           (foldr (lambda (_g88448847_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g88458850_)
                            (cons _g88448847_ _g88458850_))
                          '()
                          _L8825_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _clause87628821_
                           _hd87528789_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop87578801_
                                                   _target87548795_
                                                   '()))
                                                (_g87448768_ _g87458772_)))))
                                      (_g87448768_ _g87458772_))))
                              (_g87448768_ _g87458772_))))
                      (_g87448768_ _g87458772_)))))
          (_g87438853_ _$stx8740_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#~case|
      (lambda (_stx8858_)
        (letrec ((_parse-clauses8861_
                  (lambda (_e11324_ _clauses11326_)
                    (let _lp11328_ ((_rest11331_ _clauses11326_)
                                    (_datums11333_ '())
                                    (_dispatch11334_ '())
                                    (_default11335_ '#f))
                      (let* ((___stx3757937580_ _rest11331_)
                             (_g1133811350_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx3757937580_))))
                        (let ((___kont3758237583_
                               (lambda (_L11382_ _L11384_)
                                 (let* ((___stx3748337484_ _L11384_)
                                        (_g1140211475_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            ___stx3748337484_))))
                                   (let ((___kont3748637487_
                                          (lambda (_L11840_)
                                            (if (gx#stx-null? _L11382_)
                                                (let* ((_g1185511863_
                                                        (lambda (_g1185611859_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g1185611859_)))
                                                       (_g1185411882_
                                                        (lambda (_g1185611867_)
                                                          ((lambda (_L11870_)
                                                             (let ()
                                                               (_lp11328_
                                                                '()
                                                                _datums11333_
                                                                _dispatch11334_
                                                                (cons _L11840_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _L11870_ '())))))
                   _g1185611867_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1185411882_ _e11324_))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Misplaced else clause"
                                                 _stx8858_
                                                 _L11384_))))
                                         (___kont3748837489_
                                          (lambda (_L11780_)
                                            (if (gx#stx-null? _L11382_)
                                                (_lp11328_
                                                 '()
                                                 _datums11333_
                                                 _dispatch11334_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin)
                                                       (foldr (lambda (_g1179411797_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1179511800_)
                        (cons _g1179411797_ _g1179511800_))
                      '()
                      _L11780_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Misplaced else clause"
                                                 _stx8858_
                                                 _L11384_))))
                                         (___kont3749237493_
                                          (lambda (_L11665_ _L11667_)
                                            (if (null? (foldr (lambda (_g1168511688_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1168611691_)
                        (cons _g1168511688_ _g1168611691_))
                      '()
                      _L11667_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp11328_
                                                 _L11382_
                                                 _datums11333_
                                                 _dispatch11334_
                                                 _default11335_)
                                                (let* ((_g1169411702_
                                                        (lambda (_g1169511698_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g1169511698_)))
                                                       (_g1169311729_
                                                        (lambda (_g1169511706_)
                                                          ((lambda (_L11709_)
                                                             (let ()
                                                               (_lp11328_
                                                                _L11382_
                                                                (cons (map gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (foldr (lambda (_g1172011723_ _g1172111726_)
                                            (cons _g1172011723_ _g1172111726_))
                                          '()
                                          _L11667_))
                              _datums11333_)
                        (cons (cons _L11665_ (cons _L11709_ '()))
                              _dispatch11334_)
                        _default11335_)))
                   _g1169511706_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1169311729_ _e11324_)))))
                                         (___kont3749637497_
                                          (lambda (_L11552_ _L11554_)
                                            (if (null? (foldr (lambda (_g1157311576_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1157411579_)
                        (cons _g1157311576_ _g1157411579_))
                      '()
                      _L11554_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp11328_
                                                 _L11382_
                                                 _datums11333_
                                                 _dispatch11334_
                                                 _default11335_)
                                                (_lp11328_
                                                 _L11382_
                                                 (cons (map gx#stx-e
                                                            (foldr (lambda (_g1158111584_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g1158211587_)
                             (cons _g1158111584_ _g1158211587_))
                           '()
                           _L11554_))
               _datums11333_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'begin)
                                                             (foldr (lambda (_g1158911592_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1159011595_)
                              (cons _g1158911592_ _g1159011595_))
                            '()
                            _L11552_))
               _dispatch11334_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _default11335_)))))
                                     (let* ((___match3757637577_
                                             (lambda (_e1144911482_
                                                      _hd1145011486_
                                                      _tl1145111489_
                                                      ___splice3749837499_
                                                      _target1145211492_
                                                      _tl1145411495_)
                                               (letrec ((_loop1145511498_
                                                         (lambda (_hd1145311502_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _datum1145911505_)
                   (if (gx#stx-pair? _hd1145311502_)
                       (let ((_e1145611508_ (gx#syntax-e _hd1145311502_)))
                         (let ((_lp-tl1145811515_ (##cdr _e1145611508_))
                               (_lp-hd1145711512_ (##car _e1145611508_)))
                           (_loop1145511498_
                            _lp-tl1145811515_
                            (cons _lp-hd1145711512_ _datum1145911505_))))
                       (let ((_datum1146011518_ (reverse _datum1145911505_)))
                         (if (gx#stx-pair/null? _tl1145111489_)
                             (let ((___splice3750037501_
                                    (gx#syntax-split-splice
                                     _tl1145111489_
                                     '0)))
                               (let ((_tl1146311525_
                                      (##vector-ref ___splice3750037501_ '1))
                                     (_target1146111522_
                                      (##vector-ref ___splice3750037501_ '0)))
                                 (if (gx#stx-null? _tl1146311525_)
                                     (letrec ((_loop1146411528_
                                               (lambda (_hd1146211532_
                                                        _body1146811535_)
                                                 (if (gx#stx-pair?
                                                      _hd1146211532_)
                                                     (let ((_e1146511538_
                                                            (gx#syntax-e
                                                             _hd1146211532_)))
                                                       (let ((_lp-tl1146711545_
                                                              (##cdr _e1146511538_))
                                                             (_lp-hd1146611542_
                                                              (##car _e1146511538_)))
                                                         (_loop1146411528_
                                                          _lp-tl1146711545_
                                                          (cons _lp-hd1146611542_
                                                                _body1146811535_))))
                                                     (let ((_body1146911548_
                                                            (reverse _body1146811535_)))
                                                       (___kont3749637497_
                                                        _body1146911548_
                                                        _datum1146011518_))))))
                                       (_loop1146411528_
                                        _target1146111522_
                                        '()))
                                     (_g1140211475_))))
                             (_g1140211475_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1145511498_
                                                  _target1145211492_
                                                  '()))))
                                            (___match3756237563_
                                             (lambda (_e1142911605_
                                                      _hd1143011609_
                                                      _tl1143111612_
                                                      ___splice3749437495_
                                                      _target1143211615_
                                                      _tl1143411618_)
                                               (letrec ((_loop1143511621_
                                                         (lambda (_hd1143311625_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _datum1143911628_)
                   (if (gx#stx-pair? _hd1143311625_)
                       (let ((_e1143611631_ (gx#syntax-e _hd1143311625_)))
                         (let ((_lp-tl1143811638_ (##cdr _e1143611631_))
                               (_lp-hd1143711635_ (##car _e1143611631_)))
                           (_loop1143511621_
                            _lp-tl1143811638_
                            (cons _lp-hd1143711635_ _datum1143911628_))))
                       (let ((_datum1144011641_ (reverse _datum1143911628_)))
                         (if (gx#stx-pair? _tl1143111612_)
                             (let ((_e1144111645_
                                    (gx#syntax-e _tl1143111612_)))
                               (let ((_tl1144311652_ (##cdr _e1144111645_))
                                     (_hd1144211649_ (##car _e1144111645_)))
                                 (if (gx#identifier? _hd1144211649_)
                                     (if (gx#free-identifier=?
                                          |gerbil/core$<sugar>$<sugar:2>[1]#_g41797_|
                                          _hd1144211649_)
                                         (if (gx#stx-pair? _tl1144311652_)
                                             (let ((_e1144411655_
                                                    (gx#syntax-e
                                                     _tl1144311652_)))
                                               (let ((_tl1144611662_
                                                      (##cdr _e1144411655_))
                                                     (_hd1144511659_
                                                      (##car _e1144411655_)))
                                                 (if (gx#stx-null?
                                                      _tl1144611662_)
                                                     (___kont3749237493_
                                                      _hd1144511659_
                                                      _datum1144011641_)
                                                     (___match3757637577_
                                                      _e1142911605_
                                                      _hd1143011609_
                                                      _tl1143111612_
                                                      ___splice3749437495_
                                                      _target1143211615_
                                                      _tl1143411618_))))
                                             (___match3757637577_
                                              _e1142911605_
                                              _hd1143011609_
                                              _tl1143111612_
                                              ___splice3749437495_
                                              _target1143211615_
                                              _tl1143411618_))
                                         (___match3757637577_
                                          _e1142911605_
                                          _hd1143011609_
                                          _tl1143111612_
                                          ___splice3749437495_
                                          _target1143211615_
                                          _tl1143411618_))
                                     (___match3757637577_
                                      _e1142911605_
                                      _hd1143011609_
                                      _tl1143111612_
                                      ___splice3749437495_
                                      _target1143211615_
                                      _tl1143411618_))))
                             (___match3757637577_
                              _e1142911605_
                              _hd1143011609_
                              _tl1143111612_
                              ___splice3749437495_
                              _target1143211615_
                              _tl1143411618_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1143511621_
                                                  _target1143211615_
                                                  '()))))
                                            (___match3754837549_
                                             (lambda (_e1141511740_
                                                      _hd1141611744_
                                                      _tl1141711747_
                                                      ___splice3749037491_
                                                      _target1141811750_
                                                      _tl1142011753_)
                                               (letrec ((_loop1142111756_
                                                         (lambda (_hd1141911760_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _body1142511763_)
                   (if (gx#stx-pair? _hd1141911760_)
                       (let ((_e1142211766_ (gx#syntax-e _hd1141911760_)))
                         (let ((_lp-tl1142411773_ (##cdr _e1142211766_))
                               (_lp-hd1142311770_ (##car _e1142211766_)))
                           (_loop1142111756_
                            _lp-tl1142411773_
                            (cons _lp-hd1142311770_ _body1142511763_))))
                       (let ((_body1142611776_ (reverse _body1142511763_)))
                         (___kont3748837489_ _body1142611776_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1142111756_
                                                  _target1141811750_
                                                  '())))))
                                       (if (gx#stx-pair? ___stx3748337484_)
                                           (let ((_e1140511810_
                                                  (gx#syntax-e
                                                   ___stx3748337484_)))
                                             (let ((_tl1140711817_
                                                    (##cdr _e1140511810_))
                                                   (_hd1140611814_
                                                    (##car _e1140511810_)))
                                               (if (gx#identifier?
                                                    _hd1140611814_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core$<sugar>$<sugar:2>[1]#_g41798_|
                                                        _hd1140611814_)
                                                       (if (gx#stx-pair?
                                                            _tl1140711817_)
                                                           (let ((_e1140811820_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl1140711817_)))
                     (let ((_tl1141011827_ (##cdr _e1140811820_))
                           (_hd1140911824_ (##car _e1140811820_)))
                       (if (gx#identifier? _hd1140911824_)
                           (if (gx#free-identifier=?
                                |gerbil/core$<sugar>$<sugar:2>[1]#_g41799_|
                                _hd1140911824_)
                               (if (gx#stx-pair? _tl1141011827_)
                                   (let ((_e1141111830_
                                          (gx#syntax-e _tl1141011827_)))
                                     (let ((_tl1141311837_
                                            (##cdr _e1141111830_))
                                           (_hd1141211834_
                                            (##car _e1141111830_)))
                                       (if (gx#stx-null? _tl1141311837_)
                                           (___kont3748637487_ _hd1141211834_)
                                           (if (gx#stx-pair/null?
                                                _tl1140711817_)
                                               (let ((___splice3749037491_
                                                      (gx#syntax-split-splice
                                                       _tl1140711817_
                                                       '0)))
                                                 (let ((_tl1142011753_
                                                        (##vector-ref
                                                         ___splice3749037491_
                                                         '1))
                                                       (_target1141811750_
                                                        (##vector-ref
                                                         ___splice3749037491_
                                                         '0)))
                                                   (if (gx#stx-null?
                                                        _tl1142011753_)
                                                       (___match3754837549_
                                                        _e1140511810_
                                                        _hd1140611814_
                                                        _tl1140711817_
                                                        ___splice3749037491_
                                                        _target1141811750_
                                                        _tl1142011753_)
                                                       (if (gx#stx-pair/null?
                                                            _hd1140611814_)
                                                           (let ((___splice3749437495_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _hd1140611814_ '0)))
                     (let ((_tl1143411618_
                            (##vector-ref ___splice3749437495_ '1))
                           (_target1143211615_
                            (##vector-ref ___splice3749437495_ '0)))
                       (if (gx#stx-null? _tl1143411618_)
                           (___match3756237563_
                            _e1140511810_
                            _hd1140611814_
                            _tl1140711817_
                            ___splice3749437495_
                            _target1143211615_
                            _tl1143411618_)
                           (_g1140211475_))))
                   (_g1140211475_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-pair/null?
                                                    _hd1140611814_)
                                                   (let ((___splice3749437495_
                                                          (gx#syntax-split-splice
                                                           _hd1140611814_
                                                           '0)))
                                                     (let ((_tl1143411618_
                                                            (##vector-ref
                                                             ___splice3749437495_
                                                             '1))
                                                           (_target1143211615_
                                                            (##vector-ref
                                                             ___splice3749437495_
                                                             '0)))
                                                       (if (gx#stx-null?
                                                            _tl1143411618_)
                                                           (___match3756237563_
                                                            _e1140511810_
                                                            _hd1140611814_
                                                            _tl1140711817_
                                                            ___splice3749437495_
                                                            _target1143211615_
                                                            _tl1143411618_)
                                                           (_g1140211475_))))
                                                   (_g1140211475_))))))
                                   (if (gx#stx-pair/null? _tl1140711817_)
                                       (let ((___splice3749037491_
                                              (gx#syntax-split-splice
                                               _tl1140711817_
                                               '0)))
                                         (let ((_tl1142011753_
                                                (##vector-ref
                                                 ___splice3749037491_
                                                 '1))
                                               (_target1141811750_
                                                (##vector-ref
                                                 ___splice3749037491_
                                                 '0)))
                                           (if (gx#stx-null? _tl1142011753_)
                                               (___match3754837549_
                                                _e1140511810_
                                                _hd1140611814_
                                                _tl1140711817_
                                                ___splice3749037491_
                                                _target1141811750_
                                                _tl1142011753_)
                                               (if (gx#stx-pair/null?
                                                    _hd1140611814_)
                                                   (let ((___splice3749437495_
                                                          (gx#syntax-split-splice
                                                           _hd1140611814_
                                                           '0)))
                                                     (let ((_tl1143411618_
                                                            (##vector-ref
                                                             ___splice3749437495_
                                                             '1))
                                                           (_target1143211615_
                                                            (##vector-ref
                                                             ___splice3749437495_
                                                             '0)))
                                                       (if (gx#stx-null?
                                                            _tl1143411618_)
                                                           (___match3756237563_
                                                            _e1140511810_
                                                            _hd1140611814_
                                                            _tl1140711817_
                                                            ___splice3749437495_
                                                            _target1143211615_
                                                            _tl1143411618_)
                                                           (_g1140211475_))))
                                                   (_g1140211475_)))))
                                       (if (gx#stx-pair/null? _hd1140611814_)
                                           (let ((___splice3749437495_
                                                  (gx#syntax-split-splice
                                                   _hd1140611814_
                                                   '0)))
                                             (let ((_tl1143411618_
                                                    (##vector-ref
                                                     ___splice3749437495_
                                                     '1))
                                                   (_target1143211615_
                                                    (##vector-ref
                                                     ___splice3749437495_
                                                     '0)))
                                               (if (gx#stx-null?
                                                    _tl1143411618_)
                                                   (___match3756237563_
                                                    _e1140511810_
                                                    _hd1140611814_
                                                    _tl1140711817_
                                                    ___splice3749437495_
                                                    _target1143211615_
                                                    _tl1143411618_)
                                                   (_g1140211475_))))
                                           (_g1140211475_))))
                               (if (gx#stx-pair/null? _tl1140711817_)
                                   (let ((___splice3749037491_
                                          (gx#syntax-split-splice
                                           _tl1140711817_
                                           '0)))
                                     (let ((_tl1142011753_
                                            (##vector-ref
                                             ___splice3749037491_
                                             '1))
                                           (_target1141811750_
                                            (##vector-ref
                                             ___splice3749037491_
                                             '0)))
                                       (if (gx#stx-null? _tl1142011753_)
                                           (___match3754837549_
                                            _e1140511810_
                                            _hd1140611814_
                                            _tl1140711817_
                                            ___splice3749037491_
                                            _target1141811750_
                                            _tl1142011753_)
                                           (if (gx#stx-pair/null?
                                                _hd1140611814_)
                                               (let ((___splice3749437495_
                                                      (gx#syntax-split-splice
                                                       _hd1140611814_
                                                       '0)))
                                                 (let ((_tl1143411618_
                                                        (##vector-ref
                                                         ___splice3749437495_
                                                         '1))
                                                       (_target1143211615_
                                                        (##vector-ref
                                                         ___splice3749437495_
                                                         '0)))
                                                   (if (gx#stx-null?
                                                        _tl1143411618_)
                                                       (___match3756237563_
                                                        _e1140511810_
                                                        _hd1140611814_
                                                        _tl1140711817_
                                                        ___splice3749437495_
                                                        _target1143211615_
                                                        _tl1143411618_)
                                                       (_g1140211475_))))
                                               (_g1140211475_)))))
                                   (if (gx#stx-pair/null? _hd1140611814_)
                                       (let ((___splice3749437495_
                                              (gx#syntax-split-splice
                                               _hd1140611814_
                                               '0)))
                                         (let ((_tl1143411618_
                                                (##vector-ref
                                                 ___splice3749437495_
                                                 '1))
                                               (_target1143211615_
                                                (##vector-ref
                                                 ___splice3749437495_
                                                 '0)))
                                           (if (gx#stx-null? _tl1143411618_)
                                               (___match3756237563_
                                                _e1140511810_
                                                _hd1140611814_
                                                _tl1140711817_
                                                ___splice3749437495_
                                                _target1143211615_
                                                _tl1143411618_)
                                               (_g1140211475_))))
                                       (_g1140211475_))))
                           (if (gx#stx-pair/null? _tl1140711817_)
                               (let ((___splice3749037491_
                                      (gx#syntax-split-splice
                                       _tl1140711817_
                                       '0)))
                                 (let ((_tl1142011753_
                                        (##vector-ref ___splice3749037491_ '1))
                                       (_target1141811750_
                                        (##vector-ref
                                         ___splice3749037491_
                                         '0)))
                                   (if (gx#stx-null? _tl1142011753_)
                                       (___match3754837549_
                                        _e1140511810_
                                        _hd1140611814_
                                        _tl1140711817_
                                        ___splice3749037491_
                                        _target1141811750_
                                        _tl1142011753_)
                                       (if (gx#stx-pair/null? _hd1140611814_)
                                           (let ((___splice3749437495_
                                                  (gx#syntax-split-splice
                                                   _hd1140611814_
                                                   '0)))
                                             (let ((_tl1143411618_
                                                    (##vector-ref
                                                     ___splice3749437495_
                                                     '1))
                                                   (_target1143211615_
                                                    (##vector-ref
                                                     ___splice3749437495_
                                                     '0)))
                                               (if (gx#stx-null?
                                                    _tl1143411618_)
                                                   (___match3756237563_
                                                    _e1140511810_
                                                    _hd1140611814_
                                                    _tl1140711817_
                                                    ___splice3749437495_
                                                    _target1143211615_
                                                    _tl1143411618_)
                                                   (_g1140211475_))))
                                           (_g1140211475_)))))
                               (if (gx#stx-pair/null? _hd1140611814_)
                                   (let ((___splice3749437495_
                                          (gx#syntax-split-splice
                                           _hd1140611814_
                                           '0)))
                                     (let ((_tl1143411618_
                                            (##vector-ref
                                             ___splice3749437495_
                                             '1))
                                           (_target1143211615_
                                            (##vector-ref
                                             ___splice3749437495_
                                             '0)))
                                       (if (gx#stx-null? _tl1143411618_)
                                           (___match3756237563_
                                            _e1140511810_
                                            _hd1140611814_
                                            _tl1140711817_
                                            ___splice3749437495_
                                            _target1143211615_
                                            _tl1143411618_)
                                           (_g1140211475_))))
                                   (_g1140211475_))))))
                   (if (gx#stx-pair/null? _tl1140711817_)
                       (let ((___splice3749037491_
                              (gx#syntax-split-splice _tl1140711817_ '0)))
                         (let ((_tl1142011753_
                                (##vector-ref ___splice3749037491_ '1))
                               (_target1141811750_
                                (##vector-ref ___splice3749037491_ '0)))
                           (if (gx#stx-null? _tl1142011753_)
                               (___match3754837549_
                                _e1140511810_
                                _hd1140611814_
                                _tl1140711817_
                                ___splice3749037491_
                                _target1141811750_
                                _tl1142011753_)
                               (if (gx#stx-pair/null? _hd1140611814_)
                                   (let ((___splice3749437495_
                                          (gx#syntax-split-splice
                                           _hd1140611814_
                                           '0)))
                                     (let ((_tl1143411618_
                                            (##vector-ref
                                             ___splice3749437495_
                                             '1))
                                           (_target1143211615_
                                            (##vector-ref
                                             ___splice3749437495_
                                             '0)))
                                       (if (gx#stx-null? _tl1143411618_)
                                           (___match3756237563_
                                            _e1140511810_
                                            _hd1140611814_
                                            _tl1140711817_
                                            ___splice3749437495_
                                            _target1143211615_
                                            _tl1143411618_)
                                           (_g1140211475_))))
                                   (_g1140211475_)))))
                       (if (gx#stx-pair/null? _hd1140611814_)
                           (let ((___splice3749437495_
                                  (gx#syntax-split-splice _hd1140611814_ '0)))
                             (let ((_tl1143411618_
                                    (##vector-ref ___splice3749437495_ '1))
                                   (_target1143211615_
                                    (##vector-ref ___splice3749437495_ '0)))
                               (if (gx#stx-null? _tl1143411618_)
                                   (___match3756237563_
                                    _e1140511810_
                                    _hd1140611814_
                                    _tl1140711817_
                                    ___splice3749437495_
                                    _target1143211615_
                                    _tl1143411618_)
                                   (_g1140211475_))))
                           (_g1140211475_))))
               (if (gx#stx-pair/null? _hd1140611814_)
                   (let ((___splice3749437495_
                          (gx#syntax-split-splice _hd1140611814_ '0)))
                     (let ((_tl1143411618_
                            (##vector-ref ___splice3749437495_ '1))
                           (_target1143211615_
                            (##vector-ref ___splice3749437495_ '0)))
                       (if (gx#stx-null? _tl1143411618_)
                           (___match3756237563_
                            _e1140511810_
                            _hd1140611814_
                            _tl1140711817_
                            ___splice3749437495_
                            _target1143211615_
                            _tl1143411618_)
                           (_g1140211475_))))
                   (_g1140211475_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair/null?
                                                        _hd1140611814_)
                                                       (let ((___splice3749437495_
                                                              (gx#syntax-split-splice
                                                               _hd1140611814_
                                                               '0)))
                                                         (let ((_tl1143411618_
                                                                (##vector-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ___splice3749437495_
                         '1))
                       (_target1143211615_
                        (##vector-ref ___splice3749437495_ '0)))
                   (if (gx#stx-null? _tl1143411618_)
                       (___match3756237563_
                        _e1140511810_
                        _hd1140611814_
                        _tl1140711817_
                        ___splice3749437495_
                        _target1143211615_
                        _tl1143411618_)
                       (_g1140211475_))))
               (_g1140211475_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g1140211475_)))))))
                              (___kont3758437585_
                               (lambda ()
                                 (_check-duplicate-datums8863_ _datums11333_)
                                 (values (reverse _datums11333_)
                                         (reverse _dispatch11334_)
                                         (let ((_$e11361_ _default11335_))
                                           (if _$e11361_
                                               _$e11361_
                                               '#!void))))))
                          (let ((_g1133711365_
                                 (lambda ()
                                   (if (gx#stx-null? ___stx3757937580_)
                                       (___kont3758437585_)
                                       (_g1133811350_)))))
                            (if (gx#stx-pair? ___stx3757937580_)
                                (let ((_e1134211372_
                                       (gx#syntax-e ___stx3757937580_)))
                                  (let ((_tl1134411379_ (##cdr _e1134211372_))
                                        (_hd1134311376_ (##car _e1134211372_)))
                                    (___kont3758237583_
                                     _tl1134411379_
                                     _hd1134311376_)))
                                (_g1133711365_))))))))
                 (_check-duplicate-datums8863_
                  (lambda (_datums11312_)
                    (let ((_ht11315_ (make-hash-table)))
                      (for-each
                       (lambda (_lst11318_)
                         (for-each
                          (lambda (_datum11321_)
                            (if (hash-get _ht11315_ _datum11321_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Duplicate datum"
                                 _stx8858_
                                 _datum11321_)
                                (hash-put! _ht11315_ _datum11321_ '#t)))
                          _lst11318_))
                       _datums11312_))))
                 (_count-datums8864_
                  (lambda (_datums11305_)
                    (foldl (lambda (_lst11308_ _r11310_)
                             (+ (length _lst11308_) _r11310_))
                           '0
                           _datums11305_)))
                 (_symbolic-datums?8865_
                  (lambda (_datums11299_)
                    (andmap (lambda (_lst11302_) (andmap symbol? _lst11302_))
                            _datums11299_)))
                 (_char-datums?8866_
                  (lambda (_datums11293_)
                    (andmap (lambda (_lst11296_) (andmap char? _lst11296_))
                            _datums11293_)))
                 (_fixnum-datums?8867_
                  (lambda (_datums11287_)
                    (andmap (lambda (_lst11290_) (andmap fixnum? _lst11290_))
                            _datums11287_)))
                 (_eq-datums?8868_
                  (lambda (_datums11270_)
                    (andmap (lambda (_lst11273_)
                              (andmap (lambda (_x11276_)
                                        (let ((_$e11279_ (symbol? _x11276_)))
                                          (if _$e11279_
                                              _$e11279_
                                              (let ((_$e11283_
                                                     (keyword? _x11276_)))
                                                (if _$e11283_
                                                    _$e11283_
                                                    (immediate? _x11276_))))))
                                      _lst11273_))
                            _datums11270_)))
                 (_generate-simple-case8869_
                  (lambda (_e11034_
                           _datums11036_
                           _dispatch11037_
                           _default11038_)
                    (let* ((_g1104011048_
                            (lambda (_g1104111044_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1104111044_)))
                           (_g1103911266_
                            (lambda (_g1104111052_)
                              ((lambda (_L11055_)
                                 (let ()
                                   (let _recur11067_ ((_datums11070_
                                                       _datums11036_)
                                                      (_dispatch11072_
                                                       _dispatch11037_))
                                     (let* ((___stx3759737598_ _datums11070_)
                                            (_g1107511096_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                ___stx3759737598_))))
                                       (let ((___kont3760037601_
                                              (lambda (_L11154_ _L11156_)
                                                (let* ((_g1117611188_
                                                        (lambda (_g1117711184_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g1117711184_)))
                                                       (_g1117511258_
                                                        (lambda (_g1117711192_)
                                                          (if (gx#stx-pair?
                                                               _g1117711192_)
                                                              (let ((_e1118011195_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _g1117711192_)))
                        (let ((_hd1118111199_ (##car _e1118011195_))
                              (_tl1118211202_ (##cdr _e1118011195_)))
                          ((lambda (_L11205_ _L11207_)
                             (let* ((_g1121911227_
                                     (lambda (_g1122011223_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1122011223_)))
                                    (_g1121811254_
                                     (lambda (_g1122011231_)
                                       ((lambda (_L11234_)
                                          (let ()
                                            (cons (gx#datum->syntax '#f 'if)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'or)
                                                              (foldr (lambda (_g1124511248_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g1124611251_)
                               (cons (cons (gx#datum->syntax '#f '~case-test)
                                           (cons _g1124511248_
                                                 (cons _L11055_ '())))
                                     _g1124611251_))
                             '()
                             _L11156_))
                (cons _L11207_ (cons _L11234_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _g1122011231_))))
                               (_g1121811254_
                                (_recur11067_ _L11154_ _L11205_))))
                           _tl1118211202_
                           _hd1118111199_)))
                      (_g1117611188_ _g1117711192_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1117511258_
                                                   _dispatch11072_))))
                                             (___kont3760437605_
                                              (lambda () _default11038_)))
                                         (let ((___match3762037621_
                                                (lambda (_e1107911114_
                                                         _hd1108011118_
                                                         _tl1108111121_
                                                         ___splice3760237603_
                                                         _target1108211124_
                                                         _tl1108411127_)
                                                  (letrec ((_loop1108511130_
                                                            (lambda (_hd1108311134_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _datum1108911137_)
                      (if (gx#stx-pair? _hd1108311134_)
                          (let ((_e1108611140_ (gx#syntax-e _hd1108311134_)))
                            (let ((_lp-tl1108811147_ (##cdr _e1108611140_))
                                  (_lp-hd1108711144_ (##car _e1108611140_)))
                              (_loop1108511130_
                               _lp-tl1108811147_
                               (cons _lp-hd1108711144_ _datum1108911137_))))
                          (let ((_datum1109011150_
                                 (reverse _datum1108911137_)))
                            (___kont3760037601_
                             _tl1108111121_
                             _datum1109011150_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1108511130_
                                                     _target1108211124_
                                                     '())))))
                                           (if (gx#stx-pair? ___stx3759737598_)
                                               (let ((_e1107911114_
                                                      (gx#syntax-e
                                                       ___stx3759737598_)))
                                                 (let ((_tl1108111121_
                                                        (##cdr _e1107911114_))
                                                       (_hd1108011118_
                                                        (##car _e1107911114_)))
                                                   (if (gx#stx-pair/null?
                                                        _hd1108011118_)
                                                       (let ((___splice3760237603_
                                                              (gx#syntax-split-splice
                                                               _hd1108011118_
                                                               '0)))
                                                         (let ((_tl1108411127_
                                                                (##vector-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ___splice3760237603_
                         '1))
                       (_target1108211124_
                        (##vector-ref ___splice3760237603_ '0)))
                   (if (gx#stx-null? _tl1108411127_)
                       (___match3762037621_
                        _e1107911114_
                        _hd1108011118_
                        _tl1108111121_
                        ___splice3760237603_
                        _target1108211124_
                        _tl1108411127_)
                       (___kont3760437605_))))
               (___kont3760437605_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont3760437605_))))))))
                               _g1104111052_))))
                      (_g1103911266_ _e11034_))))
                 (_datum-dispatch-index8870_
                  (lambda (_datums10906_)
                    (let _lp10909_ ((_rest10912_ _datums10906_)
                                    (_ix10914_ '0)
                                    (_r10915_ '()))
                      (let* ((___stx3762337624_ _rest10912_)
                             (_g1091810939_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx3762337624_))))
                        (let ((___kont3762637627_
                               (lambda (_L10997_ _L10999_)
                                 (_lp10909_
                                  _L10997_
                                  (fx1+ _ix10914_)
                                  (foldl (lambda (_x11018_ _r11020_)
                                           (cons (cons _x11018_ _ix10914_)
                                                 _r11020_))
                                         _r10915_
                                         (foldr (lambda (_g1102111024_
                                                         _g1102211027_)
                                                  (cons _g1102111024_
                                                        _g1102211027_))
                                                '()
                                                _L10999_)))))
                              (___kont3763037631_ (lambda () _r10915_)))
                          (let ((___match3764637647_
                                 (lambda (_e1092210957_
                                          _hd1092310961_
                                          _tl1092410964_
                                          ___splice3762837629_
                                          _target1092510967_
                                          _tl1092710970_)
                                   (letrec ((_loop1092810973_
                                             (lambda (_hd1092610977_
                                                      _datum1093210980_)
                                               (if (gx#stx-pair?
                                                    _hd1092610977_)
                                                   (let ((_e1092910983_
                                                          (gx#syntax-e
                                                           _hd1092610977_)))
                                                     (let ((_lp-tl1093110990_
                                                            (##cdr _e1092910983_))
                                                           (_lp-hd1093010987_
                                                            (##car _e1092910983_)))
                                                       (_loop1092810973_
                                                        _lp-tl1093110990_
                                                        (cons _lp-hd1093010987_
                                                              _datum1093210980_))))
                                                   (let ((_datum1093310993_
                                                          (reverse _datum1093210980_)))
                                                     (___kont3762637627_
                                                      _tl1092410964_
                                                      _datum1093310993_))))))
                                     (_loop1092810973_
                                      _target1092510967_
                                      '())))))
                            (if (gx#stx-pair? ___stx3762337624_)
                                (let ((_e1092210957_
                                       (gx#syntax-e ___stx3762337624_)))
                                  (let ((_tl1092410964_ (##cdr _e1092210957_))
                                        (_hd1092310961_ (##car _e1092210957_)))
                                    (if (gx#stx-pair/null? _hd1092310961_)
                                        (let ((___splice3762837629_
                                               (gx#syntax-split-splice
                                                _hd1092310961_
                                                '0)))
                                          (let ((_tl1092710970_
                                                 (##vector-ref
                                                  ___splice3762837629_
                                                  '1))
                                                (_target1092510967_
                                                 (##vector-ref
                                                  ___splice3762837629_
                                                  '0)))
                                            (if (gx#stx-null? _tl1092710970_)
                                                (___match3764637647_
                                                 _e1092210957_
                                                 _hd1092310961_
                                                 _tl1092410964_
                                                 ___splice3762837629_
                                                 _target1092510967_
                                                 _tl1092710970_)
                                                (___kont3763037631_))))
                                        (___kont3763037631_))))
                                (___kont3763037631_))))))))
                 (_duplicate-indexes?8871_
                  (lambda (_xs10887_)
                    (let ((_ht10890_ (make-hash-table-eq)))
                      (let _lp10893_ ((_rest10896_ _xs10887_))
                        (if (pair? _rest10896_)
                            (let* ((_ix10899_ (car _rest10896_))
                                   (_$e10902_ (hash-get _ht10890_ _ix10899_)))
                              (if _$e10902_
                                  _$e10902_
                                  (begin
                                    (hash-put! _ht10890_ _ix10899_ '#t)
                                    (_lp10893_ (cdr _rest10896_)))))
                            '#f)))))
                 (_generate-hash-dispatch-table8872_
                  (lambda (_indexes10856_ _hash-e10858_)
                    (let _lp10860_ ((_len10863_
                                     (* '2 (length _indexes10856_))))
                      (let* ((_hs10869_
                              (map (lambda (_x10866_)
                                     (_hash-e10858_ (car _x10866_)))
                                   _indexes10856_))
                             (_xs10875_
                              (map (lambda (_h10872_)
                                     (fxmodulo _h10872_ _len10863_))
                                   _hs10869_)))
                        (if (_duplicate-indexes?8871_ _xs10875_)
                            (if (< _len10863_ '131072)
                                (_lp10860_ (quotient (fx* _len10863_ '3) '2))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Cannot create perfect dispatch table"
                                 _stx8858_
                                 _indexes10856_))
                            (let ((_tab10880_ (make-vector _len10863_ '#f)))
                              (for-each
                               (lambda (_entry10883_ _x10885_)
                                 (vector-set!
                                  _tab10880_
                                  _x10885_
                                  _entry10883_))
                               _indexes10856_
                               _xs10875_)
                              _tab10880_))))))
                 (_generate-symbolic-dispatch8873_
                  (lambda (_e10459_
                           _datums10461_
                           _dispatch10462_
                           _default10463_)
                    (let* ((_indexes10465_
                            (_datum-dispatch-index8870_ _datums10461_))
                           (_tab10468_
                            (_generate-hash-dispatch-table8872_
                             _indexes10465_
                             symbol-hash)))
                      (if (= (length _dispatch10462_) '1)
                          (let* ((_tab10476_
                                  (vector-map
                                   (lambda (_x10473_)
                                     (if _x10473_ (car _x10473_) '#f))
                                   _tab10468_))
                                 (_g1047910517_
                                  (lambda (_g1048010513_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g1048010513_)))
                                 (_g1047810648_
                                  (lambda (_g1048010521_)
                                    (if (gx#stx-pair? _g1048010521_)
                                        (let ((_e1048810524_
                                               (gx#syntax-e _g1048010521_)))
                                          (let ((_hd1048910528_
                                                 (##car _e1048810524_))
                                                (_tl1049010531_
                                                 (##cdr _e1048810524_)))
                                            (if (gx#stx-pair? _tl1049010531_)
                                                (let ((_e1049110534_
                                                       (gx#syntax-e
                                                        _tl1049010531_)))
                                                  (let ((_hd1049210538_
                                                         (##car _e1049110534_))
                                                        (_tl1049310541_
                                                         (##cdr _e1049110534_)))
                                                    (if (gx#stx-pair?
                                                         _tl1049310541_)
                                                        (let ((_e1049410544_
                                                               (gx#syntax-e
                                                                _tl1049310541_)))
                                                          (let ((_hd1049510548_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1049410544_))
                        (_tl1049610551_ (##cdr _e1049410544_)))
                    (if (gx#stx-pair? _tl1049610551_)
                        (let ((_e1049710554_ (gx#syntax-e _tl1049610551_)))
                          (let ((_hd1049810558_ (##car _e1049710554_))
                                (_tl1049910561_ (##cdr _e1049710554_)))
                            (if (gx#stx-pair? _hd1049810558_)
                                (let ((_e1050010564_
                                       (gx#syntax-e _hd1049810558_)))
                                  (let ((_hd1050110568_ (##car _e1050010564_))
                                        (_tl1050210571_ (##cdr _e1050010564_)))
                                    (if (gx#stx-null? _tl1050210571_)
                                        (if (gx#stx-pair? _tl1049910561_)
                                            (let ((_e1050310574_
                                                   (gx#syntax-e
                                                    _tl1049910561_)))
                                              (let ((_hd1050410578_
                                                     (##car _e1050310574_))
                                                    (_tl1050510581_
                                                     (##cdr _e1050310574_)))
                                                (if (gx#stx-pair?
                                                     _tl1050510581_)
                                                    (let ((_e1050610584_
                                                           (gx#syntax-e
                                                            _tl1050510581_)))
                                                      (let ((_hd1050710588_
                                                             (##car _e1050610584_))
                                                            (_tl1050810591_
                                                             (##cdr _e1050610584_)))
                                                        (if (gx#stx-pair?
                                                             _tl1050810591_)
                                                            (let ((_e1050910594_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl1050810591_)))
                      (let ((_hd1051010598_ (##car _e1050910594_))
                            (_tl1051110601_ (##cdr _e1050910594_)))
                        (if (gx#stx-null? _tl1051110601_)
                            ((lambda (_L10604_
                                      _L10606_
                                      _L10607_
                                      _L10608_
                                      _L10609_
                                      _L10610_
                                      _L10611_)
                               (let ()
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (cons (cons _L10610_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'lambda)
                             (cons '() (cons _L10607_ '())))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons _L10609_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'quote)
                                   (cons _L10606_ '()))
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'if)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'symbol?)
                             (cons _L10611_ '()))
                       (cons (cons (gx#datum->syntax '#f 'let*)
                                   (cons (cons (cons (gx#datum->syntax '#f 'h)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##symbol-hash)
                         (cons _L10611_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'ix)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##fxmodulo)
                               (cons (gx#datum->syntax '#f 'h)
                                     (cons _L10604_ '())))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'q)
                         (cons (cons (gx#datum->syntax '#f '##vector-ref)
                                     (cons _L10609_
                                           (cons (gx#datum->syntax '#f 'ix)
                                                 '())))
                               '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons (gx#datum->syntax '#f 'if)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'eq?)
                         (cons (gx#datum->syntax '#f 'q) (cons _L10611_ '())))
                   (cons _L10608_ (cons (cons _L10610_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))
                             (cons (cons _L10610_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))))
                             _hd1051010598_
                             _hd1050710588_
                             _hd1050410578_
                             _hd1050110568_
                             _hd1049510548_
                             _hd1049210538_
                             _hd1048910528_)
                            (_g1047910517_ _g1048010521_))))
                    (_g1047910517_ _g1048010521_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1047910517_
                                                     _g1048010521_))))
                                            (_g1047910517_ _g1048010521_))
                                        (_g1047910517_ _g1048010521_))))
                                (_g1047910517_ _g1048010521_))))
                        (_g1047910517_ _g1048010521_))))
                (_g1047910517_ _g1048010521_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1047910517_
                                                 _g1048010521_))))
                                        (_g1047910517_ _g1048010521_)))))
                            (_g1047810648_
                             (list _e10459_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _dispatch10462_
                                   _default10463_
                                   _tab10476_
                                   (vector-length _tab10476_))))
                          (let* ((_g1065210696_
                                  (lambda (_g1065310692_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g1065310692_)))
                                 (_g1065110852_
                                  (lambda (_g1065310700_)
                                    (if (gx#stx-pair? _g1065310700_)
                                        (let ((_e1066110703_
                                               (gx#syntax-e _g1065310700_)))
                                          (let ((_hd1066210707_
                                                 (##car _e1066110703_))
                                                (_tl1066310710_
                                                 (##cdr _e1066110703_)))
                                            (if (gx#stx-pair? _tl1066310710_)
                                                (let ((_e1066410713_
                                                       (gx#syntax-e
                                                        _tl1066310710_)))
                                                  (let ((_hd1066510717_
                                                         (##car _e1066410713_))
                                                        (_tl1066610720_
                                                         (##cdr _e1066410713_)))
                                                    (if (gx#stx-pair?
                                                         _tl1066610720_)
                                                        (let ((_e1066710723_
                                                               (gx#syntax-e
                                                                _tl1066610720_)))
                                                          (let ((_hd1066810727_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1066710723_))
                        (_tl1066910730_ (##cdr _e1066710723_)))
                    (if (gx#stx-pair? _tl1066910730_)
                        (let ((_e1067010733_ (gx#syntax-e _tl1066910730_)))
                          (let ((_hd1067110737_ (##car _e1067010733_))
                                (_tl1067210740_ (##cdr _e1067010733_)))
                            (if (gx#stx-pair/null? _hd1067110737_)
                                (let ((_g41800_
                                       (gx#syntax-split-splice
                                        _hd1067110737_
                                        '0)))
                                  (begin
                                    (let ((_g41801_
                                           (if (##values? _g41800_)
                                               (##vector-length _g41800_)
                                               1)))
                                      (if (not (##fx= _g41801_ 2))
                                          (error "Context expects 2 values"
                                                 _g41801_)))
                                    (let ((_target1067310743_
                                           (##vector-ref _g41800_ 0))
                                          (_tl1067510746_
                                           (##vector-ref _g41800_ 1)))
                                      (if (gx#stx-null? _tl1067510746_)
                                          (letrec ((_loop1067610749_
                                                    (lambda (_hd1067410753_
                                                             _dispatch1068010756_)
                                                      (if (gx#stx-pair?
                                                           _hd1067410753_)
                                                          (let ((_e1067710759_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _hd1067410753_)))
                    (let ((_lp-hd1067810763_ (##car _e1067710759_))
                          (_lp-tl1067910766_ (##cdr _e1067710759_)))
                      (_loop1067610749_
                       _lp-tl1067910766_
                       (cons _lp-hd1067810763_ _dispatch1068010756_))))
                  (let ((_dispatch1068110769_ (reverse _dispatch1068010756_)))
                    (if (gx#stx-pair? _tl1067210740_)
                        (let ((_e1068210773_ (gx#syntax-e _tl1067210740_)))
                          (let ((_hd1068310777_ (##car _e1068210773_))
                                (_tl1068410780_ (##cdr _e1068210773_)))
                            (if (gx#stx-pair? _tl1068410780_)
                                (let ((_e1068510783_
                                       (gx#syntax-e _tl1068410780_)))
                                  (let ((_hd1068610787_ (##car _e1068510783_))
                                        (_tl1068710790_ (##cdr _e1068510783_)))
                                    (if (gx#stx-pair? _tl1068710790_)
                                        (let ((_e1068810793_
                                               (gx#syntax-e _tl1068710790_)))
                                          (let ((_hd1068910797_
                                                 (##car _e1068810793_))
                                                (_tl1069010800_
                                                 (##cdr _e1068810793_)))
                                            (if (gx#stx-null? _tl1069010800_)
                                                ((lambda (_L10803_
                                                          _L10805_
                                                          _L10806_
                                                          _L10807_
                                                          _L10808_
                                                          _L10809_
                                                          _L10810_)
                                                   (let ()
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'let)
                                                           (cons (cons (cons _L10809_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (cons (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons _L10806_ '())))
                                           '()))
                               (cons (cons _L10808_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'quote)
                                                       (cons _L10805_ '()))
                                                 '()))
                                     '()))
                         (cons (cons (gx#datum->syntax '#f 'if)
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'symbol?)
                                                 (cons _L10810_ '()))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let*)
                                                       (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'h)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              '##symbol-hash)
                                             (cons _L10810_ '()))
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'ix)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##fxmodulo)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'h)
                                                         (cons _L10803_ '())))
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'q)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '##vector-ref)
                                                         (cons _L10808_
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'ix)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                       '())))
                     (cons (cons (gx#datum->syntax '#f 'if)
                                 (cons (gx#datum->syntax '#f 'q)
                                       (cons (cons (gx#datum->syntax '#f 'if)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'eq?)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '##car)
                                   (cons (gx#datum->syntax '#f 'q) '()))
                             (cons _L10810_ '())))
                 (cons (cons (gx#datum->syntax '#f 'let)
                             (cons (cons (gx#datum->syntax '#f 'x)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##cdr)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'q)
                                                           '()))
                                               '()))
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                '~case-dispatch)
                                               (cons (gx#datum->syntax '#f 'x)
                                                     (foldr (lambda (_g1084310846_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g1084410849_)
                      (cons _g1084310846_ _g1084410849_))
                    '()
                    _L10807_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       (cons (cons _L10809_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons _L10809_ '()) '()))))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L10809_ '())
                                                       '()))))
                               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1068910797_
                                                 _hd1068610787_
                                                 _hd1068310777_
                                                 _dispatch1068110769_
                                                 _hd1066810727_
                                                 _hd1066510717_
                                                 _hd1066210707_)
                                                (_g1065210696_
                                                 _g1065310700_))))
                                        (_g1065210696_ _g1065310700_))))
                                (_g1065210696_ _g1065310700_))))
                        (_g1065210696_ _g1065310700_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1067610749_
                                             _target1067310743_
                                             '()))
                                          (_g1065210696_ _g1065310700_)))))
                                (_g1065210696_ _g1065310700_))))
                        (_g1065210696_ _g1065310700_))))
                (_g1065210696_ _g1065310700_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1065210696_
                                                 _g1065310700_))))
                                        (_g1065210696_ _g1065310700_)))))
                            (_g1065110852_
                             (list _e10459_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _dispatch10462_
                                   _default10463_
                                   _tab10468_
                                   (vector-length _tab10468_))))))))
                 (_max-char8874_
                  (lambda (_datums10448_)
                    (foldl (lambda (_lst10451_ _r10453_)
                             (foldl (lambda (_char10455_ _r10457_)
                                      (max (char->integer _char10455_)
                                           _r10457_))
                                    _r10453_
                                    _lst10451_))
                           '0
                           _datums10448_)))
                 (_generate-char-dispatch-table8875_
                  (lambda (_indexes10427_)
                    (let* ((_ixs10433_
                            (map (lambda (_x10430_)
                                   (char->integer (car _x10430_)))
                                 _indexes10427_))
                           (_len10436_ (fx1+ (foldl max '0 _ixs10433_)))
                           (_vec10439_ (make-vector _len10436_ '#f)))
                      (for-each
                       (lambda (_entry10444_ _x10446_)
                         (vector-set! _vec10439_ _x10446_ (cdr _entry10444_)))
                       _indexes10427_
                       _ixs10433_)
                      _vec10439_)))
                 (_simple-char-range?8876_
                  (lambda (_tab10403_)
                    (let ((_end10406_ (vector-length _tab10403_)))
                      (let _lp10409_ ((_i10412_ '0))
                        (let ((_ix10415_ (vector-ref _tab10403_ _i10412_)))
                          (if _ix10415_
                              (let _lp210418_ ((_i10421_ (fx1+ _i10412_)))
                                (if (fx< _i10421_ _end10406_)
                                    (let ((_ix*10424_
                                           (vector-ref _tab10403_ _i10421_)))
                                      (if (eq? _ix10415_ _ix*10424_)
                                          (_lp210418_ (fx1+ _i10421_))
                                          '#f))
                                    '#t))
                              (_lp10409_ (fx1+ _i10412_))))))))
                 (_char-range-start8877_
                  (lambda (_tab10394_)
                    (let _lp10397_ ((_i10400_ '0))
                      (if (vector-ref _tab10394_ _i10400_)
                          _i10400_
                          (_lp10397_ (fx1+ _i10400_))))))
                 (_generate-char-dispatch8878_
                  (lambda (_e10017_
                           _datums10019_
                           _dispatch10020_
                           _default10021_)
                    (if (< (_max-char8874_ _datums10019_) '128)
                        (let* ((_indexes10023_
                                (_datum-dispatch-index8870_ _datums10019_))
                               (_tab10026_
                                (_generate-char-dispatch-table8875_
                                 _indexes10023_)))
                          (if (_simple-char-range?8876_ _tab10026_)
                              (let ((_start10031_
                                     (_char-range-start8877_ _tab10026_))
                                    (_end10033_ (vector-length _tab10026_)))
                                (let* ((_g1003510069_
                                        (lambda (_g1003610065_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g1003610065_)))
                                       (_g1003410186_
                                        (lambda (_g1003610073_)
                                          (if (gx#stx-pair? _g1003610073_)
                                              (let ((_e1004310076_
                                                     (gx#syntax-e
                                                      _g1003610073_)))
                                                (let ((_hd1004410080_
                                                       (##car _e1004310076_))
                                                      (_tl1004510083_
                                                       (##cdr _e1004310076_)))
                                                  (if (gx#stx-pair?
                                                       _tl1004510083_)
                                                      (let ((_e1004610086_
                                                             (gx#syntax-e
                                                              _tl1004510083_)))
                                                        (let ((_hd1004710090_
                                                               (##car _e1004610086_))
                                                              (_tl1004810093_
                                                               (##cdr _e1004610086_)))
                                                          (if (gx#stx-pair?
                                                               _tl1004810093_)
                                                              (let ((_e1004910096_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl1004810093_)))
                        (let ((_hd1005010100_ (##car _e1004910096_))
                              (_tl1005110103_ (##cdr _e1004910096_)))
                          (if (gx#stx-pair? _hd1005010100_)
                              (let ((_e1005210106_
                                     (gx#syntax-e _hd1005010100_)))
                                (let ((_hd1005310110_ (##car _e1005210106_))
                                      (_tl1005410113_ (##cdr _e1005210106_)))
                                  (if (gx#stx-null? _tl1005410113_)
                                      (if (gx#stx-pair? _tl1005110103_)
                                          (let ((_e1005510116_
                                                 (gx#syntax-e _tl1005110103_)))
                                            (let ((_hd1005610120_
                                                   (##car _e1005510116_))
                                                  (_tl1005710123_
                                                   (##cdr _e1005510116_)))
                                              (if (gx#stx-pair? _tl1005710123_)
                                                  (let ((_e1005810126_
                                                         (gx#syntax-e
                                                          _tl1005710123_)))
                                                    (let ((_hd1005910130_
                                                           (##car _e1005810126_))
                                                          (_tl1006010133_
                                                           (##cdr _e1005810126_)))
                                                      (if (gx#stx-pair?
                                                           _tl1006010133_)
                                                          (let ((_e1006110136_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1006010133_)))
                    (let ((_hd1006210140_ (##car _e1006110136_))
                          (_tl1006310143_ (##cdr _e1006110136_)))
                      (if (gx#stx-null? _tl1006310143_)
                          ((lambda (_L10146_
                                    _L10148_
                                    _L10149_
                                    _L10150_
                                    _L10151_
                                    _L10152_)
                             (let ()
                               (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons _L10151_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _L10149_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'if)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'char?)
                           (cons _L10152_ '()))
                     (cons (cons (gx#datum->syntax '#f 'let)
                                 (cons (cons (gx#datum->syntax '#f 'ix)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '##char->integer)
                                                         (cons _L10152_ '()))
                                                   '()))
                                       (cons (cons (gx#datum->syntax '#f 'if)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'and)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '##fx>=)
                                   (cons (gx#datum->syntax '#f 'ix)
                                         (cons _L10148_ '())))
                             (cons (cons (gx#datum->syntax '#f '##fx<)
                                         (cons (gx#datum->syntax '#f 'ix)
                                               (cons _L10146_ '())))
                                   '())))
                 (cons _L10150_ (cons (cons _L10151_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))
                           (cons (cons _L10151_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                           _hd1006210140_
                           _hd1005910130_
                           _hd1005610120_
                           _hd1005310110_
                           _hd1004710090_
                           _hd1004410080_)
                          (_g1003510069_ _g1003610073_))))
                  (_g1003510069_ _g1003610073_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1003510069_
                                                   _g1003610073_))))
                                          (_g1003510069_ _g1003610073_))
                                      (_g1003510069_ _g1003610073_))))
                              (_g1003510069_ _g1003610073_))))
                      (_g1003510069_ _g1003610073_))))
              (_g1003510069_ _g1003610073_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1003510069_ _g1003610073_)))))
                                  (_g1003410186_
                                   (list _e10017_
                                         (gx#genident 'default)
                                         _dispatch10020_
                                         _default10021_
                                         _start10031_
                                         _end10033_))))
                              (let* ((_g1019010234_
                                      (lambda (_g1019110230_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g1019110230_)))
                                     (_g1018910390_
                                      (lambda (_g1019110238_)
                                        (if (gx#stx-pair? _g1019110238_)
                                            (let ((_e1019910241_
                                                   (gx#syntax-e
                                                    _g1019110238_)))
                                              (let ((_hd1020010245_
                                                     (##car _e1019910241_))
                                                    (_tl1020110248_
                                                     (##cdr _e1019910241_)))
                                                (if (gx#stx-pair?
                                                     _tl1020110248_)
                                                    (let ((_e1020210251_
                                                           (gx#syntax-e
                                                            _tl1020110248_)))
                                                      (let ((_hd1020310255_
                                                             (##car _e1020210251_))
                                                            (_tl1020410258_
                                                             (##cdr _e1020210251_)))
                                                        (if (gx#stx-pair?
                                                             _tl1020410258_)
                                                            (let ((_e1020510261_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl1020410258_)))
                      (let ((_hd1020610265_ (##car _e1020510261_))
                            (_tl1020710268_ (##cdr _e1020510261_)))
                        (if (gx#stx-pair? _tl1020710268_)
                            (let ((_e1020810271_ (gx#syntax-e _tl1020710268_)))
                              (let ((_hd1020910275_ (##car _e1020810271_))
                                    (_tl1021010278_ (##cdr _e1020810271_)))
                                (if (gx#stx-pair/null? _hd1020910275_)
                                    (let ((_g41802_
                                           (gx#syntax-split-splice
                                            _hd1020910275_
                                            '0)))
                                      (begin
                                        (let ((_g41803_
                                               (if (##values? _g41802_)
                                                   (##vector-length _g41802_)
                                                   1)))
                                          (if (not (##fx= _g41803_ 2))
                                              (error "Context expects 2 values"
                                                     _g41803_)))
                                        (let ((_target1021110281_
                                               (##vector-ref _g41802_ 0))
                                              (_tl1021310284_
                                               (##vector-ref _g41802_ 1)))
                                          (if (gx#stx-null? _tl1021310284_)
                                              (letrec ((_loop1021410287_
                                                        (lambda (_hd1021210291_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _dispatch1021810294_)
                  (if (gx#stx-pair? _hd1021210291_)
                      (let ((_e1021510297_ (gx#syntax-e _hd1021210291_)))
                        (let ((_lp-hd1021610301_ (##car _e1021510297_))
                              (_lp-tl1021710304_ (##cdr _e1021510297_)))
                          (_loop1021410287_
                           _lp-tl1021710304_
                           (cons _lp-hd1021610301_ _dispatch1021810294_))))
                      (let ((_dispatch1021910307_
                             (reverse _dispatch1021810294_)))
                        (if (gx#stx-pair? _tl1021010278_)
                            (let ((_e1022010311_ (gx#syntax-e _tl1021010278_)))
                              (let ((_hd1022110315_ (##car _e1022010311_))
                                    (_tl1022210318_ (##cdr _e1022010311_)))
                                (if (gx#stx-pair? _tl1022210318_)
                                    (let ((_e1022310321_
                                           (gx#syntax-e _tl1022210318_)))
                                      (let ((_hd1022410325_
                                             (##car _e1022310321_))
                                            (_tl1022510328_
                                             (##cdr _e1022310321_)))
                                        (if (gx#stx-pair? _tl1022510328_)
                                            (let ((_e1022610331_
                                                   (gx#syntax-e
                                                    _tl1022510328_)))
                                              (let ((_hd1022710335_
                                                     (##car _e1022610331_))
                                                    (_tl1022810338_
                                                     (##cdr _e1022610331_)))
                                                (if (gx#stx-null?
                                                     _tl1022810338_)
                                                    ((lambda (_L10341_
                                                              _L10343_
                                                              _L10344_
                                                              _L10345_
                                                              _L10346_
                                                              _L10347_
                                                              _L10348_)
                                                       (let ()
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'let)
                                                               (cons (cons (cons _L10347_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons '()
                                                           (cons _L10344_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (cons (cons _L10346_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote)
                                                           (cons _L10343_ '()))
                                                     '()))
                                         '()))
                             (cons (cons (gx#datum->syntax '#f 'if)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'char?)
                                                     (cons _L10348_ '()))
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'let)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'ix)
                               (cons (cons (gx#datum->syntax
                                            '#f
                                            '##char->integer)
                                           (cons _L10348_ '()))
                                     '()))
                         (cons (cons (gx#datum->syntax '#f 'if)
                                     (cons (cons (gx#datum->syntax '#f '##fx<)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'ix)
                                                       (cons _L10341_ '())))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'x)
                           (cons (cons (gx#datum->syntax '#f '##vector-ref)
                                       (cons _L10346_
                                             (cons (gx#datum->syntax '#f 'ix)
                                                   '())))
                                 '()))
                     (cons (cons (gx#datum->syntax '#f 'if)
                                 (cons (gx#datum->syntax '#f 'x)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '~case-dispatch)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'x)
                                                         (foldr (lambda (_g1038110384_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g1038210387_)
                          (cons _g1038110384_ _g1038210387_))
                        '()
                        _L10345_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons _L10347_ '()) '()))))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L10347_ '())
                                                       '()))))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons _L10347_ '())
                                                           '()))))
                                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd1022710335_
                                                     _hd1022410325_
                                                     _hd1022110315_
                                                     _dispatch1021910307_
                                                     _hd1020610265_
                                                     _hd1020310255_
                                                     _hd1020010245_)
                                                    (_g1019010234_
                                                     _g1019110238_))))
                                            (_g1019010234_ _g1019110238_))))
                                    (_g1019010234_ _g1019110238_))))
                            (_g1019010234_ _g1019110238_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop1021410287_
                                                 _target1021110281_
                                                 '()))
                                              (_g1019010234_ _g1019110238_)))))
                                    (_g1019010234_ _g1019110238_))))
                            (_g1019010234_ _g1019110238_))))
                    (_g1019010234_ _g1019110238_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1019010234_
                                                     _g1019110238_))))
                                            (_g1019010234_ _g1019110238_)))))
                                (_g1018910390_
                                 (list _e10017_
                                       (gx#genident 'default)
                                       (gx#genident 'table)
                                       _dispatch10020_
                                       _default10021_
                                       _tab10026_
                                       (vector-length _tab10026_))))))
                        (_generate-char-dispatch/hash8879_
                         _e10017_
                         _datums10019_
                         _dispatch10020_
                         _default10021_))))
                 (_generate-char-dispatch/hash8879_
                  (lambda (_e9795_ _datums9797_ _dispatch9798_ _default9799_)
                    (let* ((_indexes9801_
                            (_datum-dispatch-index8870_ _datums9797_))
                           (_tab9804_
                            (_generate-hash-dispatch-table8872_
                             _indexes9801_
                             char->integer)))
                      (let* ((_g98099853_
                              (lambda (_g98109849_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g98109849_)))
                             (_g980810013_
                              (lambda (_g98109857_)
                                (if (gx#stx-pair? _g98109857_)
                                    (let ((_e98189860_
                                           (gx#syntax-e _g98109857_)))
                                      (let ((_hd98199864_ (##car _e98189860_))
                                            (_tl98209867_ (##cdr _e98189860_)))
                                        (if (gx#stx-pair? _tl98209867_)
                                            (let ((_e98219870_
                                                   (gx#syntax-e _tl98209867_)))
                                              (let ((_hd98229874_
                                                     (##car _e98219870_))
                                                    (_tl98239877_
                                                     (##cdr _e98219870_)))
                                                (if (gx#stx-pair? _tl98239877_)
                                                    (let ((_e98249880_
                                                           (gx#syntax-e
                                                            _tl98239877_)))
                                                      (let ((_hd98259884_
                                                             (##car _e98249880_))
                                                            (_tl98269887_
                                                             (##cdr _e98249880_)))
                                                        (if (gx#stx-pair?
                                                             _tl98269887_)
                                                            (let ((_e98279890_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl98269887_)))
                      (let ((_hd98289894_ (##car _e98279890_))
                            (_tl98299897_ (##cdr _e98279890_)))
                        (if (gx#stx-pair/null? _hd98289894_)
                            (let ((_g41804_
                                   (gx#syntax-split-splice _hd98289894_ '0)))
                              (begin
                                (let ((_g41805_
                                       (if (##values? _g41804_)
                                           (##vector-length _g41804_)
                                           1)))
                                  (if (not (##fx= _g41805_ 2))
                                      (error "Context expects 2 values"
                                             _g41805_)))
                                (let ((_target98309900_
                                       (##vector-ref _g41804_ 0))
                                      (_tl98329903_ (##vector-ref _g41804_ 1)))
                                  (if (gx#stx-null? _tl98329903_)
                                      (letrec ((_loop98339906_
                                                (lambda (_hd98319910_
                                                         _dispatch98379913_)
                                                  (if (gx#stx-pair?
                                                       _hd98319910_)
                                                      (let ((_e98349916_
                                                             (gx#syntax-e
                                                              _hd98319910_)))
                                                        (let ((_lp-hd98359920_
                                                               (##car _e98349916_))
                                                              (_lp-tl98369923_
                                                               (##cdr _e98349916_)))
                                                          (_loop98339906_
                                                           _lp-tl98369923_
                                                           (cons _lp-hd98359920_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _dispatch98379913_))))
              (let ((_dispatch98389926_ (reverse _dispatch98379913_)))
                (if (gx#stx-pair? _tl98299897_)
                    (let ((_e98399930_ (gx#syntax-e _tl98299897_)))
                      (let ((_hd98409934_ (##car _e98399930_))
                            (_tl98419937_ (##cdr _e98399930_)))
                        (if (gx#stx-pair? _tl98419937_)
                            (let ((_e98429940_ (gx#syntax-e _tl98419937_)))
                              (let ((_hd98439944_ (##car _e98429940_))
                                    (_tl98449947_ (##cdr _e98429940_)))
                                (if (gx#stx-pair? _tl98449947_)
                                    (let ((_e98459950_
                                           (gx#syntax-e _tl98449947_)))
                                      (let ((_hd98469954_ (##car _e98459950_))
                                            (_tl98479957_ (##cdr _e98459950_)))
                                        (if (gx#stx-null? _tl98479957_)
                                            ((lambda (_L9960_
                                                      _L9962_
                                                      _L9963_
                                                      _L9964_
                                                      _L9965_
                                                      _L9966_
                                                      _L9967_)
                                               (let ()
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _L9966_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax '#f 'lambda)
                                             (cons '() (cons _L9963_ '())))
                                       '()))
                           (cons (cons _L9965_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _L9962_ '()))
                                             '()))
                                 '()))
                     (cons (cons (gx#datum->syntax '#f 'if)
                                 (cons (cons (gx#datum->syntax '#f 'char?)
                                             (cons _L9967_ '()))
                                       (cons (cons (gx#datum->syntax '#f 'let*)
                                                   (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'h)
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          '##char->integer)
                                         (cons _L9967_ '()))
                                   '()))
                       (cons (cons (gx#datum->syntax '#f 'ix)
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                '##fxmodulo)
                                               (cons (gx#datum->syntax '#f 'h)
                                                     (cons _L9960_ '())))
                                         '()))
                             (cons (cons (gx#datum->syntax '#f 'q)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##vector-ref)
                                                     (cons _L9965_
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'ix)
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '())))
                 (cons (cons (gx#datum->syntax '#f 'if)
                             (cons (gx#datum->syntax '#f 'q)
                                   (cons (cons (gx#datum->syntax '#f 'if)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'eq?)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##car)
                               (cons (gx#datum->syntax '#f 'q) '()))
                         (cons _L9967_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'let)
                         (cons (cons (gx#datum->syntax '#f 'x)
                                     (cons (cons (gx#datum->syntax '#f '##cdr)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'q)
                                                       '()))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            '#f
                                            '~case-dispatch)
                                           (cons (gx#datum->syntax '#f 'x)
                                                 (foldr (lambda (_g1000410007_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1000510010_)
                  (cons _g1000410007_ _g1000510010_))
                '()
                _L9964_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))
                   (cons (cons _L9966_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons _L9966_ '()) '()))))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons _L9966_ '()) '()))))
                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd98469954_
                                             _hd98439944_
                                             _hd98409934_
                                             _dispatch98389926_
                                             _hd98259884_
                                             _hd98229874_
                                             _hd98199864_)
                                            (_g98099853_ _g98109857_))))
                                    (_g98099853_ _g98109857_))))
                            (_g98099853_ _g98109857_))))
                    (_g98099853_ _g98109857_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop98339906_ _target98309900_ '()))
                                      (_g98099853_ _g98109857_)))))
                            (_g98099853_ _g98109857_))))
                    (_g98099853_ _g98109857_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g98099853_
                                                     _g98109857_))))
                                            (_g98099853_ _g98109857_))))
                                    (_g98099853_ _g98109857_)))))
                        (_g980810013_
                         (list _e9795_
                               (gx#genident 'default)
                               (gx#genident 'table)
                               _dispatch9798_
                               _default9799_
                               _tab9804_
                               (vector-length _tab9804_)))))))
                 (_min-fixnum8880_
                  (lambda (_datums9788_)
                    (foldl (lambda (_lst9791_ _r9793_)
                             (foldl min _r9793_ _lst9791_))
                           ##max-fixnum
                           _datums9788_)))
                 (_max-fixnum8881_
                  (lambda (_datums9781_)
                    (foldl (lambda (_lst9784_ _r9786_)
                             (foldl max _r9786_ _lst9784_))
                           ##min-fixnum
                           _datums9781_)))
                 (_generate-fixnum-dispatch-table8882_
                  (lambda (_indexes9763_)
                    (let* ((_ixs9766_ (map car _indexes9763_))
                           (_len9769_ (fx1+ (foldl max '0 _ixs9766_)))
                           (_vec9772_ (make-vector _len9769_ '#f)))
                      (for-each
                       (lambda (_entry9777_ _x9779_)
                         (vector-set! _vec9772_ _x9779_ (cdr _entry9777_)))
                       _indexes9763_
                       _ixs9766_)
                      _vec9772_)))
                 (_generate-fixnum-dispatch8883_
                  (lambda (_e9497_ _datums9499_ _dispatch9500_ _default9501_)
                    (if (and (>= (_min-fixnum8880_ _datums9499_) '0)
                             (< (_max-fixnum8881_ _datums9499_) '1024))
                        (let* ((_indexes9503_
                                (_datum-dispatch-index8870_ _datums9499_))
                               (_tab9506_
                                (_generate-fixnum-dispatch-table8882_
                                 _indexes9503_))
                               (_dense?9509_
                                (andmap values (vector->list _tab9506_))))
                          (let* ((_g95149558_
                                  (lambda (_g95159554_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g95159554_)))
                                 (_g95139759_
                                  (lambda (_g95159562_)
                                    (if (gx#stx-pair? _g95159562_)
                                        (let ((_e95239565_
                                               (gx#syntax-e _g95159562_)))
                                          (let ((_hd95249569_
                                                 (##car _e95239565_))
                                                (_tl95259572_
                                                 (##cdr _e95239565_)))
                                            (if (gx#stx-pair? _tl95259572_)
                                                (let ((_e95269575_
                                                       (gx#syntax-e
                                                        _tl95259572_)))
                                                  (let ((_hd95279579_
                                                         (##car _e95269575_))
                                                        (_tl95289582_
                                                         (##cdr _e95269575_)))
                                                    (if (gx#stx-pair?
                                                         _tl95289582_)
                                                        (let ((_e95299585_
                                                               (gx#syntax-e
                                                                _tl95289582_)))
                                                          (let ((_hd95309589_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e95299585_))
                        (_tl95319592_ (##cdr _e95299585_)))
                    (if (gx#stx-pair? _tl95319592_)
                        (let ((_e95329595_ (gx#syntax-e _tl95319592_)))
                          (let ((_hd95339599_ (##car _e95329595_))
                                (_tl95349602_ (##cdr _e95329595_)))
                            (if (gx#stx-pair/null? _hd95339599_)
                                (let ((_g41806_
                                       (gx#syntax-split-splice
                                        _hd95339599_
                                        '0)))
                                  (begin
                                    (let ((_g41807_
                                           (if (##values? _g41806_)
                                               (##vector-length _g41806_)
                                               1)))
                                      (if (not (##fx= _g41807_ 2))
                                          (error "Context expects 2 values"
                                                 _g41807_)))
                                    (let ((_target95359605_
                                           (##vector-ref _g41806_ 0))
                                          (_tl95379608_
                                           (##vector-ref _g41806_ 1)))
                                      (if (gx#stx-null? _tl95379608_)
                                          (letrec ((_loop95389611_
                                                    (lambda (_hd95369615_
                                                             _dispatch95429618_)
                                                      (if (gx#stx-pair?
                                                           _hd95369615_)
                                                          (let ((_e95399621_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _hd95369615_)))
                    (let ((_lp-hd95409625_ (##car _e95399621_))
                          (_lp-tl95419628_ (##cdr _e95399621_)))
                      (_loop95389611_
                       _lp-tl95419628_
                       (cons _lp-hd95409625_ _dispatch95429618_))))
                  (let ((_dispatch95439631_ (reverse _dispatch95429618_)))
                    (if (gx#stx-pair? _tl95349602_)
                        (let ((_e95449635_ (gx#syntax-e _tl95349602_)))
                          (let ((_hd95459639_ (##car _e95449635_))
                                (_tl95469642_ (##cdr _e95449635_)))
                            (if (gx#stx-pair? _tl95469642_)
                                (let ((_e95479645_ (gx#syntax-e _tl95469642_)))
                                  (let ((_hd95489649_ (##car _e95479645_))
                                        (_tl95499652_ (##cdr _e95479645_)))
                                    (if (gx#stx-pair? _tl95499652_)
                                        (let ((_e95509655_
                                               (gx#syntax-e _tl95499652_)))
                                          (let ((_hd95519659_
                                                 (##car _e95509655_))
                                                (_tl95529662_
                                                 (##cdr _e95509655_)))
                                            (if (gx#stx-null? _tl95529662_)
                                                ((lambda (_L9665_
                                                          _L9667_
                                                          _L9668_
                                                          _L9669_
                                                          _L9670_
                                                          _L9671_
                                                          _L9672_)
                                                   (let ()
                                                     (let* ((_g97119719_
                                                             (lambda (_g97129715_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g97129715_)))
                                                            (_g97109739_
                                                             (lambda (_g97129723_)
                                                               ((lambda (_L9726_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (cons (gx#datum->syntax '#f 'let)
                                  (cons (cons (cons _L9671_
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'lambda)
                        (cons '() (cons _L9668_ '())))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons _L9670_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote)
                              (cons _L9667_ '()))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        (cons (cons (gx#datum->syntax '#f 'if)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'fixnum?)
                        (cons _L9672_ '()))
                  (cons (cons (gx#datum->syntax '#f 'if)
                              (cons (cons (gx#datum->syntax '#f 'and)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       '##fx>=)
                                                      (cons _L9672_
                                                            (cons '0 '())))
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             '##fx<)
                                                            (cons _L9672_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L9665_ '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons (gx#datum->syntax '#f 'let)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'x)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 '##vector-ref)
                                (cons _L9670_ (cons _L9672_ '())))
                          '()))
              (cons _L9726_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons _L9671_ '()) '()))))
                        (cons (cons _L9671_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))))
                        _g97129723_))))
               (_g97109739_
                (if _dense?9509_
                    (cons (gx#datum->syntax '#f '~case-dispatch)
                          (cons (gx#datum->syntax '#f 'x)
                                (foldr (lambda (_g97429745_ _g97439748_)
                                         (cons _g97429745_ _g97439748_))
                                       '()
                                       _L9669_)))
                    (cons (gx#datum->syntax '#f 'if)
                          (cons (gx#datum->syntax '#f 'x)
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             '~case-dispatch)
                                            (cons (gx#datum->syntax '#f 'x)
                                                  (foldr (lambda (_g97509753_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g97519756_)
                   (cons _g97509753_ _g97519756_))
                 '()
                 _L9669_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (cons (cons _L9671_ '()) '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd95519659_
                                                 _hd95489649_
                                                 _hd95459639_
                                                 _dispatch95439631_
                                                 _hd95309589_
                                                 _hd95279579_
                                                 _hd95249569_)
                                                (_g95149558_ _g95159562_))))
                                        (_g95149558_ _g95159562_))))
                                (_g95149558_ _g95159562_))))
                        (_g95149558_ _g95159562_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop95389611_
                                             _target95359605_
                                             '()))
                                          (_g95149558_ _g95159562_)))))
                                (_g95149558_ _g95159562_))))
                        (_g95149558_ _g95159562_))))
                (_g95149558_ _g95159562_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g95149558_ _g95159562_))))
                                        (_g95149558_ _g95159562_)))))
                            (_g95139759_
                             (list _e9497_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _dispatch9500_
                                   _default9501_
                                   _tab9506_
                                   (vector-length _tab9506_)))))
                        (_generate-fixnum-dispatch/hash8884_
                         _e9497_
                         _datums9499_
                         _dispatch9500_
                         _default9501_))))
                 (_generate-fixnum-dispatch/hash8884_
                  (lambda (_e9275_ _datums9277_ _dispatch9278_ _default9279_)
                    (let* ((_indexes9281_
                            (_datum-dispatch-index8870_ _datums9277_))
                           (_tab9284_
                            (_generate-hash-dispatch-table8872_
                             _indexes9281_
                             values)))
                      (let* ((_g92899333_
                              (lambda (_g92909329_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g92909329_)))
                             (_g92889493_
                              (lambda (_g92909337_)
                                (if (gx#stx-pair? _g92909337_)
                                    (let ((_e92989340_
                                           (gx#syntax-e _g92909337_)))
                                      (let ((_hd92999344_ (##car _e92989340_))
                                            (_tl93009347_ (##cdr _e92989340_)))
                                        (if (gx#stx-pair? _tl93009347_)
                                            (let ((_e93019350_
                                                   (gx#syntax-e _tl93009347_)))
                                              (let ((_hd93029354_
                                                     (##car _e93019350_))
                                                    (_tl93039357_
                                                     (##cdr _e93019350_)))
                                                (if (gx#stx-pair? _tl93039357_)
                                                    (let ((_e93049360_
                                                           (gx#syntax-e
                                                            _tl93039357_)))
                                                      (let ((_hd93059364_
                                                             (##car _e93049360_))
                                                            (_tl93069367_
                                                             (##cdr _e93049360_)))
                                                        (if (gx#stx-pair?
                                                             _tl93069367_)
                                                            (let ((_e93079370_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl93069367_)))
                      (let ((_hd93089374_ (##car _e93079370_))
                            (_tl93099377_ (##cdr _e93079370_)))
                        (if (gx#stx-pair/null? _hd93089374_)
                            (let ((_g41808_
                                   (gx#syntax-split-splice _hd93089374_ '0)))
                              (begin
                                (let ((_g41809_
                                       (if (##values? _g41808_)
                                           (##vector-length _g41808_)
                                           1)))
                                  (if (not (##fx= _g41809_ 2))
                                      (error "Context expects 2 values"
                                             _g41809_)))
                                (let ((_target93109380_
                                       (##vector-ref _g41808_ 0))
                                      (_tl93129383_ (##vector-ref _g41808_ 1)))
                                  (if (gx#stx-null? _tl93129383_)
                                      (letrec ((_loop93139386_
                                                (lambda (_hd93119390_
                                                         _dispatch93179393_)
                                                  (if (gx#stx-pair?
                                                       _hd93119390_)
                                                      (let ((_e93149396_
                                                             (gx#syntax-e
                                                              _hd93119390_)))
                                                        (let ((_lp-hd93159400_
                                                               (##car _e93149396_))
                                                              (_lp-tl93169403_
                                                               (##cdr _e93149396_)))
                                                          (_loop93139386_
                                                           _lp-tl93169403_
                                                           (cons _lp-hd93159400_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _dispatch93179393_))))
              (let ((_dispatch93189406_ (reverse _dispatch93179393_)))
                (if (gx#stx-pair? _tl93099377_)
                    (let ((_e93199410_ (gx#syntax-e _tl93099377_)))
                      (let ((_hd93209414_ (##car _e93199410_))
                            (_tl93219417_ (##cdr _e93199410_)))
                        (if (gx#stx-pair? _tl93219417_)
                            (let ((_e93229420_ (gx#syntax-e _tl93219417_)))
                              (let ((_hd93239424_ (##car _e93229420_))
                                    (_tl93249427_ (##cdr _e93229420_)))
                                (if (gx#stx-pair? _tl93249427_)
                                    (let ((_e93259430_
                                           (gx#syntax-e _tl93249427_)))
                                      (let ((_hd93269434_ (##car _e93259430_))
                                            (_tl93279437_ (##cdr _e93259430_)))
                                        (if (gx#stx-null? _tl93279437_)
                                            ((lambda (_L9440_
                                                      _L9442_
                                                      _L9443_
                                                      _L9444_
                                                      _L9445_
                                                      _L9446_
                                                      _L9447_)
                                               (let ()
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _L9446_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax '#f 'lambda)
                                             (cons '() (cons _L9443_ '())))
                                       '()))
                           (cons (cons _L9445_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _L9442_ '()))
                                             '()))
                                 '()))
                     (cons (cons (gx#datum->syntax '#f 'if)
                                 (cons (cons (gx#datum->syntax '#f 'fixnum?)
                                             (cons _L9447_ '()))
                                       (cons (cons (gx#datum->syntax '#f 'let*)
                                                   (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'ix)
                             (cons (cons (gx#datum->syntax '#f '##fxmodulo)
                                         (cons _L9447_ (cons _L9440_ '())))
                                   '()))
                       (cons (cons (gx#datum->syntax '#f 'q)
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                '##vector-ref)
                                               (cons _L9445_
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'ix)
                                                           '())))
                                         '()))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'if)
                             (cons (gx#datum->syntax '#f 'q)
                                   (cons (cons (gx#datum->syntax '#f 'if)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'eq?)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##car)
                               (cons (gx#datum->syntax '#f 'q) '()))
                         (cons _L9447_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'let)
                         (cons (cons (gx#datum->syntax '#f 'x)
                                     (cons (cons (gx#datum->syntax '#f '##cdr)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'q)
                                                       '()))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            '#f
                                            '~case-dispatch)
                                           (cons (gx#datum->syntax '#f 'x)
                                                 (foldr (lambda (_g94849487_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g94859490_)
                  (cons _g94849487_ _g94859490_))
                '()
                _L9444_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))
                   (cons (cons _L9446_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons _L9446_ '()) '()))))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons _L9446_ '()) '()))))
                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd93269434_
                                             _hd93239424_
                                             _hd93209414_
                                             _dispatch93189406_
                                             _hd93059364_
                                             _hd93029354_
                                             _hd92999344_)
                                            (_g92899333_ _g92909337_))))
                                    (_g92899333_ _g92909337_))))
                            (_g92899333_ _g92909337_))))
                    (_g92899333_ _g92909337_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop93139386_ _target93109380_ '()))
                                      (_g92899333_ _g92909337_)))))
                            (_g92899333_ _g92909337_))))
                    (_g92899333_ _g92909337_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g92899333_
                                                     _g92909337_))))
                                            (_g92899333_ _g92909337_))))
                                    (_g92899333_ _g92909337_)))))
                        (_g92889493_
                         (list _e9275_
                               (gx#genident 'default)
                               (gx#genident 'table)
                               _dispatch9278_
                               _default9279_
                               _tab9284_
                               (vector-length _tab9284_)))))))
                 (_generate-generic-dispatch8885_
                  (lambda (_e9011_ _datums9013_ _dispatch9014_ _default9015_)
                    (let ((_g41810_
                           (if (_eq-datums?8868_ _datums9013_)
                               (values eq?-hash 'eq?-hash 'eq?)
                               (values equal?-hash 'equal?-hash 'equal?))))
                      (begin
                        #!void
                        (let ((_hash-e9017_ (##vector-ref _g41810_ 0))
                              (_hashf9019_ (##vector-ref _g41810_ 1))
                              (_eqf9020_ (##vector-ref _g41810_ 2)))
                          (let* ((_indexes9022_
                                  (_datum-dispatch-index8870_ _datums9013_))
                                 (_tab9025_
                                  (_generate-hash-dispatch-table8872_
                                   _indexes9022_
                                   _hash-e9017_)))
                            (let* ((_g90309082_
                                    (lambda (_g90319078_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       _g90319078_)))
                                   (_g90299271_
                                    (lambda (_g90319086_)
                                      (if (gx#stx-pair? _g90319086_)
                                          (let ((_e90419089_
                                                 (gx#syntax-e _g90319086_)))
                                            (let ((_hd90429093_
                                                   (##car _e90419089_))
                                                  (_tl90439096_
                                                   (##cdr _e90419089_)))
                                              (if (gx#stx-pair? _tl90439096_)
                                                  (let ((_e90449099_
                                                         (gx#syntax-e
                                                          _tl90439096_)))
                                                    (let ((_hd90459103_
                                                           (##car _e90449099_))
                                                          (_tl90469106_
                                                           (##cdr _e90449099_)))
                                                      (if (gx#stx-pair?
                                                           _tl90469106_)
                                                          (let ((_e90479109_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl90469106_)))
                    (let ((_hd90489113_ (##car _e90479109_))
                          (_tl90499116_ (##cdr _e90479109_)))
                      (if (gx#stx-pair? _tl90499116_)
                          (let ((_e90509119_ (gx#syntax-e _tl90499116_)))
                            (let ((_hd90519123_ (##car _e90509119_))
                                  (_tl90529126_ (##cdr _e90509119_)))
                              (if (gx#stx-pair/null? _hd90519123_)
                                  (let ((_g41811_
                                         (gx#syntax-split-splice
                                          _hd90519123_
                                          '0)))
                                    (begin
                                      (let ((_g41812_
                                             (if (##values? _g41811_)
                                                 (##vector-length _g41811_)
                                                 1)))
                                        (if (not (##fx= _g41812_ 2))
                                            (error "Context expects 2 values"
                                                   _g41812_)))
                                      (let ((_target90539129_
                                             (##vector-ref _g41811_ 0))
                                            (_tl90559132_
                                             (##vector-ref _g41811_ 1)))
                                        (if (gx#stx-null? _tl90559132_)
                                            (letrec ((_loop90569135_
                                                      (lambda (_hd90549139_
                                                               _dispatch90609142_)
                                                        (if (gx#stx-pair?
                                                             _hd90549139_)
                                                            (let ((_e90579145_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd90549139_)))
                      (let ((_lp-hd90589149_ (##car _e90579145_))
                            (_lp-tl90599152_ (##cdr _e90579145_)))
                        (_loop90569135_
                         _lp-tl90599152_
                         (cons _lp-hd90589149_ _dispatch90609142_))))
                    (let ((_dispatch90619155_ (reverse _dispatch90609142_)))
                      (if (gx#stx-pair? _tl90529126_)
                          (let ((_e90629159_ (gx#syntax-e _tl90529126_)))
                            (let ((_hd90639163_ (##car _e90629159_))
                                  (_tl90649166_ (##cdr _e90629159_)))
                              (if (gx#stx-pair? _tl90649166_)
                                  (let ((_e90659169_
                                         (gx#syntax-e _tl90649166_)))
                                    (let ((_hd90669173_ (##car _e90659169_))
                                          (_tl90679176_ (##cdr _e90659169_)))
                                      (if (gx#stx-pair? _tl90679176_)
                                          (let ((_e90689179_
                                                 (gx#syntax-e _tl90679176_)))
                                            (let ((_hd90699183_
                                                   (##car _e90689179_))
                                                  (_tl90709186_
                                                   (##cdr _e90689179_)))
                                              (if (gx#stx-pair? _tl90709186_)
                                                  (let ((_e90719189_
                                                         (gx#syntax-e
                                                          _tl90709186_)))
                                                    (let ((_hd90729193_
                                                           (##car _e90719189_))
                                                          (_tl90739196_
                                                           (##cdr _e90719189_)))
                                                      (if (gx#stx-pair?
                                                           _tl90739196_)
                                                          (let ((_e90749199_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl90739196_)))
                    (let ((_hd90759203_ (##car _e90749199_))
                          (_tl90769206_ (##cdr _e90749199_)))
                      (if (gx#stx-null? _tl90769206_)
                          ((lambda (_L9209_
                                    _L9211_
                                    _L9212_
                                    _L9213_
                                    _L9214_
                                    _L9215_
                                    _L9216_
                                    _L9217_
                                    _L9218_)
                             (let ()
                               (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _L9217_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'lambda)
                           (cons '() (cons _L9214_ '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L9216_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'quote)
                                 (cons _L9213_ '()))
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let*)
                                                       (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'h)
                                 (cons (cons _L9211_ (cons _L9218_ '())) '()))
                           (cons (cons (gx#datum->syntax '#f 'ix)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##fxmodulo)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'h)
                                                         (cons _L9212_ '())))
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'q)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '##vector-ref)
                                                         (cons _L9216_
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'ix)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                       '())))
                     (cons (cons (gx#datum->syntax '#f 'if)
                                 (cons (gx#datum->syntax '#f 'q)
                                       (cons (cons (gx#datum->syntax '#f 'if)
                                                   (cons (cons _L9209_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '##car)
                                   (cons (gx#datum->syntax '#f 'q) '()))
                             (cons _L9218_ '())))
                 (cons (cons (gx#datum->syntax '#f 'let)
                             (cons (cons (gx#datum->syntax '#f 'x)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##cdr)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'q)
                                                           '()))
                                               '()))
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                '~case-dispatch)
                                               (cons (gx#datum->syntax '#f 'x)
                                                     (foldr (lambda (_g92629265_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g92639268_)
                      (cons _g92629265_ _g92639268_))
                    '()
                    _L9215_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       (cons (cons _L9217_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons _L9217_ '()) '()))))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                           _hd90759203_
                           _hd90729193_
                           _hd90699183_
                           _hd90669173_
                           _hd90639163_
                           _dispatch90619155_
                           _hd90489113_
                           _hd90459103_
                           _hd90429093_)
                          (_g90309082_ _g90319086_))))
                  (_g90309082_ _g90319086_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g90309082_ _g90319086_))))
                                          (_g90309082_ _g90319086_))))
                                  (_g90309082_ _g90319086_))))
                          (_g90309082_ _g90319086_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop90569135_
                                               _target90539129_
                                               '()))
                                            (_g90309082_ _g90319086_)))))
                                  (_g90309082_ _g90319086_))))
                          (_g90309082_ _g90319086_))))
                  (_g90309082_ _g90319086_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g90309082_ _g90319086_))))
                                          (_g90309082_ _g90319086_)))))
                              (_g90299271_
                               (list _e9011_
                                     (gx#genident 'default)
                                     (gx#genident 'table)
                                     _dispatch9014_
                                     _default9015_
                                     _tab9025_
                                     (vector-length _tab9025_)
                                     _hashf9019_
                                     _eqf9020_))))))))))
          (let* ((_g88878911_
                  (lambda (_g88888907_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g88888907_)))
                 (_g88869007_
                  (lambda (_g88888915_)
                    (if (gx#stx-pair? _g88888915_)
                        (let ((_e88918918_ (gx#syntax-e _g88888915_)))
                          (let ((_hd88928922_ (##car _e88918918_))
                                (_tl88938925_ (##cdr _e88918918_)))
                            (if (gx#stx-pair? _tl88938925_)
                                (let ((_e88948928_ (gx#syntax-e _tl88938925_)))
                                  (let ((_hd88958932_ (##car _e88948928_))
                                        (_tl88968935_ (##cdr _e88948928_)))
                                    (if (gx#stx-pair/null? _tl88968935_)
                                        (let ((_g41813_
                                               (gx#syntax-split-splice
                                                _tl88968935_
                                                '0)))
                                          (begin
                                            (let ((_g41814_
                                                   (if (##values? _g41813_)
                                                       (##vector-length
                                                        _g41813_)
                                                       1)))
                                              (if (not (##fx= _g41814_ 2))
                                                  (error "Context expects 2 values"
                                                         _g41814_)))
                                            (let ((_target88978938_
                                                   (##vector-ref _g41813_ 0))
                                                  (_tl88998941_
                                                   (##vector-ref _g41813_ 1)))
                                              (if (gx#stx-null? _tl88998941_)
                                                  (letrec ((_loop89008944_
                                                            (lambda (_hd88988948_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _clause89048951_)
                      (if (gx#stx-pair? _hd88988948_)
                          (let ((_e89018954_ (gx#syntax-e _hd88988948_)))
                            (let ((_lp-hd89028958_ (##car _e89018954_))
                                  (_lp-tl89038961_ (##cdr _e89018954_)))
                              (_loop89008944_
                               _lp-tl89038961_
                               (cons _lp-hd89028958_ _clause89048951_))))
                          (let ((_clause89058964_ (reverse _clause89048951_)))
                            ((lambda (_L8968_ _L8970_)
                               (let ((_g41815_
                                      (_parse-clauses8861_
                                       _L8970_
                                       (foldr (lambda (_g89888991_ _g89898994_)
                                                (cons _g89888991_ _g89898994_))
                                              '()
                                              _L8968_))))
                                 (begin
                                   (let ((_g41816_
                                          (if (##values? _g41815_)
                                              (##vector-length _g41815_)
                                              1)))
                                     (if (not (##fx= _g41816_ 3))
                                         (error "Context expects 3 values"
                                                _g41816_)))
                                   (let ((_datums8997_
                                          (##vector-ref _g41815_ 0))
                                         (_dispatch8999_
                                          (##vector-ref _g41815_ 1))
                                         (_default9000_
                                          (##vector-ref _g41815_ 2)))
                                     (let ((_datum-count9002_
                                            (_count-datums8864_ _datums8997_)))
                                       (if (< _datum-count9002_ '6)
                                           (_generate-simple-case8869_
                                            _L8970_
                                            _datums8997_
                                            _dispatch8999_
                                            _default9000_)
                                           (if (_char-datums?8866_
                                                _datums8997_)
                                               (_generate-char-dispatch8878_
                                                _L8970_
                                                _datums8997_
                                                _dispatch8999_
                                                _default9000_)
                                               (if (_fixnum-datums?8867_
                                                    _datums8997_)
                                                   (_generate-fixnum-dispatch8883_
                                                    _L8970_
                                                    _datums8997_
                                                    _dispatch8999_
                                                    _default9000_)
                                                   (if (< _datum-count9002_
                                                          '12)
                                                       (_generate-simple-case8869_
                                                        _L8970_
                                                        _datums8997_
                                                        _dispatch8999_
                                                        _default9000_)
                                                       (if (_symbolic-datums?8865_
                                                            _datums8997_)
                                                           (_generate-symbolic-dispatch8873_
                                                            _L8970_
                                                            _datums8997_
                                                            _dispatch8999_
                                                            _default9000_)
                                                           (_generate-generic-dispatch8885_
                                                            _L8970_
                                                            _datums8997_
                                                            _dispatch8999_
                                                            _default9000_)))))))))))
                             _clause89058964_
                             _hd88958932_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop89008944_
                                                     _target88978938_
                                                     '()))
                                                  (_g88878911_ _g88888915_)))))
                                        (_g88878911_ _g88888915_))))
                                (_g88878911_ _g88888915_))))
                        (_g88878911_ _g88888915_)))))
            (_g88869007_ _stx8858_)))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#~case-test|
      (lambda (_stx11909_)
        (let* ((_g1191211930_
                (lambda (_g1191311926_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1191311926_)))
               (_g1191111996_
                (lambda (_g1191311934_)
                  (if (gx#stx-pair? _g1191311934_)
                      (let ((_e1191611937_ (gx#syntax-e _g1191311934_)))
                        (let ((_hd1191711941_ (##car _e1191611937_))
                              (_tl1191811944_ (##cdr _e1191611937_)))
                          (if (gx#stx-pair? _tl1191811944_)
                              (let ((_e1191911947_
                                     (gx#syntax-e _tl1191811944_)))
                                (let ((_hd1192011951_ (##car _e1191911947_))
                                      (_tl1192111954_ (##cdr _e1191911947_)))
                                  (if (gx#stx-pair? _tl1192111954_)
                                      (let ((_e1192211957_
                                             (gx#syntax-e _tl1192111954_)))
                                        (let ((_hd1192311961_
                                               (##car _e1192211957_))
                                              (_tl1192411964_
                                               (##cdr _e1192211957_)))
                                          (if (gx#stx-null? _tl1192411964_)
                                              ((lambda (_L11967_ _L11969_)
                                                 (let ((_datum-e11985_
                                                        (gx#stx-e _L11969_)))
                                                   (if (or (symbol? _datum-e11985_)
                                                           (keyword?
                                                            _datum-e11985_)
                                                           (immediate?
                                                            _datum-e11985_))
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'eq?)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'quote)
                                 (cons _L11969_ '()))
                           (cons _L11967_ '())))
               (if (number? _datum-e11985_)
                   (cons (gx#datum->syntax '#f 'eqv?)
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _L11969_ '()))
                               (cons _L11967_ '())))
                   (cons (gx#datum->syntax '#f 'equal?)
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _L11969_ '()))
                               (cons _L11967_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd1192311961_
                                               _hd1192011951_)
                                              (_g1191211930_ _g1191311934_))))
                                      (_g1191211930_ _g1191311934_))))
                              (_g1191211930_ _g1191311934_))))
                      (_g1191211930_ _g1191311934_)))))
          (_g1191111996_ _stx11909_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#~case-dispatch|
      (lambda (_$stx12000_)
        (let* ((_g1200412028_
                (lambda (_g1200512024_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1200512024_)))
               (_g1200312113_
                (lambda (_g1200512032_)
                  (if (gx#stx-pair? _g1200512032_)
                      (let ((_e1200812035_ (gx#syntax-e _g1200512032_)))
                        (let ((_hd1200912039_ (##car _e1200812035_))
                              (_tl1201012042_ (##cdr _e1200812035_)))
                          (if (gx#stx-pair? _tl1201012042_)
                              (let ((_e1201112045_
                                     (gx#syntax-e _tl1201012042_)))
                                (let ((_hd1201212049_ (##car _e1201112045_))
                                      (_tl1201312052_ (##cdr _e1201112045_)))
                                  (if (gx#stx-pair/null? _tl1201312052_)
                                      (let ((_g41817_
                                             (gx#syntax-split-splice
                                              _tl1201312052_
                                              '0)))
                                        (begin
                                          (let ((_g41818_
                                                 (if (##values? _g41817_)
                                                     (##vector-length _g41817_)
                                                     1)))
                                            (if (not (##fx= _g41818_ 2))
                                                (error "Context expects 2 values"
                                                       _g41818_)))
                                          (let ((_target1201412055_
                                                 (##vector-ref _g41817_ 0))
                                                (_tl1201612058_
                                                 (##vector-ref _g41817_ 1)))
                                            (if (gx#stx-null? _tl1201612058_)
                                                (letrec ((_loop1201712061_
                                                          (lambda (_hd1201512065_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _K1202112068_)
                    (if (gx#stx-pair? _hd1201512065_)
                        (let ((_e1201812071_ (gx#syntax-e _hd1201512065_)))
                          (let ((_lp-hd1201912075_ (##car _e1201812071_))
                                (_lp-tl1202012078_ (##cdr _e1201812071_)))
                            (_loop1201712061_
                             _lp-tl1202012078_
                             (cons _lp-hd1201912075_ _K1202112068_))))
                        (let ((_K1202212081_ (reverse _K1202112068_)))
                          ((lambda (_L12085_ _L12087_)
                             (cons (gx#datum->syntax '#f '~case-dispatch*)
                                   (cons '0
                                         (cons _L12087_
                                               (foldr (lambda (_g1210412107_
                                                               _g1210512110_)
                                                        (cons _g1210412107_
                                                              _g1210512110_))
                                                      '()
                                                      _L12085_)))))
                           _K1202212081_
                           _hd1201212049_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop1201712061_
                                                   _target1201412055_
                                                   '()))
                                                (_g1200412028_
                                                 _g1200512032_)))))
                                      (_g1200412028_ _g1200512032_))))
                              (_g1200412028_ _g1200512032_))))
                      (_g1200412028_ _g1200512032_)))))
          (_g1200312113_ _$stx12000_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#~case-dispatch*|
      (lambda (_stx12118_)
        (let* ((___stx3764937650_ _stx12118_)
               (_g1212512221_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3764937650_))))
          (let ((___kont3765237653_
                 (lambda (_L12698_ _L12700_)
                   (cons (gx#datum->syntax '#f 'quote) (cons '#!void '()))))
                (___kont3765437655_
                 (lambda (_L12640_ _L12642_ _L12643_) _L12640_))
                (___kont3765637657_
                 (lambda (_L12537_ _L12539_ _L12540_ _L12541_)
                   (let* ((_g1256212570_
                           (lambda (_g1256312566_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1256312566_)))
                          (_g1256112589_
                           (lambda (_g1256312574_)
                             ((lambda (_L12577_)
                                (let ()
                                  (cons (gx#datum->syntax '#f 'if)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '##fx=)
                                                    (cons _L12540_
                                                          (cons _L12577_ '())))
                                              (cons _L12539_
                                                    (cons _L12537_ '()))))))
                              _g1256312574_))))
                     (_g1256112589_ (gx#stx-e _L12541_)))))
                (___kont3765837659_
                 (lambda (_L12387_ _L12389_ _L12390_ _L12391_ _L12392_)
                   (let* ((_g1241612431_
                           (lambda (_g1241712427_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1241712427_)))
                          (_g1241512476_
                           (lambda (_g1241712435_)
                             (if (gx#stx-pair? _g1241712435_)
                                 (let ((_e1242012438_
                                        (gx#syntax-e _g1241712435_)))
                                   (let ((_hd1242112442_ (##car _e1242012438_))
                                         (_tl1242212445_
                                          (##cdr _e1242012438_)))
                                     (if (gx#stx-pair? _tl1242212445_)
                                         (let ((_e1242312448_
                                                (gx#syntax-e _tl1242212445_)))
                                           (let ((_hd1242412452_
                                                  (##car _e1242312448_))
                                                 (_tl1242512455_
                                                  (##cdr _e1242312448_)))
                                             (if (gx#stx-null? _tl1242512455_)
                                                 ((lambda (_L12458_ _L12460_)
                                                    (let ()
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'if)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 '##fx=)
                                (cons _L12391_ (cons _L12460_ '())))
                          (cons _L12390_
                                (cons (cons (gx#datum->syntax '#f 'if)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         '##fx=)
                                                        (cons _L12391_
                                                              (cons _L12458_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _L12389_
                                                        (cons _L12387_ '()))))
                                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd1242412452_
                                                  _hd1242112442_)
                                                 (_g1241612431_
                                                  _g1241712435_))))
                                         (_g1241612431_ _g1241712435_))))
                                 (_g1241612431_ _g1241712435_)))))
                     (_g1241512476_
                      (list (gx#stx-e _L12392_) (fx1+ (gx#stx-e _L12392_)))))))
                (___kont3766037661_
                 (lambda (_L12288_ _L12290_ _L12291_)
                   (cons (gx#datum->syntax '#f '~case-dispatch-bsearch)
                         (cons _L12291_
                               (cons _L12290_
                                     (foldr (lambda (_g1231112314_
                                                     _g1231212317_)
                                              (cons _g1231112314_
                                                    _g1231212317_))
                                            '()
                                            _L12288_)))))))
            (let ((___match3780637807_
                   (lambda (_e1219812228_
                            _hd1219912232_
                            _tl1220012235_
                            _e1220112238_
                            _hd1220212242_
                            _tl1220312245_
                            _e1220412248_
                            _hd1220512252_
                            _tl1220612255_
                            ___splice3766237663_
                            _target1220712258_
                            _tl1220912261_)
                     (letrec ((_loop1221012264_
                               (lambda (_hd1220812268_ _K1221412271_)
                                 (if (gx#stx-pair? _hd1220812268_)
                                     (let ((_e1221112274_
                                            (gx#syntax-e _hd1220812268_)))
                                       (let ((_lp-tl1221312281_
                                              (##cdr _e1221112274_))
                                             (_lp-hd1221212278_
                                              (##car _e1221112274_)))
                                         (_loop1221012264_
                                          _lp-tl1221312281_
                                          (cons _lp-hd1221212278_
                                                _K1221412271_))))
                                     (let ((_K1221512284_
                                            (reverse _K1221412271_)))
                                       (___kont3766037661_
                                        _K1221512284_
                                        _hd1220512252_
                                        _hd1220212242_))))))
                       (_loop1221012264_ _target1220712258_ '())))))
              (if (gx#stx-pair? ___stx3764937650_)
                  (let ((_e1212912668_ (gx#syntax-e ___stx3764937650_)))
                    (let ((_tl1213112675_ (##cdr _e1212912668_))
                          (_hd1213012672_ (##car _e1212912668_)))
                      (if (gx#stx-pair? _tl1213112675_)
                          (let ((_e1213212678_ (gx#syntax-e _tl1213112675_)))
                            (let ((_tl1213412685_ (##cdr _e1213212678_))
                                  (_hd1213312682_ (##car _e1213212678_)))
                              (if (gx#stx-pair? _tl1213412685_)
                                  (let ((_e1213512688_
                                         (gx#syntax-e _tl1213412685_)))
                                    (let ((_tl1213712695_
                                           (##cdr _e1213512688_))
                                          (_hd1213612692_
                                           (##car _e1213512688_)))
                                      (if (gx#stx-null? _tl1213712695_)
                                          (___kont3765237653_
                                           _hd1213612692_
                                           _hd1213312682_)
                                          (if (gx#stx-pair? _tl1213712695_)
                                              (let ((_e1215012630_
                                                     (gx#syntax-e
                                                      _tl1213712695_)))
                                                (let ((_tl1215212637_
                                                       (##cdr _e1215012630_))
                                                      (_hd1215112634_
                                                       (##car _e1215012630_)))
                                                  (if (gx#stx-null?
                                                       _tl1215212637_)
                                                      (___kont3765437655_
                                                       _hd1215112634_
                                                       _hd1213612692_
                                                       _hd1213312682_)
                                                      (if (gx#stx-pair?
                                                           _tl1215212637_)
                                                          (let ((_e1216912527_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1215212637_)))
                    (let ((_tl1217112534_ (##cdr _e1216912527_))
                          (_hd1217012531_ (##car _e1216912527_)))
                      (if (gx#stx-null? _tl1217112534_)
                          (___kont3765637657_
                           _hd1217012531_
                           _hd1215112634_
                           _hd1213612692_
                           _hd1213312682_)
                          (if (gx#stx-pair? _tl1217112534_)
                              (let ((_e1219212377_
                                     (gx#syntax-e _tl1217112534_)))
                                (let ((_tl1219412384_ (##cdr _e1219212377_))
                                      (_hd1219312381_ (##car _e1219212377_)))
                                  (if (gx#stx-null? _tl1219412384_)
                                      (___kont3765837659_
                                       _hd1219312381_
                                       _hd1217012531_
                                       _hd1215112634_
                                       _hd1213612692_
                                       _hd1213312682_)
                                      (if (gx#stx-pair/null? _tl1213712695_)
                                          (let ((___splice3766237663_
                                                 (gx#syntax-split-splice
                                                  _tl1213712695_
                                                  '0)))
                                            (let ((_tl1220912261_
                                                   (##vector-ref
                                                    ___splice3766237663_
                                                    '1))
                                                  (_target1220712258_
                                                   (##vector-ref
                                                    ___splice3766237663_
                                                    '0)))
                                              (if (gx#stx-null? _tl1220912261_)
                                                  (___match3780637807_
                                                   _e1212912668_
                                                   _hd1213012672_
                                                   _tl1213112675_
                                                   _e1213212678_
                                                   _hd1213312682_
                                                   _tl1213412685_
                                                   _e1213512688_
                                                   _hd1213612692_
                                                   _tl1213712695_
                                                   ___splice3766237663_
                                                   _target1220712258_
                                                   _tl1220912261_)
                                                  (_g1212512221_))))
                                          (_g1212512221_)))))
                              (if (gx#stx-pair/null? _tl1213712695_)
                                  (let ((___splice3766237663_
                                         (gx#syntax-split-splice
                                          _tl1213712695_
                                          '0)))
                                    (let ((_tl1220912261_
                                           (##vector-ref
                                            ___splice3766237663_
                                            '1))
                                          (_target1220712258_
                                           (##vector-ref
                                            ___splice3766237663_
                                            '0)))
                                      (if (gx#stx-null? _tl1220912261_)
                                          (___match3780637807_
                                           _e1212912668_
                                           _hd1213012672_
                                           _tl1213112675_
                                           _e1213212678_
                                           _hd1213312682_
                                           _tl1213412685_
                                           _e1213512688_
                                           _hd1213612692_
                                           _tl1213712695_
                                           ___splice3766237663_
                                           _target1220712258_
                                           _tl1220912261_)
                                          (_g1212512221_))))
                                  (_g1212512221_))))))
                  (if (gx#stx-pair/null? _tl1213712695_)
                      (let ((___splice3766237663_
                             (gx#syntax-split-splice _tl1213712695_ '0)))
                        (let ((_tl1220912261_
                               (##vector-ref ___splice3766237663_ '1))
                              (_target1220712258_
                               (##vector-ref ___splice3766237663_ '0)))
                          (if (gx#stx-null? _tl1220912261_)
                              (___match3780637807_
                               _e1212912668_
                               _hd1213012672_
                               _tl1213112675_
                               _e1213212678_
                               _hd1213312682_
                               _tl1213412685_
                               _e1213512688_
                               _hd1213612692_
                               _tl1213712695_
                               ___splice3766237663_
                               _target1220712258_
                               _tl1220912261_)
                              (_g1212512221_))))
                      (_g1212512221_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _tl1213712695_)
                                                  (let ((___splice3766237663_
                                                         (gx#syntax-split-splice
                                                          _tl1213712695_
                                                          '0)))
                                                    (let ((_tl1220912261_
                                                           (##vector-ref
                                                            ___splice3766237663_
                                                            '1))
                                                          (_target1220712258_
                                                           (##vector-ref
                                                            ___splice3766237663_
                                                            '0)))
                                                      (if (gx#stx-null?
                                                           _tl1220912261_)
                                                          (___match3780637807_
                                                           _e1212912668_
                                                           _hd1213012672_
                                                           _tl1213112675_
                                                           _e1213212678_
                                                           _hd1213312682_
                                                           _tl1213412685_
                                                           _e1213512688_
                                                           _hd1213612692_
                                                           _tl1213712695_
                                                           ___splice3766237663_
                                                           _target1220712258_
                                                           _tl1220912261_)
                                                          (_g1212512221_))))
                                                  (_g1212512221_))))))
                                  (_g1212512221_))))
                          (_g1212512221_))))
                  (_g1212512221_)))))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#~case-dispatch-bsearch|
      (lambda (_stx12720_)
        (letrec ((_split12723_
                  (lambda (_lst13084_ _mid13086_)
                    (let _lp13088_ ((_i13091_ '0)
                                    (_rest13093_ _lst13084_)
                                    (_left13094_ '()))
                      (if (fx< _i13091_ _mid13086_)
                          (_lp13088_
                           (fx1+ _i13091_)
                           (cdr _rest13093_)
                           (cons (car _rest13093_) _left13094_))
                          (values (reverse _left13094_) _rest13093_))))))
          (let* ((_g1272612754_
                  (lambda (_g1272712750_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1272712750_)))
                 (_g1272513080_
                  (lambda (_g1272712758_)
                    (if (gx#stx-pair? _g1272712758_)
                        (let ((_e1273112761_ (gx#syntax-e _g1272712758_)))
                          (let ((_hd1273212765_ (##car _e1273112761_))
                                (_tl1273312768_ (##cdr _e1273112761_)))
                            (if (gx#stx-pair? _tl1273312768_)
                                (let ((_e1273412771_
                                       (gx#syntax-e _tl1273312768_)))
                                  (let ((_hd1273512775_ (##car _e1273412771_))
                                        (_tl1273612778_ (##cdr _e1273412771_)))
                                    (if (gx#stx-pair? _tl1273612778_)
                                        (let ((_e1273712781_
                                               (gx#syntax-e _tl1273612778_)))
                                          (let ((_hd1273812785_
                                                 (##car _e1273712781_))
                                                (_tl1273912788_
                                                 (##cdr _e1273712781_)))
                                            (if (gx#stx-pair/null?
                                                 _tl1273912788_)
                                                (let ((_g41819_
                                                       (gx#syntax-split-splice
                                                        _tl1273912788_
                                                        '0)))
                                                  (begin
                                                    (let ((_g41820_
                                                           (if (##values?
                                                                _g41819_)
                                                               (##vector-length
                                                                _g41819_)
                                                               1)))
                                                      (if (not (##fx= _g41820_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                  (error "Context expects 2 values" _g41820_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1274012791_
                                                           (##vector-ref
                                                            _g41819_
                                                            0))
                                                          (_tl1274212794_
                                                           (##vector-ref
                                                            _g41819_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl1274212794_)
                                                          (letrec ((_loop1274312797_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1274112801_ _K1274712804_)
                              (if (gx#stx-pair? _hd1274112801_)
                                  (let ((_e1274412807_
                                         (gx#syntax-e _hd1274112801_)))
                                    (let ((_lp-hd1274512811_
                                           (##car _e1274412807_))
                                          (_lp-tl1274612814_
                                           (##cdr _e1274412807_)))
                                      (_loop1274312797_
                                       _lp-tl1274612814_
                                       (cons _lp-hd1274512811_
                                             _K1274712804_))))
                                  (let ((_K1274812817_
                                         (reverse _K1274712804_)))
                                    ((lambda (_L12821_ _L12823_ _L12824_)
                                       (let* ((_len12854_
                                               (length (foldr (lambda (_g1284512848_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1284612851_)
                        (cons _g1284512848_ _g1284612851_))
                      '()
                      _L12821_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_mid12857_
                                               (quotient _len12854_ '2))
                                              (_g41821_
                                               (_split12723_
                                                (foldr (lambda (_g1285912862_
                                                                _g1286012865_)
                                                         (cons _g1285912862_
                                                               _g1286012865_))
                                                       '()
                                                       _L12821_)
                                                _mid12857_)))
                                         (begin
                                           (let ((_g41822_
                                                  (if (##values? _g41821_)
                                                      (##vector-length
                                                       _g41821_)
                                                      1)))
                                             (if (not (##fx= _g41822_ 2))
                                                 (error "Context expects 2 values"
                                                        _g41822_)))
                                           (let ((_left12868_
                                                  (##vector-ref _g41821_ 0))
                                                 (_right12870_
                                                  (##vector-ref _g41821_ 1)))
                                             (let ()
                                               (let* ((_g1287412915_
                                                       (lambda (_g1287512911_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1287512911_)))
                                                      (_g1287313076_
                                                       (lambda (_g1287512919_)
                                                         (if (gx#stx-pair?
                                                              _g1287512919_)
                                                             (let ((_e1288012922_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _g1287512919_)))
                       (let ((_hd1288112926_ (##car _e1288012922_))
                             (_tl1288212929_ (##cdr _e1288012922_)))
                         (if (gx#stx-pair? _tl1288212929_)
                             (let ((_e1288312932_
                                    (gx#syntax-e _tl1288212929_)))
                               (let ((_hd1288412936_ (##car _e1288312932_))
                                     (_tl1288512939_ (##cdr _e1288312932_)))
                                 (if (gx#stx-pair/null? _hd1288412936_)
                                     (let ((_g41823_
                                            (gx#syntax-split-splice
                                             _hd1288412936_
                                             '0)))
                                       (begin
                                         (let ((_g41824_
                                                (if (##values? _g41823_)
                                                    (##vector-length _g41823_)
                                                    1)))
                                           (if (not (##fx= _g41824_ 2))
                                               (error "Context expects 2 values"
                                                      _g41824_)))
                                         (let ((_target1288612942_
                                                (##vector-ref _g41823_ 0))
                                               (_tl1288812945_
                                                (##vector-ref _g41823_ 1)))
                                           (if (gx#stx-null? _tl1288812945_)
                                               (letrec ((_loop1288912948_
                                                         (lambda (_hd1288712952_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _K-left1289312955_)
                   (if (gx#stx-pair? _hd1288712952_)
                       (let ((_e1289012958_ (gx#syntax-e _hd1288712952_)))
                         (let ((_lp-hd1289112962_ (##car _e1289012958_))
                               (_lp-tl1289212965_ (##cdr _e1289012958_)))
                           (_loop1288912948_
                            _lp-tl1289212965_
                            (cons _lp-hd1289112962_ _K-left1289312955_))))
                       (let ((_K-left1289412968_ (reverse _K-left1289312955_)))
                         (if (gx#stx-pair? _tl1288512939_)
                             (let ((_e1289512972_
                                    (gx#syntax-e _tl1288512939_)))
                               (let ((_hd1289612976_ (##car _e1289512972_))
                                     (_tl1289712979_ (##cdr _e1289512972_)))
                                 (if (gx#stx-pair/null? _hd1289612976_)
                                     (let ((_g41825_
                                            (gx#syntax-split-splice
                                             _hd1289612976_
                                             '0)))
                                       (begin
                                         (let ((_g41826_
                                                (if (##values? _g41825_)
                                                    (##vector-length _g41825_)
                                                    1)))
                                           (if (not (##fx= _g41826_ 2))
                                               (error "Context expects 2 values"
                                                      _g41826_)))
                                         (let ((_target1289812982_
                                                (##vector-ref _g41825_ 0))
                                               (_tl1290012985_
                                                (##vector-ref _g41825_ 1)))
                                           (if (gx#stx-null? _tl1290012985_)
                                               (letrec ((_loop1290112988_
                                                         (lambda (_hd1289912992_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _K-right1290512995_)
                   (if (gx#stx-pair? _hd1289912992_)
                       (let ((_e1290212998_ (gx#syntax-e _hd1289912992_)))
                         (let ((_lp-hd1290313002_ (##car _e1290212998_))
                               (_lp-tl1290413005_ (##cdr _e1290212998_)))
                           (_loop1290112988_
                            _lp-tl1290413005_
                            (cons _lp-hd1290313002_ _K-right1290512995_))))
                       (let ((_K-right1290613008_
                              (reverse _K-right1290512995_)))
                         (if (gx#stx-pair? _tl1289712979_)
                             (let ((_e1290713012_
                                    (gx#syntax-e _tl1289712979_)))
                               (let ((_hd1290813016_ (##car _e1290713012_))
                                     (_tl1290913019_ (##cdr _e1290713012_)))
                                 (if (gx#stx-null? _tl1290913019_)
                                     ((lambda (_L13022_
                                               _L13024_
                                               _L13025_
                                               _L13026_)
                                        (let ()
                                          (cons (gx#datum->syntax '#f 'if)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             '##fx<)
                                                            (cons _L12823_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L13022_ '())))
              (cons (cons (gx#datum->syntax '#f '~case-dispatch*)
                          (cons _L12824_
                                (cons _L12823_
                                      (foldr (lambda (_g1305913064_
                                                      _g1306013067_)
                                               (cons _g1305913064_
                                                     _g1306013067_))
                                             '()
                                             _L13025_))))
                    (cons (cons (gx#datum->syntax '#f '~case-dispatch*)
                                (cons _L13022_
                                      (cons _L12823_
                                            (foldr (lambda (_g1306113070_
                                                            _g1306213073_)
                                                     (cons _g1306113070_
                                                           _g1306213073_))
                                                   '()
                                                   _L13024_))))
                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _hd1290813016_
                                      _K-right1290613008_
                                      _K-left1289412968_
                                      _hd1288112926_)
                                     (_g1287412915_ _g1287512919_))))
                             (_g1287412915_ _g1287512919_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1290112988_
                                                  _target1289812982_
                                                  '()))
                                               (_g1287412915_
                                                _g1287512919_)))))
                                     (_g1287412915_ _g1287512919_))))
                             (_g1287412915_ _g1287512919_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1288912948_
                                                  _target1288612942_
                                                  '()))
                                               (_g1287412915_
                                                _g1287512919_)))))
                                     (_g1287412915_ _g1287512919_))))
                             (_g1287412915_ _g1287512919_))))
                     (_g1287412915_ _g1287512919_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1287313076_
                                                  (list _mid12857_
                                                        _left12868_
                                                        _right12870_
                                                        (fx+ _mid12857_
                                                             (gx#stx-e
                                                              _L12824_))))))))))
                                     _K1274812817_
                                     _hd1273812785_
                                     _hd1273512775_))))))
                    (_loop1274312797_ _target1274012791_ '()))
                  (_g1272612754_ _g1272712758_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1272612754_
                                                 _g1272712758_))))
                                        (_g1272612754_ _g1272712758_))))
                                (_g1272612754_ _g1272712758_))))
                        (_g1272612754_ _g1272712758_)))))
            (_g1272513080_ _stx12720_)))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#do|
      (lambda (_$stx13100_)
        (let* ((_g1310413175_
                (lambda (_g1310513171_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1310513171_)))
               (_g1310313464_
                (lambda (_g1310513179_)
                  (if (gx#stx-pair? _g1310513179_)
                      (let ((_e1311213182_ (gx#syntax-e _g1310513179_)))
                        (let ((_hd1311313186_ (##car _e1311213182_))
                              (_tl1311413189_ (##cdr _e1311213182_)))
                          (if (gx#stx-pair? _tl1311413189_)
                              (let ((_e1311513192_
                                     (gx#syntax-e _tl1311413189_)))
                                (let ((_hd1311613196_ (##car _e1311513192_))
                                      (_tl1311713199_ (##cdr _e1311513192_)))
                                  (if (gx#stx-pair/null? _hd1311613196_)
                                      (let ((_g41827_
                                             (gx#syntax-split-splice
                                              _hd1311613196_
                                              '0)))
                                        (begin
                                          (let ((_g41828_
                                                 (if (##values? _g41827_)
                                                     (##vector-length _g41827_)
                                                     1)))
                                            (if (not (##fx= _g41828_ 2))
                                                (error "Context expects 2 values"
                                                       _g41828_)))
                                          (let ((_target1311813202_
                                                 (##vector-ref _g41827_ 0))
                                                (_tl1312013205_
                                                 (##vector-ref _g41827_ 1)))
                                            (if (gx#stx-null? _tl1312013205_)
                                                (letrec ((_loop1312113208_
                                                          (lambda (_hd1311913212_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _step1312513215_
                           _init1312613217_
                           _var1312713219_)
                    (if (gx#stx-pair? _hd1311913212_)
                        (let ((_e1312213222_ (gx#syntax-e _hd1311913212_)))
                          (let ((_lp-hd1312313226_ (##car _e1312213222_))
                                (_lp-tl1312413229_ (##cdr _e1312213222_)))
                            (if (gx#stx-pair? _lp-hd1312313226_)
                                (let ((_e1313113232_
                                       (gx#syntax-e _lp-hd1312313226_)))
                                  (let ((_hd1313213236_ (##car _e1313113232_))
                                        (_tl1313313239_ (##cdr _e1313113232_)))
                                    (if (gx#stx-pair? _tl1313313239_)
                                        (let ((_e1313413242_
                                               (gx#syntax-e _tl1313313239_)))
                                          (let ((_hd1313513246_
                                                 (##car _e1313413242_))
                                                (_tl1313613249_
                                                 (##cdr _e1313413242_)))
                                            (if (gx#stx-pair/null?
                                                 _tl1313613249_)
                                                (let ((_g41829_
                                                       (gx#syntax-split-splice
                                                        _tl1313613249_
                                                        '0)))
                                                  (begin
                                                    (let ((_g41830_
                                                           (if (##values?
                                                                _g41829_)
                                                               (##vector-length
                                                                _g41829_)
                                                               1)))
                                                      (if (not (##fx= _g41830_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                  (error "Context expects 2 values" _g41830_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1313713252_
                                                           (##vector-ref
                                                            _g41829_
                                                            0))
                                                          (_tl1313913255_
                                                           (##vector-ref
                                                            _g41829_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl1313913255_)
                                                          (letrec ((_loop1314013258_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1313813262_ _step1314413265_)
                              (if (gx#stx-pair? _hd1313813262_)
                                  (let ((_e1314113268_
                                         (gx#syntax-e _hd1313813262_)))
                                    (let ((_lp-hd1314213272_
                                           (##car _e1314113268_))
                                          (_lp-tl1314313275_
                                           (##cdr _e1314113268_)))
                                      (_loop1314013258_
                                       _lp-tl1314313275_
                                       (cons _lp-hd1314213272_
                                             _step1314413265_))))
                                  (let ((_step1314513278_
                                         (reverse _step1314413265_)))
                                    (_loop1312113208_
                                     _lp-tl1312413229_
                                     (cons _step1314513278_ _step1312513215_)
                                     (cons _hd1313513246_ _init1312613217_)
                                     (cons _hd1313213236_
                                           _var1312713219_)))))))
                    (_loop1314013258_ _target1313713252_ '()))
                  (_g1310413175_ _g1310513179_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1310413175_
                                                 _g1310513179_))))
                                        (_g1310413175_ _g1310513179_))))
                                (_g1310413175_ _g1310513179_))))
                        (let ((_step1312813282_ (reverse _step1312513215_))
                              (_init1312913285_ (reverse _init1312613217_))
                              (_var1313013287_ (reverse _var1312713219_)))
                          (if (gx#stx-pair? _tl1311713199_)
                              (let ((_e1314613290_
                                     (gx#syntax-e _tl1311713199_)))
                                (let ((_hd1314713294_ (##car _e1314613290_))
                                      (_tl1314813297_ (##cdr _e1314613290_)))
                                  (if (gx#stx-pair? _hd1314713294_)
                                      (let ((_e1314913300_
                                             (gx#syntax-e _hd1314713294_)))
                                        (let ((_hd1315013304_
                                               (##car _e1314913300_))
                                              (_tl1315113307_
                                               (##cdr _e1314913300_)))
                                          (if (gx#stx-pair/null?
                                               _tl1315113307_)
                                              (let ((_g41831_
                                                     (gx#syntax-split-splice
                                                      _tl1315113307_
                                                      '0)))
                                                (begin
                                                  (let ((_g41832_
                                                         (if (##values?
                                                              _g41831_)
                                                             (##vector-length
                                                              _g41831_)
                                                             1)))
                                                    (if (not (##fx= _g41832_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                (error "Context expects 2 values" _g41832_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target1315213310_
                                                         (##vector-ref
                                                          _g41831_
                                                          0))
                                                        (_tl1315413313_
                                                         (##vector-ref
                                                          _g41831_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl1315413313_)
                                                        (letrec ((_loop1315513316_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd1315313320_ _fini1315913323_)
                            (if (gx#stx-pair? _hd1315313320_)
                                (let ((_e1315613326_
                                       (gx#syntax-e _hd1315313320_)))
                                  (let ((_lp-hd1315713330_
                                         (##car _e1315613326_))
                                        (_lp-tl1315813333_
                                         (##cdr _e1315613326_)))
                                    (_loop1315513316_
                                     _lp-tl1315813333_
                                     (cons _lp-hd1315713330_
                                           _fini1315913323_))))
                                (let ((_fini1316013336_
                                       (reverse _fini1315913323_)))
                                  (if (gx#stx-pair/null? _tl1314813297_)
                                      (let ((_g41833_
                                             (gx#syntax-split-splice
                                              _tl1314813297_
                                              '0)))
                                        (begin
                                          (let ((_g41834_
                                                 (if (##values? _g41833_)
                                                     (##vector-length _g41833_)
                                                     1)))
                                            (if (not (##fx= _g41834_ 2))
                                                (error "Context expects 2 values"
                                                       _g41834_)))
                                          (let ((_target1316113340_
                                                 (##vector-ref _g41833_ 0))
                                                (_tl1316313343_
                                                 (##vector-ref _g41833_ 1)))
                                            (if (gx#stx-null? _tl1316313343_)
                                                (letrec ((_loop1316413346_
                                                          (lambda (_hd1316213350_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body1316813353_)
                    (if (gx#stx-pair? _hd1316213350_)
                        (let ((_e1316513356_ (gx#syntax-e _hd1316213350_)))
                          (let ((_lp-hd1316613360_ (##car _e1316513356_))
                                (_lp-tl1316713363_ (##cdr _e1316513356_)))
                            (_loop1316413346_
                             _lp-tl1316713363_
                             (cons _lp-hd1316613360_ _body1316813353_))))
                        (let ((_body1316913366_ (reverse _body1316813353_)))
                          ((lambda (_L13370_
                                    _L13372_
                                    _L13373_
                                    _L13374_
                                    _L13375_
                                    _L13376_)
                             (if (gx#stx-andmap
                                  gx#identifier?
                                  (foldr (lambda (_g1340913412_ _g1341013415_)
                                           (cons _g1340913412_ _g1341013415_))
                                         '()
                                         _L13376_))
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (gx#datum->syntax '#f '$loop)
                                             (cons (begin
                                                     (gx#syntax-check-splice-targets
                                                      _L13375_
                                                      _L13376_)
                                                     (foldr (lambda (_g1341713430_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g1341813433_
                             _g1341913435_)
                      (cons (cons _g1341813433_ (cons _g1341713430_ '()))
                            _g1341913435_))
                    '()
                    _L13375_
                    _L13376_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'if)
                                                               (cons _L13373_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'begin)
                                         (cons '#!void
                                               (foldr (lambda (_g1342013438_
                                                               _g1342113441_)
                                                        (cons _g1342013438_
                                                              _g1342113441_))
                                                      '()
                                                      _L13372_)))
                                   (cons (cons (gx#datum->syntax '#f 'begin)
                                               (foldr (lambda (_g1342213444_
                                                               _g1342313447_)
                                                        (cons _g1342213444_
                                                              _g1342313447_))
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '$loop)
                          (begin
                            (gx#syntax-check-splice-targets _L13374_ _L13376_)
                            (foldr (lambda (_g1342413450_
                                            _g1342513453_
                                            _g1342613455_)
                                     (cons (cons (gx#datum->syntax '#f 'begin)
                                                 (cons _g1342513453_
                                                       (foldr (lambda (_g1342713458_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1342813461_)
                        (cons _g1342713458_ _g1342813461_))
                      '()
                      _g1342413450_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _g1342613455_))
                                   '()
                                   _L13374_
                                   _L13376_)))
                    '())
              _L13370_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (_g1310413175_ _g1310513179_)))
                           _body1316913366_
                           _fini1316013336_
                           _hd1315013304_
                           _step1312813282_
                           _init1312913285_
                           _var1313013287_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop1316413346_
                                                   _target1316113340_
                                                   '()))
                                                (_g1310413175_
                                                 _g1310513179_)))))
                                      (_g1310413175_ _g1310513179_)))))))
                  (_loop1315513316_ _target1315213310_ '()))
                (_g1310413175_ _g1310513179_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1310413175_ _g1310513179_))))
                                      (_g1310413175_ _g1310513179_))))
                              (_g1310413175_ _g1310513179_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop1312113208_
                                                   _target1311813202_
                                                   '()
                                                   '()
                                                   '()))
                                                (_g1310413175_
                                                 _g1310513179_)))))
                                      (_g1310413175_ _g1310513179_))))
                              (_g1310413175_ _g1310513179_))))
                      (_g1310413175_ _g1310513179_)))))
          (_g1310313464_ _$stx13100_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#do-while|
      (lambda (_$stx13472_)
        (let* ((_g1347613499_
                (lambda (_g1347713495_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1347713495_)))
               (_g1347513570_
                (lambda (_g1347713503_)
                  (if (gx#stx-pair? _g1347713503_)
                      (let ((_e1348213506_ (gx#syntax-e _g1347713503_)))
                        (let ((_hd1348313510_ (##car _e1348213506_))
                              (_tl1348413513_ (##cdr _e1348213506_)))
                          (if (gx#stx-pair? _tl1348413513_)
                              (let ((_e1348513516_
                                     (gx#syntax-e _tl1348413513_)))
                                (let ((_hd1348613520_ (##car _e1348513516_))
                                      (_tl1348713523_ (##cdr _e1348513516_)))
                                  (if (gx#stx-pair? _tl1348713523_)
                                      (let ((_e1348813526_
                                             (gx#syntax-e _tl1348713523_)))
                                        (let ((_hd1348913530_
                                               (##car _e1348813526_))
                                              (_tl1349013533_
                                               (##cdr _e1348813526_)))
                                          (if (gx#stx-pair? _hd1348913530_)
                                              (let ((_e1349113536_
                                                     (gx#syntax-e
                                                      _hd1348913530_)))
                                                (let ((_hd1349213540_
                                                       (##car _e1349113536_))
                                                      (_tl1349313543_
                                                       (##cdr _e1349113536_)))
                                                  ((lambda (_L13546_
                                                            _L13548_
                                                            _L13549_
                                                            _L13550_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'do)
                                                           (cons _L13550_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (cons (gx#datum->syntax '#f 'not)
                                           (cons _L13549_ '()))
                                     _L13548_)
                               _L13546_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _tl1349013533_
                                                   _tl1349313543_
                                                   _hd1349213540_
                                                   _hd1348613520_)))
                                              (_g1347613499_ _g1347713503_))))
                                      (_g1347613499_ _g1347713503_))))
                              (_g1347613499_ _g1347713503_))))
                      (_g1347613499_ _g1347713503_)))))
          (_g1347513570_ _$stx13472_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#begin0|
      (lambda (_$stx13574_)
        (let* ((___stx3780937810_ _$stx13574_)
               (_g1357913610_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3780937810_))))
          (let ((___kont3781237813_ (lambda (_L13722_) _L13722_))
                (___kont3781437815_
                 (lambda (_L13667_ _L13669_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f '$r)
                                     (cons _L13669_ '()))
                               (cons (cons (gx#datum->syntax '#f '%#expression)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'begin)
                                                       (foldr (lambda (_g1368613689_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1368713692_)
                        (cons _g1368613689_ _g1368713692_))
                      '()
                      _L13667_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     (cons (gx#datum->syntax '#f '$r)
                                           '())))))))
            (let ((___match3785237853_
                   (lambda (_e1359013617_
                            _hd1359113621_
                            _tl1359213624_
                            _e1359313627_
                            _hd1359413631_
                            _tl1359513634_
                            ___splice3781637817_
                            _target1359613637_
                            _tl1359813640_)
                     (letrec ((_loop1359913643_
                               (lambda (_hd1359713647_ _rest1360313650_)
                                 (if (gx#stx-pair? _hd1359713647_)
                                     (let ((_e1360013653_
                                            (gx#syntax-e _hd1359713647_)))
                                       (let ((_lp-tl1360213660_
                                              (##cdr _e1360013653_))
                                             (_lp-hd1360113657_
                                              (##car _e1360013653_)))
                                         (_loop1359913643_
                                          _lp-tl1360213660_
                                          (cons _lp-hd1360113657_
                                                _rest1360313650_))))
                                     (let ((_rest1360413663_
                                            (reverse _rest1360313650_)))
                                       (___kont3781437815_
                                        _rest1360413663_
                                        _hd1359413631_))))))
                       (_loop1359913643_ _target1359613637_ '())))))
              (if (gx#stx-pair? ___stx3780937810_)
                  (let ((_e1358213702_ (gx#syntax-e ___stx3780937810_)))
                    (let ((_tl1358413709_ (##cdr _e1358213702_))
                          (_hd1358313706_ (##car _e1358213702_)))
                      (if (gx#stx-pair? _tl1358413709_)
                          (let ((_e1358513712_ (gx#syntax-e _tl1358413709_)))
                            (let ((_tl1358713719_ (##cdr _e1358513712_))
                                  (_hd1358613716_ (##car _e1358513712_)))
                              (if (gx#stx-null? _tl1358713719_)
                                  (___kont3781237813_ _hd1358613716_)
                                  (if (gx#stx-pair/null? _tl1358713719_)
                                      (let ((___splice3781637817_
                                             (gx#syntax-split-splice
                                              _tl1358713719_
                                              '0)))
                                        (let ((_tl1359813640_
                                               (##vector-ref
                                                ___splice3781637817_
                                                '1))
                                              (_target1359613637_
                                               (##vector-ref
                                                ___splice3781637817_
                                                '0)))
                                          (if (gx#stx-null? _tl1359813640_)
                                              (___match3785237853_
                                               _e1358213702_
                                               _hd1358313706_
                                               _tl1358413709_
                                               _e1358513712_
                                               _hd1358613716_
                                               _tl1358713719_
                                               ___splice3781637817_
                                               _target1359613637_
                                               _tl1359813640_)
                                              (_g1357913610_))))
                                      (_g1357913610_)))))
                          (_g1357913610_))))
                  (_g1357913610_)))))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#rec|
      (lambda (_$stx13740_)
        (let* ((___stx3785537856_ _$stx13740_)
               (_g1374613799_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3785537856_))))
          (let ((___kont3785837859_
                 (lambda (_L14001_ _L14003_)
                   (cons (gx#datum->syntax '#f 'letrec)
                         (cons (cons (cons _L14003_ (cons _L14001_ '())) '())
                               (cons _L14003_ '())))))
                (___kont3786037861_
                 (lambda (_L13945_ _L13947_)
                   (cons (gx#datum->syntax '#f 'letrec-values)
                         (cons (cons (cons _L13947_ (cons _L13945_ '())) '())
                               (cons (cons (gx#datum->syntax '#f 'values)
                                           _L13947_)
                                     '())))))
                (___kont3786237863_
                 (lambda (_L13866_ _L13868_ _L13869_)
                   (cons (gx#datum->syntax '#f 'letrec)
                         (cons (cons (cons _L13869_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'lambda)
                                                       (cons _L13868_
                                                             (foldr (lambda (_g1388913892_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1389013895_)
                              (cons _g1388913892_ _g1389013895_))
                            '()
                            _L13866_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     '())
                               (cons _L13869_ '()))))))
            (let* ((___match3794237943_
                    (lambda (_e1377613806_
                             _hd1377713810_
                             _tl1377813813_
                             _e1377913816_
                             _hd1378013820_
                             _tl1378113823_
                             _e1378213826_
                             _hd1378313830_
                             _tl1378413833_
                             ___splice3786437865_
                             _target1378513836_
                             _tl1378713839_)
                      (letrec ((_loop1378813842_
                                (lambda (_hd1378613846_ _body1379213849_)
                                  (if (gx#stx-pair? _hd1378613846_)
                                      (let ((_e1378913852_
                                             (gx#syntax-e _hd1378613846_)))
                                        (let ((_lp-tl1379113859_
                                               (##cdr _e1378913852_))
                                              (_lp-hd1379013856_
                                               (##car _e1378913852_)))
                                          (_loop1378813842_
                                           _lp-tl1379113859_
                                           (cons _lp-hd1379013856_
                                                 _body1379213849_))))
                                      (let ((_body1379313862_
                                             (reverse _body1379213849_)))
                                        (let ((_L13866_ _body1379313862_)
                                              (_L13868_ _tl1378413833_)
                                              (_L13869_ _hd1378313830_))
                                          (if (gx#identifier? _L13869_)
                                              (___kont3786237863_
                                               _L13866_
                                               _L13868_
                                               _L13869_)
                                              (_g1374613799_))))))))
                        (_loop1378813842_ _target1378513836_ '()))))
                   (___match3791637917_
                    (lambda (_e1376113905_
                             _hd1376213909_
                             _tl1376313912_
                             _e1376413915_
                             _hd1376513919_
                             _tl1376613922_
                             _e1376713925_
                             _hd1376813929_
                             _tl1376913932_
                             _e1377013935_
                             _hd1377113939_
                             _tl1377213942_)
                      (let ((_L13945_ _hd1377113939_)
                            (_L13947_ _tl1376913932_))
                        (if (gx#identifier-list? _L13947_)
                            (___kont3786037861_ _L13945_ _L13947_)
                            (if (gx#stx-pair/null? _tl1376613922_)
                                (let ((___splice3786437865_
                                       (gx#syntax-split-splice
                                        _tl1376613922_
                                        '0)))
                                  (let ((_tl1378713839_
                                         (##vector-ref
                                          ___splice3786437865_
                                          '1))
                                        (_target1378513836_
                                         (##vector-ref
                                          ___splice3786437865_
                                          '0)))
                                    (if (gx#stx-null? _tl1378713839_)
                                        (___match3794237943_
                                         _e1376113905_
                                         _hd1376213909_
                                         _tl1376313912_
                                         _e1376413915_
                                         _hd1376513919_
                                         _tl1376613922_
                                         _e1376713925_
                                         _hd1376813929_
                                         _tl1376913932_
                                         ___splice3786437865_
                                         _target1378513836_
                                         _tl1378713839_)
                                        (_g1374613799_))))
                                (_g1374613799_))))))
                   (___match3788637887_
                    (lambda (_e1375013971_
                             _hd1375113975_
                             _tl1375213978_
                             _e1375313981_
                             _hd1375413985_
                             _tl1375513988_
                             _e1375613991_
                             _hd1375713995_
                             _tl1375813998_)
                      (let ((_L14001_ _hd1375713995_)
                            (_L14003_ _hd1375413985_))
                        (if (gx#identifier? _L14003_)
                            (___kont3785837859_ _L14001_ _L14003_)
                            (if (gx#stx-pair? _hd1375413985_)
                                (let ((_e1376713925_
                                       (gx#syntax-e _hd1375413985_)))
                                  (let ((_tl1376913932_ (##cdr _e1376713925_))
                                        (_hd1376813929_ (##car _e1376713925_)))
                                    (if (gx#identifier? _hd1376813929_)
                                        (if (gx#free-identifier=?
                                             |gerbil/core$<sugar>$<sugar:2>[1]#_g41835_|
                                             _hd1376813929_)
                                            (___match3791637917_
                                             _e1375013971_
                                             _hd1375113975_
                                             _tl1375213978_
                                             _e1375313981_
                                             _hd1375413985_
                                             _tl1375513988_
                                             _e1376713925_
                                             _hd1376813929_
                                             _tl1376913932_
                                             _e1375613991_
                                             _hd1375713995_
                                             _tl1375813998_)
                                            (if (gx#stx-pair/null?
                                                 _tl1375513988_)
                                                (let ((___splice3786437865_
                                                       (gx#syntax-split-splice
                                                        _tl1375513988_
                                                        '0)))
                                                  (let ((_tl1378713839_
                                                         (##vector-ref
                                                          ___splice3786437865_
                                                          '1))
                                                        (_target1378513836_
                                                         (##vector-ref
                                                          ___splice3786437865_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl1378713839_)
                                                        (___match3794237943_
                                                         _e1375013971_
                                                         _hd1375113975_
                                                         _tl1375213978_
                                                         _e1375313981_
                                                         _hd1375413985_
                                                         _tl1375513988_
                                                         _e1376713925_
                                                         _hd1376813929_
                                                         _tl1376913932_
                                                         ___splice3786437865_
                                                         _target1378513836_
                                                         _tl1378713839_)
                                                        (_g1374613799_))))
                                                (_g1374613799_)))
                                        (if (gx#stx-pair/null? _tl1375513988_)
                                            (let ((___splice3786437865_
                                                   (gx#syntax-split-splice
                                                    _tl1375513988_
                                                    '0)))
                                              (let ((_tl1378713839_
                                                     (##vector-ref
                                                      ___splice3786437865_
                                                      '1))
                                                    (_target1378513836_
                                                     (##vector-ref
                                                      ___splice3786437865_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl1378713839_)
                                                    (___match3794237943_
                                                     _e1375013971_
                                                     _hd1375113975_
                                                     _tl1375213978_
                                                     _e1375313981_
                                                     _hd1375413985_
                                                     _tl1375513988_
                                                     _e1376713925_
                                                     _hd1376813929_
                                                     _tl1376913932_
                                                     ___splice3786437865_
                                                     _target1378513836_
                                                     _tl1378713839_)
                                                    (_g1374613799_))))
                                            (_g1374613799_)))))
                                (_g1374613799_)))))))
              (if (gx#stx-pair? ___stx3785537856_)
                  (let ((_e1375013971_ (gx#syntax-e ___stx3785537856_)))
                    (let ((_tl1375213978_ (##cdr _e1375013971_))
                          (_hd1375113975_ (##car _e1375013971_)))
                      (if (gx#stx-pair? _tl1375213978_)
                          (let ((_e1375313981_ (gx#syntax-e _tl1375213978_)))
                            (let ((_tl1375513988_ (##cdr _e1375313981_))
                                  (_hd1375413985_ (##car _e1375313981_)))
                              (if (gx#stx-pair? _tl1375513988_)
                                  (let ((_e1375613991_
                                         (gx#syntax-e _tl1375513988_)))
                                    (let ((_tl1375813998_
                                           (##cdr _e1375613991_))
                                          (_hd1375713995_
                                           (##car _e1375613991_)))
                                      (if (gx#stx-null? _tl1375813998_)
                                          (___match3788637887_
                                           _e1375013971_
                                           _hd1375113975_
                                           _tl1375213978_
                                           _e1375313981_
                                           _hd1375413985_
                                           _tl1375513988_
                                           _e1375613991_
                                           _hd1375713995_
                                           _tl1375813998_)
                                          (if (gx#stx-pair? _hd1375413985_)
                                              (let ((_e1376713925_
                                                     (gx#syntax-e
                                                      _hd1375413985_)))
                                                (let ((_tl1376913932_
                                                       (##cdr _e1376713925_))
                                                      (_hd1376813929_
                                                       (##car _e1376713925_)))
                                                  (if (gx#stx-pair/null?
                                                       _tl1375513988_)
                                                      (let ((___splice3786437865_
                                                             (gx#syntax-split-splice
                                                              _tl1375513988_
                                                              '0)))
                                                        (let ((_tl1378713839_
                                                               (##vector-ref
                                                                ___splice3786437865_
                                                                '1))
                                                              (_target1378513836_
                                                               (##vector-ref
                                                                ___splice3786437865_
                                                                '0)))
                                                          (if (gx#stx-null?
                                                               _tl1378713839_)
                                                              (___match3794237943_
                                                               _e1375013971_
                                                               _hd1375113975_
                                                               _tl1375213978_
                                                               _e1375313981_
                                                               _hd1375413985_
                                                               _tl1375513988_
                                                               _e1376713925_
                                                               _hd1376813929_
                                                               _tl1376913932_
                                                               ___splice3786437865_
                                                               _target1378513836_
                                                               _tl1378713839_)
                                                              (_g1374613799_))))
                                                      (_g1374613799_))))
                                              (_g1374613799_)))))
                                  (if (gx#stx-pair? _hd1375413985_)
                                      (let ((_e1376713925_
                                             (gx#syntax-e _hd1375413985_)))
                                        (let ((_tl1376913932_
                                               (##cdr _e1376713925_))
                                              (_hd1376813929_
                                               (##car _e1376713925_)))
                                          (if (gx#stx-pair/null?
                                               _tl1375513988_)
                                              (let ((___splice3786437865_
                                                     (gx#syntax-split-splice
                                                      _tl1375513988_
                                                      '0)))
                                                (let ((_tl1378713839_
                                                       (##vector-ref
                                                        ___splice3786437865_
                                                        '1))
                                                      (_target1378513836_
                                                       (##vector-ref
                                                        ___splice3786437865_
                                                        '0)))
                                                  (if (gx#stx-null?
                                                       _tl1378713839_)
                                                      (___match3794237943_
                                                       _e1375013971_
                                                       _hd1375113975_
                                                       _tl1375213978_
                                                       _e1375313981_
                                                       _hd1375413985_
                                                       _tl1375513988_
                                                       _e1376713925_
                                                       _hd1376813929_
                                                       _tl1376913932_
                                                       ___splice3786437865_
                                                       _target1378513836_
                                                       _tl1378713839_)
                                                      (_g1374613799_))))
                                              (_g1374613799_))))
                                      (_g1374613799_)))))
                          (_g1374613799_))))
                  (_g1374613799_)))))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#alet|
      (lambda (_stx14023_)
        (letrec ((_let-bind?14026_
                  (lambda (_x14949_)
                    (let* ((___stx3794537946_ _x14949_)
                           (_g1495414973_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx3794537946_))))
                      (let ((___kont3794837949_
                             (lambda (_L15041_ _L15043_)
                               (_let-head?14029_ _L15043_)))
                            (___kont3795037951_ (lambda (_L15001_) '#t))
                            (___kont3795237953_ (lambda () '#f)))
                        (if (gx#stx-pair? ___stx3794537946_)
                            (let ((_e1495815021_
                                   (gx#syntax-e ___stx3794537946_)))
                              (let ((_tl1496015028_ (##cdr _e1495815021_))
                                    (_hd1495915025_ (##car _e1495815021_)))
                                (if (gx#stx-pair? _tl1496015028_)
                                    (let ((_e1496115031_
                                           (gx#syntax-e _tl1496015028_)))
                                      (let ((_tl1496315038_
                                             (##cdr _e1496115031_))
                                            (_hd1496215035_
                                             (##car _e1496115031_)))
                                        (if (gx#stx-null? _tl1496315038_)
                                            (___kont3794837949_
                                             _hd1496215035_
                                             _hd1495915025_)
                                            (___kont3795237953_))))
                                    (if (gx#stx-null? _tl1496015028_)
                                        (___kont3795037951_ _hd1495915025_)
                                        (___kont3795237953_)))))
                            (___kont3795237953_))))))
                 (_let-bind14028_
                  (lambda (_x14851_)
                    (let* ((___stx3797937980_ _x14851_)
                           (_g1485514874_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx3797937980_))))
                      (let ((___kont3798237983_
                             (lambda (_L14930_ _L14932_) _x14851_))
                            (___kont3798437985_
                             (lambda (_L14891_)
                               (cons (gx#datum->syntax '#f '_)
                                     (cons _L14891_ '())))))
                        (if (gx#stx-pair? ___stx3797937980_)
                            (let ((_e1485914910_
                                   (gx#syntax-e ___stx3797937980_)))
                              (let ((_tl1486114917_ (##cdr _e1485914910_))
                                    (_hd1486014914_ (##car _e1485914910_)))
                                (if (gx#stx-pair? _tl1486114917_)
                                    (let ((_e1486214920_
                                           (gx#syntax-e _tl1486114917_)))
                                      (let ((_tl1486414927_
                                             (##cdr _e1486214920_))
                                            (_hd1486314924_
                                             (##car _e1486214920_)))
                                        (if (gx#stx-null? _tl1486414927_)
                                            (___kont3798237983_
                                             _hd1486314924_
                                             _hd1486014914_)
                                            (_g1485514874_))))
                                    (if (gx#stx-null? _tl1486114917_)
                                        (___kont3798437985_ _hd1486014914_)
                                        (_g1485514874_)))))
                            (_g1485514874_))))))
                 (_let-head?14029_
                  (lambda (_x14791_)
                    (let* ((___stx3801138012_ _x14791_)
                           (_g1479514806_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx3801138012_))))
                      (let ((___kont3801438015_
                             (lambda (_L14834_)
                               (gx#stx-andmap gx#identifier? _L14834_)))
                            (___kont3801638017_
                             (lambda () (gx#identifier? _x14791_))))
                        (if (gx#stx-pair? ___stx3801138012_)
                            (let ((_e1479814824_
                                   (gx#syntax-e ___stx3801138012_)))
                              (let ((_tl1480014831_ (##cdr _e1479814824_))
                                    (_hd1479914828_ (##car _e1479814824_)))
                                (if (gx#identifier? _hd1479914828_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<sugar>$<sugar:2>[1]#_g41836_|
                                         _hd1479914828_)
                                        (___kont3801438015_ _tl1480014831_)
                                        (___kont3801638017_))
                                    (___kont3801638017_))))
                            (___kont3801638017_))))))
                 (_let-head14030_
                  (lambda (_x14731_)
                    (let* ((___stx3803138032_ _x14731_)
                           (_g1473514746_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx3803138032_))))
                      (let ((___kont3803438035_ (lambda (_L14774_) _L14774_))
                            (___kont3803638037_ (lambda () (list _x14731_))))
                        (if (gx#stx-pair? ___stx3803138032_)
                            (let ((_e1473814764_
                                   (gx#syntax-e ___stx3803138032_)))
                              (let ((_tl1474014771_ (##cdr _e1473814764_))
                                    (_hd1473914768_ (##car _e1473814764_)))
                                (if (gx#identifier? _hd1473914768_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<sugar>$<sugar:2>[1]#_g41837_|
                                         _hd1473914768_)
                                        (___kont3803438035_ _tl1474014771_)
                                        (___kont3803638037_))
                                    (___kont3803638037_))))
                            (___kont3803638037_)))))))
          (let* ((___stx3805138052_ _stx14023_)
                 (_g1403414106_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     ___stx3805138052_))))
            (let ((___kont3805438055_
                   (lambda (_L14704_ _L14706_ _L14707_ _L14708_)
                     (cons _L14708_
                           (cons (cons (cons _L14707_ (cons _L14706_ '())) '())
                                 _L14704_))))
                  (___kont3805638057_
                   (lambda (_L14626_ _L14628_)
                     (cons (gx#datum->syntax '#f 'and)
                           (cons _L14628_
                                 (cons (cons (gx#datum->syntax '#f 'let)
                                             (cons '()
                                                   (foldr (lambda (_g1464814651_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1464914654_)
                    (cons _g1464814651_ _g1464914654_))
                  '()
                  _L14626_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))))
                  (___kont3806038061_
                   (lambda (_L14193_ _L14195_)
                     (let* ((_g1422614252_
                             (lambda (_g1422714248_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g1422714248_)))
                            (_g1422514537_
                             (lambda (_g1422714256_)
                               (if (gx#stx-pair/null? _g1422714256_)
                                   (let ((_g41838_
                                          (gx#syntax-split-splice
                                           _g1422714256_
                                           '0)))
                                     (begin
                                       (let ((_g41839_
                                              (if (##values? _g41838_)
                                                  (##vector-length _g41838_)
                                                  1)))
                                         (if (not (##fx= _g41839_ 2))
                                             (error "Context expects 2 values"
                                                    _g41839_)))
                                       (let ((_target1423014259_
                                              (##vector-ref _g41838_ 0))
                                             (_tl1423214262_
                                              (##vector-ref _g41838_ 1)))
                                         (if (gx#stx-null? _tl1423214262_)
                                             (letrec ((_loop1423314265_
                                                       (lambda (_hd1423114269_
                                                                _e1423714272_
                                                                _hd1423814274_)
                                                         (if (gx#stx-pair?
                                                              _hd1423114269_)
                                                             (let ((_e1423414277_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _hd1423114269_)))
                       (let ((_lp-hd1423514281_ (##car _e1423414277_))
                             (_lp-tl1423614284_ (##cdr _e1423414277_)))
                         (if (gx#stx-pair? _lp-hd1423514281_)
                             (let ((_e1424114287_
                                    (gx#syntax-e _lp-hd1423514281_)))
                               (let ((_hd1424214291_ (##car _e1424114287_))
                                     (_tl1424314294_ (##cdr _e1424114287_)))
                                 (if (gx#stx-pair? _tl1424314294_)
                                     (let ((_e1424414297_
                                            (gx#syntax-e _tl1424314294_)))
                                       (let ((_hd1424514301_
                                              (##car _e1424414297_))
                                             (_tl1424614304_
                                              (##cdr _e1424414297_)))
                                         (if (gx#stx-null? _tl1424614304_)
                                             (_loop1423314265_
                                              _lp-tl1423614284_
                                              (cons _hd1424514301_
                                                    _e1423714272_)
                                              (cons _hd1424214291_
                                                    _hd1423814274_))
                                             (_g1422614252_ _g1422714256_))))
                                     (_g1422614252_ _g1422714256_))))
                             (_g1422614252_ _g1422714256_))))
                     (let ((_e1423914307_ (reverse _e1423714272_))
                           (_hd1424014310_ (reverse _hd1423814274_)))
                       ((lambda (_L14313_ _L14315_)
                          (let ()
                            (let* ((_g1433114348_
                                    (lambda (_g1433214344_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       _g1433214344_)))
                                   (_g1433014525_
                                    (lambda (_g1433214352_)
                                      (if (gx#stx-pair/null? _g1433214352_)
                                          (let ((_g41840_
                                                 (gx#syntax-split-splice
                                                  _g1433214352_
                                                  '0)))
                                            (begin
                                              (let ((_g41841_
                                                     (if (##values? _g41840_)
                                                         (##vector-length
                                                          _g41840_)
                                                         1)))
                                                (if (not (##fx= _g41841_ 2))
                                                    (error "Context expects 2 values"
                                                           _g41841_)))
                                              (let ((_target1433414355_
                                                     (##vector-ref _g41840_ 0))
                                                    (_tl1433614358_
                                                     (##vector-ref
                                                      _g41840_
                                                      1)))
                                                (if (gx#stx-null?
                                                     _tl1433614358_)
                                                    (letrec ((_loop1433714361_
                                                              (lambda (_hd1433514365_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _$e1434114368_)
                        (if (gx#stx-pair? _hd1433514365_)
                            (let ((_e1433814371_ (gx#syntax-e _hd1433514365_)))
                              (let ((_lp-hd1433914375_ (##car _e1433814371_))
                                    (_lp-tl1434014378_ (##cdr _e1433814371_)))
                                (_loop1433714361_
                                 _lp-tl1434014378_
                                 (cons _lp-hd1433914375_ _$e1434114368_))))
                            (let ((_$e1434214381_ (reverse _$e1434114368_)))
                              ((lambda (_L14385_)
                                 (let ()
                                   (let* ((_g1440214419_
                                           (lambda (_g1440314415_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1440314415_)))
                                          (_g1440114513_
                                           (lambda (_g1440314423_)
                                             (if (gx#stx-pair/null?
                                                  _g1440314423_)
                                                 (let ((_g41842_
                                                        (gx#syntax-split-splice
                                                         _g1440314423_
                                                         '0)))
                                                   (begin
                                                     (let ((_g41843_
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g41842_)
                        (##vector-length _g41842_)
                        1)))
               (if (not (##fx= _g41843_ 2))
                   (error "Context expects 2 values" _g41843_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target1440514426_
                                                            (##vector-ref
                                                             _g41842_
                                                             0))
                                                           (_tl1440714429_
                                                            (##vector-ref
                                                             _g41842_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl1440714429_)
                                                           (letrec ((_loop1440814432_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd1440614436_ _hd-bind1441214439_)
                               (if (gx#stx-pair? _hd1440614436_)
                                   (let ((_e1440914442_
                                          (gx#syntax-e _hd1440614436_)))
                                     (let ((_lp-hd1441014446_
                                            (##car _e1440914442_))
                                           (_lp-tl1441114449_
                                            (##cdr _e1440914442_)))
                                       (_loop1440814432_
                                        _lp-tl1441114449_
                                        (cons _lp-hd1441014446_
                                              _hd-bind1441214439_))))
                                   (let ((_hd-bind1441314452_
                                          (reverse _hd-bind1441214439_)))
                                     ((lambda (_L14456_)
                                        (let ()
                                          (let ()
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'let-values)
                                                  (cons (begin
                                                          (gx#syntax-check-splice-targets
                                                           _L14313_
                                                           _L14385_)
                                                          (foldr (lambda (_g1447414485_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g1447514488_
                                  _g1447614490_)
                           (cons (cons (cons _g1447514488_ '())
                                       (cons _g1447414485_ '()))
                                 _g1447614490_))
                         '()
                         _L14313_
                         _L14385_))
                (cons (cons (gx#datum->syntax '#f 'and)
                            (foldr (lambda (_g1447714493_ _g1447814496_)
                                     (cons _g1447714493_ _g1447814496_))
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'let-values)
                                               (cons (begin
                                                       (gx#syntax-check-splice-targets
                                                        _L14385_
                                                        _L14456_)
                                                       (foldr (lambda (_g1447914499_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1448014502_
                               _g1448114504_)
                        (cons (cons _g1448014502_ (cons _g1447914499_ '()))
                              _g1448114504_))
                      '()
                      _L14385_
                      _L14456_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (foldr (lambda (_g1448214507_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g1448314510_)
                      (cons _g1448214507_ _g1448314510_))
                    '()
                    _L14193_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())
                                   _L14385_))
                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _hd-bind1441314452_))))))
                     (_loop1440814432_ _target1440514426_ '()))
                   (_g1440214419_ _g1440314423_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1440214419_
                                                  _g1440314423_)))))
                                     (_g1440114513_
                                      (gx#stx-map
                                       _let-head14030_
                                       (foldr (lambda (_g1451614519_
                                                       _g1451714522_)
                                                (cons _g1451614519_
                                                      _g1451714522_))
                                              '()
                                              _L14315_))))))
                               _$e1434214381_))))))
              (_loop1433714361_ _target1433414355_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1433114348_
                                                     _g1433214352_)))))
                                          (_g1433114348_ _g1433214352_)))))
                              (_g1433014525_
                               (gx#gentemps
                                (foldr (lambda (_g1452814531_ _g1452914534_)
                                         (cons _g1452814531_ _g1452914534_))
                                       '()
                                       _L14315_))))))
                        _e1423914307_
                        _hd1424014310_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_loop1423314265_
                                                _target1423014259_
                                                '()
                                                '()))
                                             (_g1422614252_ _g1422714256_)))))
                                   (_g1422614252_ _g1422714256_)))))
                       (_g1422514537_
                        (gx#stx-map
                         _let-bind14028_
                         (foldr (lambda (_g1454014543_ _g1454114546_)
                                  (cons _g1454014543_ _g1454114546_))
                                '()
                                _L14195_)))))))
              (let* ((___match3814838149_
                      (lambda (_e1407714113_
                               _hd1407814117_
                               _tl1407914120_
                               _e1408014123_
                               _hd1408114127_
                               _tl1408214130_
                               ___splice3806238063_
                               _target1408314133_
                               _tl1408514136_)
                        (letrec ((_loop1408614139_
                                  (lambda (_hd1408414143_ _bind1409014146_)
                                    (if (gx#stx-pair? _hd1408414143_)
                                        (let ((_e1408714149_
                                               (gx#syntax-e _hd1408414143_)))
                                          (let ((_lp-tl1408914156_
                                                 (##cdr _e1408714149_))
                                                (_lp-hd1408814153_
                                                 (##car _e1408714149_)))
                                            (_loop1408614139_
                                             _lp-tl1408914156_
                                             (cons _lp-hd1408814153_
                                                   _bind1409014146_))))
                                        (let ((_bind1409114159_
                                               (reverse _bind1409014146_)))
                                          (if (gx#stx-pair/null?
                                               _tl1408214130_)
                                              (let ((___splice3806438065_
                                                     (gx#syntax-split-splice
                                                      _tl1408214130_
                                                      '0)))
                                                (let ((_tl1409414166_
                                                       (##vector-ref
                                                        ___splice3806438065_
                                                        '1))
                                                      (_target1409214163_
                                                       (##vector-ref
                                                        ___splice3806438065_
                                                        '0)))
                                                  (if (gx#stx-null?
                                                       _tl1409414166_)
                                                      (letrec ((_loop1409514169_
                                                                (lambda (_hd1409314173_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _body1409914176_)
                          (if (gx#stx-pair? _hd1409314173_)
                              (let ((_e1409614179_
                                     (gx#syntax-e _hd1409314173_)))
                                (let ((_lp-tl1409814186_ (##cdr _e1409614179_))
                                      (_lp-hd1409714183_
                                       (##car _e1409614179_)))
                                  (_loop1409514169_
                                   _lp-tl1409814186_
                                   (cons _lp-hd1409714183_ _body1409914176_))))
                              (let ((_body1410014189_
                                     (reverse _body1409914176_)))
                                (let ((_L14193_ _body1410014189_)
                                      (_L14195_ _bind1409114159_))
                                  (if (gx#stx-andmap
                                       _let-bind?14026_
                                       (foldr (lambda (_g1421714220_
                                                       _g1421814223_)
                                                (cons _g1421714220_
                                                      _g1421814223_))
                                              '()
                                              _L14195_))
                                      (___kont3806038061_ _L14193_ _L14195_)
                                      (_g1403414106_))))))))
                (_loop1409514169_ _target1409214163_ '()))
              (_g1403414106_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1403414106_)))))))
                          (_loop1408614139_ _target1408314133_ '()))))
                     (___match3812838129_
                      (lambda (_e1405414556_
                               _hd1405514560_
                               _tl1405614563_
                               _e1405714566_
                               _hd1405814570_
                               _tl1405914573_
                               _e1406014576_
                               _hd1406114580_
                               _tl1406214583_
                               _e1406314586_
                               _hd1406414590_
                               _tl1406514593_
                               ___splice3805838059_
                               _target1406614596_
                               _tl1406814599_)
                        (letrec ((_loop1406914602_
                                  (lambda (_hd1406714606_ _body1407314609_)
                                    (if (gx#stx-pair? _hd1406714606_)
                                        (let ((_e1407014612_
                                               (gx#syntax-e _hd1406714606_)))
                                          (let ((_lp-tl1407214619_
                                                 (##cdr _e1407014612_))
                                                (_lp-hd1407114616_
                                                 (##car _e1407014612_)))
                                            (_loop1406914602_
                                             _lp-tl1407214619_
                                             (cons _lp-hd1407114616_
                                                   _body1407314609_))))
                                        (let ((_body1407414622_
                                               (reverse _body1407314609_)))
                                          (___kont3805638057_
                                           _body1407414622_
                                           _hd1406414590_))))))
                          (_loop1406914602_ _target1406614596_ '()))))
                     (___match3809238093_
                      (lambda (_e1404014664_
                               _hd1404114668_
                               _tl1404214671_
                               _e1404314674_
                               _hd1404414678_
                               _tl1404514681_
                               _e1404614684_
                               _hd1404714688_
                               _tl1404814691_
                               _e1404914694_
                               _hd1405014698_
                               _tl1405114701_)
                        (let ((_L14704_ _tl1404514681_)
                              (_L14706_ _hd1405014698_)
                              (_L14707_ _hd1404714688_)
                              (_L14708_ _hd1404114668_))
                          (if (_let-head?14029_ _L14707_)
                              (___kont3805438055_
                               _L14704_
                               _L14706_
                               _L14707_
                               _L14708_)
                              (if (gx#stx-pair? _hd1404714688_)
                                  (let ((_e1406314586_
                                         (gx#syntax-e _hd1404714688_)))
                                    (let ((_tl1406514593_
                                           (##cdr _e1406314586_))
                                          (_hd1406414590_
                                           (##car _e1406314586_)))
                                      (if (gx#stx-pair/null? _hd1404414678_)
                                          (let ((___splice3806238063_
                                                 (gx#syntax-split-splice
                                                  _hd1404414678_
                                                  '0)))
                                            (let ((_tl1408514136_
                                                   (##vector-ref
                                                    ___splice3806238063_
                                                    '1))
                                                  (_target1408314133_
                                                   (##vector-ref
                                                    ___splice3806238063_
                                                    '0)))
                                              (if (gx#stx-null? _tl1408514136_)
                                                  (___match3814838149_
                                                   _e1404014664_
                                                   _hd1404114668_
                                                   _tl1404214671_
                                                   _e1404314674_
                                                   _hd1404414678_
                                                   _tl1404514681_
                                                   ___splice3806238063_
                                                   _target1408314133_
                                                   _tl1408514136_)
                                                  (_g1403414106_))))
                                          (_g1403414106_))))
                                  (if (gx#stx-pair/null? _hd1404414678_)
                                      (let ((___splice3806238063_
                                             (gx#syntax-split-splice
                                              _hd1404414678_
                                              '0)))
                                        (let ((_tl1408514136_
                                               (##vector-ref
                                                ___splice3806238063_
                                                '1))
                                              (_target1408314133_
                                               (##vector-ref
                                                ___splice3806238063_
                                                '0)))
                                          (if (gx#stx-null? _tl1408514136_)
                                              (___match3814838149_
                                               _e1404014664_
                                               _hd1404114668_
                                               _tl1404214671_
                                               _e1404314674_
                                               _hd1404414678_
                                               _tl1404514681_
                                               ___splice3806238063_
                                               _target1408314133_
                                               _tl1408514136_)
                                              (_g1403414106_))))
                                      (_g1403414106_))))))))
                (if (gx#stx-pair? ___stx3805138052_)
                    (let ((_e1404014664_ (gx#syntax-e ___stx3805138052_)))
                      (let ((_tl1404214671_ (##cdr _e1404014664_))
                            (_hd1404114668_ (##car _e1404014664_)))
                        (if (gx#stx-pair? _tl1404214671_)
                            (let ((_e1404314674_ (gx#syntax-e _tl1404214671_)))
                              (let ((_tl1404514681_ (##cdr _e1404314674_))
                                    (_hd1404414678_ (##car _e1404314674_)))
                                (if (gx#stx-pair? _hd1404414678_)
                                    (let ((_e1404614684_
                                           (gx#syntax-e _hd1404414678_)))
                                      (let ((_tl1404814691_
                                             (##cdr _e1404614684_))
                                            (_hd1404714688_
                                             (##car _e1404614684_)))
                                        (if (gx#stx-pair? _tl1404814691_)
                                            (let ((_e1404914694_
                                                   (gx#syntax-e
                                                    _tl1404814691_)))
                                              (let ((_tl1405114701_
                                                     (##cdr _e1404914694_))
                                                    (_hd1405014698_
                                                     (##car _e1404914694_)))
                                                (if (gx#stx-null?
                                                     _tl1405114701_)
                                                    (___match3809238093_
                                                     _e1404014664_
                                                     _hd1404114668_
                                                     _tl1404214671_
                                                     _e1404314674_
                                                     _hd1404414678_
                                                     _tl1404514681_
                                                     _e1404614684_
                                                     _hd1404714688_
                                                     _tl1404814691_
                                                     _e1404914694_
                                                     _hd1405014698_
                                                     _tl1405114701_)
                                                    (if (gx#stx-pair?
                                                         _hd1404714688_)
                                                        (let ((_e1406314586_
                                                               (gx#syntax-e
                                                                _hd1404714688_)))
                                                          (let ((_tl1406514593_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e1406314586_))
                        (_hd1406414590_ (##car _e1406314586_)))
                    (if (gx#stx-pair/null? _hd1404414678_)
                        (let ((___splice3806238063_
                               (gx#syntax-split-splice _hd1404414678_ '0)))
                          (let ((_tl1408514136_
                                 (##vector-ref ___splice3806238063_ '1))
                                (_target1408314133_
                                 (##vector-ref ___splice3806238063_ '0)))
                            (if (gx#stx-null? _tl1408514136_)
                                (___match3814838149_
                                 _e1404014664_
                                 _hd1404114668_
                                 _tl1404214671_
                                 _e1404314674_
                                 _hd1404414678_
                                 _tl1404514681_
                                 ___splice3806238063_
                                 _target1408314133_
                                 _tl1408514136_)
                                (_g1403414106_))))
                        (_g1403414106_))))
                (if (gx#stx-pair/null? _hd1404414678_)
                    (let ((___splice3806238063_
                           (gx#syntax-split-splice _hd1404414678_ '0)))
                      (let ((_tl1408514136_
                             (##vector-ref ___splice3806238063_ '1))
                            (_target1408314133_
                             (##vector-ref ___splice3806238063_ '0)))
                        (if (gx#stx-null? _tl1408514136_)
                            (___match3814838149_
                             _e1404014664_
                             _hd1404114668_
                             _tl1404214671_
                             _e1404314674_
                             _hd1404414678_
                             _tl1404514681_
                             ___splice3806238063_
                             _target1408314133_
                             _tl1408514136_)
                            (_g1403414106_))))
                    (_g1403414106_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _hd1404714688_)
                                                (let ((_e1406314586_
                                                       (gx#syntax-e
                                                        _hd1404714688_)))
                                                  (let ((_tl1406514593_
                                                         (##cdr _e1406314586_))
                                                        (_hd1406414590_
                                                         (##car _e1406314586_)))
                                                    (if (gx#stx-null?
                                                         _tl1406514593_)
                                                        (if (gx#stx-null?
                                                             _tl1404814691_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1404514681_)
                        (let ((___splice3805838059_
                               (gx#syntax-split-splice _tl1404514681_ '0)))
                          (let ((_tl1406814599_
                                 (##vector-ref ___splice3805838059_ '1))
                                (_target1406614596_
                                 (##vector-ref ___splice3805838059_ '0)))
                            (if (gx#stx-null? _tl1406814599_)
                                (___match3812838129_
                                 _e1404014664_
                                 _hd1404114668_
                                 _tl1404214671_
                                 _e1404314674_
                                 _hd1404414678_
                                 _tl1404514681_
                                 _e1404614684_
                                 _hd1404714688_
                                 _tl1404814691_
                                 _e1406314586_
                                 _hd1406414590_
                                 _tl1406514593_
                                 ___splice3805838059_
                                 _target1406614596_
                                 _tl1406814599_)
                                (if (gx#stx-pair/null? _hd1404414678_)
                                    (let ((___splice3806238063_
                                           (gx#syntax-split-splice
                                            _hd1404414678_
                                            '0)))
                                      (let ((_tl1408514136_
                                             (##vector-ref
                                              ___splice3806238063_
                                              '1))
                                            (_target1408314133_
                                             (##vector-ref
                                              ___splice3806238063_
                                              '0)))
                                        (if (gx#stx-null? _tl1408514136_)
                                            (___match3814838149_
                                             _e1404014664_
                                             _hd1404114668_
                                             _tl1404214671_
                                             _e1404314674_
                                             _hd1404414678_
                                             _tl1404514681_
                                             ___splice3806238063_
                                             _target1408314133_
                                             _tl1408514136_)
                                            (_g1403414106_))))
                                    (_g1403414106_)))))
                        (if (gx#stx-pair/null? _hd1404414678_)
                            (let ((___splice3806238063_
                                   (gx#syntax-split-splice _hd1404414678_ '0)))
                              (let ((_tl1408514136_
                                     (##vector-ref ___splice3806238063_ '1))
                                    (_target1408314133_
                                     (##vector-ref ___splice3806238063_ '0)))
                                (if (gx#stx-null? _tl1408514136_)
                                    (___match3814838149_
                                     _e1404014664_
                                     _hd1404114668_
                                     _tl1404214671_
                                     _e1404314674_
                                     _hd1404414678_
                                     _tl1404514681_
                                     ___splice3806238063_
                                     _target1408314133_
                                     _tl1408514136_)
                                    (_g1403414106_))))
                            (_g1403414106_)))
                    (if (gx#stx-pair/null? _hd1404414678_)
                        (let ((___splice3806238063_
                               (gx#syntax-split-splice _hd1404414678_ '0)))
                          (let ((_tl1408514136_
                                 (##vector-ref ___splice3806238063_ '1))
                                (_target1408314133_
                                 (##vector-ref ___splice3806238063_ '0)))
                            (if (gx#stx-null? _tl1408514136_)
                                (___match3814838149_
                                 _e1404014664_
                                 _hd1404114668_
                                 _tl1404214671_
                                 _e1404314674_
                                 _hd1404414678_
                                 _tl1404514681_
                                 ___splice3806238063_
                                 _target1408314133_
                                 _tl1408514136_)
                                (_g1403414106_))))
                        (_g1403414106_)))
                (if (gx#stx-pair/null? _hd1404414678_)
                    (let ((___splice3806238063_
                           (gx#syntax-split-splice _hd1404414678_ '0)))
                      (let ((_tl1408514136_
                             (##vector-ref ___splice3806238063_ '1))
                            (_target1408314133_
                             (##vector-ref ___splice3806238063_ '0)))
                        (if (gx#stx-null? _tl1408514136_)
                            (___match3814838149_
                             _e1404014664_
                             _hd1404114668_
                             _tl1404214671_
                             _e1404314674_
                             _hd1404414678_
                             _tl1404514681_
                             ___splice3806238063_
                             _target1408314133_
                             _tl1408514136_)
                            (_g1403414106_))))
                    (_g1403414106_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair/null?
                                                     _hd1404414678_)
                                                    (let ((___splice3806238063_
                                                           (gx#syntax-split-splice
                                                            _hd1404414678_
                                                            '0)))
                                                      (let ((_tl1408514136_
                                                             (##vector-ref
                                                              ___splice3806238063_
                                                              '1))
                                                            (_target1408314133_
                                                             (##vector-ref
                                                              ___splice3806238063_
                                                              '0)))
                                                        (if (gx#stx-null?
                                                             _tl1408514136_)
                                                            (___match3814838149_
                                                             _e1404014664_
                                                             _hd1404114668_
                                                             _tl1404214671_
                                                             _e1404314674_
                                                             _hd1404414678_
                                                             _tl1404514681_
                                                             ___splice3806238063_
                                                             _target1408314133_
                                                             _tl1408514136_)
                                                            (_g1403414106_))))
                                                    (_g1403414106_))))))
                                    (if (gx#stx-pair/null? _hd1404414678_)
                                        (let ((___splice3806238063_
                                               (gx#syntax-split-splice
                                                _hd1404414678_
                                                '0)))
                                          (let ((_tl1408514136_
                                                 (##vector-ref
                                                  ___splice3806238063_
                                                  '1))
                                                (_target1408314133_
                                                 (##vector-ref
                                                  ___splice3806238063_
                                                  '0)))
                                            (if (gx#stx-null? _tl1408514136_)
                                                (___match3814838149_
                                                 _e1404014664_
                                                 _hd1404114668_
                                                 _tl1404214671_
                                                 _e1404314674_
                                                 _hd1404414678_
                                                 _tl1404514681_
                                                 ___splice3806238063_
                                                 _target1408314133_
                                                 _tl1408514136_)
                                                (_g1403414106_))))
                                        (_g1403414106_)))))
                            (_g1403414106_))))
                    (_g1403414106_))))))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#alet*|
      (lambda (_$stx15066_)
        (let* ((___stx3815138152_ _$stx15066_)
               (_g1507115116_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3815138152_))))
          (let ((___kont3815438155_
                 (lambda (_L15274_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_g1529015293_ _g1529115296_)
                                        (cons _g1529015293_ _g1529115296_))
                                      '()
                                      _L15274_)))))
                (___kont3815838159_
                 (lambda (_L15183_ _L15185_ _L15186_ _L15187_)
                   (cons (gx#datum->syntax '#f 'alet)
                         (cons (cons _L15186_ '())
                               (cons (cons _L15187_
                                           (cons _L15185_
                                                 (foldr (lambda (_g1520815211_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1520915214_)
                  (cons _g1520815211_ _g1520915214_))
                '()
                _L15183_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((___match3821038211_
                    (lambda (_e1509315123_
                             _hd1509415127_
                             _tl1509515130_
                             _e1509615133_
                             _hd1509715137_
                             _tl1509815140_
                             _e1509915143_
                             _hd1510015147_
                             _tl1510115150_
                             ___splice3816038161_
                             _target1510215153_
                             _tl1510415156_)
                      (letrec ((_loop1510515159_
                                (lambda (_hd1510315163_ _body1510915166_)
                                  (if (gx#stx-pair? _hd1510315163_)
                                      (let ((_e1510615169_
                                             (gx#syntax-e _hd1510315163_)))
                                        (let ((_lp-tl1510815176_
                                               (##cdr _e1510615169_))
                                              (_lp-hd1510715173_
                                               (##car _e1510615169_)))
                                          (_loop1510515159_
                                           _lp-tl1510815176_
                                           (cons _lp-hd1510715173_
                                                 _body1510915166_))))
                                      (let ((_body1511015179_
                                             (reverse _body1510915166_)))
                                        (___kont3815838159_
                                         _body1511015179_
                                         _tl1510115150_
                                         _hd1510015147_
                                         _hd1509415127_))))))
                        (_loop1510515159_ _target1510215153_ '()))))
                   (___match3818438185_
                    (lambda (_e1507415224_
                             _hd1507515228_
                             _tl1507615231_
                             _e1507715234_
                             _hd1507815238_
                             _tl1507915241_
                             ___splice3815638157_
                             _target1508015244_
                             _tl1508215247_)
                      (letrec ((_loop1508315250_
                                (lambda (_hd1508115254_ _body1508715257_)
                                  (if (gx#stx-pair? _hd1508115254_)
                                      (let ((_e1508415260_
                                             (gx#syntax-e _hd1508115254_)))
                                        (let ((_lp-tl1508615267_
                                               (##cdr _e1508415260_))
                                              (_lp-hd1508515264_
                                               (##car _e1508415260_)))
                                          (_loop1508315250_
                                           _lp-tl1508615267_
                                           (cons _lp-hd1508515264_
                                                 _body1508715257_))))
                                      (let ((_body1508815270_
                                             (reverse _body1508715257_)))
                                        (___kont3815438155_
                                         _body1508815270_))))))
                        (_loop1508315250_ _target1508015244_ '())))))
              (if (gx#stx-pair? ___stx3815138152_)
                  (let ((_e1507415224_ (gx#syntax-e ___stx3815138152_)))
                    (let ((_tl1507615231_ (##cdr _e1507415224_))
                          (_hd1507515228_ (##car _e1507415224_)))
                      (if (gx#stx-pair? _tl1507615231_)
                          (let ((_e1507715234_ (gx#syntax-e _tl1507615231_)))
                            (let ((_tl1507915241_ (##cdr _e1507715234_))
                                  (_hd1507815238_ (##car _e1507715234_)))
                              (if (gx#stx-null? _hd1507815238_)
                                  (if (gx#stx-pair/null? _tl1507915241_)
                                      (let ((___splice3815638157_
                                             (gx#syntax-split-splice
                                              _tl1507915241_
                                              '0)))
                                        (let ((_tl1508215247_
                                               (##vector-ref
                                                ___splice3815638157_
                                                '1))
                                              (_target1508015244_
                                               (##vector-ref
                                                ___splice3815638157_
                                                '0)))
                                          (if (gx#stx-null? _tl1508215247_)
                                              (___match3818438185_
                                               _e1507415224_
                                               _hd1507515228_
                                               _tl1507615231_
                                               _e1507715234_
                                               _hd1507815238_
                                               _tl1507915241_
                                               ___splice3815638157_
                                               _target1508015244_
                                               _tl1508215247_)
                                              (_g1507115116_))))
                                      (_g1507115116_))
                                  (if (gx#stx-pair? _hd1507815238_)
                                      (let ((_e1509915143_
                                             (gx#syntax-e _hd1507815238_)))
                                        (let ((_tl1510115150_
                                               (##cdr _e1509915143_))
                                              (_hd1510015147_
                                               (##car _e1509915143_)))
                                          (if (gx#stx-pair/null?
                                               _tl1507915241_)
                                              (let ((___splice3816038161_
                                                     (gx#syntax-split-splice
                                                      _tl1507915241_
                                                      '0)))
                                                (let ((_tl1510415156_
                                                       (##vector-ref
                                                        ___splice3816038161_
                                                        '1))
                                                      (_target1510215153_
                                                       (##vector-ref
                                                        ___splice3816038161_
                                                        '0)))
                                                  (if (gx#stx-null?
                                                       _tl1510415156_)
                                                      (___match3821038211_
                                                       _e1507415224_
                                                       _hd1507515228_
                                                       _tl1507615231_
                                                       _e1507715234_
                                                       _hd1507815238_
                                                       _tl1507915241_
                                                       _e1509915143_
                                                       _hd1510015147_
                                                       _tl1510115150_
                                                       ___splice3816038161_
                                                       _target1510215153_
                                                       _tl1510415156_)
                                                      (_g1507115116_))))
                                              (_g1507115116_))))
                                      (_g1507115116_)))))
                          (_g1507115116_))))
                  (_g1507115116_)))))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#@list|
      (lambda (_$stx15305_)
        (let* ((___stx3821338214_ _$stx15305_)
               (_g1531415372_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3821338214_))))
          (let ((___kont3821638217_
                 (lambda ()
                   (cons (gx#datum->syntax '#f 'quote) (cons '() '()))))
                (___kont3821838219_ (lambda (_L15598_) _L15598_))
                (___kont3822038221_ (lambda (_L15540_ _L15542_) _L15542_))
                (___kont3822238223_
                 (lambda (_L15482_ _L15484_ _L15485_ _L15486_)
                   (cons (gx#datum->syntax '#f 'foldr)
                         (cons (gx#datum->syntax '#f 'cons)
                               (cons (cons _L15486_ _L15482_)
                                     (cons _L15485_ '()))))))
                (___kont3822438225_
                 (lambda (_L15428_ _L15430_ _L15431_)
                   (cons (gx#datum->syntax '#f 'cons)
                         (cons _L15430_ (cons (cons _L15431_ _L15428_) '())))))
                (___kont3822638227_ (lambda (_L15389_) _L15389_)))
            (let* ((___match3830038301_
                    (lambda (_e1534515452_
                             _hd1534615456_
                             _tl1534715459_
                             _e1534815462_
                             _hd1534915466_
                             _tl1535015469_
                             _e1535115472_
                             _hd1535215476_
                             _tl1535315479_)
                      (let ((_L15482_ _tl1535315479_)
                            (_L15484_ _hd1535215476_)
                            (_L15485_ _hd1534915466_)
                            (_L15486_ _hd1534615456_))
                        (if (gx#ellipsis? _L15484_)
                            (___kont3822238223_
                             _L15482_
                             _L15484_
                             _L15485_
                             _L15486_)
                            (___kont3822438225_
                             _tl1535015469_
                             _hd1534915466_
                             _hd1534615456_)))))
                   (___match3828238283_
                    (lambda (_e1533215510_
                             _hd1533315514_
                             _tl1533415517_
                             _e1533515520_
                             _hd1533615524_
                             _tl1533715527_
                             _e1533815530_
                             _hd1533915534_
                             _tl1534015537_)
                      (let ((_L15540_ _hd1533915534_)
                            (_L15542_ _hd1533615524_))
                        (if (gx#ellipsis? _L15540_)
                            (___kont3822038221_ _L15540_ _L15542_)
                            (___match3830038301_
                             _e1533215510_
                             _hd1533315514_
                             _tl1533415517_
                             _e1533515520_
                             _hd1533615524_
                             _tl1533715527_
                             _e1533815530_
                             _hd1533915534_
                             _tl1534015537_))))))
              (if (gx#stx-pair? ___stx3821338214_)
                  (let ((_e1531615621_ (gx#syntax-e ___stx3821338214_)))
                    (let ((_tl1531815628_ (##cdr _e1531615621_))
                          (_hd1531715625_ (##car _e1531615621_)))
                      (if (gx#stx-null? _tl1531815628_)
                          (___kont3821638217_)
                          (if (gx#stx-pair? _tl1531815628_)
                              (let ((_e1532315574_
                                     (gx#syntax-e _tl1531815628_)))
                                (let ((_tl1532515581_ (##cdr _e1532315574_))
                                      (_hd1532415578_ (##car _e1532315574_)))
                                  (if (gx#stx-datum? _hd1532415578_)
                                      (let ((_e1532615584_
                                             (gx#stx-e _hd1532415578_)))
                                        (if (equal? _e1532615584_ '::)
                                            (if (gx#stx-pair? _tl1532515581_)
                                                (let ((_e1532715588_
                                                       (gx#syntax-e
                                                        _tl1532515581_)))
                                                  (let ((_tl1532915595_
                                                         (##cdr _e1532715588_))
                                                        (_hd1532815592_
                                                         (##car _e1532715588_)))
                                                    (if (gx#stx-null?
                                                         _tl1532915595_)
                                                        (___kont3821838219_
                                                         _hd1532815592_)
                                                        (___match3830038301_
                                                         _e1531615621_
                                                         _hd1531715625_
                                                         _tl1531815628_
                                                         _e1532315574_
                                                         _hd1532415578_
                                                         _tl1532515581_
                                                         _e1532715588_
                                                         _hd1532815592_
                                                         _tl1532915595_))))
                                                (___kont3822438225_
                                                 _tl1532515581_
                                                 _hd1532415578_
                                                 _hd1531715625_))
                                            (if (gx#stx-pair? _tl1532515581_)
                                                (let ((_e1533815530_
                                                       (gx#syntax-e
                                                        _tl1532515581_)))
                                                  (let ((_tl1534015537_
                                                         (##cdr _e1533815530_))
                                                        (_hd1533915534_
                                                         (##car _e1533815530_)))
                                                    (if (gx#stx-null?
                                                         _tl1534015537_)
                                                        (___match3828238283_
                                                         _e1531615621_
                                                         _hd1531715625_
                                                         _tl1531815628_
                                                         _e1532315574_
                                                         _hd1532415578_
                                                         _tl1532515581_
                                                         _e1533815530_
                                                         _hd1533915534_
                                                         _tl1534015537_)
                                                        (___match3830038301_
                                                         _e1531615621_
                                                         _hd1531715625_
                                                         _tl1531815628_
                                                         _e1532315574_
                                                         _hd1532415578_
                                                         _tl1532515581_
                                                         _e1533815530_
                                                         _hd1533915534_
                                                         _tl1534015537_))))
                                                (___kont3822438225_
                                                 _tl1532515581_
                                                 _hd1532415578_
                                                 _hd1531715625_))))
                                      (if (gx#stx-pair? _tl1532515581_)
                                          (let ((_e1533815530_
                                                 (gx#syntax-e _tl1532515581_)))
                                            (let ((_tl1534015537_
                                                   (##cdr _e1533815530_))
                                                  (_hd1533915534_
                                                   (##car _e1533815530_)))
                                              (if (gx#stx-null? _tl1534015537_)
                                                  (___match3828238283_
                                                   _e1531615621_
                                                   _hd1531715625_
                                                   _tl1531815628_
                                                   _e1532315574_
                                                   _hd1532415578_
                                                   _tl1532515581_
                                                   _e1533815530_
                                                   _hd1533915534_
                                                   _tl1534015537_)
                                                  (___match3830038301_
                                                   _e1531615621_
                                                   _hd1531715625_
                                                   _tl1531815628_
                                                   _e1532315574_
                                                   _hd1532415578_
                                                   _tl1532515581_
                                                   _e1533815530_
                                                   _hd1533915534_
                                                   _tl1534015537_))))
                                          (___kont3822438225_
                                           _tl1532515581_
                                           _hd1532415578_
                                           _hd1531715625_)))))
                              (___kont3822638227_ _tl1531815628_)))))
                  (_g1531415372_)))))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#quasiquote|
      (lambda (_stx15639_)
        (letrec ((_simple-quote?15642_
                  (lambda (_e16334_)
                    (let* ((___stx3832138322_ _e16334_)
                           (_g1634216379_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx3832138322_))))
                      (let ((___kont3832438325_ (lambda () '#f))
                            (___kont3832638327_ (lambda () '#f))
                            (___kont3832838329_
                             (lambda (_L16493_ _L16495_)
                               (if (_simple-quote?15642_ _L16495_)
                                   (_simple-quote?15642_ _L16493_)
                                   '#f)))
                            (___kont3833038331_
                             (lambda (_L16454_)
                               (_simple-quote?15642_
                                (foldr (lambda (_g1646716470_ _g1646816473_)
                                         (cons _g1646716470_ _g1646816473_))
                                       '()
                                       _L16454_))))
                            (___kont3833438335_
                             (lambda (_L16401_)
                               (_simple-quote?15642_ _L16401_)))
                            (___kont3833638337_ (lambda () '#t)))
                        (let* ((_g1634016413_
                                (lambda ()
                                  (if (gx#stx-box? ___stx3832138322_)
                                      (let ((_e1637316397_
                                             (unbox (gx#syntax-e
                                                     ___stx3832138322_))))
                                        (___kont3833438335_ _e1637316397_))
                                      (___kont3833638337_))))
                               (___match3839238393_
                                (lambda (_e1636216420_
                                         ___splice3833238333_
                                         _target1636316424_
                                         _tl1636516427_)
                                  (letrec ((_loop1636616430_
                                            (lambda (_hd1636416434_
                                                     _e1637016437_)
                                              (if (gx#stx-pair? _hd1636416434_)
                                                  (let ((_e1636716440_
                                                         (gx#syntax-e
                                                          _hd1636416434_)))
                                                    (let ((_lp-tl1636916447_
                                                           (##cdr _e1636716440_))
                                                          (_lp-hd1636816444_
                                                           (##car _e1636716440_)))
                                                      (_loop1636616430_
                                                       _lp-tl1636916447_
                                                       (cons _lp-hd1636816444_
                                                             _e1637016437_))))
                                                  (let ((_e1637116450_
                                                         (reverse _e1637016437_)))
                                                    (___kont3833038331_
                                                     _e1637116450_))))))
                                    (_loop1636616430_
                                     _target1636316424_
                                     '()))))
                               (_g1633916476_
                                (lambda ()
                                  (if (gx#stx-vector? ___stx3832138322_)
                                      (let ((_e1636216420_
                                             (vector->list
                                              (gx#syntax-e
                                               ___stx3832138322_))))
                                        (if (gx#stx-pair/null? _e1636216420_)
                                            (let ((___splice3833238333_
                                                   (gx#syntax-split-splice
                                                    _e1636216420_
                                                    '0)))
                                              (let ((_tl1636516427_
                                                     (##vector-ref
                                                      ___splice3833238333_
                                                      '1))
                                                    (_target1636316424_
                                                     (##vector-ref
                                                      ___splice3833238333_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl1636516427_)
                                                    (___match3839238393_
                                                     _e1636216420_
                                                     ___splice3833238333_
                                                     _target1636316424_
                                                     _tl1636516427_)
                                                    (___kont3833638337_))))
                                            (___kont3833638337_)))
                                      (_g1634016413_)))))
                          (if (gx#stx-pair? ___stx3832138322_)
                              (let ((_e1634416544_
                                     (gx#syntax-e ___stx3832138322_)))
                                (let ((_tl1634616551_ (##cdr _e1634416544_))
                                      (_hd1634516548_ (##car _e1634416544_)))
                                  (if (gx#identifier? _hd1634516548_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<sugar>$<sugar:2>[1]#_g41844_|
                                           _hd1634516548_)
                                          (if (gx#stx-pair? _tl1634616551_)
                                              (let ((_e1634716554_
                                                     (gx#syntax-e
                                                      _tl1634616551_)))
                                                (let ((_tl1634916561_
                                                       (##cdr _e1634716554_))
                                                      (_hd1634816558_
                                                       (##car _e1634716554_)))
                                                  (if (gx#stx-null?
                                                       _tl1634916561_)
                                                      (___kont3832438325_)
                                                      (___kont3832838329_
                                                       _tl1634616551_
                                                       _hd1634516548_))))
                                              (___kont3832838329_
                                               _tl1634616551_
                                               _hd1634516548_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<sugar>$<sugar:2>[1]#_g41845_|
                                               _hd1634516548_)
                                              (if (gx#stx-pair? _tl1634616551_)
                                                  (let ((_e1635316523_
                                                         (gx#syntax-e
                                                          _tl1634616551_)))
                                                    (let ((_tl1635516530_
                                                           (##cdr _e1635316523_))
                                                          (_hd1635416527_
                                                           (##car _e1635316523_)))
                                                      (if (gx#stx-null?
                                                           _tl1635516530_)
                                                          (___kont3832638327_)
                                                          (___kont3832838329_
                                                           _tl1634616551_
                                                           _hd1634516548_))))
                                                  (___kont3832838329_
                                                   _tl1634616551_
                                                   _hd1634516548_))
                                              (___kont3832838329_
                                               _tl1634616551_
                                               _hd1634516548_)))
                                      (___kont3832838329_
                                       _tl1634616551_
                                       _hd1634516548_))))
                              (_g1633916476_)))))))
                 (_generate15644_
                  (lambda (_e15706_ _d15708_)
                    (let* ((___stx3839938400_ _e15706_)
                           (_g1571715775_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx3839938400_))))
                      (let ((___kont3840238403_
                             (lambda (_L16286_)
                               (let* ((_g1629916307_
                                       (lambda (_g1630016303_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1630016303_)))
                                      (_g1629816326_
                                       (lambda (_g1630016311_)
                                         ((lambda (_L16314_)
                                            (let ()
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'list)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons (gx#datum->syntax '#f 'quasiquote) '()))
                  (cons _L16314_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _g1630016311_))))
                                 (_g1629816326_
                                  (_generate15644_
                                   _L16286_
                                   (fx1+ _d15708_))))))
                            (___kont3840438405_
                             (lambda (_L16215_)
                               (if (fxzero? _d15708_)
                                   _L16215_
                                   (let* ((_g1622816236_
                                           (lambda (_g1622916232_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1622916232_)))
                                          (_g1622716255_
                                           (lambda (_g1622916240_)
                                             ((lambda (_L16243_)
                                                (let ()
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'list)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons (gx#datum->syntax '#f 'unquote) '()))
                      (cons _L16243_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _g1622916240_))))
                                     (_g1622716255_
                                      (_generate15644_
                                       _L16215_
                                       (fx1- _d15708_)))))))
                            (___kont3840638407_
                             (lambda (_L16144_)
                               (if (fxzero? _d15708_)
                                   (cons (gx#datum->syntax '#f 'foldr)
                                         (cons (gx#datum->syntax '#f 'cons)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote)
                                                           (cons '() '()))
                                                     (cons _L16144_ '()))))
                                   (let* ((_g1615716165_
                                           (lambda (_g1615816161_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1615816161_)))
                                          (_g1615616184_
                                           (lambda (_g1615816169_)
                                             ((lambda (_L16172_)
                                                (let ()
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'list)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons (gx#datum->syntax '#f 'unquote-splicing)
                                  '()))
                      (cons _L16172_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _g1615816169_))))
                                     (_g1615616184_
                                      (_generate15644_
                                       _L16144_
                                       (fx1- _d15708_)))))))
                            (___kont3840838409_
                             (lambda (_L16069_ _L16071_)
                               (let* ((_g1608616094_
                                       (lambda (_g1608716090_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1608716090_)))
                                      (_g1608516113_
                                       (lambda (_g1608716098_)
                                         ((lambda (_L16101_)
                                            (let ()
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'foldr)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'cons)
                                                          (cons _L16101_
                                                                (cons _L16071_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _g1608716098_))))
                                 (_g1608516113_
                                  (_generate15644_ _L16069_ _d15708_)))))
                            (___kont3841038411_
                             (lambda (_L15955_ _L15957_)
                               (let* ((_g1596815983_
                                       (lambda (_g1596915979_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1596915979_)))
                                      (_g1596716028_
                                       (lambda (_g1596915987_)
                                         (if (gx#stx-pair? _g1596915987_)
                                             (let ((_e1597215990_
                                                    (gx#syntax-e
                                                     _g1596915987_)))
                                               (let ((_hd1597315994_
                                                      (##car _e1597215990_))
                                                     (_tl1597415997_
                                                      (##cdr _e1597215990_)))
                                                 (if (gx#stx-pair?
                                                      _tl1597415997_)
                                                     (let ((_e1597516000_
                                                            (gx#syntax-e
                                                             _tl1597415997_)))
                                                       (let ((_hd1597616004_
                                                              (##car _e1597516000_))
                                                             (_tl1597716007_
                                                              (##cdr _e1597516000_)))
                                                         (if (gx#stx-null?
                                                              _tl1597716007_)
                                                             ((lambda (_L16010_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L16012_)
                        (let ()
                          (cons (gx#datum->syntax '#f 'cons)
                                (cons _L16012_ (cons _L16010_ '())))))
                      _hd1597616004_
                      _hd1597315994_)
                     (_g1596815983_ _g1596915987_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1596815983_
                                                      _g1596915987_))))
                                             (_g1596815983_ _g1596915987_)))))
                                 (_g1596716028_
                                  (list (_generate15644_ _L15957_ _d15708_)
                                        (_generate15644_
                                         _L15955_
                                         _d15708_))))))
                            (___kont3841238413_
                             (lambda (_L15885_)
                               (let* ((_g1589915907_
                                       (lambda (_g1590015903_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1590015903_)))
                                      (_g1589815926_
                                       (lambda (_g1590015911_)
                                         ((lambda (_L15914_)
                                            (let ()
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'list->vector)
                                                    (cons _L15914_ '()))))
                                          _g1590015911_))))
                                 (_g1589815926_
                                  (_generate15644_
                                   (foldr (lambda (_g1592915932_ _g1593015935_)
                                            (cons _g1592915932_ _g1593015935_))
                                          '()
                                          _L15885_)
                                   _d15708_)))))
                            (___kont3841638417_
                             (lambda (_L15803_)
                               (let* ((_g1581315821_
                                       (lambda (_g1581415817_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1581415817_)))
                                      (_g1581215840_
                                       (lambda (_g1581415825_)
                                         ((lambda (_L15828_)
                                            (let ()
                                              (cons (gx#datum->syntax '#f 'box)
                                                    (cons _L15828_ '()))))
                                          _g1581415825_))))
                                 (_g1581215840_
                                  (_generate15644_ _L15803_ _d15708_)))))
                            (___kont3841838419_
                             (lambda (_L15782_)
                               (cons (gx#datum->syntax '#f 'quote)
                                     (cons _L15782_ '())))))
                        (let* ((_g1571515844_
                                (lambda ()
                                  (if (gx#stx-box? ___stx3839938400_)
                                      (let ((_e1576815799_
                                             (unbox (gx#syntax-e
                                                     ___stx3839938400_))))
                                        (___kont3841638417_ _e1576815799_))
                                      (___kont3841838419_ ___stx3839938400_))))
                               (___match3851838519_
                                (lambda (_e1575715851_
                                         ___splice3841438415_
                                         _target1575815855_
                                         _tl1576015858_)
                                  (letrec ((_loop1576115861_
                                            (lambda (_hd1575915865_
                                                     _e1576515868_)
                                              (if (gx#stx-pair? _hd1575915865_)
                                                  (let ((_e1576215871_
                                                         (gx#syntax-e
                                                          _hd1575915865_)))
                                                    (let ((_lp-tl1576415878_
                                                           (##cdr _e1576215871_))
                                                          (_lp-hd1576315875_
                                                           (##car _e1576215871_)))
                                                      (_loop1576115861_
                                                       _lp-tl1576415878_
                                                       (cons _lp-hd1576315875_
                                                             _e1576515868_))))
                                                  (let ((_e1576615881_
                                                         (reverse _e1576515868_)))
                                                    (___kont3841238413_
                                                     _e1576615881_))))))
                                    (_loop1576115861_
                                     _target1575815855_
                                     '()))))
                               (_g1571415938_
                                (lambda ()
                                  (if (gx#stx-vector? ___stx3839938400_)
                                      (let ((_e1575715851_
                                             (vector->list
                                              (gx#syntax-e
                                               ___stx3839938400_))))
                                        (if (gx#stx-pair/null? _e1575715851_)
                                            (let ((___splice3841438415_
                                                   (gx#syntax-split-splice
                                                    _e1575715851_
                                                    '0)))
                                              (let ((_tl1576015858_
                                                     (##vector-ref
                                                      ___splice3841438415_
                                                      '1))
                                                    (_target1575815855_
                                                     (##vector-ref
                                                      ___splice3841438415_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl1576015858_)
                                                    (___match3851838519_
                                                     _e1575715851_
                                                     ___splice3841438415_
                                                     _target1575815855_
                                                     _tl1576015858_)
                                                    (___kont3841838419_
                                                     ___stx3839938400_))))
                                            (___kont3841838419_
                                             ___stx3839938400_)))
                                      (_g1571515844_)))))
                          (if (gx#stx-pair? ___stx3839938400_)
                              (let ((_e1572016266_
                                     (gx#syntax-e ___stx3839938400_)))
                                (let ((_tl1572216273_ (##cdr _e1572016266_))
                                      (_hd1572116270_ (##car _e1572016266_)))
                                  (if (gx#identifier? _hd1572116270_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<sugar>$<sugar:2>[1]#_g41846_|
                                           _hd1572116270_)
                                          (if (gx#stx-pair? _tl1572216273_)
                                              (let ((_e1572316276_
                                                     (gx#syntax-e
                                                      _tl1572216273_)))
                                                (let ((_tl1572516283_
                                                       (##cdr _e1572316276_))
                                                      (_hd1572416280_
                                                       (##car _e1572316276_)))
                                                  (if (gx#stx-null?
                                                       _tl1572516283_)
                                                      (___kont3840238403_
                                                       _hd1572416280_)
                                                      (___kont3841038411_
                                                       _tl1572216273_
                                                       _hd1572116270_))))
                                              (___kont3841038411_
                                               _tl1572216273_
                                               _hd1572116270_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<sugar>$<sugar:2>[1]#_g41847_|
                                               _hd1572116270_)
                                              (if (gx#stx-pair? _tl1572216273_)
                                                  (let ((_e1573016205_
                                                         (gx#syntax-e
                                                          _tl1572216273_)))
                                                    (let ((_tl1573216212_
                                                           (##cdr _e1573016205_))
                                                          (_hd1573116209_
                                                           (##car _e1573016205_)))
                                                      (if (gx#stx-null?
                                                           _tl1573216212_)
                                                          (___kont3840438405_
                                                           _hd1573116209_)
                                                          (___kont3841038411_
                                                           _tl1572216273_
                                                           _hd1572116270_))))
                                                  (___kont3841038411_
                                                   _tl1572216273_
                                                   _hd1572116270_))
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<sugar>$<sugar:2>[1]#_g41848_|
                                                   _hd1572116270_)
                                                  (if (gx#stx-pair?
                                                       _tl1572216273_)
                                                      (let ((_e1573716134_
                                                             (gx#syntax-e
                                                              _tl1572216273_)))
                                                        (let ((_tl1573916141_
                                                               (##cdr _e1573716134_))
                                                              (_hd1573816138_
                                                               (##car _e1573716134_)))
                                                          (if (gx#stx-null?
                                                               _tl1573916141_)
                                                              (___kont3840638407_
                                                               _hd1573816138_)
                                                              (___kont3841038411_
                                                               _tl1572216273_
                                                               _hd1572116270_))))
                                                      (___kont3841038411_
                                                       _tl1572216273_
                                                       _hd1572116270_))
                                                  (___kont3841038411_
                                                   _tl1572216273_
                                                   _hd1572116270_))))
                                      (if (gx#stx-pair? _hd1572116270_)
                                          (let ((_e1574516049_
                                                 (gx#syntax-e _hd1572116270_)))
                                            (let ((_tl1574716056_
                                                   (##cdr _e1574516049_))
                                                  (_hd1574616053_
                                                   (##car _e1574516049_)))
                                              (if (gx#identifier?
                                                   _hd1574616053_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<sugar>$<sugar:2>[1]#_g41849_|
                                                       _hd1574616053_)
                                                      (if (gx#stx-pair?
                                                           _tl1574716056_)
                                                          (let ((_e1574816059_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1574716056_)))
                    (let ((_tl1575016066_ (##cdr _e1574816059_))
                          (_hd1574916063_ (##car _e1574816059_)))
                      (if (gx#stx-null? _tl1575016066_)
                          (if (fxzero? _d15708_)
                              (let ((_L16069_ _tl1572216273_)
                                    (_L16071_ _hd1574916063_))
                                (___kont3840838409_ _L16069_ _L16071_))
                              (___kont3841038411_
                               _tl1572216273_
                               _hd1572116270_))
                          (___kont3841038411_ _tl1572216273_ _hd1572116270_))))
                  (___kont3841038411_ _tl1572216273_ _hd1572116270_))
              (___kont3841038411_ _tl1572216273_ _hd1572116270_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont3841038411_
                                                   _tl1572216273_
                                                   _hd1572116270_))))
                                          (___kont3841038411_
                                           _tl1572216273_
                                           _hd1572116270_)))))
                              (_g1571415938_))))))))
          (let* ((_g1564615660_
                  (lambda (_g1564715656_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1564715656_)))
                 (_g1564515702_
                  (lambda (_g1564715664_)
                    (if (gx#stx-pair? _g1564715664_)
                        (let ((_e1564915667_ (gx#syntax-e _g1564715664_)))
                          (let ((_hd1565015671_ (##car _e1564915667_))
                                (_tl1565115674_ (##cdr _e1564915667_)))
                            (if (gx#stx-pair? _tl1565115674_)
                                (let ((_e1565215677_
                                       (gx#syntax-e _tl1565115674_)))
                                  (let ((_hd1565315681_ (##car _e1565215677_))
                                        (_tl1565415684_ (##cdr _e1565215677_)))
                                    (if (gx#stx-null? _tl1565415684_)
                                        ((lambda (_L15687_)
                                           (if (_simple-quote?15642_ _L15687_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _L15687_ '()))
                                               (_generate15644_ _L15687_ '0)))
                                         _hd1565315681_)
                                        (_g1564615660_ _g1564715664_))))
                                (_g1564615660_ _g1564715664_))))
                        (_g1564615660_ _g1564715664_)))))
            (_g1564515702_ _stx15639_)))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#delay|
      (lambda (_$stx16574_)
        (let* ((___stx3852538526_ _$stx16574_)
               (_g1657916600_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3852538526_))))
          (let ((___kont3852838529_
                 (lambda (_L16668_)
                   (cons (gx#datum->syntax '#f 'quote) (cons _L16668_ '()))))
                (___kont3853038531_
                 (lambda (_L16627_)
                   (cons (gx#datum->syntax '#f 'make-promise)
                         (cons (cons (gx#datum->syntax '#f 'lambda%)
                                     (cons '() (cons _L16627_ '())))
                               '())))))
            (let ((___match3854638547_
                   (lambda (_e1658216648_
                            _hd1658316652_
                            _tl1658416655_
                            _e1658516658_
                            _hd1658616662_
                            _tl1658716665_)
                     (let ((_L16668_ _hd1658616662_))
                       (if (gx#stx-datum? _L16668_)
                           (___kont3852838529_ _L16668_)
                           (___kont3853038531_ _hd1658616662_))))))
              (if (gx#stx-pair? ___stx3852538526_)
                  (let ((_e1658216648_ (gx#syntax-e ___stx3852538526_)))
                    (let ((_tl1658416655_ (##cdr _e1658216648_))
                          (_hd1658316652_ (##car _e1658216648_)))
                      (if (gx#stx-pair? _tl1658416655_)
                          (let ((_e1658516658_ (gx#syntax-e _tl1658416655_)))
                            (let ((_tl1658716665_ (##cdr _e1658516658_))
                                  (_hd1658616662_ (##car _e1658516658_)))
                              (if (gx#stx-null? _tl1658716665_)
                                  (___match3854638547_
                                   _e1658216648_
                                   _hd1658316652_
                                   _tl1658416655_
                                   _e1658516658_
                                   _hd1658616662_
                                   _tl1658716665_)
                                  (_g1657916600_))))
                          (_g1657916600_))))
                  (_g1657916600_)))))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#cut|
      (lambda (_stx16685_)
        (letrec ((_generate16688_
                  (lambda (_rest16807_)
                    (let _lp16810_ ((_rest16813_ _rest16807_)
                                    (_hd16815_ '())
                                    (_body16816_ '()))
                      (let* ((___stx3858338584_ _rest16813_)
                             (_g1681916831_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx3858338584_))))
                        (let ((___kont3858638587_
                               (lambda (_L16859_ _L16861_)
                                 (let* ((___stx3856338564_ _L16861_)
                                        (_g1687816885_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            ___stx3856338564_))))
                                   (let ((___kont3856638567_
                                          (lambda ()
                                            (let ((_arg16921_ (gx#genident)))
                                              (_lp16810_
                                               _L16859_
                                               (cons _arg16921_ _hd16815_)
                                               (cons _arg16921_
                                                     _body16816_)))))
                                         (___kont3856838569_
                                          (lambda ()
                                            (if (gx#stx-null? _L16859_)
                                                (let ((_tail16907_
                                                       (gx#genident)))
                                                  (values (foldl cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tail16907_
                         _hd16815_)
                  (foldl cons (list _tail16907_) _body16816_)
                  '#t))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _stx16685_
                                                 _L16861_))))
                                         (___kont3857038571_
                                          (lambda ()
                                            (_lp16810_
                                             _L16859_
                                             _hd16815_
                                             (cons _L16861_ _body16816_)))))
                                     (if (gx#identifier? ___stx3856338564_)
                                         (if (gx#free-identifier=?
                                              |gerbil/core$<sugar>$<sugar:2>[1]#_g41850_|
                                              ___stx3856338564_)
                                             (___kont3856638567_)
                                             (if (gx#free-identifier=?
                                                  |gerbil/core$<sugar>$<sugar:2>[1]#_g41851_|
                                                  ___stx3856338564_)
                                                 (___kont3856838569_)
                                                 (___kont3857038571_)))
                                         (___kont3857038571_))))))
                              (___kont3858838589_
                               (lambda ()
                                 (values (reverse _hd16815_)
                                         (reverse _body16816_)
                                         '#f))))
                          (if (gx#stx-pair? ___stx3858338584_)
                              (let ((_e1682316849_
                                     (gx#syntax-e ___stx3858338584_)))
                                (let ((_tl1682516856_ (##cdr _e1682316849_))
                                      (_hd1682416853_ (##car _e1682316849_)))
                                  (___kont3858638587_
                                   _tl1682516856_
                                   _hd1682416853_)))
                              (___kont3858838589_))))))))
          (let* ((_g1669116702_
                  (lambda (_g1669216698_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1669216698_)))
                 (_g1669016803_
                  (lambda (_g1669216706_)
                    (if (gx#stx-pair? _g1669216706_)
                        (let ((_e1669416709_ (gx#syntax-e _g1669216706_)))
                          (let ((_hd1669516713_ (##car _e1669416709_))
                                (_tl1669616716_ (##cdr _e1669416709_)))
                            ((lambda (_L16719_)
                               (if (and (gx#stx-list? _L16719_)
                                        (not (gx#stx-null? _L16719_)))
                                   (let ((_g41852_ (_generate16688_ _L16719_)))
                                     (begin
                                       (let ((_g41853_
                                              (if (##values? _g41852_)
                                                  (##vector-length _g41852_)
                                                  1)))
                                         (if (not (##fx= _g41853_ 3))
                                             (error "Context expects 3 values"
                                                    _g41853_)))
                                       (let ((_hd16732_
                                              (##vector-ref _g41852_ 0))
                                             (_body16734_
                                              (##vector-ref _g41852_ 1))
                                             (_tail?16735_
                                              (##vector-ref _g41852_ 2)))
                                         (let* ((_g1673716745_
                                                 (lambda (_g1673816741_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1673816741_)))
                                                (_g1673616799_
                                                 (lambda (_g1673816749_)
                                                   ((lambda (_L16752_)
                                                      (let ()
                                                        (let* ((_g1676516773_
                                                                (lambda (_g1676616769_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1676616769_)))
                       (_g1676416795_
                        (lambda (_g1676616777_)
                          ((lambda (_L16780_)
                             (let ()
                               (let ()
                                 (if _tail?16735_
                                     (cons (gx#datum->syntax '#f 'lambda%)
                                           (cons _L16752_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'apply)
                                                             _L16780_)
                                                       '())))
                                     (cons (gx#datum->syntax '#f 'lambda%)
                                           (cons _L16752_
                                                 (cons _L16780_ '())))))))
                           _g1676616777_))))
                  (_g1676416795_ _body16734_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1673816749_))))
                                           (_g1673616799_ _hd16732_)))))
                                   (_g1669116702_ _g1669216706_)))
                             _tl1669616716_)))
                        (_g1669116702_ _g1669216706_)))))
            (_g1669016803_ _stx16685_)))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#<>|
      (lambda (_$stx16933_)
        (let ((_g1693616943_
               (lambda (_g1693716939_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1693716939_))))
          (_g1693616943_ _$stx16933_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#<...>|
      (lambda (_$stx16947_)
        (let ((_g1695016957_
               (lambda (_g1695116953_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1695116953_))))
          (_g1695016957_ _$stx16947_))))))
