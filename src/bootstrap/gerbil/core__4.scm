(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g41262_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g41263_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g41264_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g41300_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g41301_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g41302_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g41307_|
    (##structure
     gx#syntax-quote::t
     'unquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g41308_|
    (##structure
     gx#syntax-quote::t
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g41309_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g41310_|
    (##structure
     gx#syntax-quote::t
     'unquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g41311_|
    (##structure
     gx#syntax-quote::t
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g41312_|
    (##structure
     gx#syntax-quote::t
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g41313_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g41314_|
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
                      (let* ((___stx3668036681_ _rest8181_)
                             (_g81868198_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx3668036681_))))
                        (let ((___kont3668336684_
                               (lambda (_L8230_ _L8232_)
                                 (let* ((___stx3665636657_ _L8232_)
                                        (_g82488262_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            ___stx3665636657_))))
                                   (let ((___kont3665936660_
                                          (lambda (_L8300_)
                                            (_lp8178_ _L8230_ '#t)))
                                         (___kont3666136662_
                                          (lambda ()
                                            (if (gx#identifier? _L8232_)
                                                (if (not _opt?8183_)
                                                    (_lp8178_ _L8230_ '#f)
                                                    '#f)
                                                '#f))))
                                     (let ((___match3667736678_
                                            (lambda (_e82518280_
                                                     _hd82528284_
                                                     _tl82538287_
                                                     _e82548290_
                                                     _hd82558294_
                                                     _tl82568297_)
                                              (let ((_L8300_ _hd82528284_))
                                                (if (gx#identifier? _L8300_)
                                                    (___kont3665936660_
                                                     _L8300_)
                                                    (___kont3666136662_))))))
                                       (if (gx#stx-pair? ___stx3665636657_)
                                           (let ((_e82518280_
                                                  (gx#syntax-e
                                                   ___stx3665636657_)))
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
                                                           (___match3667736678_
                                                            _e82518280_
                                                            _hd82528284_
                                                            _tl82538287_
                                                            _e82548290_
                                                            _hd82558294_
                                                            _tl82568297_)
                                                           (___kont3666136662_))))
                                                   (___kont3666136662_))))
                                           (___kont3666136662_)))))))
                              (___kont3668536686_
                               (lambda ()
                                 (if _opt?8183_
                                     (let ((_$e8209_
                                            (gx#stx-null? _rest8181_)))
                                       (if _$e8209_
                                           _$e8209_
                                           (gx#identifier? _rest8181_)))
                                     '#f))))
                          (if (gx#stx-pair? ___stx3668036681_)
                              (let ((_e81908220_
                                     (gx#syntax-e ___stx3668036681_)))
                                (let ((_tl81928227_ (##cdr _e81908220_))
                                      (_hd81918224_ (##car _e81908220_)))
                                  (___kont3668336684_
                                   _tl81928227_
                                   _hd81918224_)))
                              (___kont3668536686_)))))))
                 (_opt-lambda-split4929_
                  (lambda (_hd8027_)
                    (let _lp8030_ ((_rest8033_ _hd8027_)
                                   (_pre8035_ '())
                                   (_opt8036_ '()))
                      (let* ((___stx3672036721_ _rest8033_)
                             (_g80398051_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx3672036721_))))
                        (let ((___kont3672336724_
                               (lambda (_L8079_ _L8081_)
                                 (let* ((___stx3669636697_ _L8081_)
                                        (_g80978112_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            ___stx3669636697_))))
                                   (let ((___kont3669936700_
                                          (lambda (_L8150_ _L8152_)
                                            (_lp8030_
                                             _L8079_
                                             _pre8035_
                                             (cons (cons (_generate-bind4932_
                                                          _L8152_)
                                                         _L8150_)
                                                   _opt8036_))))
                                         (___kont3670136702_
                                          (lambda ()
                                            (_lp8030_
                                             _L8079_
                                             (cons (_generate-bind4932_
                                                    _L8081_)
                                                   _pre8035_)
                                             _opt8036_))))
                                     (if (gx#stx-pair? ___stx3669636697_)
                                         (let ((_e81018130_
                                                (gx#syntax-e
                                                 ___stx3669636697_)))
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
                                                         (___kont3669936700_
                                                          _hd81058144_
                                                          _hd81028134_)
                                                         (___kont3670136702_))))
                                                 (___kont3670136702_))))
                                         (___kont3670136702_))))))
                              (___kont3672536726_
                               (lambda ()
                                 (values (reverse _pre8035_)
                                         (reverse _opt8036_)
                                         (if (gx#identifier? _rest8033_)
                                             (_generate-bind4932_ _rest8033_)
                                             _rest8033_)))))
                          (if (gx#stx-pair? ___stx3672036721_)
                              (let ((_e80438069_
                                     (gx#syntax-e ___stx3672036721_)))
                                (let ((_tl80458076_ (##cdr _e80438069_))
                                      (_hd80448073_ (##car _e80438069_)))
                                  (___kont3672336724_
                                   _tl80458076_
                                   _hd80448073_)))
                              (___kont3672536726_)))))))
                 (_kw-lambda?4930_
                  (lambda (_hd7695_)
                    (let _lp7698_ ((_rest7701_ _hd7695_)
                                   (_opt?7703_ '#f)
                                   (_key?7704_ '#f))
                      (let* ((___stx3678436785_ _rest7701_)
                             (_g77097739_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx3678436785_))))
                        (let ((___kont3678736788_
                               (lambda (_L7934_ _L7936_ _L7937_)
                                 (let* ((___stx3676036761_ _L7936_)
                                        (_g79527966_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            ___stx3676036761_))))
                                   (let ((___kont3676336764_
                                          (lambda (_L8004_)
                                            (if (gx#identifier? _L8004_)
                                                (_lp7698_
                                                 _L7934_
                                                 _opt?7703_
                                                 '#t)
                                                '#f)))
                                         (___kont3676536766_
                                          (lambda ()
                                            (if (gx#identifier? _L7936_)
                                                (_lp7698_
                                                 _L7934_
                                                 _opt?7703_
                                                 '#t)
                                                '#f))))
                                     (if (gx#stx-pair? ___stx3676036761_)
                                         (let ((_e79557984_
                                                (gx#syntax-e
                                                 ___stx3676036761_)))
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
                                                         (___kont3676336764_
                                                          _hd79567988_)
                                                         (___kont3676536766_))))
                                                 (___kont3676536766_))))
                                         (___kont3676536766_))))))
                              (___kont3678936790_
                               (lambda (_L7891_ _L7893_)
                                 (if (gx#identifier? _L7893_)
                                     (_lp7698_ _L7891_ _opt?7703_ '#t)
                                     '#f)))
                              (___kont3679136792_
                               (lambda (_L7771_ _L7773_)
                                 (let* ((___stx3673636737_ _L7773_)
                                        (_g77897803_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            ___stx3673636737_))))
                                   (let ((___kont3673936740_
                                          (lambda (_L7841_)
                                            (if (gx#identifier? _L7841_)
                                                (_lp7698_
                                                 _L7771_
                                                 '#t
                                                 _key?7704_)
                                                '#f)))
                                         (___kont3674136742_
                                          (lambda ()
                                            (if (gx#identifier? _L7773_)
                                                (if (not _opt?7703_)
                                                    (_lp7698_
                                                     _L7771_
                                                     '#f
                                                     _key?7704_)
                                                    '#f)
                                                '#f))))
                                     (if (gx#stx-pair? ___stx3673636737_)
                                         (let ((_e77927821_
                                                (gx#syntax-e
                                                 ___stx3673636737_)))
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
                                                         (___kont3673936740_
                                                          _hd77937825_)
                                                         (___kont3674136742_))))
                                                 (___kont3674136742_))))
                                         (___kont3674136742_))))))
                              (___kont3679336794_
                               (lambda ()
                                 (if _key?7704_
                                     (let ((_$e7750_
                                            (gx#stx-null? _rest7701_)))
                                       (if _$e7750_
                                           _$e7750_
                                           (gx#identifier? _rest7701_)))
                                     '#f))))
                          (let ((___match3680736808_
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
                                         (___kont3678736788_
                                          _L7934_
                                          _L7936_
                                          _L7937_)
                                         (if (gx#stx-datum? _hd77157918_)
                                             (let ((_e77257877_
                                                    (gx#stx-e _hd77157918_)))
                                               (if (equal? _e77257877_ '#!key)
                                                   (___kont3678936790_
                                                    _tl77197931_
                                                    _hd77187928_)
                                                   (___kont3679136792_
                                                    _tl77167921_
                                                    _hd77157918_)))
                                             (___kont3679136792_
                                              _tl77167921_
                                              _hd77157918_)))))))
                            (if (gx#stx-pair? ___stx3678436785_)
                                (let ((_e77147914_
                                       (gx#syntax-e ___stx3678436785_)))
                                  (let ((_tl77167921_ (##cdr _e77147914_))
                                        (_hd77157918_ (##car _e77147914_)))
                                    (if (gx#stx-pair? _tl77167921_)
                                        (let ((_e77177924_
                                               (gx#syntax-e _tl77167921_)))
                                          (let ((_tl77197931_
                                                 (##cdr _e77177924_))
                                                (_hd77187928_
                                                 (##car _e77177924_)))
                                            (___match3680736808_
                                             _e77147914_
                                             _hd77157918_
                                             _tl77167921_
                                             _e77177924_
                                             _hd77187928_
                                             _tl77197931_)))
                                        (if (gx#stx-datum? _hd77157918_)
                                            (let ((_e77257877_
                                                   (gx#stx-e _hd77157918_)))
                                              (___kont3679136792_
                                               _tl77167921_
                                               _hd77157918_))
                                            (___kont3679136792_
                                             _tl77167921_
                                             _hd77157918_)))))
                                (___kont3679336794_))))))))
                 (_kw-lambda-split4931_
                  (lambda (_hd7428_)
                    (let _lp7431_ ((_rest7434_ _hd7428_)
                                   (_kwvar7436_ '#f)
                                   (_kwargs7437_ '())
                                   (_args7438_ '()))
                      (let* ((___stx3685836859_ _rest7434_)
                             (_g74437473_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx3685836859_))))
                        (let ((___kont3686136862_
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
                                       (let* ((___stx3683436835_ _L7594_)
                                              (_g76167631_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  ___stx3683436835_))))
                                         (let ((___kont3683736838_
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
                                               (___kont3683936840_
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
                                           (if (gx#stx-pair? ___stx3683436835_)
                                               (let ((_e76207649_
                                                      (gx#syntax-e
                                                       ___stx3683436835_)))
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
                                                               (___kont3683736838_
                                                                _hd76247663_
                                                                _hd76217653_)
                                                               (___kont3683936840_))))
                                                       (___kont3683936840_))))
                                               (___kont3683936840_))))))))
                              (___kont3686336864_
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
                              (___kont3686536866_
                               (lambda (_L7501_ _L7503_)
                                 (_lp7431_
                                  _L7501_
                                  _kwvar7436_
                                  _kwargs7437_
                                  (cons _L7503_ _args7438_))))
                              (___kont3686736868_
                               (lambda ()
                                 (values _kwvar7436_
                                         (reverse _kwargs7437_)
                                         (foldl cons _rest7434_ _args7438_)))))
                          (let ((___match3688136882_
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
                                         (___kont3686136862_
                                          _L7592_
                                          _L7594_
                                          _L7595_)
                                         (if (gx#stx-datum? _hd74497576_)
                                             (let ((_e74597535_
                                                    (gx#stx-e _hd74497576_)))
                                               (if (equal? _e74597535_ '#!key)
                                                   (___kont3686336864_
                                                    _tl74537589_
                                                    _hd74527586_)
                                                   (___kont3686536866_
                                                    _tl74507579_
                                                    _hd74497576_)))
                                             (___kont3686536866_
                                              _tl74507579_
                                              _hd74497576_)))))))
                            (if (gx#stx-pair? ___stx3685836859_)
                                (let ((_e74487572_
                                       (gx#syntax-e ___stx3685836859_)))
                                  (let ((_tl74507579_ (##cdr _e74487572_))
                                        (_hd74497576_ (##car _e74487572_)))
                                    (if (gx#stx-pair? _tl74507579_)
                                        (let ((_e74517582_
                                               (gx#syntax-e _tl74507579_)))
                                          (let ((_tl74537589_
                                                 (##cdr _e74517582_))
                                                (_hd74527586_
                                                 (##car _e74517582_)))
                                            (___match3688136882_
                                             _e74487572_
                                             _hd74497576_
                                             _tl74507579_
                                             _e74517582_
                                             _hd74527586_
                                             _tl74537589_)))
                                        (if (gx#stx-datum? _hd74497576_)
                                            (let ((_e74597535_
                                                   (gx#stx-e _hd74497576_)))
                                              (___kont3686536866_
                                               _tl74507579_
                                               _hd74497576_))
                                            (___kont3686536866_
                                             _tl74507579_
                                             _hd74497576_)))))
                                (___kont3686736868_))))))))
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
                        (let* ((___stx3693236933_ _rest7131_)
                               (_g71367148_
                                (lambda ()
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   ___stx3693236933_))))
                          (let ((___kont3693536936_
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
                            (let* ((___stx3690836909_ _L7284_)
                                   (_g72967310_
                                    (lambda ()
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       ___stx3690836909_))))
                              (let ((___kont3691136912_
                                     (lambda (_L7348_)
                                       (_lp7128_
                                        _L7282_
                                        (_cons-id7125_ _L7348_ _ids7133_))))
                                    (___kont3691336914_
                                     (lambda ()
                                       (_lp7128_
                                        _L7282_
                                        (_cons-id7125_ _L7284_ _ids7133_)))))
                                (if (gx#stx-pair? ___stx3690836909_)
                                    (let ((_e72997328_
                                           (gx#syntax-e ___stx3690836909_)))
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
                                                    (___kont3691136912_
                                                     _hd73007332_)
                                                    (___kont3691336914_))))
                                            (___kont3691336914_))))
                                    (___kont3691336914_)))))
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
                                (___kont3693736938_
                                 (lambda ()
                                   (gx#check-duplicate-identifiers
                                    (if (gx#stx-null? _rest7131_)
                                        _ids7133_
                                        (_cons-id7125_ _rest7131_ _ids7133_))
                                    _stx4923_))))
                            (if (gx#stx-pair? ___stx3693236933_)
                                (let ((_e71407166_
                                       (gx#syntax-e ___stx3693236933_)))
                                  (let ((_tl71427173_ (##cdr _e71407166_))
                                        (_hd71417170_ (##car _e71407166_)))
                                    (___kont3693536936_
                                     _tl71427173_
                                     _hd71417170_)))
                                (___kont3693736938_))))))))
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
                                          (let ((_g41232_
                                                 (gx#syntax-split-splice
                                                  _hd69276972_
                                                  '0)))
                                            (begin
                                              (let ((_g41233_
                                                     (if (##values? _g41232_)
                                                         (##vector-length
                                                          _g41232_)
                                                         1)))
                                                (if (not (##fx= _g41233_ 2))
                                                    (error "Context expects 2 values"
                                                           _g41233_)))
                                              (let ((_target69296978_
                                                     (##vector-ref _g41232_ 0))
                                                    (_tl69316981_
                                                     (##vector-ref
                                                      _g41232_
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
                                          (let ((_g41234_
                                                 (gx#syntax-split-splice
                                                  _hd69397012_
                                                  '0)))
                                            (begin
                                              (let ((_g41235_
                                                     (if (##values? _g41234_)
                                                         (##vector-length
                                                          _g41234_)
                                                         1)))
                                                (if (not (##fx= _g41235_ 2))
                                                    (error "Context expects 2 values"
                                                           _g41235_)))
                                              (let ((_target69417018_
                                                     (##vector-ref _g41234_ 0))
                                                    (_tl69437021_
                                                     (##vector-ref
                                                      _g41234_
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
                                        (let ((_g41236_
                                               (gx#syntax-split-splice
                                                _g64886508_
                                                '0)))
                                          (begin
                                            (let ((_g41237_
                                                   (if (##values? _g41236_)
                                                       (##vector-length
                                                        _g41236_)
                                                       1)))
                                              (if (not (##fx= _g41237_ 2))
                                                  (error "Context expects 2 values"
                                                         _g41237_)))
                                            (let ((_target64906511_
                                                   (##vector-ref _g41236_ 0))
                                                  (_tl64926514_
                                                   (##vector-ref _g41236_ 1)))
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
                                               (let ((_g41238_
                                                      (gx#syntax-split-splice
                                                       _g65636583_
                                                       '0)))
                                                 (begin
                                                   (let ((_g41239_
                                                          (if (##values?
                                                               _g41238_)
                                                              (##vector-length
                                                               _g41238_)
                                                              1)))
                                                     (if (not (##fx= _g41239_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                 (error "Context expects 2 values" _g41239_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target65656586_
                                                          (##vector-ref
                                                           _g41238_
                                                           0))
                                                         (_tl65676589_
                                                          (##vector-ref
                                                           _g41238_
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
                                                    (let ((_g41240_
                                                           (gx#syntax-split-splice
                                                            _hd66986743_
                                                            '0)))
                                                      (begin
                                                        (let ((_g41241_
                                                               (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g41240_)
                           (##vector-length _g41240_)
                           1)))
                  (if (not (##fx= _g41241_ 2))
                      (error "Context expects 2 values" _g41241_)))
                (let ((_target67006749_ (##vector-ref _g41240_ 0))
                      (_tl67026752_ (##vector-ref _g41240_ 1)))
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
                                                    (let ((_g41242_
                                                           (gx#syntax-split-splice
                                                            _hd67106783_
                                                            '0)))
                                                      (begin
                                                        (let ((_g41243_
                                                               (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g41242_)
                           (##vector-length _g41242_)
                           1)))
                  (if (not (##fx= _g41243_ 2))
                      (error "Context expects 2 values" _g41243_)))
                (let ((_target67126789_ (##vector-ref _g41242_ 0))
                      (_tl67146792_ (##vector-ref _g41242_ 1)))
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
                                                (let ((_g41244_
                                                       (gx#syntax-split-splice
                                                        _hd62886330_
                                                        '0)))
                                                  (begin
                                                    (let ((_g41245_
                                                           (if (##values?
                                                                _g41244_)
                                                               (##vector-length
                                                                _g41244_)
                                                               1)))
                                                      (if (not (##fx= _g41245_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                  (error "Context expects 2 values" _g41245_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target62906336_
                                                           (##vector-ref
                                                            _g41244_
                                                            0))
                                                          (_tl62926339_
                                                           (##vector-ref
                                                            _g41244_
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
                                                (let ((_g41246_
                                                       (gx#syntax-split-splice
                                                        _hd63006370_
                                                        '0)))
                                                  (begin
                                                    (let ((_g41247_
                                                           (if (##values?
                                                                _g41246_)
                                                               (##vector-length
                                                                _g41246_)
                                                               1)))
                                                      (if (not (##fx= _g41247_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                  (error "Context expects 2 values" _g41247_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target63026376_
                                                           (##vector-ref
                                                            _g41246_
                                                            0))
                                                          (_tl63046379_
                                                           (##vector-ref
                                                            _g41246_
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
                                                             (let ((_g41248_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _g58685888_ '0)))
                       (begin
                         (let ((_g41249_
                                (if (##values? _g41248_)
                                    (##vector-length _g41248_)
                                    1)))
                           (if (not (##fx= _g41249_ 2))
                               (error "Context expects 2 values" _g41249_)))
                         (let ((_target58705891_ (##vector-ref _g41248_ 0))
                               (_tl58725894_ (##vector-ref _g41248_ 1)))
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
                                                             (let ((_g41250_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _g56795699_ '0)))
                       (begin
                         (let ((_g41251_
                                (if (##values? _g41250_)
                                    (##vector-length _g41250_)
                                    1)))
                           (if (not (##fx= _g41251_ 2))
                               (error "Context expects 2 values" _g41251_)))
                         (let ((_target56815702_ (##vector-ref _g41250_ 0))
                               (_tl56835705_ (##vector-ref _g41250_ 1)))
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
          (let* ((___stx3694836949_ _stx4923_)
                 (_g49444975_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     ___stx3694836949_))))
            (let ((___kont3695136952_
                   (lambda (_L5407_ _L5409_)
                     (cons (gx#datum->syntax '#f 'lambda%)
                           (cons _L5409_ _L5407_))))
                  (___kont3695336954_
                   (lambda (_L5179_ _L5181_)
                     (let ((_g41252_ (_opt-lambda-split4929_ _L5181_)))
                       (begin
                         (let ((_g41253_
                                (if (##values? _g41252_)
                                    (##vector-length _g41252_)
                                    1)))
                           (if (not (##fx= _g41253_ 3))
                               (error "Context expects 3 values" _g41253_)))
                         (let ((_pre5194_ (##vector-ref _g41252_ 0))
                               (_opt5196_ (##vector-ref _g41252_ 1))
                               (_tail5197_ (##vector-ref _g41252_ 2)))
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
                               (let ((_g41254_
                                      (gx#syntax-split-splice _g52565276_ '0)))
                                 (begin
                                   (let ((_g41255_
                                          (if (##values? _g41254_)
                                              (##vector-length _g41254_)
                                              1)))
                                     (if (not (##fx= _g41255_ 2))
                                         (error "Context expects 2 values"
                                                _g41255_)))
                                   (let ((_target52585279_
                                          (##vector-ref _g41254_ 0))
                                         (_tl52605282_
                                          (##vector-ref _g41254_ 1)))
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
                  (___kont3695536956_
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
                                    (let ((_g41256_
                                           (_kw-lambda-split4931_ _L5004_)))
                                      (begin
                                        (let ((_g41257_
                                               (if (##values? _g41256_)
                                                   (##vector-length _g41256_)
                                                   1)))
                                          (if (not (##fx= _g41257_ 3))
                                              (error "Context expects 3 values"
                                                     _g41257_)))
                                        (let ((_key5040_
                                               (##vector-ref _g41256_ 0))
                                              (_kwargs5042_
                                               (##vector-ref _g41256_ 1))
                                              (_args5043_
                                               (##vector-ref _g41256_ 2)))
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
              (let* ((___match3699336994_
                      (lambda (_e49644982_
                               _hd49654986_
                               _tl49664989_
                               _e49674992_
                               _hd49684996_
                               _tl49694999_)
                        (let ((_L5002_ _tl49694999_) (_L5004_ _hd49684996_))
                          (if (_kw-lambda?4930_ _L5004_)
                              (___kont3695536956_ _L5002_ _L5004_)
                              (_g49444975_)))))
                     (___match3698136982_
                      (lambda (_e49565159_
                               _hd49575163_
                               _tl49585166_
                               _e49595169_
                               _hd49605173_
                               _tl49615176_)
                        (let ((_L5179_ _tl49615176_) (_L5181_ _hd49605173_))
                          (if (_opt-lambda?4928_ _L5181_)
                              (___kont3695336954_ _L5179_ _L5181_)
                              (___match3699336994_
                               _e49565159_
                               _hd49575163_
                               _tl49585166_
                               _e49595169_
                               _hd49605173_
                               _tl49615176_)))))
                     (___match3696936970_
                      (lambda (_e49485387_
                               _hd49495391_
                               _tl49505394_
                               _e49515397_
                               _hd49525401_
                               _tl49535404_)
                        (let ((_L5407_ _tl49535404_) (_L5409_ _hd49525401_))
                          (if (_simple-lambda?4926_ _L5409_)
                              (___kont3695136952_ _L5407_ _L5409_)
                              (___match3698136982_
                               _e49485387_
                               _hd49495391_
                               _tl49505394_
                               _e49515397_
                               _hd49525401_
                               _tl49535404_))))))
                (if (gx#stx-pair? ___stx3694836949_)
                    (let ((_e49485387_ (gx#syntax-e ___stx3694836949_)))
                      (let ((_tl49505394_ (##cdr _e49485387_))
                            (_hd49495391_ (##car _e49485387_)))
                        (if (gx#stx-pair? _tl49505394_)
                            (let ((_e49515397_ (gx#syntax-e _tl49505394_)))
                              (let ((_tl49535404_ (##cdr _e49515397_))
                                    (_hd49525401_ (##car _e49515397_)))
                                (___match3696936970_
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
        (let* ((___stx3699636997_ _$stx8339_)
               (_g83448383_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3699636997_))))
          (let ((___kont3699937000_
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
                (___kont3700337004_
                 (lambda (_L8420_ _L8422_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _L8422_ '()) (cons _L8420_ '()))))))
            (let* ((___match3705137052_
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
                            (___kont3700337004_ _L8420_ _L8422_)
                            (_g83448383_)))))
                   (___match3704337044_
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
                                  (___match3705137052_
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
                   (___match3703137032_
                    (lambda (_e83498445_
                             _hd83508449_
                             _tl83518452_
                             _e83528455_
                             _hd83538459_
                             _tl83548462_
                             _e83558465_
                             _hd83568469_
                             _tl83578472_
                             ___splice3700137002_
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
                                              (___kont3699937000_
                                               _L8505_
                                               _L8507_
                                               _L8508_)
                                              (___match3704337044_
                                               _e83498445_
                                               _hd83508449_
                                               _tl83518452_
                                               _e83528455_
                                               _hd83538459_
                                               _tl83548462_))))))))
                        (_loop83618481_ _target83588475_ '())))))
              (if (gx#stx-pair? ___stx3699636997_)
                  (let ((_e83498445_ (gx#syntax-e ___stx3699636997_)))
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
                                          (let ((___splice3700137002_
                                                 (gx#syntax-split-splice
                                                  _tl83548462_
                                                  '0)))
                                            (let ((_tl83608478_
                                                   (##vector-ref
                                                    ___splice3700137002_
                                                    '1))
                                                  (_target83588475_
                                                   (##vector-ref
                                                    ___splice3700137002_
                                                    '0)))
                                              (if (gx#stx-null? _tl83608478_)
                                                  (___match3703137032_
                                                   _e83498445_
                                                   _hd83508449_
                                                   _tl83518452_
                                                   _e83528455_
                                                   _hd83538459_
                                                   _tl83548462_
                                                   _e83558465_
                                                   _hd83568469_
                                                   _tl83578472_
                                                   ___splice3700137002_
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
                                                              (___match3705137052_
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
                                                      (___match3705137052_
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
                                              (___match3705137052_
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
                                      (let ((_g41258_
                                             (gx#syntax-split-splice
                                              _tl85548593_
                                              '0)))
                                        (begin
                                          (let ((_g41259_
                                                 (if (##values? _g41258_)
                                                     (##vector-length _g41258_)
                                                     1)))
                                            (if (not (##fx= _g41259_ 2))
                                                (error "Context expects 2 values"
                                                       _g41259_)))
                                          (let ((_target85558596_
                                                 (##vector-ref _g41258_ 0))
                                                (_tl85578599_
                                                 (##vector-ref _g41258_ 1)))
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
                                      (let ((_g41260_
                                             (gx#syntax-split-splice
                                              _tl87538792_
                                              '0)))
                                        (begin
                                          (let ((_g41261_
                                                 (if (##values? _g41260_)
                                                     (##vector-length _g41260_)
                                                     1)))
                                            (if (not (##fx= _g41261_ 2))
                                                (error "Context expects 2 values"
                                                       _g41261_)))
                                          (let ((_target87548795_
                                                 (##vector-ref _g41260_ 0))
                                                (_tl87568798_
                                                 (##vector-ref _g41260_ 1)))
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
                      (let* ((___stx3715037151_ _rest11331_)
                             (_g1133811350_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx3715037151_))))
                        (let ((___kont3715337154_
                               (lambda (_L11382_ _L11384_)
                                 (let* ((___stx3705437055_ _L11384_)
                                        (_g1140211475_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            ___stx3705437055_))))
                                   (let ((___kont3705737058_
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
                                         (___kont3705937060_
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
                                         (___kont3706337064_
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
                                         (___kont3706737068_
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
                                     (let* ((___match3714737148_
                                             (lambda (_e1144911482_
                                                      _hd1145011486_
                                                      _tl1145111489_
                                                      ___splice3706937070_
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
                             (let ((___splice3707137072_
                                    (gx#syntax-split-splice
                                     _tl1145111489_
                                     '0)))
                               (let ((_tl1146311525_
                                      (##vector-ref ___splice3707137072_ '1))
                                     (_target1146111522_
                                      (##vector-ref ___splice3707137072_ '0)))
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
                                                       (___kont3706737068_
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
                                            (___match3713337134_
                                             (lambda (_e1142911605_
                                                      _hd1143011609_
                                                      _tl1143111612_
                                                      ___splice3706537066_
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
                                          |gerbil/core$<sugar>$<sugar:2>[1]#_g41262_|
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
                                                     (___kont3706337064_
                                                      _hd1144511659_
                                                      _datum1144011641_)
                                                     (___match3714737148_
                                                      _e1142911605_
                                                      _hd1143011609_
                                                      _tl1143111612_
                                                      ___splice3706537066_
                                                      _target1143211615_
                                                      _tl1143411618_))))
                                             (___match3714737148_
                                              _e1142911605_
                                              _hd1143011609_
                                              _tl1143111612_
                                              ___splice3706537066_
                                              _target1143211615_
                                              _tl1143411618_))
                                         (___match3714737148_
                                          _e1142911605_
                                          _hd1143011609_
                                          _tl1143111612_
                                          ___splice3706537066_
                                          _target1143211615_
                                          _tl1143411618_))
                                     (___match3714737148_
                                      _e1142911605_
                                      _hd1143011609_
                                      _tl1143111612_
                                      ___splice3706537066_
                                      _target1143211615_
                                      _tl1143411618_))))
                             (___match3714737148_
                              _e1142911605_
                              _hd1143011609_
                              _tl1143111612_
                              ___splice3706537066_
                              _target1143211615_
                              _tl1143411618_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1143511621_
                                                  _target1143211615_
                                                  '()))))
                                            (___match3711937120_
                                             (lambda (_e1141511740_
                                                      _hd1141611744_
                                                      _tl1141711747_
                                                      ___splice3706137062_
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
                         (___kont3705937060_ _body1142611776_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1142111756_
                                                  _target1141811750_
                                                  '())))))
                                       (if (gx#stx-pair? ___stx3705437055_)
                                           (let ((_e1140511810_
                                                  (gx#syntax-e
                                                   ___stx3705437055_)))
                                             (let ((_tl1140711817_
                                                    (##cdr _e1140511810_))
                                                   (_hd1140611814_
                                                    (##car _e1140511810_)))
                                               (if (gx#identifier?
                                                    _hd1140611814_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core$<sugar>$<sugar:2>[1]#_g41263_|
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
                                |gerbil/core$<sugar>$<sugar:2>[1]#_g41264_|
                                _hd1140911824_)
                               (if (gx#stx-pair? _tl1141011827_)
                                   (let ((_e1141111830_
                                          (gx#syntax-e _tl1141011827_)))
                                     (let ((_tl1141311837_
                                            (##cdr _e1141111830_))
                                           (_hd1141211834_
                                            (##car _e1141111830_)))
                                       (if (gx#stx-null? _tl1141311837_)
                                           (___kont3705737058_ _hd1141211834_)
                                           (if (gx#stx-pair/null?
                                                _tl1140711817_)
                                               (let ((___splice3706137062_
                                                      (gx#syntax-split-splice
                                                       _tl1140711817_
                                                       '0)))
                                                 (let ((_tl1142011753_
                                                        (##vector-ref
                                                         ___splice3706137062_
                                                         '1))
                                                       (_target1141811750_
                                                        (##vector-ref
                                                         ___splice3706137062_
                                                         '0)))
                                                   (if (gx#stx-null?
                                                        _tl1142011753_)
                                                       (___match3711937120_
                                                        _e1140511810_
                                                        _hd1140611814_
                                                        _tl1140711817_
                                                        ___splice3706137062_
                                                        _target1141811750_
                                                        _tl1142011753_)
                                                       (if (gx#stx-pair/null?
                                                            _hd1140611814_)
                                                           (let ((___splice3706537066_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _hd1140611814_ '0)))
                     (let ((_tl1143411618_
                            (##vector-ref ___splice3706537066_ '1))
                           (_target1143211615_
                            (##vector-ref ___splice3706537066_ '0)))
                       (if (gx#stx-null? _tl1143411618_)
                           (___match3713337134_
                            _e1140511810_
                            _hd1140611814_
                            _tl1140711817_
                            ___splice3706537066_
                            _target1143211615_
                            _tl1143411618_)
                           (_g1140211475_))))
                   (_g1140211475_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-pair/null?
                                                    _hd1140611814_)
                                                   (let ((___splice3706537066_
                                                          (gx#syntax-split-splice
                                                           _hd1140611814_
                                                           '0)))
                                                     (let ((_tl1143411618_
                                                            (##vector-ref
                                                             ___splice3706537066_
                                                             '1))
                                                           (_target1143211615_
                                                            (##vector-ref
                                                             ___splice3706537066_
                                                             '0)))
                                                       (if (gx#stx-null?
                                                            _tl1143411618_)
                                                           (___match3713337134_
                                                            _e1140511810_
                                                            _hd1140611814_
                                                            _tl1140711817_
                                                            ___splice3706537066_
                                                            _target1143211615_
                                                            _tl1143411618_)
                                                           (_g1140211475_))))
                                                   (_g1140211475_))))))
                                   (if (gx#stx-pair/null? _tl1140711817_)
                                       (let ((___splice3706137062_
                                              (gx#syntax-split-splice
                                               _tl1140711817_
                                               '0)))
                                         (let ((_tl1142011753_
                                                (##vector-ref
                                                 ___splice3706137062_
                                                 '1))
                                               (_target1141811750_
                                                (##vector-ref
                                                 ___splice3706137062_
                                                 '0)))
                                           (if (gx#stx-null? _tl1142011753_)
                                               (___match3711937120_
                                                _e1140511810_
                                                _hd1140611814_
                                                _tl1140711817_
                                                ___splice3706137062_
                                                _target1141811750_
                                                _tl1142011753_)
                                               (if (gx#stx-pair/null?
                                                    _hd1140611814_)
                                                   (let ((___splice3706537066_
                                                          (gx#syntax-split-splice
                                                           _hd1140611814_
                                                           '0)))
                                                     (let ((_tl1143411618_
                                                            (##vector-ref
                                                             ___splice3706537066_
                                                             '1))
                                                           (_target1143211615_
                                                            (##vector-ref
                                                             ___splice3706537066_
                                                             '0)))
                                                       (if (gx#stx-null?
                                                            _tl1143411618_)
                                                           (___match3713337134_
                                                            _e1140511810_
                                                            _hd1140611814_
                                                            _tl1140711817_
                                                            ___splice3706537066_
                                                            _target1143211615_
                                                            _tl1143411618_)
                                                           (_g1140211475_))))
                                                   (_g1140211475_)))))
                                       (if (gx#stx-pair/null? _hd1140611814_)
                                           (let ((___splice3706537066_
                                                  (gx#syntax-split-splice
                                                   _hd1140611814_
                                                   '0)))
                                             (let ((_tl1143411618_
                                                    (##vector-ref
                                                     ___splice3706537066_
                                                     '1))
                                                   (_target1143211615_
                                                    (##vector-ref
                                                     ___splice3706537066_
                                                     '0)))
                                               (if (gx#stx-null?
                                                    _tl1143411618_)
                                                   (___match3713337134_
                                                    _e1140511810_
                                                    _hd1140611814_
                                                    _tl1140711817_
                                                    ___splice3706537066_
                                                    _target1143211615_
                                                    _tl1143411618_)
                                                   (_g1140211475_))))
                                           (_g1140211475_))))
                               (if (gx#stx-pair/null? _tl1140711817_)
                                   (let ((___splice3706137062_
                                          (gx#syntax-split-splice
                                           _tl1140711817_
                                           '0)))
                                     (let ((_tl1142011753_
                                            (##vector-ref
                                             ___splice3706137062_
                                             '1))
                                           (_target1141811750_
                                            (##vector-ref
                                             ___splice3706137062_
                                             '0)))
                                       (if (gx#stx-null? _tl1142011753_)
                                           (___match3711937120_
                                            _e1140511810_
                                            _hd1140611814_
                                            _tl1140711817_
                                            ___splice3706137062_
                                            _target1141811750_
                                            _tl1142011753_)
                                           (if (gx#stx-pair/null?
                                                _hd1140611814_)
                                               (let ((___splice3706537066_
                                                      (gx#syntax-split-splice
                                                       _hd1140611814_
                                                       '0)))
                                                 (let ((_tl1143411618_
                                                        (##vector-ref
                                                         ___splice3706537066_
                                                         '1))
                                                       (_target1143211615_
                                                        (##vector-ref
                                                         ___splice3706537066_
                                                         '0)))
                                                   (if (gx#stx-null?
                                                        _tl1143411618_)
                                                       (___match3713337134_
                                                        _e1140511810_
                                                        _hd1140611814_
                                                        _tl1140711817_
                                                        ___splice3706537066_
                                                        _target1143211615_
                                                        _tl1143411618_)
                                                       (_g1140211475_))))
                                               (_g1140211475_)))))
                                   (if (gx#stx-pair/null? _hd1140611814_)
                                       (let ((___splice3706537066_
                                              (gx#syntax-split-splice
                                               _hd1140611814_
                                               '0)))
                                         (let ((_tl1143411618_
                                                (##vector-ref
                                                 ___splice3706537066_
                                                 '1))
                                               (_target1143211615_
                                                (##vector-ref
                                                 ___splice3706537066_
                                                 '0)))
                                           (if (gx#stx-null? _tl1143411618_)
                                               (___match3713337134_
                                                _e1140511810_
                                                _hd1140611814_
                                                _tl1140711817_
                                                ___splice3706537066_
                                                _target1143211615_
                                                _tl1143411618_)
                                               (_g1140211475_))))
                                       (_g1140211475_))))
                           (if (gx#stx-pair/null? _tl1140711817_)
                               (let ((___splice3706137062_
                                      (gx#syntax-split-splice
                                       _tl1140711817_
                                       '0)))
                                 (let ((_tl1142011753_
                                        (##vector-ref ___splice3706137062_ '1))
                                       (_target1141811750_
                                        (##vector-ref
                                         ___splice3706137062_
                                         '0)))
                                   (if (gx#stx-null? _tl1142011753_)
                                       (___match3711937120_
                                        _e1140511810_
                                        _hd1140611814_
                                        _tl1140711817_
                                        ___splice3706137062_
                                        _target1141811750_
                                        _tl1142011753_)
                                       (if (gx#stx-pair/null? _hd1140611814_)
                                           (let ((___splice3706537066_
                                                  (gx#syntax-split-splice
                                                   _hd1140611814_
                                                   '0)))
                                             (let ((_tl1143411618_
                                                    (##vector-ref
                                                     ___splice3706537066_
                                                     '1))
                                                   (_target1143211615_
                                                    (##vector-ref
                                                     ___splice3706537066_
                                                     '0)))
                                               (if (gx#stx-null?
                                                    _tl1143411618_)
                                                   (___match3713337134_
                                                    _e1140511810_
                                                    _hd1140611814_
                                                    _tl1140711817_
                                                    ___splice3706537066_
                                                    _target1143211615_
                                                    _tl1143411618_)
                                                   (_g1140211475_))))
                                           (_g1140211475_)))))
                               (if (gx#stx-pair/null? _hd1140611814_)
                                   (let ((___splice3706537066_
                                          (gx#syntax-split-splice
                                           _hd1140611814_
                                           '0)))
                                     (let ((_tl1143411618_
                                            (##vector-ref
                                             ___splice3706537066_
                                             '1))
                                           (_target1143211615_
                                            (##vector-ref
                                             ___splice3706537066_
                                             '0)))
                                       (if (gx#stx-null? _tl1143411618_)
                                           (___match3713337134_
                                            _e1140511810_
                                            _hd1140611814_
                                            _tl1140711817_
                                            ___splice3706537066_
                                            _target1143211615_
                                            _tl1143411618_)
                                           (_g1140211475_))))
                                   (_g1140211475_))))))
                   (if (gx#stx-pair/null? _tl1140711817_)
                       (let ((___splice3706137062_
                              (gx#syntax-split-splice _tl1140711817_ '0)))
                         (let ((_tl1142011753_
                                (##vector-ref ___splice3706137062_ '1))
                               (_target1141811750_
                                (##vector-ref ___splice3706137062_ '0)))
                           (if (gx#stx-null? _tl1142011753_)
                               (___match3711937120_
                                _e1140511810_
                                _hd1140611814_
                                _tl1140711817_
                                ___splice3706137062_
                                _target1141811750_
                                _tl1142011753_)
                               (if (gx#stx-pair/null? _hd1140611814_)
                                   (let ((___splice3706537066_
                                          (gx#syntax-split-splice
                                           _hd1140611814_
                                           '0)))
                                     (let ((_tl1143411618_
                                            (##vector-ref
                                             ___splice3706537066_
                                             '1))
                                           (_target1143211615_
                                            (##vector-ref
                                             ___splice3706537066_
                                             '0)))
                                       (if (gx#stx-null? _tl1143411618_)
                                           (___match3713337134_
                                            _e1140511810_
                                            _hd1140611814_
                                            _tl1140711817_
                                            ___splice3706537066_
                                            _target1143211615_
                                            _tl1143411618_)
                                           (_g1140211475_))))
                                   (_g1140211475_)))))
                       (if (gx#stx-pair/null? _hd1140611814_)
                           (let ((___splice3706537066_
                                  (gx#syntax-split-splice _hd1140611814_ '0)))
                             (let ((_tl1143411618_
                                    (##vector-ref ___splice3706537066_ '1))
                                   (_target1143211615_
                                    (##vector-ref ___splice3706537066_ '0)))
                               (if (gx#stx-null? _tl1143411618_)
                                   (___match3713337134_
                                    _e1140511810_
                                    _hd1140611814_
                                    _tl1140711817_
                                    ___splice3706537066_
                                    _target1143211615_
                                    _tl1143411618_)
                                   (_g1140211475_))))
                           (_g1140211475_))))
               (if (gx#stx-pair/null? _hd1140611814_)
                   (let ((___splice3706537066_
                          (gx#syntax-split-splice _hd1140611814_ '0)))
                     (let ((_tl1143411618_
                            (##vector-ref ___splice3706537066_ '1))
                           (_target1143211615_
                            (##vector-ref ___splice3706537066_ '0)))
                       (if (gx#stx-null? _tl1143411618_)
                           (___match3713337134_
                            _e1140511810_
                            _hd1140611814_
                            _tl1140711817_
                            ___splice3706537066_
                            _target1143211615_
                            _tl1143411618_)
                           (_g1140211475_))))
                   (_g1140211475_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair/null?
                                                        _hd1140611814_)
                                                       (let ((___splice3706537066_
                                                              (gx#syntax-split-splice
                                                               _hd1140611814_
                                                               '0)))
                                                         (let ((_tl1143411618_
                                                                (##vector-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ___splice3706537066_
                         '1))
                       (_target1143211615_
                        (##vector-ref ___splice3706537066_ '0)))
                   (if (gx#stx-null? _tl1143411618_)
                       (___match3713337134_
                        _e1140511810_
                        _hd1140611814_
                        _tl1140711817_
                        ___splice3706537066_
                        _target1143211615_
                        _tl1143411618_)
                       (_g1140211475_))))
               (_g1140211475_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g1140211475_)))))))
                              (___kont3715537156_
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
                                   (if (gx#stx-null? ___stx3715037151_)
                                       (___kont3715537156_)
                                       (_g1133811350_)))))
                            (if (gx#stx-pair? ___stx3715037151_)
                                (let ((_e1134211372_
                                       (gx#syntax-e ___stx3715037151_)))
                                  (let ((_tl1134411379_ (##cdr _e1134211372_))
                                        (_hd1134311376_ (##car _e1134211372_)))
                                    (___kont3715337154_
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
                                     (let* ((___stx3716837169_ _datums11070_)
                                            (_g1107511096_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                ___stx3716837169_))))
                                       (let ((___kont3717137172_
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
                                             (___kont3717537176_
                                              (lambda () _default11038_)))
                                         (let ((___match3719137192_
                                                (lambda (_e1107911114_
                                                         _hd1108011118_
                                                         _tl1108111121_
                                                         ___splice3717337174_
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
                            (___kont3717137172_
                             _tl1108111121_
                             _datum1109011150_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1108511130_
                                                     _target1108211124_
                                                     '())))))
                                           (if (gx#stx-pair? ___stx3716837169_)
                                               (let ((_e1107911114_
                                                      (gx#syntax-e
                                                       ___stx3716837169_)))
                                                 (let ((_tl1108111121_
                                                        (##cdr _e1107911114_))
                                                       (_hd1108011118_
                                                        (##car _e1107911114_)))
                                                   (if (gx#stx-pair/null?
                                                        _hd1108011118_)
                                                       (let ((___splice3717337174_
                                                              (gx#syntax-split-splice
                                                               _hd1108011118_
                                                               '0)))
                                                         (let ((_tl1108411127_
                                                                (##vector-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ___splice3717337174_
                         '1))
                       (_target1108211124_
                        (##vector-ref ___splice3717337174_ '0)))
                   (if (gx#stx-null? _tl1108411127_)
                       (___match3719137192_
                        _e1107911114_
                        _hd1108011118_
                        _tl1108111121_
                        ___splice3717337174_
                        _target1108211124_
                        _tl1108411127_)
                       (___kont3717537176_))))
               (___kont3717537176_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont3717537176_))))))))
                               _g1104111052_))))
                      (_g1103911266_ _e11034_))))
                 (_datum-dispatch-index8870_
                  (lambda (_datums10906_)
                    (let _lp10909_ ((_rest10912_ _datums10906_)
                                    (_ix10914_ '0)
                                    (_r10915_ '()))
                      (let* ((___stx3719437195_ _rest10912_)
                             (_g1091810939_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx3719437195_))))
                        (let ((___kont3719737198_
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
                              (___kont3720137202_ (lambda () _r10915_)))
                          (let ((___match3721737218_
                                 (lambda (_e1092210957_
                                          _hd1092310961_
                                          _tl1092410964_
                                          ___splice3719937200_
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
                                                     (___kont3719737198_
                                                      _tl1092410964_
                                                      _datum1093310993_))))))
                                     (_loop1092810973_
                                      _target1092510967_
                                      '())))))
                            (if (gx#stx-pair? ___stx3719437195_)
                                (let ((_e1092210957_
                                       (gx#syntax-e ___stx3719437195_)))
                                  (let ((_tl1092410964_ (##cdr _e1092210957_))
                                        (_hd1092310961_ (##car _e1092210957_)))
                                    (if (gx#stx-pair/null? _hd1092310961_)
                                        (let ((___splice3719937200_
                                               (gx#syntax-split-splice
                                                _hd1092310961_
                                                '0)))
                                          (let ((_tl1092710970_
                                                 (##vector-ref
                                                  ___splice3719937200_
                                                  '1))
                                                (_target1092510967_
                                                 (##vector-ref
                                                  ___splice3719937200_
                                                  '0)))
                                            (if (gx#stx-null? _tl1092710970_)
                                                (___match3721737218_
                                                 _e1092210957_
                                                 _hd1092310961_
                                                 _tl1092410964_
                                                 ___splice3719937200_
                                                 _target1092510967_
                                                 _tl1092710970_)
                                                (___kont3720137202_))))
                                        (___kont3720137202_))))
                                (___kont3720137202_))))))))
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
                                (let ((_g41265_
                                       (gx#syntax-split-splice
                                        _hd1067110737_
                                        '0)))
                                  (begin
                                    (let ((_g41266_
                                           (if (##values? _g41265_)
                                               (##vector-length _g41265_)
                                               1)))
                                      (if (not (##fx= _g41266_ 2))
                                          (error "Context expects 2 values"
                                                 _g41266_)))
                                    (let ((_target1067310743_
                                           (##vector-ref _g41265_ 0))
                                          (_tl1067510746_
                                           (##vector-ref _g41265_ 1)))
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
                                    (let ((_g41267_
                                           (gx#syntax-split-splice
                                            _hd1020910275_
                                            '0)))
                                      (begin
                                        (let ((_g41268_
                                               (if (##values? _g41267_)
                                                   (##vector-length _g41267_)
                                                   1)))
                                          (if (not (##fx= _g41268_ 2))
                                              (error "Context expects 2 values"
                                                     _g41268_)))
                                        (let ((_target1021110281_
                                               (##vector-ref _g41267_ 0))
                                              (_tl1021310284_
                                               (##vector-ref _g41267_ 1)))
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
                            (let ((_g41269_
                                   (gx#syntax-split-splice _hd98289894_ '0)))
                              (begin
                                (let ((_g41270_
                                       (if (##values? _g41269_)
                                           (##vector-length _g41269_)
                                           1)))
                                  (if (not (##fx= _g41270_ 2))
                                      (error "Context expects 2 values"
                                             _g41270_)))
                                (let ((_target98309900_
                                       (##vector-ref _g41269_ 0))
                                      (_tl98329903_ (##vector-ref _g41269_ 1)))
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
                                (let ((_g41271_
                                       (gx#syntax-split-splice
                                        _hd95339599_
                                        '0)))
                                  (begin
                                    (let ((_g41272_
                                           (if (##values? _g41271_)
                                               (##vector-length _g41271_)
                                               1)))
                                      (if (not (##fx= _g41272_ 2))
                                          (error "Context expects 2 values"
                                                 _g41272_)))
                                    (let ((_target95359605_
                                           (##vector-ref _g41271_ 0))
                                          (_tl95379608_
                                           (##vector-ref _g41271_ 1)))
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
                            (let ((_g41273_
                                   (gx#syntax-split-splice _hd93089374_ '0)))
                              (begin
                                (let ((_g41274_
                                       (if (##values? _g41273_)
                                           (##vector-length _g41273_)
                                           1)))
                                  (if (not (##fx= _g41274_ 2))
                                      (error "Context expects 2 values"
                                             _g41274_)))
                                (let ((_target93109380_
                                       (##vector-ref _g41273_ 0))
                                      (_tl93129383_ (##vector-ref _g41273_ 1)))
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
                    (let ((_g41275_
                           (if (_eq-datums?8868_ _datums9013_)
                               (values eq?-hash 'eq?-hash 'eq?)
                               (values equal?-hash 'equal?-hash 'equal?))))
                      (begin
                        #!void
                        (let ((_hash-e9017_ (##vector-ref _g41275_ 0))
                              (_hashf9019_ (##vector-ref _g41275_ 1))
                              (_eqf9020_ (##vector-ref _g41275_ 2)))
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
                                  (let ((_g41276_
                                         (gx#syntax-split-splice
                                          _hd90519123_
                                          '0)))
                                    (begin
                                      (let ((_g41277_
                                             (if (##values? _g41276_)
                                                 (##vector-length _g41276_)
                                                 1)))
                                        (if (not (##fx= _g41277_ 2))
                                            (error "Context expects 2 values"
                                                   _g41277_)))
                                      (let ((_target90539129_
                                             (##vector-ref _g41276_ 0))
                                            (_tl90559132_
                                             (##vector-ref _g41276_ 1)))
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
                                        (let ((_g41278_
                                               (gx#syntax-split-splice
                                                _tl88968935_
                                                '0)))
                                          (begin
                                            (let ((_g41279_
                                                   (if (##values? _g41278_)
                                                       (##vector-length
                                                        _g41278_)
                                                       1)))
                                              (if (not (##fx= _g41279_ 2))
                                                  (error "Context expects 2 values"
                                                         _g41279_)))
                                            (let ((_target88978938_
                                                   (##vector-ref _g41278_ 0))
                                                  (_tl88998941_
                                                   (##vector-ref _g41278_ 1)))
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
                               (let ((_g41280_
                                      (_parse-clauses8861_
                                       _L8970_
                                       (foldr (lambda (_g89888991_ _g89898994_)
                                                (cons _g89888991_ _g89898994_))
                                              '()
                                              _L8968_))))
                                 (begin
                                   (let ((_g41281_
                                          (if (##values? _g41280_)
                                              (##vector-length _g41280_)
                                              1)))
                                     (if (not (##fx= _g41281_ 3))
                                         (error "Context expects 3 values"
                                                _g41281_)))
                                   (let ((_datums8997_
                                          (##vector-ref _g41280_ 0))
                                         (_dispatch8999_
                                          (##vector-ref _g41280_ 1))
                                         (_default9000_
                                          (##vector-ref _g41280_ 2)))
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
                                      (let ((_g41282_
                                             (gx#syntax-split-splice
                                              _tl1201312052_
                                              '0)))
                                        (begin
                                          (let ((_g41283_
                                                 (if (##values? _g41282_)
                                                     (##vector-length _g41282_)
                                                     1)))
                                            (if (not (##fx= _g41283_ 2))
                                                (error "Context expects 2 values"
                                                       _g41283_)))
                                          (let ((_target1201412055_
                                                 (##vector-ref _g41282_ 0))
                                                (_tl1201612058_
                                                 (##vector-ref _g41282_ 1)))
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
        (let* ((___stx3722037221_ _stx12118_)
               (_g1212512221_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3722037221_))))
          (let ((___kont3722337224_
                 (lambda (_L12698_ _L12700_)
                   (cons (gx#datum->syntax '#f 'quote) (cons '#!void '()))))
                (___kont3722537226_
                 (lambda (_L12640_ _L12642_ _L12643_) _L12640_))
                (___kont3722737228_
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
                (___kont3722937230_
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
                (___kont3723137232_
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
            (let ((___match3737737378_
                   (lambda (_e1219812228_
                            _hd1219912232_
                            _tl1220012235_
                            _e1220112238_
                            _hd1220212242_
                            _tl1220312245_
                            _e1220412248_
                            _hd1220512252_
                            _tl1220612255_
                            ___splice3723337234_
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
                                       (___kont3723137232_
                                        _K1221512284_
                                        _hd1220512252_
                                        _hd1220212242_))))))
                       (_loop1221012264_ _target1220712258_ '())))))
              (if (gx#stx-pair? ___stx3722037221_)
                  (let ((_e1212912668_ (gx#syntax-e ___stx3722037221_)))
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
                                          (___kont3722337224_
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
                                                      (___kont3722537226_
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
                          (___kont3722737228_
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
                                      (___kont3722937230_
                                       _hd1219312381_
                                       _hd1217012531_
                                       _hd1215112634_
                                       _hd1213612692_
                                       _hd1213312682_)
                                      (if (gx#stx-pair/null? _tl1213712695_)
                                          (let ((___splice3723337234_
                                                 (gx#syntax-split-splice
                                                  _tl1213712695_
                                                  '0)))
                                            (let ((_tl1220912261_
                                                   (##vector-ref
                                                    ___splice3723337234_
                                                    '1))
                                                  (_target1220712258_
                                                   (##vector-ref
                                                    ___splice3723337234_
                                                    '0)))
                                              (if (gx#stx-null? _tl1220912261_)
                                                  (___match3737737378_
                                                   _e1212912668_
                                                   _hd1213012672_
                                                   _tl1213112675_
                                                   _e1213212678_
                                                   _hd1213312682_
                                                   _tl1213412685_
                                                   _e1213512688_
                                                   _hd1213612692_
                                                   _tl1213712695_
                                                   ___splice3723337234_
                                                   _target1220712258_
                                                   _tl1220912261_)
                                                  (_g1212512221_))))
                                          (_g1212512221_)))))
                              (if (gx#stx-pair/null? _tl1213712695_)
                                  (let ((___splice3723337234_
                                         (gx#syntax-split-splice
                                          _tl1213712695_
                                          '0)))
                                    (let ((_tl1220912261_
                                           (##vector-ref
                                            ___splice3723337234_
                                            '1))
                                          (_target1220712258_
                                           (##vector-ref
                                            ___splice3723337234_
                                            '0)))
                                      (if (gx#stx-null? _tl1220912261_)
                                          (___match3737737378_
                                           _e1212912668_
                                           _hd1213012672_
                                           _tl1213112675_
                                           _e1213212678_
                                           _hd1213312682_
                                           _tl1213412685_
                                           _e1213512688_
                                           _hd1213612692_
                                           _tl1213712695_
                                           ___splice3723337234_
                                           _target1220712258_
                                           _tl1220912261_)
                                          (_g1212512221_))))
                                  (_g1212512221_))))))
                  (if (gx#stx-pair/null? _tl1213712695_)
                      (let ((___splice3723337234_
                             (gx#syntax-split-splice _tl1213712695_ '0)))
                        (let ((_tl1220912261_
                               (##vector-ref ___splice3723337234_ '1))
                              (_target1220712258_
                               (##vector-ref ___splice3723337234_ '0)))
                          (if (gx#stx-null? _tl1220912261_)
                              (___match3737737378_
                               _e1212912668_
                               _hd1213012672_
                               _tl1213112675_
                               _e1213212678_
                               _hd1213312682_
                               _tl1213412685_
                               _e1213512688_
                               _hd1213612692_
                               _tl1213712695_
                               ___splice3723337234_
                               _target1220712258_
                               _tl1220912261_)
                              (_g1212512221_))))
                      (_g1212512221_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _tl1213712695_)
                                                  (let ((___splice3723337234_
                                                         (gx#syntax-split-splice
                                                          _tl1213712695_
                                                          '0)))
                                                    (let ((_tl1220912261_
                                                           (##vector-ref
                                                            ___splice3723337234_
                                                            '1))
                                                          (_target1220712258_
                                                           (##vector-ref
                                                            ___splice3723337234_
                                                            '0)))
                                                      (if (gx#stx-null?
                                                           _tl1220912261_)
                                                          (___match3737737378_
                                                           _e1212912668_
                                                           _hd1213012672_
                                                           _tl1213112675_
                                                           _e1213212678_
                                                           _hd1213312682_
                                                           _tl1213412685_
                                                           _e1213512688_
                                                           _hd1213612692_
                                                           _tl1213712695_
                                                           ___splice3723337234_
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
                                                (let ((_g41284_
                                                       (gx#syntax-split-splice
                                                        _tl1273912788_
                                                        '0)))
                                                  (begin
                                                    (let ((_g41285_
                                                           (if (##values?
                                                                _g41284_)
                                                               (##vector-length
                                                                _g41284_)
                                                               1)))
                                                      (if (not (##fx= _g41285_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                  (error "Context expects 2 values" _g41285_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1274012791_
                                                           (##vector-ref
                                                            _g41284_
                                                            0))
                                                          (_tl1274212794_
                                                           (##vector-ref
                                                            _g41284_
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
                                              (_g41286_
                                               (_split12723_
                                                (foldr (lambda (_g1285912862_
                                                                _g1286012865_)
                                                         (cons _g1285912862_
                                                               _g1286012865_))
                                                       '()
                                                       _L12821_)
                                                _mid12857_)))
                                         (begin
                                           (let ((_g41287_
                                                  (if (##values? _g41286_)
                                                      (##vector-length
                                                       _g41286_)
                                                      1)))
                                             (if (not (##fx= _g41287_ 2))
                                                 (error "Context expects 2 values"
                                                        _g41287_)))
                                           (let ((_left12868_
                                                  (##vector-ref _g41286_ 0))
                                                 (_right12870_
                                                  (##vector-ref _g41286_ 1)))
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
                                     (let ((_g41288_
                                            (gx#syntax-split-splice
                                             _hd1288412936_
                                             '0)))
                                       (begin
                                         (let ((_g41289_
                                                (if (##values? _g41288_)
                                                    (##vector-length _g41288_)
                                                    1)))
                                           (if (not (##fx= _g41289_ 2))
                                               (error "Context expects 2 values"
                                                      _g41289_)))
                                         (let ((_target1288612942_
                                                (##vector-ref _g41288_ 0))
                                               (_tl1288812945_
                                                (##vector-ref _g41288_ 1)))
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
                                     (let ((_g41290_
                                            (gx#syntax-split-splice
                                             _hd1289612976_
                                             '0)))
                                       (begin
                                         (let ((_g41291_
                                                (if (##values? _g41290_)
                                                    (##vector-length _g41290_)
                                                    1)))
                                           (if (not (##fx= _g41291_ 2))
                                               (error "Context expects 2 values"
                                                      _g41291_)))
                                         (let ((_target1289812982_
                                                (##vector-ref _g41290_ 0))
                                               (_tl1290012985_
                                                (##vector-ref _g41290_ 1)))
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
                                      (let ((_g41292_
                                             (gx#syntax-split-splice
                                              _hd1311613196_
                                              '0)))
                                        (begin
                                          (let ((_g41293_
                                                 (if (##values? _g41292_)
                                                     (##vector-length _g41292_)
                                                     1)))
                                            (if (not (##fx= _g41293_ 2))
                                                (error "Context expects 2 values"
                                                       _g41293_)))
                                          (let ((_target1311813202_
                                                 (##vector-ref _g41292_ 0))
                                                (_tl1312013205_
                                                 (##vector-ref _g41292_ 1)))
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
                                                (let ((_g41294_
                                                       (gx#syntax-split-splice
                                                        _tl1313613249_
                                                        '0)))
                                                  (begin
                                                    (let ((_g41295_
                                                           (if (##values?
                                                                _g41294_)
                                                               (##vector-length
                                                                _g41294_)
                                                               1)))
                                                      (if (not (##fx= _g41295_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                  (error "Context expects 2 values" _g41295_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1313713252_
                                                           (##vector-ref
                                                            _g41294_
                                                            0))
                                                          (_tl1313913255_
                                                           (##vector-ref
                                                            _g41294_
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
                                              (let ((_g41296_
                                                     (gx#syntax-split-splice
                                                      _tl1315113307_
                                                      '0)))
                                                (begin
                                                  (let ((_g41297_
                                                         (if (##values?
                                                              _g41296_)
                                                             (##vector-length
                                                              _g41296_)
                                                             1)))
                                                    (if (not (##fx= _g41297_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                (error "Context expects 2 values" _g41297_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target1315213310_
                                                         (##vector-ref
                                                          _g41296_
                                                          0))
                                                        (_tl1315413313_
                                                         (##vector-ref
                                                          _g41296_
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
                                      (let ((_g41298_
                                             (gx#syntax-split-splice
                                              _tl1314813297_
                                              '0)))
                                        (begin
                                          (let ((_g41299_
                                                 (if (##values? _g41298_)
                                                     (##vector-length _g41298_)
                                                     1)))
                                            (if (not (##fx= _g41299_ 2))
                                                (error "Context expects 2 values"
                                                       _g41299_)))
                                          (let ((_target1316113340_
                                                 (##vector-ref _g41298_ 0))
                                                (_tl1316313343_
                                                 (##vector-ref _g41298_ 1)))
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
        (let* ((___stx3738037381_ _$stx13574_)
               (_g1357913610_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3738037381_))))
          (let ((___kont3738337384_ (lambda (_L13722_) _L13722_))
                (___kont3738537386_
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
            (let ((___match3742337424_
                   (lambda (_e1359013617_
                            _hd1359113621_
                            _tl1359213624_
                            _e1359313627_
                            _hd1359413631_
                            _tl1359513634_
                            ___splice3738737388_
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
                                       (___kont3738537386_
                                        _rest1360413663_
                                        _hd1359413631_))))))
                       (_loop1359913643_ _target1359613637_ '())))))
              (if (gx#stx-pair? ___stx3738037381_)
                  (let ((_e1358213702_ (gx#syntax-e ___stx3738037381_)))
                    (let ((_tl1358413709_ (##cdr _e1358213702_))
                          (_hd1358313706_ (##car _e1358213702_)))
                      (if (gx#stx-pair? _tl1358413709_)
                          (let ((_e1358513712_ (gx#syntax-e _tl1358413709_)))
                            (let ((_tl1358713719_ (##cdr _e1358513712_))
                                  (_hd1358613716_ (##car _e1358513712_)))
                              (if (gx#stx-null? _tl1358713719_)
                                  (___kont3738337384_ _hd1358613716_)
                                  (if (gx#stx-pair/null? _tl1358713719_)
                                      (let ((___splice3738737388_
                                             (gx#syntax-split-splice
                                              _tl1358713719_
                                              '0)))
                                        (let ((_tl1359813640_
                                               (##vector-ref
                                                ___splice3738737388_
                                                '1))
                                              (_target1359613637_
                                               (##vector-ref
                                                ___splice3738737388_
                                                '0)))
                                          (if (gx#stx-null? _tl1359813640_)
                                              (___match3742337424_
                                               _e1358213702_
                                               _hd1358313706_
                                               _tl1358413709_
                                               _e1358513712_
                                               _hd1358613716_
                                               _tl1358713719_
                                               ___splice3738737388_
                                               _target1359613637_
                                               _tl1359813640_)
                                              (_g1357913610_))))
                                      (_g1357913610_)))))
                          (_g1357913610_))))
                  (_g1357913610_)))))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#rec|
      (lambda (_$stx13740_)
        (let* ((___stx3742637427_ _$stx13740_)
               (_g1374613799_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3742637427_))))
          (let ((___kont3742937430_
                 (lambda (_L14001_ _L14003_)
                   (cons (gx#datum->syntax '#f 'letrec)
                         (cons (cons (cons _L14003_ (cons _L14001_ '())) '())
                               (cons _L14003_ '())))))
                (___kont3743137432_
                 (lambda (_L13945_ _L13947_)
                   (cons (gx#datum->syntax '#f 'letrec-values)
                         (cons (cons (cons _L13947_ (cons _L13945_ '())) '())
                               (cons (cons (gx#datum->syntax '#f 'values)
                                           _L13947_)
                                     '())))))
                (___kont3743337434_
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
            (let* ((___match3751337514_
                    (lambda (_e1377613806_
                             _hd1377713810_
                             _tl1377813813_
                             _e1377913816_
                             _hd1378013820_
                             _tl1378113823_
                             _e1378213826_
                             _hd1378313830_
                             _tl1378413833_
                             ___splice3743537436_
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
                                              (___kont3743337434_
                                               _L13866_
                                               _L13868_
                                               _L13869_)
                                              (_g1374613799_))))))))
                        (_loop1378813842_ _target1378513836_ '()))))
                   (___match3748737488_
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
                            (___kont3743137432_ _L13945_ _L13947_)
                            (if (gx#stx-pair/null? _tl1376613922_)
                                (let ((___splice3743537436_
                                       (gx#syntax-split-splice
                                        _tl1376613922_
                                        '0)))
                                  (let ((_tl1378713839_
                                         (##vector-ref
                                          ___splice3743537436_
                                          '1))
                                        (_target1378513836_
                                         (##vector-ref
                                          ___splice3743537436_
                                          '0)))
                                    (if (gx#stx-null? _tl1378713839_)
                                        (___match3751337514_
                                         _e1376113905_
                                         _hd1376213909_
                                         _tl1376313912_
                                         _e1376413915_
                                         _hd1376513919_
                                         _tl1376613922_
                                         _e1376713925_
                                         _hd1376813929_
                                         _tl1376913932_
                                         ___splice3743537436_
                                         _target1378513836_
                                         _tl1378713839_)
                                        (_g1374613799_))))
                                (_g1374613799_))))))
                   (___match3745737458_
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
                            (___kont3742937430_ _L14001_ _L14003_)
                            (if (gx#stx-pair? _hd1375413985_)
                                (let ((_e1376713925_
                                       (gx#syntax-e _hd1375413985_)))
                                  (let ((_tl1376913932_ (##cdr _e1376713925_))
                                        (_hd1376813929_ (##car _e1376713925_)))
                                    (if (gx#identifier? _hd1376813929_)
                                        (if (gx#free-identifier=?
                                             |gerbil/core$<sugar>$<sugar:2>[1]#_g41300_|
                                             _hd1376813929_)
                                            (___match3748737488_
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
                                                (let ((___splice3743537436_
                                                       (gx#syntax-split-splice
                                                        _tl1375513988_
                                                        '0)))
                                                  (let ((_tl1378713839_
                                                         (##vector-ref
                                                          ___splice3743537436_
                                                          '1))
                                                        (_target1378513836_
                                                         (##vector-ref
                                                          ___splice3743537436_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl1378713839_)
                                                        (___match3751337514_
                                                         _e1375013971_
                                                         _hd1375113975_
                                                         _tl1375213978_
                                                         _e1375313981_
                                                         _hd1375413985_
                                                         _tl1375513988_
                                                         _e1376713925_
                                                         _hd1376813929_
                                                         _tl1376913932_
                                                         ___splice3743537436_
                                                         _target1378513836_
                                                         _tl1378713839_)
                                                        (_g1374613799_))))
                                                (_g1374613799_)))
                                        (if (gx#stx-pair/null? _tl1375513988_)
                                            (let ((___splice3743537436_
                                                   (gx#syntax-split-splice
                                                    _tl1375513988_
                                                    '0)))
                                              (let ((_tl1378713839_
                                                     (##vector-ref
                                                      ___splice3743537436_
                                                      '1))
                                                    (_target1378513836_
                                                     (##vector-ref
                                                      ___splice3743537436_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl1378713839_)
                                                    (___match3751337514_
                                                     _e1375013971_
                                                     _hd1375113975_
                                                     _tl1375213978_
                                                     _e1375313981_
                                                     _hd1375413985_
                                                     _tl1375513988_
                                                     _e1376713925_
                                                     _hd1376813929_
                                                     _tl1376913932_
                                                     ___splice3743537436_
                                                     _target1378513836_
                                                     _tl1378713839_)
                                                    (_g1374613799_))))
                                            (_g1374613799_)))))
                                (_g1374613799_)))))))
              (if (gx#stx-pair? ___stx3742637427_)
                  (let ((_e1375013971_ (gx#syntax-e ___stx3742637427_)))
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
                                          (___match3745737458_
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
                                                      (let ((___splice3743537436_
                                                             (gx#syntax-split-splice
                                                              _tl1375513988_
                                                              '0)))
                                                        (let ((_tl1378713839_
                                                               (##vector-ref
                                                                ___splice3743537436_
                                                                '1))
                                                              (_target1378513836_
                                                               (##vector-ref
                                                                ___splice3743537436_
                                                                '0)))
                                                          (if (gx#stx-null?
                                                               _tl1378713839_)
                                                              (___match3751337514_
                                                               _e1375013971_
                                                               _hd1375113975_
                                                               _tl1375213978_
                                                               _e1375313981_
                                                               _hd1375413985_
                                                               _tl1375513988_
                                                               _e1376713925_
                                                               _hd1376813929_
                                                               _tl1376913932_
                                                               ___splice3743537436_
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
                                              (let ((___splice3743537436_
                                                     (gx#syntax-split-splice
                                                      _tl1375513988_
                                                      '0)))
                                                (let ((_tl1378713839_
                                                       (##vector-ref
                                                        ___splice3743537436_
                                                        '1))
                                                      (_target1378513836_
                                                       (##vector-ref
                                                        ___splice3743537436_
                                                        '0)))
                                                  (if (gx#stx-null?
                                                       _tl1378713839_)
                                                      (___match3751337514_
                                                       _e1375013971_
                                                       _hd1375113975_
                                                       _tl1375213978_
                                                       _e1375313981_
                                                       _hd1375413985_
                                                       _tl1375513988_
                                                       _e1376713925_
                                                       _hd1376813929_
                                                       _tl1376913932_
                                                       ___splice3743537436_
                                                       _target1378513836_
                                                       _tl1378713839_)
                                                      (_g1374613799_))))
                                              (_g1374613799_))))
                                      (_g1374613799_)))))
                          (_g1374613799_))))
                  (_g1374613799_)))))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#alet|
      (lambda (_stx14023_)
        (letrec ((_let-head?14026_
                  (lambda (_x14573_)
                    (let* ((___stx3751637517_ _x14573_)
                           (_g1457714588_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx3751637517_))))
                      (let ((___kont3751937520_
                             (lambda (_L14616_)
                               (gx#stx-andmap gx#identifier? _L14616_)))
                            (___kont3752137522_
                             (lambda () (gx#identifier? _x14573_))))
                        (if (gx#stx-pair? ___stx3751637517_)
                            (let ((_e1458014606_
                                   (gx#syntax-e ___stx3751637517_)))
                              (let ((_tl1458214613_ (##cdr _e1458014606_))
                                    (_hd1458114610_ (##car _e1458014606_)))
                                (if (gx#identifier? _hd1458114610_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<sugar>$<sugar:2>[1]#_g41301_|
                                         _hd1458114610_)
                                        (___kont3751937520_ _tl1458214613_)
                                        (___kont3752137522_))
                                    (___kont3752137522_))))
                            (___kont3752137522_))))))
                 (_let-head14028_
                  (lambda (_x14513_)
                    (let* ((___stx3753637537_ _x14513_)
                           (_g1451714528_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx3753637537_))))
                      (let ((___kont3753937540_ (lambda (_L14556_) _L14556_))
                            (___kont3754137542_ (lambda () (list _x14513_))))
                        (if (gx#stx-pair? ___stx3753637537_)
                            (let ((_e1452014546_
                                   (gx#syntax-e ___stx3753637537_)))
                              (let ((_tl1452214553_ (##cdr _e1452014546_))
                                    (_hd1452114550_ (##car _e1452014546_)))
                                (if (gx#identifier? _hd1452114550_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<sugar>$<sugar:2>[1]#_g41302_|
                                         _hd1452114550_)
                                        (___kont3753937540_ _tl1452214553_)
                                        (___kont3754137542_))
                                    (___kont3754137542_))))
                            (___kont3754137542_)))))))
          (let* ((___stx3755637557_ _stx14023_)
                 (_g1403114089_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     ___stx3755637557_))))
            (let ((___kont3755937560_
                   (lambda (_L14486_ _L14488_ _L14489_ _L14490_)
                     (cons _L14490_
                           (cons (cons (cons _L14489_ (cons _L14488_ '())) '())
                                 _L14486_))))
                  (___kont3756137562_
                   (lambda (_L14200_ _L14202_ _L14203_)
                     (let* ((_g1423514268_
                             (lambda (_g1423614264_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g1423614264_)))
                            (_g1423414419_
                             (lambda (_g1423614272_)
                               (if (gx#stx-pair? _g1423614272_)
                                   (let ((_e1423914275_
                                          (gx#syntax-e _g1423614272_)))
                                     (let ((_hd1424014279_
                                            (##car _e1423914275_))
                                           (_tl1424114282_
                                            (##cdr _e1423914275_)))
                                       (if (gx#stx-pair/null? _hd1424014279_)
                                           (let ((_g41303_
                                                  (gx#syntax-split-splice
                                                   _hd1424014279_
                                                   '0)))
                                             (begin
                                               (let ((_g41304_
                                                      (if (##values? _g41303_)
                                                          (##vector-length
                                                           _g41303_)
                                                          1)))
                                                 (if (not (##fx= _g41304_ 2))
                                                     (error "Context expects 2 values"
                                                            _g41304_)))
                                               (let ((_target1424214285_
                                                      (##vector-ref
                                                       _g41303_
                                                       0))
                                                     (_tl1424414288_
                                                      (##vector-ref
                                                       _g41303_
                                                       1)))
                                                 (if (gx#stx-null?
                                                      _tl1424414288_)
                                                     (letrec ((_loop1424514291_
                                                               (lambda (_hd1424314295_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _$e1424914298_)
                         (if (gx#stx-pair? _hd1424314295_)
                             (let ((_e1424614301_
                                    (gx#syntax-e _hd1424314295_)))
                               (let ((_lp-hd1424714305_ (##car _e1424614301_))
                                     (_lp-tl1424814308_ (##cdr _e1424614301_)))
                                 (_loop1424514291_
                                  _lp-tl1424814308_
                                  (cons _lp-hd1424714305_ _$e1424914298_))))
                             (let ((_$e1425014311_ (reverse _$e1424914298_)))
                               (if (gx#stx-pair? _tl1424114282_)
                                   (let ((_e1425114315_
                                          (gx#syntax-e _tl1424114282_)))
                                     (let ((_hd1425214319_
                                            (##car _e1425114315_))
                                           (_tl1425314322_
                                            (##cdr _e1425114315_)))
                                       (if (gx#stx-pair/null? _hd1425214319_)
                                           (let ((_g41305_
                                                  (gx#syntax-split-splice
                                                   _hd1425214319_
                                                   '0)))
                                             (begin
                                               (let ((_g41306_
                                                      (if (##values? _g41305_)
                                                          (##vector-length
                                                           _g41305_)
                                                          1)))
                                                 (if (not (##fx= _g41306_ 2))
                                                     (error "Context expects 2 values"
                                                            _g41306_)))
                                               (let ((_target1425414325_
                                                      (##vector-ref
                                                       _g41305_
                                                       0))
                                                     (_tl1425614328_
                                                      (##vector-ref
                                                       _g41305_
                                                       1)))
                                                 (if (gx#stx-null?
                                                      _tl1425614328_)
                                                     (letrec ((_loop1425714331_
                                                               (lambda (_hd1425514335_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _hd-bind1426114338_)
                         (if (gx#stx-pair? _hd1425514335_)
                             (let ((_e1425814341_
                                    (gx#syntax-e _hd1425514335_)))
                               (let ((_lp-hd1425914345_ (##car _e1425814341_))
                                     (_lp-tl1426014348_ (##cdr _e1425814341_)))
                                 (_loop1425714331_
                                  _lp-tl1426014348_
                                  (cons _lp-hd1425914345_
                                        _hd-bind1426114338_))))
                             (let ((_hd-bind1426214351_
                                    (reverse _hd-bind1426114338_)))
                               (if (gx#stx-null? _tl1425314322_)
                                   ((lambda (_L14355_ _L14357_)
                                      (let ()
                                        (cons (gx#datum->syntax
                                               '#f
                                               'let-values)
                                              (cons (begin
                                                      (gx#syntax-check-splice-targets
                                                       _L14202_
                                                       _L14357_)
                                                      (foldr (lambda (_g1438014391_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1438114394_
                              _g1438214396_)
                       (cons (cons (cons _g1438114394_ '())
                                   (cons _g1438014391_ '()))
                             _g1438214396_))
                     '()
                     _L14202_
                     _L14357_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'and)
                        (foldr (lambda (_g1438314399_ _g1438414402_)
                                 (cons _g1438314399_ _g1438414402_))
                               (cons (cons (gx#datum->syntax '#f 'let-values)
                                           (cons (begin
                                                   (gx#syntax-check-splice-targets
                                                    _L14357_
                                                    _L14355_)
                                                   (foldr (lambda (_g1438514405_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1438614408_
                           _g1438714410_)
                    (cons (cons _g1438614408_ (cons _g1438514405_ '()))
                          _g1438714410_))
                  '()
                  _L14357_
                  _L14355_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_g1438814413_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1438914416_)
                  (cons _g1438814413_ _g1438914416_))
                '()
                _L14200_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())
                               _L14357_))
                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _hd-bind1426214351_
                                    _$e1425014311_)
                                   (_g1423514268_ _g1423614272_)))))))
               (_loop1425714331_ _target1425414325_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1423514268_
                                                      _g1423614272_)))))
                                           (_g1423514268_ _g1423614272_))))
                                   (_g1423514268_ _g1423614272_)))))))
               (_loop1424514291_ _target1424214285_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1423514268_
                                                      _g1423614272_)))))
                                           (_g1423514268_ _g1423614272_))))
                                   (_g1423514268_ _g1423614272_)))))
                       (_g1423414419_
                        (list (gx#gentemps
                               (foldr (lambda (_g1442214425_ _g1442314428_)
                                        (cons _g1442214425_ _g1442314428_))
                                      '()
                                      _L14203_))
                              (gx#stx-map
                               _let-head14028_
                               (foldr (lambda (_g1443014433_ _g1443114436_)
                                        (cons _g1443014433_ _g1443114436_))
                                      '()
                                      _L14203_))))))))
              (let* ((___match3761337614_
                      (lambda (_e1405214096_
                               _hd1405314100_
                               _tl1405414103_
                               _e1405514106_
                               _hd1405614110_
                               _tl1405714113_
                               ___splice3756337564_
                               _target1405814116_
                               _tl1406014119_)
                        (letrec ((_loop1406114122_
                                  (lambda (_hd1405914126_
                                           _e1406514129_
                                           _hd1406614131_)
                                    (if (gx#stx-pair? _hd1405914126_)
                                        (let ((_e1406214134_
                                               (gx#syntax-e _hd1405914126_)))
                                          (let ((_lp-tl1406414141_
                                                 (##cdr _e1406214134_))
                                                (_lp-hd1406314138_
                                                 (##car _e1406214134_)))
                                            (if (gx#stx-pair?
                                                 _lp-hd1406314138_)
                                                (let ((_e1406914144_
                                                       (gx#syntax-e
                                                        _lp-hd1406314138_)))
                                                  (let ((_tl1407114151_
                                                         (##cdr _e1406914144_))
                                                        (_hd1407014148_
                                                         (##car _e1406914144_)))
                                                    (if (gx#stx-pair?
                                                         _tl1407114151_)
                                                        (let ((_e1407214154_
                                                               (gx#syntax-e
                                                                _tl1407114151_)))
                                                          (let ((_tl1407414161_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e1407214154_))
                        (_hd1407314158_ (##car _e1407214154_)))
                    (if (gx#stx-null? _tl1407414161_)
                        (_loop1406114122_
                         _lp-tl1406414141_
                         (cons _hd1407314158_ _e1406514129_)
                         (cons _hd1407014148_ _hd1406614131_))
                        (_g1403114089_))))
                (_g1403114089_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1403114089_))))
                                        (let ((_hd1406814167_
                                               (reverse _hd1406614131_))
                                              (_e1406714164_
                                               (reverse _e1406514129_)))
                                          (if (gx#stx-pair/null?
                                               _tl1405714113_)
                                              (let ((___splice3756537566_
                                                     (gx#syntax-split-splice
                                                      _tl1405714113_
                                                      '0)))
                                                (let ((_tl1407714173_
                                                       (##vector-ref
                                                        ___splice3756537566_
                                                        '1))
                                                      (_target1407514170_
                                                       (##vector-ref
                                                        ___splice3756537566_
                                                        '0)))
                                                  (if (gx#stx-null?
                                                       _tl1407714173_)
                                                      (letrec ((_loop1407814176_
                                                                (lambda (_hd1407614180_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _body1408214183_)
                          (if (gx#stx-pair? _hd1407614180_)
                              (let ((_e1407914186_
                                     (gx#syntax-e _hd1407614180_)))
                                (let ((_lp-tl1408114193_ (##cdr _e1407914186_))
                                      (_lp-hd1408014190_
                                       (##car _e1407914186_)))
                                  (_loop1407814176_
                                   _lp-tl1408114193_
                                   (cons _lp-hd1408014190_ _body1408214183_))))
                              (let ((_body1408314196_
                                     (reverse _body1408214183_)))
                                (let ((_L14200_ _body1408314196_)
                                      (_L14202_ _e1406714164_)
                                      (_L14203_ _hd1406814167_))
                                  (if (gx#stx-andmap
                                       _let-head?14026_
                                       (foldr (lambda (_g1422614229_
                                                       _g1422714232_)
                                                (cons _g1422614229_
                                                      _g1422714232_))
                                              '()
                                              _L14203_))
                                      (___kont3756137562_
                                       _L14200_
                                       _L14202_
                                       _L14203_)
                                      (_g1403114089_))))))))
                (_loop1407814176_ _target1407514170_ '()))
              (_g1403114089_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1403114089_)))))))
                          (_loop1406114122_ _target1405814116_ '() '()))))
                     (___match3759337594_
                      (lambda (_e1403714446_
                               _hd1403814450_
                               _tl1403914453_
                               _e1404014456_
                               _hd1404114460_
                               _tl1404214463_
                               _e1404314466_
                               _hd1404414470_
                               _tl1404514473_
                               _e1404614476_
                               _hd1404714480_
                               _tl1404814483_)
                        (let ((_L14486_ _tl1404214463_)
                              (_L14488_ _hd1404714480_)
                              (_L14489_ _hd1404414470_)
                              (_L14490_ _hd1403814450_))
                          (if (_let-head?14026_ _L14489_)
                              (___kont3755937560_
                               _L14486_
                               _L14488_
                               _L14489_
                               _L14490_)
                              (if (gx#stx-pair/null? _hd1404114460_)
                                  (let ((___splice3756337564_
                                         (gx#syntax-split-splice
                                          _hd1404114460_
                                          '0)))
                                    (let ((_tl1406014119_
                                           (##vector-ref
                                            ___splice3756337564_
                                            '1))
                                          (_target1405814116_
                                           (##vector-ref
                                            ___splice3756337564_
                                            '0)))
                                      (if (gx#stx-null? _tl1406014119_)
                                          (___match3761337614_
                                           _e1403714446_
                                           _hd1403814450_
                                           _tl1403914453_
                                           _e1404014456_
                                           _hd1404114460_
                                           _tl1404214463_
                                           ___splice3756337564_
                                           _target1405814116_
                                           _tl1406014119_)
                                          (_g1403114089_))))
                                  (_g1403114089_)))))))
                (if (gx#stx-pair? ___stx3755637557_)
                    (let ((_e1403714446_ (gx#syntax-e ___stx3755637557_)))
                      (let ((_tl1403914453_ (##cdr _e1403714446_))
                            (_hd1403814450_ (##car _e1403714446_)))
                        (if (gx#stx-pair? _tl1403914453_)
                            (let ((_e1404014456_ (gx#syntax-e _tl1403914453_)))
                              (let ((_tl1404214463_ (##cdr _e1404014456_))
                                    (_hd1404114460_ (##car _e1404014456_)))
                                (if (gx#stx-pair? _hd1404114460_)
                                    (let ((_e1404314466_
                                           (gx#syntax-e _hd1404114460_)))
                                      (let ((_tl1404514473_
                                             (##cdr _e1404314466_))
                                            (_hd1404414470_
                                             (##car _e1404314466_)))
                                        (if (gx#stx-pair? _tl1404514473_)
                                            (let ((_e1404614476_
                                                   (gx#syntax-e
                                                    _tl1404514473_)))
                                              (let ((_tl1404814483_
                                                     (##cdr _e1404614476_))
                                                    (_hd1404714480_
                                                     (##car _e1404614476_)))
                                                (if (gx#stx-null?
                                                     _tl1404814483_)
                                                    (___match3759337594_
                                                     _e1403714446_
                                                     _hd1403814450_
                                                     _tl1403914453_
                                                     _e1404014456_
                                                     _hd1404114460_
                                                     _tl1404214463_
                                                     _e1404314466_
                                                     _hd1404414470_
                                                     _tl1404514473_
                                                     _e1404614476_
                                                     _hd1404714480_
                                                     _tl1404814483_)
                                                    (if (gx#stx-pair/null?
                                                         _hd1404114460_)
                                                        (let ((___splice3756337564_
                                                               (gx#syntax-split-splice
                                                                _hd1404114460_
                                                                '0)))
                                                          (let ((_tl1406014119_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref ___splice3756337564_ '1))
                        (_target1405814116_
                         (##vector-ref ___splice3756337564_ '0)))
                    (if (gx#stx-null? _tl1406014119_)
                        (___match3761337614_
                         _e1403714446_
                         _hd1403814450_
                         _tl1403914453_
                         _e1404014456_
                         _hd1404114460_
                         _tl1404214463_
                         ___splice3756337564_
                         _target1405814116_
                         _tl1406014119_)
                        (_g1403114089_))))
                (_g1403114089_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair/null?
                                                 _hd1404114460_)
                                                (let ((___splice3756337564_
                                                       (gx#syntax-split-splice
                                                        _hd1404114460_
                                                        '0)))
                                                  (let ((_tl1406014119_
                                                         (##vector-ref
                                                          ___splice3756337564_
                                                          '1))
                                                        (_target1405814116_
                                                         (##vector-ref
                                                          ___splice3756337564_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl1406014119_)
                                                        (___match3761337614_
                                                         _e1403714446_
                                                         _hd1403814450_
                                                         _tl1403914453_
                                                         _e1404014456_
                                                         _hd1404114460_
                                                         _tl1404214463_
                                                         ___splice3756337564_
                                                         _target1405814116_
                                                         _tl1406014119_)
                                                        (_g1403114089_))))
                                                (_g1403114089_)))))
                                    (if (gx#stx-pair/null? _hd1404114460_)
                                        (let ((___splice3756337564_
                                               (gx#syntax-split-splice
                                                _hd1404114460_
                                                '0)))
                                          (let ((_tl1406014119_
                                                 (##vector-ref
                                                  ___splice3756337564_
                                                  '1))
                                                (_target1405814116_
                                                 (##vector-ref
                                                  ___splice3756337564_
                                                  '0)))
                                            (if (gx#stx-null? _tl1406014119_)
                                                (___match3761337614_
                                                 _e1403714446_
                                                 _hd1403814450_
                                                 _tl1403914453_
                                                 _e1404014456_
                                                 _hd1404114460_
                                                 _tl1404214463_
                                                 ___splice3756337564_
                                                 _target1405814116_
                                                 _tl1406014119_)
                                                (_g1403114089_))))
                                        (_g1403114089_)))))
                            (_g1403114089_))))
                    (_g1403114089_))))))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#alet*|
      (lambda (_$stx14637_)
        (let* ((___stx3761637617_ _$stx14637_)
               (_g1464214687_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3761637617_))))
          (let ((___kont3761937620_
                 (lambda (_L14845_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_g1486114864_ _g1486214867_)
                                        (cons _g1486114864_ _g1486214867_))
                                      '()
                                      _L14845_)))))
                (___kont3762337624_
                 (lambda (_L14754_ _L14756_ _L14757_ _L14758_)
                   (cons (gx#datum->syntax '#f 'alet)
                         (cons (cons _L14757_ '())
                               (cons (cons _L14758_
                                           (cons _L14756_
                                                 (foldr (lambda (_g1477914782_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1478014785_)
                  (cons _g1477914782_ _g1478014785_))
                '()
                _L14754_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((___match3767537676_
                    (lambda (_e1466414694_
                             _hd1466514698_
                             _tl1466614701_
                             _e1466714704_
                             _hd1466814708_
                             _tl1466914711_
                             _e1467014714_
                             _hd1467114718_
                             _tl1467214721_
                             ___splice3762537626_
                             _target1467314724_
                             _tl1467514727_)
                      (letrec ((_loop1467614730_
                                (lambda (_hd1467414734_ _body1468014737_)
                                  (if (gx#stx-pair? _hd1467414734_)
                                      (let ((_e1467714740_
                                             (gx#syntax-e _hd1467414734_)))
                                        (let ((_lp-tl1467914747_
                                               (##cdr _e1467714740_))
                                              (_lp-hd1467814744_
                                               (##car _e1467714740_)))
                                          (_loop1467614730_
                                           _lp-tl1467914747_
                                           (cons _lp-hd1467814744_
                                                 _body1468014737_))))
                                      (let ((_body1468114750_
                                             (reverse _body1468014737_)))
                                        (___kont3762337624_
                                         _body1468114750_
                                         _tl1467214721_
                                         _hd1467114718_
                                         _hd1466514698_))))))
                        (_loop1467614730_ _target1467314724_ '()))))
                   (___match3764937650_
                    (lambda (_e1464514795_
                             _hd1464614799_
                             _tl1464714802_
                             _e1464814805_
                             _hd1464914809_
                             _tl1465014812_
                             ___splice3762137622_
                             _target1465114815_
                             _tl1465314818_)
                      (letrec ((_loop1465414821_
                                (lambda (_hd1465214825_ _body1465814828_)
                                  (if (gx#stx-pair? _hd1465214825_)
                                      (let ((_e1465514831_
                                             (gx#syntax-e _hd1465214825_)))
                                        (let ((_lp-tl1465714838_
                                               (##cdr _e1465514831_))
                                              (_lp-hd1465614835_
                                               (##car _e1465514831_)))
                                          (_loop1465414821_
                                           _lp-tl1465714838_
                                           (cons _lp-hd1465614835_
                                                 _body1465814828_))))
                                      (let ((_body1465914841_
                                             (reverse _body1465814828_)))
                                        (___kont3761937620_
                                         _body1465914841_))))))
                        (_loop1465414821_ _target1465114815_ '())))))
              (if (gx#stx-pair? ___stx3761637617_)
                  (let ((_e1464514795_ (gx#syntax-e ___stx3761637617_)))
                    (let ((_tl1464714802_ (##cdr _e1464514795_))
                          (_hd1464614799_ (##car _e1464514795_)))
                      (if (gx#stx-pair? _tl1464714802_)
                          (let ((_e1464814805_ (gx#syntax-e _tl1464714802_)))
                            (let ((_tl1465014812_ (##cdr _e1464814805_))
                                  (_hd1464914809_ (##car _e1464814805_)))
                              (if (gx#stx-null? _hd1464914809_)
                                  (if (gx#stx-pair/null? _tl1465014812_)
                                      (let ((___splice3762137622_
                                             (gx#syntax-split-splice
                                              _tl1465014812_
                                              '0)))
                                        (let ((_tl1465314818_
                                               (##vector-ref
                                                ___splice3762137622_
                                                '1))
                                              (_target1465114815_
                                               (##vector-ref
                                                ___splice3762137622_
                                                '0)))
                                          (if (gx#stx-null? _tl1465314818_)
                                              (___match3764937650_
                                               _e1464514795_
                                               _hd1464614799_
                                               _tl1464714802_
                                               _e1464814805_
                                               _hd1464914809_
                                               _tl1465014812_
                                               ___splice3762137622_
                                               _target1465114815_
                                               _tl1465314818_)
                                              (_g1464214687_))))
                                      (_g1464214687_))
                                  (if (gx#stx-pair? _hd1464914809_)
                                      (let ((_e1467014714_
                                             (gx#syntax-e _hd1464914809_)))
                                        (let ((_tl1467214721_
                                               (##cdr _e1467014714_))
                                              (_hd1467114718_
                                               (##car _e1467014714_)))
                                          (if (gx#stx-pair/null?
                                               _tl1465014812_)
                                              (let ((___splice3762537626_
                                                     (gx#syntax-split-splice
                                                      _tl1465014812_
                                                      '0)))
                                                (let ((_tl1467514727_
                                                       (##vector-ref
                                                        ___splice3762537626_
                                                        '1))
                                                      (_target1467314724_
                                                       (##vector-ref
                                                        ___splice3762537626_
                                                        '0)))
                                                  (if (gx#stx-null?
                                                       _tl1467514727_)
                                                      (___match3767537676_
                                                       _e1464514795_
                                                       _hd1464614799_
                                                       _tl1464714802_
                                                       _e1464814805_
                                                       _hd1464914809_
                                                       _tl1465014812_
                                                       _e1467014714_
                                                       _hd1467114718_
                                                       _tl1467214721_
                                                       ___splice3762537626_
                                                       _target1467314724_
                                                       _tl1467514727_)
                                                      (_g1464214687_))))
                                              (_g1464214687_))))
                                      (_g1464214687_)))))
                          (_g1464214687_))))
                  (_g1464214687_)))))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#@list|
      (lambda (_$stx14876_)
        (let* ((___stx3767837679_ _$stx14876_)
               (_g1488514943_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3767837679_))))
          (let ((___kont3768137682_
                 (lambda ()
                   (cons (gx#datum->syntax '#f 'quote) (cons '() '()))))
                (___kont3768337684_ (lambda (_L15169_) _L15169_))
                (___kont3768537686_ (lambda (_L15111_ _L15113_) _L15113_))
                (___kont3768737688_
                 (lambda (_L15053_ _L15055_ _L15056_ _L15057_)
                   (cons (gx#datum->syntax '#f 'foldr)
                         (cons (gx#datum->syntax '#f 'cons)
                               (cons (cons _L15057_ _L15053_)
                                     (cons _L15056_ '()))))))
                (___kont3768937690_
                 (lambda (_L14999_ _L15001_ _L15002_)
                   (cons (gx#datum->syntax '#f 'cons)
                         (cons _L15001_ (cons (cons _L15002_ _L14999_) '())))))
                (___kont3769137692_ (lambda (_L14960_) _L14960_)))
            (let* ((___match3776537766_
                    (lambda (_e1491615023_
                             _hd1491715027_
                             _tl1491815030_
                             _e1491915033_
                             _hd1492015037_
                             _tl1492115040_
                             _e1492215043_
                             _hd1492315047_
                             _tl1492415050_)
                      (let ((_L15053_ _tl1492415050_)
                            (_L15055_ _hd1492315047_)
                            (_L15056_ _hd1492015037_)
                            (_L15057_ _hd1491715027_))
                        (if (gx#ellipsis? _L15055_)
                            (___kont3768737688_
                             _L15053_
                             _L15055_
                             _L15056_
                             _L15057_)
                            (___kont3768937690_
                             _tl1492115040_
                             _hd1492015037_
                             _hd1491715027_)))))
                   (___match3774737748_
                    (lambda (_e1490315081_
                             _hd1490415085_
                             _tl1490515088_
                             _e1490615091_
                             _hd1490715095_
                             _tl1490815098_
                             _e1490915101_
                             _hd1491015105_
                             _tl1491115108_)
                      (let ((_L15111_ _hd1491015105_)
                            (_L15113_ _hd1490715095_))
                        (if (gx#ellipsis? _L15111_)
                            (___kont3768537686_ _L15111_ _L15113_)
                            (___match3776537766_
                             _e1490315081_
                             _hd1490415085_
                             _tl1490515088_
                             _e1490615091_
                             _hd1490715095_
                             _tl1490815098_
                             _e1490915101_
                             _hd1491015105_
                             _tl1491115108_))))))
              (if (gx#stx-pair? ___stx3767837679_)
                  (let ((_e1488715192_ (gx#syntax-e ___stx3767837679_)))
                    (let ((_tl1488915199_ (##cdr _e1488715192_))
                          (_hd1488815196_ (##car _e1488715192_)))
                      (if (gx#stx-null? _tl1488915199_)
                          (___kont3768137682_)
                          (if (gx#stx-pair? _tl1488915199_)
                              (let ((_e1489415145_
                                     (gx#syntax-e _tl1488915199_)))
                                (let ((_tl1489615152_ (##cdr _e1489415145_))
                                      (_hd1489515149_ (##car _e1489415145_)))
                                  (if (gx#stx-datum? _hd1489515149_)
                                      (let ((_e1489715155_
                                             (gx#stx-e _hd1489515149_)))
                                        (if (equal? _e1489715155_ '::)
                                            (if (gx#stx-pair? _tl1489615152_)
                                                (let ((_e1489815159_
                                                       (gx#syntax-e
                                                        _tl1489615152_)))
                                                  (let ((_tl1490015166_
                                                         (##cdr _e1489815159_))
                                                        (_hd1489915163_
                                                         (##car _e1489815159_)))
                                                    (if (gx#stx-null?
                                                         _tl1490015166_)
                                                        (___kont3768337684_
                                                         _hd1489915163_)
                                                        (___match3776537766_
                                                         _e1488715192_
                                                         _hd1488815196_
                                                         _tl1488915199_
                                                         _e1489415145_
                                                         _hd1489515149_
                                                         _tl1489615152_
                                                         _e1489815159_
                                                         _hd1489915163_
                                                         _tl1490015166_))))
                                                (___kont3768937690_
                                                 _tl1489615152_
                                                 _hd1489515149_
                                                 _hd1488815196_))
                                            (if (gx#stx-pair? _tl1489615152_)
                                                (let ((_e1490915101_
                                                       (gx#syntax-e
                                                        _tl1489615152_)))
                                                  (let ((_tl1491115108_
                                                         (##cdr _e1490915101_))
                                                        (_hd1491015105_
                                                         (##car _e1490915101_)))
                                                    (if (gx#stx-null?
                                                         _tl1491115108_)
                                                        (___match3774737748_
                                                         _e1488715192_
                                                         _hd1488815196_
                                                         _tl1488915199_
                                                         _e1489415145_
                                                         _hd1489515149_
                                                         _tl1489615152_
                                                         _e1490915101_
                                                         _hd1491015105_
                                                         _tl1491115108_)
                                                        (___match3776537766_
                                                         _e1488715192_
                                                         _hd1488815196_
                                                         _tl1488915199_
                                                         _e1489415145_
                                                         _hd1489515149_
                                                         _tl1489615152_
                                                         _e1490915101_
                                                         _hd1491015105_
                                                         _tl1491115108_))))
                                                (___kont3768937690_
                                                 _tl1489615152_
                                                 _hd1489515149_
                                                 _hd1488815196_))))
                                      (if (gx#stx-pair? _tl1489615152_)
                                          (let ((_e1490915101_
                                                 (gx#syntax-e _tl1489615152_)))
                                            (let ((_tl1491115108_
                                                   (##cdr _e1490915101_))
                                                  (_hd1491015105_
                                                   (##car _e1490915101_)))
                                              (if (gx#stx-null? _tl1491115108_)
                                                  (___match3774737748_
                                                   _e1488715192_
                                                   _hd1488815196_
                                                   _tl1488915199_
                                                   _e1489415145_
                                                   _hd1489515149_
                                                   _tl1489615152_
                                                   _e1490915101_
                                                   _hd1491015105_
                                                   _tl1491115108_)
                                                  (___match3776537766_
                                                   _e1488715192_
                                                   _hd1488815196_
                                                   _tl1488915199_
                                                   _e1489415145_
                                                   _hd1489515149_
                                                   _tl1489615152_
                                                   _e1490915101_
                                                   _hd1491015105_
                                                   _tl1491115108_))))
                                          (___kont3768937690_
                                           _tl1489615152_
                                           _hd1489515149_
                                           _hd1488815196_)))))
                              (___kont3769137692_ _tl1488915199_)))))
                  (_g1488514943_)))))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#quasiquote|
      (lambda (_stx15210_)
        (letrec ((_simple-quote?15213_
                  (lambda (_e15905_)
                    (let* ((___stx3778637787_ _e15905_)
                           (_g1591315950_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx3778637787_))))
                      (let ((___kont3778937790_ (lambda () '#f))
                            (___kont3779137792_ (lambda () '#f))
                            (___kont3779337794_
                             (lambda (_L16064_ _L16066_)
                               (if (_simple-quote?15213_ _L16066_)
                                   (_simple-quote?15213_ _L16064_)
                                   '#f)))
                            (___kont3779537796_
                             (lambda (_L16025_)
                               (_simple-quote?15213_
                                (foldr (lambda (_g1603816041_ _g1603916044_)
                                         (cons _g1603816041_ _g1603916044_))
                                       '()
                                       _L16025_))))
                            (___kont3779937800_
                             (lambda (_L15972_)
                               (_simple-quote?15213_ _L15972_)))
                            (___kont3780137802_ (lambda () '#t)))
                        (let* ((_g1591115984_
                                (lambda ()
                                  (if (gx#stx-box? ___stx3778637787_)
                                      (let ((_e1594415968_
                                             (unbox (gx#syntax-e
                                                     ___stx3778637787_))))
                                        (___kont3779937800_ _e1594415968_))
                                      (___kont3780137802_))))
                               (___match3785737858_
                                (lambda (_e1593315991_
                                         ___splice3779737798_
                                         _target1593415995_
                                         _tl1593615998_)
                                  (letrec ((_loop1593716001_
                                            (lambda (_hd1593516005_
                                                     _e1594116008_)
                                              (if (gx#stx-pair? _hd1593516005_)
                                                  (let ((_e1593816011_
                                                         (gx#syntax-e
                                                          _hd1593516005_)))
                                                    (let ((_lp-tl1594016018_
                                                           (##cdr _e1593816011_))
                                                          (_lp-hd1593916015_
                                                           (##car _e1593816011_)))
                                                      (_loop1593716001_
                                                       _lp-tl1594016018_
                                                       (cons _lp-hd1593916015_
                                                             _e1594116008_))))
                                                  (let ((_e1594216021_
                                                         (reverse _e1594116008_)))
                                                    (___kont3779537796_
                                                     _e1594216021_))))))
                                    (_loop1593716001_
                                     _target1593415995_
                                     '()))))
                               (_g1591016047_
                                (lambda ()
                                  (if (gx#stx-vector? ___stx3778637787_)
                                      (let ((_e1593315991_
                                             (vector->list
                                              (gx#syntax-e
                                               ___stx3778637787_))))
                                        (if (gx#stx-pair/null? _e1593315991_)
                                            (let ((___splice3779737798_
                                                   (gx#syntax-split-splice
                                                    _e1593315991_
                                                    '0)))
                                              (let ((_tl1593615998_
                                                     (##vector-ref
                                                      ___splice3779737798_
                                                      '1))
                                                    (_target1593415995_
                                                     (##vector-ref
                                                      ___splice3779737798_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl1593615998_)
                                                    (___match3785737858_
                                                     _e1593315991_
                                                     ___splice3779737798_
                                                     _target1593415995_
                                                     _tl1593615998_)
                                                    (___kont3780137802_))))
                                            (___kont3780137802_)))
                                      (_g1591115984_)))))
                          (if (gx#stx-pair? ___stx3778637787_)
                              (let ((_e1591516115_
                                     (gx#syntax-e ___stx3778637787_)))
                                (let ((_tl1591716122_ (##cdr _e1591516115_))
                                      (_hd1591616119_ (##car _e1591516115_)))
                                  (if (gx#identifier? _hd1591616119_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<sugar>$<sugar:2>[1]#_g41307_|
                                           _hd1591616119_)
                                          (if (gx#stx-pair? _tl1591716122_)
                                              (let ((_e1591816125_
                                                     (gx#syntax-e
                                                      _tl1591716122_)))
                                                (let ((_tl1592016132_
                                                       (##cdr _e1591816125_))
                                                      (_hd1591916129_
                                                       (##car _e1591816125_)))
                                                  (if (gx#stx-null?
                                                       _tl1592016132_)
                                                      (___kont3778937790_)
                                                      (___kont3779337794_
                                                       _tl1591716122_
                                                       _hd1591616119_))))
                                              (___kont3779337794_
                                               _tl1591716122_
                                               _hd1591616119_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<sugar>$<sugar:2>[1]#_g41308_|
                                               _hd1591616119_)
                                              (if (gx#stx-pair? _tl1591716122_)
                                                  (let ((_e1592416094_
                                                         (gx#syntax-e
                                                          _tl1591716122_)))
                                                    (let ((_tl1592616101_
                                                           (##cdr _e1592416094_))
                                                          (_hd1592516098_
                                                           (##car _e1592416094_)))
                                                      (if (gx#stx-null?
                                                           _tl1592616101_)
                                                          (___kont3779137792_)
                                                          (___kont3779337794_
                                                           _tl1591716122_
                                                           _hd1591616119_))))
                                                  (___kont3779337794_
                                                   _tl1591716122_
                                                   _hd1591616119_))
                                              (___kont3779337794_
                                               _tl1591716122_
                                               _hd1591616119_)))
                                      (___kont3779337794_
                                       _tl1591716122_
                                       _hd1591616119_))))
                              (_g1591016047_)))))))
                 (_generate15215_
                  (lambda (_e15277_ _d15279_)
                    (let* ((___stx3786437865_ _e15277_)
                           (_g1528815346_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx3786437865_))))
                      (let ((___kont3786737868_
                             (lambda (_L15857_)
                               (let* ((_g1587015878_
                                       (lambda (_g1587115874_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1587115874_)))
                                      (_g1586915897_
                                       (lambda (_g1587115882_)
                                         ((lambda (_L15885_)
                                            (let ()
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'list)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons (gx#datum->syntax '#f 'quasiquote) '()))
                  (cons _L15885_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _g1587115882_))))
                                 (_g1586915897_
                                  (_generate15215_
                                   _L15857_
                                   (fx1+ _d15279_))))))
                            (___kont3786937870_
                             (lambda (_L15786_)
                               (if (fxzero? _d15279_)
                                   _L15786_
                                   (let* ((_g1579915807_
                                           (lambda (_g1580015803_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1580015803_)))
                                          (_g1579815826_
                                           (lambda (_g1580015811_)
                                             ((lambda (_L15814_)
                                                (let ()
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'list)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons (gx#datum->syntax '#f 'unquote) '()))
                      (cons _L15814_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _g1580015811_))))
                                     (_g1579815826_
                                      (_generate15215_
                                       _L15786_
                                       (fx1- _d15279_)))))))
                            (___kont3787137872_
                             (lambda (_L15715_)
                               (if (fxzero? _d15279_)
                                   (cons (gx#datum->syntax '#f 'foldr)
                                         (cons (gx#datum->syntax '#f 'cons)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote)
                                                           (cons '() '()))
                                                     (cons _L15715_ '()))))
                                   (let* ((_g1572815736_
                                           (lambda (_g1572915732_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1572915732_)))
                                          (_g1572715755_
                                           (lambda (_g1572915740_)
                                             ((lambda (_L15743_)
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
                      (cons _L15743_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _g1572915740_))))
                                     (_g1572715755_
                                      (_generate15215_
                                       _L15715_
                                       (fx1- _d15279_)))))))
                            (___kont3787337874_
                             (lambda (_L15640_ _L15642_)
                               (let* ((_g1565715665_
                                       (lambda (_g1565815661_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1565815661_)))
                                      (_g1565615684_
                                       (lambda (_g1565815669_)
                                         ((lambda (_L15672_)
                                            (let ()
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'foldr)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'cons)
                                                          (cons _L15672_
                                                                (cons _L15642_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _g1565815669_))))
                                 (_g1565615684_
                                  (_generate15215_ _L15640_ _d15279_)))))
                            (___kont3787537876_
                             (lambda (_L15526_ _L15528_)
                               (let* ((_g1553915554_
                                       (lambda (_g1554015550_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1554015550_)))
                                      (_g1553815599_
                                       (lambda (_g1554015558_)
                                         (if (gx#stx-pair? _g1554015558_)
                                             (let ((_e1554315561_
                                                    (gx#syntax-e
                                                     _g1554015558_)))
                                               (let ((_hd1554415565_
                                                      (##car _e1554315561_))
                                                     (_tl1554515568_
                                                      (##cdr _e1554315561_)))
                                                 (if (gx#stx-pair?
                                                      _tl1554515568_)
                                                     (let ((_e1554615571_
                                                            (gx#syntax-e
                                                             _tl1554515568_)))
                                                       (let ((_hd1554715575_
                                                              (##car _e1554615571_))
                                                             (_tl1554815578_
                                                              (##cdr _e1554615571_)))
                                                         (if (gx#stx-null?
                                                              _tl1554815578_)
                                                             ((lambda (_L15581_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L15583_)
                        (let ()
                          (cons (gx#datum->syntax '#f 'cons)
                                (cons _L15583_ (cons _L15581_ '())))))
                      _hd1554715575_
                      _hd1554415565_)
                     (_g1553915554_ _g1554015558_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1553915554_
                                                      _g1554015558_))))
                                             (_g1553915554_ _g1554015558_)))))
                                 (_g1553815599_
                                  (list (_generate15215_ _L15528_ _d15279_)
                                        (_generate15215_
                                         _L15526_
                                         _d15279_))))))
                            (___kont3787737878_
                             (lambda (_L15456_)
                               (let* ((_g1547015478_
                                       (lambda (_g1547115474_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1547115474_)))
                                      (_g1546915497_
                                       (lambda (_g1547115482_)
                                         ((lambda (_L15485_)
                                            (let ()
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'list->vector)
                                                    (cons _L15485_ '()))))
                                          _g1547115482_))))
                                 (_g1546915497_
                                  (_generate15215_
                                   (foldr (lambda (_g1550015503_ _g1550115506_)
                                            (cons _g1550015503_ _g1550115506_))
                                          '()
                                          _L15456_)
                                   _d15279_)))))
                            (___kont3788137882_
                             (lambda (_L15374_)
                               (let* ((_g1538415392_
                                       (lambda (_g1538515388_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1538515388_)))
                                      (_g1538315411_
                                       (lambda (_g1538515396_)
                                         ((lambda (_L15399_)
                                            (let ()
                                              (cons (gx#datum->syntax '#f 'box)
                                                    (cons _L15399_ '()))))
                                          _g1538515396_))))
                                 (_g1538315411_
                                  (_generate15215_ _L15374_ _d15279_)))))
                            (___kont3788337884_
                             (lambda (_L15353_)
                               (cons (gx#datum->syntax '#f 'quote)
                                     (cons _L15353_ '())))))
                        (let* ((_g1528615415_
                                (lambda ()
                                  (if (gx#stx-box? ___stx3786437865_)
                                      (let ((_e1533915370_
                                             (unbox (gx#syntax-e
                                                     ___stx3786437865_))))
                                        (___kont3788137882_ _e1533915370_))
                                      (___kont3788337884_ ___stx3786437865_))))
                               (___match3798337984_
                                (lambda (_e1532815422_
                                         ___splice3787937880_
                                         _target1532915426_
                                         _tl1533115429_)
                                  (letrec ((_loop1533215432_
                                            (lambda (_hd1533015436_
                                                     _e1533615439_)
                                              (if (gx#stx-pair? _hd1533015436_)
                                                  (let ((_e1533315442_
                                                         (gx#syntax-e
                                                          _hd1533015436_)))
                                                    (let ((_lp-tl1533515449_
                                                           (##cdr _e1533315442_))
                                                          (_lp-hd1533415446_
                                                           (##car _e1533315442_)))
                                                      (_loop1533215432_
                                                       _lp-tl1533515449_
                                                       (cons _lp-hd1533415446_
                                                             _e1533615439_))))
                                                  (let ((_e1533715452_
                                                         (reverse _e1533615439_)))
                                                    (___kont3787737878_
                                                     _e1533715452_))))))
                                    (_loop1533215432_
                                     _target1532915426_
                                     '()))))
                               (_g1528515509_
                                (lambda ()
                                  (if (gx#stx-vector? ___stx3786437865_)
                                      (let ((_e1532815422_
                                             (vector->list
                                              (gx#syntax-e
                                               ___stx3786437865_))))
                                        (if (gx#stx-pair/null? _e1532815422_)
                                            (let ((___splice3787937880_
                                                   (gx#syntax-split-splice
                                                    _e1532815422_
                                                    '0)))
                                              (let ((_tl1533115429_
                                                     (##vector-ref
                                                      ___splice3787937880_
                                                      '1))
                                                    (_target1532915426_
                                                     (##vector-ref
                                                      ___splice3787937880_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl1533115429_)
                                                    (___match3798337984_
                                                     _e1532815422_
                                                     ___splice3787937880_
                                                     _target1532915426_
                                                     _tl1533115429_)
                                                    (___kont3788337884_
                                                     ___stx3786437865_))))
                                            (___kont3788337884_
                                             ___stx3786437865_)))
                                      (_g1528615415_)))))
                          (if (gx#stx-pair? ___stx3786437865_)
                              (let ((_e1529115837_
                                     (gx#syntax-e ___stx3786437865_)))
                                (let ((_tl1529315844_ (##cdr _e1529115837_))
                                      (_hd1529215841_ (##car _e1529115837_)))
                                  (if (gx#identifier? _hd1529215841_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<sugar>$<sugar:2>[1]#_g41309_|
                                           _hd1529215841_)
                                          (if (gx#stx-pair? _tl1529315844_)
                                              (let ((_e1529415847_
                                                     (gx#syntax-e
                                                      _tl1529315844_)))
                                                (let ((_tl1529615854_
                                                       (##cdr _e1529415847_))
                                                      (_hd1529515851_
                                                       (##car _e1529415847_)))
                                                  (if (gx#stx-null?
                                                       _tl1529615854_)
                                                      (___kont3786737868_
                                                       _hd1529515851_)
                                                      (___kont3787537876_
                                                       _tl1529315844_
                                                       _hd1529215841_))))
                                              (___kont3787537876_
                                               _tl1529315844_
                                               _hd1529215841_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<sugar>$<sugar:2>[1]#_g41310_|
                                               _hd1529215841_)
                                              (if (gx#stx-pair? _tl1529315844_)
                                                  (let ((_e1530115776_
                                                         (gx#syntax-e
                                                          _tl1529315844_)))
                                                    (let ((_tl1530315783_
                                                           (##cdr _e1530115776_))
                                                          (_hd1530215780_
                                                           (##car _e1530115776_)))
                                                      (if (gx#stx-null?
                                                           _tl1530315783_)
                                                          (___kont3786937870_
                                                           _hd1530215780_)
                                                          (___kont3787537876_
                                                           _tl1529315844_
                                                           _hd1529215841_))))
                                                  (___kont3787537876_
                                                   _tl1529315844_
                                                   _hd1529215841_))
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<sugar>$<sugar:2>[1]#_g41311_|
                                                   _hd1529215841_)
                                                  (if (gx#stx-pair?
                                                       _tl1529315844_)
                                                      (let ((_e1530815705_
                                                             (gx#syntax-e
                                                              _tl1529315844_)))
                                                        (let ((_tl1531015712_
                                                               (##cdr _e1530815705_))
                                                              (_hd1530915709_
                                                               (##car _e1530815705_)))
                                                          (if (gx#stx-null?
                                                               _tl1531015712_)
                                                              (___kont3787137872_
                                                               _hd1530915709_)
                                                              (___kont3787537876_
                                                               _tl1529315844_
                                                               _hd1529215841_))))
                                                      (___kont3787537876_
                                                       _tl1529315844_
                                                       _hd1529215841_))
                                                  (___kont3787537876_
                                                   _tl1529315844_
                                                   _hd1529215841_))))
                                      (if (gx#stx-pair? _hd1529215841_)
                                          (let ((_e1531615620_
                                                 (gx#syntax-e _hd1529215841_)))
                                            (let ((_tl1531815627_
                                                   (##cdr _e1531615620_))
                                                  (_hd1531715624_
                                                   (##car _e1531615620_)))
                                              (if (gx#identifier?
                                                   _hd1531715624_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<sugar>$<sugar:2>[1]#_g41312_|
                                                       _hd1531715624_)
                                                      (if (gx#stx-pair?
                                                           _tl1531815627_)
                                                          (let ((_e1531915630_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1531815627_)))
                    (let ((_tl1532115637_ (##cdr _e1531915630_))
                          (_hd1532015634_ (##car _e1531915630_)))
                      (if (gx#stx-null? _tl1532115637_)
                          (if (fxzero? _d15279_)
                              (let ((_L15640_ _tl1529315844_)
                                    (_L15642_ _hd1532015634_))
                                (___kont3787337874_ _L15640_ _L15642_))
                              (___kont3787537876_
                               _tl1529315844_
                               _hd1529215841_))
                          (___kont3787537876_ _tl1529315844_ _hd1529215841_))))
                  (___kont3787537876_ _tl1529315844_ _hd1529215841_))
              (___kont3787537876_ _tl1529315844_ _hd1529215841_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont3787537876_
                                                   _tl1529315844_
                                                   _hd1529215841_))))
                                          (___kont3787537876_
                                           _tl1529315844_
                                           _hd1529215841_)))))
                              (_g1528515509_))))))))
          (let* ((_g1521715231_
                  (lambda (_g1521815227_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1521815227_)))
                 (_g1521615273_
                  (lambda (_g1521815235_)
                    (if (gx#stx-pair? _g1521815235_)
                        (let ((_e1522015238_ (gx#syntax-e _g1521815235_)))
                          (let ((_hd1522115242_ (##car _e1522015238_))
                                (_tl1522215245_ (##cdr _e1522015238_)))
                            (if (gx#stx-pair? _tl1522215245_)
                                (let ((_e1522315248_
                                       (gx#syntax-e _tl1522215245_)))
                                  (let ((_hd1522415252_ (##car _e1522315248_))
                                        (_tl1522515255_ (##cdr _e1522315248_)))
                                    (if (gx#stx-null? _tl1522515255_)
                                        ((lambda (_L15258_)
                                           (if (_simple-quote?15213_ _L15258_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _L15258_ '()))
                                               (_generate15215_ _L15258_ '0)))
                                         _hd1522415252_)
                                        (_g1521715231_ _g1521815235_))))
                                (_g1521715231_ _g1521815235_))))
                        (_g1521715231_ _g1521815235_)))))
            (_g1521615273_ _stx15210_)))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#delay|
      (lambda (_$stx16145_)
        (let* ((___stx3799037991_ _$stx16145_)
               (_g1615016171_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3799037991_))))
          (let ((___kont3799337994_
                 (lambda (_L16239_)
                   (cons (gx#datum->syntax '#f 'quote) (cons _L16239_ '()))))
                (___kont3799537996_
                 (lambda (_L16198_)
                   (cons (gx#datum->syntax '#f 'make-promise)
                         (cons (cons (gx#datum->syntax '#f 'lambda%)
                                     (cons '() (cons _L16198_ '())))
                               '())))))
            (let ((___match3801138012_
                   (lambda (_e1615316219_
                            _hd1615416223_
                            _tl1615516226_
                            _e1615616229_
                            _hd1615716233_
                            _tl1615816236_)
                     (let ((_L16239_ _hd1615716233_))
                       (if (gx#stx-datum? _L16239_)
                           (___kont3799337994_ _L16239_)
                           (___kont3799537996_ _hd1615716233_))))))
              (if (gx#stx-pair? ___stx3799037991_)
                  (let ((_e1615316219_ (gx#syntax-e ___stx3799037991_)))
                    (let ((_tl1615516226_ (##cdr _e1615316219_))
                          (_hd1615416223_ (##car _e1615316219_)))
                      (if (gx#stx-pair? _tl1615516226_)
                          (let ((_e1615616229_ (gx#syntax-e _tl1615516226_)))
                            (let ((_tl1615816236_ (##cdr _e1615616229_))
                                  (_hd1615716233_ (##car _e1615616229_)))
                              (if (gx#stx-null? _tl1615816236_)
                                  (___match3801138012_
                                   _e1615316219_
                                   _hd1615416223_
                                   _tl1615516226_
                                   _e1615616229_
                                   _hd1615716233_
                                   _tl1615816236_)
                                  (_g1615016171_))))
                          (_g1615016171_))))
                  (_g1615016171_)))))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#cut|
      (lambda (_stx16256_)
        (letrec ((_generate16259_
                  (lambda (_rest16378_)
                    (let _lp16381_ ((_rest16384_ _rest16378_)
                                    (_hd16386_ '())
                                    (_body16387_ '()))
                      (let* ((___stx3804838049_ _rest16384_)
                             (_g1639016402_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx3804838049_))))
                        (let ((___kont3805138052_
                               (lambda (_L16430_ _L16432_)
                                 (let* ((___stx3802838029_ _L16432_)
                                        (_g1644916456_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            ___stx3802838029_))))
                                   (let ((___kont3803138032_
                                          (lambda ()
                                            (let ((_arg16492_ (gx#genident)))
                                              (_lp16381_
                                               _L16430_
                                               (cons _arg16492_ _hd16386_)
                                               (cons _arg16492_
                                                     _body16387_)))))
                                         (___kont3803338034_
                                          (lambda ()
                                            (if (gx#stx-null? _L16430_)
                                                (let ((_tail16478_
                                                       (gx#genident)))
                                                  (values (foldl cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tail16478_
                         _hd16386_)
                  (foldl cons (list _tail16478_) _body16387_)
                  '#t))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _stx16256_
                                                 _L16432_))))
                                         (___kont3803538036_
                                          (lambda ()
                                            (_lp16381_
                                             _L16430_
                                             _hd16386_
                                             (cons _L16432_ _body16387_)))))
                                     (if (gx#identifier? ___stx3802838029_)
                                         (if (gx#free-identifier=?
                                              |gerbil/core$<sugar>$<sugar:2>[1]#_g41313_|
                                              ___stx3802838029_)
                                             (___kont3803138032_)
                                             (if (gx#free-identifier=?
                                                  |gerbil/core$<sugar>$<sugar:2>[1]#_g41314_|
                                                  ___stx3802838029_)
                                                 (___kont3803338034_)
                                                 (___kont3803538036_)))
                                         (___kont3803538036_))))))
                              (___kont3805338054_
                               (lambda ()
                                 (values (reverse _hd16386_)
                                         (reverse _body16387_)
                                         '#f))))
                          (if (gx#stx-pair? ___stx3804838049_)
                              (let ((_e1639416420_
                                     (gx#syntax-e ___stx3804838049_)))
                                (let ((_tl1639616427_ (##cdr _e1639416420_))
                                      (_hd1639516424_ (##car _e1639416420_)))
                                  (___kont3805138052_
                                   _tl1639616427_
                                   _hd1639516424_)))
                              (___kont3805338054_))))))))
          (let* ((_g1626216273_
                  (lambda (_g1626316269_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1626316269_)))
                 (_g1626116374_
                  (lambda (_g1626316277_)
                    (if (gx#stx-pair? _g1626316277_)
                        (let ((_e1626516280_ (gx#syntax-e _g1626316277_)))
                          (let ((_hd1626616284_ (##car _e1626516280_))
                                (_tl1626716287_ (##cdr _e1626516280_)))
                            ((lambda (_L16290_)
                               (if (and (gx#stx-list? _L16290_)
                                        (not (gx#stx-null? _L16290_)))
                                   (let ((_g41315_ (_generate16259_ _L16290_)))
                                     (begin
                                       (let ((_g41316_
                                              (if (##values? _g41315_)
                                                  (##vector-length _g41315_)
                                                  1)))
                                         (if (not (##fx= _g41316_ 3))
                                             (error "Context expects 3 values"
                                                    _g41316_)))
                                       (let ((_hd16303_
                                              (##vector-ref _g41315_ 0))
                                             (_body16305_
                                              (##vector-ref _g41315_ 1))
                                             (_tail?16306_
                                              (##vector-ref _g41315_ 2)))
                                         (let* ((_g1630816316_
                                                 (lambda (_g1630916312_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1630916312_)))
                                                (_g1630716370_
                                                 (lambda (_g1630916320_)
                                                   ((lambda (_L16323_)
                                                      (let ()
                                                        (let* ((_g1633616344_
                                                                (lambda (_g1633716340_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1633716340_)))
                       (_g1633516366_
                        (lambda (_g1633716348_)
                          ((lambda (_L16351_)
                             (let ()
                               (let ()
                                 (if _tail?16306_
                                     (cons (gx#datum->syntax '#f 'lambda%)
                                           (cons _L16323_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'apply)
                                                             _L16351_)
                                                       '())))
                                     (cons (gx#datum->syntax '#f 'lambda%)
                                           (cons _L16323_
                                                 (cons _L16351_ '())))))))
                           _g1633716348_))))
                  (_g1633516366_ _body16305_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1630916320_))))
                                           (_g1630716370_ _hd16303_)))))
                                   (_g1626216273_ _g1626316277_)))
                             _tl1626716287_)))
                        (_g1626216273_ _g1626316277_)))))
            (_g1626116374_ _stx16256_)))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#<>|
      (lambda (_$stx16504_)
        (let ((_g1650716514_
               (lambda (_g1650816510_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1650816510_))))
          (_g1650716514_ _$stx16504_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#<...>|
      (lambda (_$stx16518_)
        (let ((_g1652116528_
               (lambda (_g1652216524_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1652216524_))))
          (_g1652116528_ _$stx16518_))))))
