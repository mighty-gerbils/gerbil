(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g31595_|
    (gx#make-syntax-quote '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g31596_|
    (gx#make-syntax-quote 'else #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g31597_|
    (gx#make-syntax-quote 'else #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g31614_|
    (gx#make-syntax-quote 'values #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g31615_|
    (gx#make-syntax-quote 'values #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g31616_|
    (gx#make-syntax-quote 'values #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g31631_|
    (gx#make-syntax-quote
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g31632_|
    (gx#make-syntax-quote 'unquote #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g31635_|
    (gx#make-syntax-quote
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g31636_|
    (gx#make-syntax-quote
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g31637_|
    (gx#make-syntax-quote 'unquote #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g31638_|
    (gx#make-syntax-quote 'quasiquote #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g31639_|
    (gx#make-syntax-quote '<...> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g31640_|
    (gx#make-syntax-quote '<> #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#lambda|
      (lambda (_stx4871_)
        (letrec ((_simple-lambda?4874_
                  (lambda (_hd8024_) (gx#stx-andmap gx#identifier? _hd8024_)))
                 (_opt-lambda?4876_
                  (lambda (_hd7876_)
                    (let _lp7879_ ((_rest7882_ _hd7876_) (_opt?7884_ '#f))
                      (let* ((_g78877899_
                              (lambda (_g78887895_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g78887895_)))
                             (_g78867914_
                              (lambda (_g78887903_)
                                ((lambda ()
                                   (if _opt?7884_
                                       (let ((_$e7910_
                                              (gx#stx-null? _rest7882_)))
                                         (if _$e7910_
                                             _$e7910_
                                             (gx#identifier? _rest7882_)))
                                       '#f)))))
                             (_g78858020_
                              (lambda (_g78887918_)
                                (if (gx#stx-pair? _g78887918_)
                                    (let ((_e78917921_
                                           (gx#syntax-e _g78887918_)))
                                      (let ((_hd78927925_ (##car _e78917921_))
                                            (_tl78937928_ (##cdr _e78917921_)))
                                        ((lambda (_L7931_ _L7933_)
                                           (let* ((_g79497963_
                                                   (lambda (_g79507959_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g79507959_)))
                                                  (_g79487974_
                                                   (lambda (_g79507967_)
                                                     ((lambda ()
                                                        (if (gx#identifier?
                                                             _L7933_)
                                                            (if (not _opt?7884_)
                                                                (_lp7879_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L7931_
                         '#f)
                        '#f)
                    '#f)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g79478016_
                                                   (lambda (_g79507978_)
                                                     (if (gx#stx-pair?
                                                          _g79507978_)
                                                         (let ((_e79527981_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g79507978_)))
                   (let ((_hd79537985_ (##car _e79527981_))
                         (_tl79547988_ (##cdr _e79527981_)))
                     (if (gx#stx-pair? _tl79547988_)
                         (let ((_e79557991_ (gx#syntax-e _tl79547988_)))
                           (let ((_hd79567995_ (##car _e79557991_))
                                 (_tl79577998_ (##cdr _e79557991_)))
                             (if (gx#stx-null? _tl79577998_)
                                 ((lambda (_L8001_)
                                    (if (gx#identifier? _L8001_)
                                        (_lp7879_ _L7931_ '#t)
                                        (_g79487974_ _g79507978_)))
                                  _hd79537985_)
                                 (_g79487974_ _g79507978_))))
                         (_g79487974_ _g79507978_))))
                 (_g79487974_ _g79507978_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g79478016_ _L7933_)))
                                         _tl78937928_
                                         _hd78927925_)))
                                    (_g78867914_ _g78887918_)))))
                        (_g78858020_ _rest7882_)))))
                 (_opt-lambda-split4877_
                  (lambda (_hd7728_)
                    (let _lp7731_ ((_rest7734_ _hd7728_)
                                   (_pre7736_ '())
                                   (_opt7737_ '()))
                      (let* ((_g77407752_
                              (lambda (_g77417748_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g77417748_)))
                             (_g77397763_
                              (lambda (_g77417756_)
                                ((lambda ()
                                   (values (reverse _pre7736_)
                                           (reverse _opt7737_)
                                           (if (gx#identifier? _rest7734_)
                                               (_generate-bind4880_ _rest7734_)
                                               _rest7734_))))))
                             (_g77387872_
                              (lambda (_g77417767_)
                                (if (gx#stx-pair? _g77417767_)
                                    (let ((_e77447770_
                                           (gx#syntax-e _g77417767_)))
                                      (let ((_hd77457774_ (##car _e77447770_))
                                            (_tl77467777_ (##cdr _e77447770_)))
                                        ((lambda (_L7780_ _L7782_)
                                           (let* ((_g77987813_
                                                   (lambda (_g77997809_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g77997809_)))
                                                  (_g77977824_
                                                   (lambda (_g77997817_)
                                                     ((lambda ()
                                                        (_lp7731_
                                                         _L7780_
                                                         (cons (_generate-bind4880_
                                                                _L7782_)
                                                               _pre7736_)
                                                         _opt7737_)))))
                                                  (_g77967868_
                                                   (lambda (_g77997828_)
                                                     (if (gx#stx-pair?
                                                          _g77997828_)
                                                         (let ((_e78027831_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g77997828_)))
                   (let ((_hd78037835_ (##car _e78027831_))
                         (_tl78047838_ (##cdr _e78027831_)))
                     (if (gx#stx-pair? _tl78047838_)
                         (let ((_e78057841_ (gx#syntax-e _tl78047838_)))
                           (let ((_hd78067845_ (##car _e78057841_))
                                 (_tl78077848_ (##cdr _e78057841_)))
                             (if (gx#stx-null? _tl78077848_)
                                 ((lambda (_L7851_ _L7853_)
                                    (_lp7731_
                                     _L7780_
                                     _pre7736_
                                     (cons (cons (_generate-bind4880_ _L7853_)
                                                 _L7851_)
                                           _opt7737_)))
                                  _hd78067845_
                                  _hd78037835_)
                                 (_g77977824_ _g77997828_))))
                         (_g77977824_ _g77997828_))))
                 (_g77977824_ _g77997828_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g77967868_ _L7782_)))
                                         _tl77467777_
                                         _hd77457774_)))
                                    (_g77397763_ _g77417767_)))))
                        (_g77387872_ _rest7734_)))))
                 (_kw-lambda?4878_
                  (lambda (_hd7402_)
                    (let _lp7405_ ((_rest7408_ _hd7402_)
                                   (_opt?7410_ '#f)
                                   (_key?7411_ '#f))
                      (let* ((_g74167445_
                              (lambda (_g74177441_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g74177441_)))
                             (_g74157460_
                              (lambda (_g74177449_)
                                ((lambda ()
                                   (if _key?7411_
                                       (let ((_$e7456_
                                              (gx#stx-null? _rest7408_)))
                                         (if _$e7456_
                                             _$e7456_
                                             (gx#identifier? _rest7408_)))
                                       '#f)))))
                             (_g74147566_
                              (lambda (_g74177464_)
                                (if (gx#stx-pair? _g74177464_)
                                    (let ((_e74377467_
                                           (gx#syntax-e _g74177464_)))
                                      (let ((_hd74387471_ (##car _e74377467_))
                                            (_tl74397474_ (##cdr _e74377467_)))
                                        ((lambda (_L7477_ _L7479_)
                                           (let* ((_g74957509_
                                                   (lambda (_g74967505_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g74967505_)))
                                                  (_g74947520_
                                                   (lambda (_g74967513_)
                                                     ((lambda ()
                                                        (if (gx#identifier?
                                                             _L7479_)
                                                            (if (not _opt?7410_)
                                                                (_lp7405_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L7477_
                         '#f
                         _key?7411_)
                        '#f)
                    '#f)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g74937562_
                                                   (lambda (_g74967524_)
                                                     (if (gx#stx-pair?
                                                          _g74967524_)
                                                         (let ((_e74987527_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g74967524_)))
                   (let ((_hd74997531_ (##car _e74987527_))
                         (_tl75007534_ (##cdr _e74987527_)))
                     (if (gx#stx-pair? _tl75007534_)
                         (let ((_e75017537_ (gx#syntax-e _tl75007534_)))
                           (let ((_hd75027541_ (##car _e75017537_))
                                 (_tl75037544_ (##cdr _e75017537_)))
                             (if (gx#stx-null? _tl75037544_)
                                 ((lambda (_L7547_)
                                    (if (gx#identifier? _L7547_)
                                        (_lp7405_ _L7477_ '#t _key?7411_)
                                        '#f))
                                  _hd74997531_)
                                 (_g74947520_ _g74967524_))))
                         (_g74947520_ _g74967524_))))
                 (_g74947520_ _g74967524_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g74937562_ _L7479_)))
                                         _tl74397474_
                                         _hd74387471_)))
                                    (_g74157460_ _g74177464_))))
                             (_g74137608_
                              (lambda (_g74177570_)
                                (if (gx#stx-pair? _g74177570_)
                                    (let ((_e74297573_
                                           (gx#syntax-e _g74177570_)))
                                      (let ((_hd74307577_ (##car _e74297573_))
                                            (_tl74317580_ (##cdr _e74297573_)))
                                        (if (gx#stx-datum? _hd74307577_)
                                            (if (equal? (gx#stx-e _hd74307577_)
                                                        '#!key)
                                                (if (gx#stx-pair? _tl74317580_)
                                                    (let ((_e74327583_
                                                           (gx#syntax-e
                                                            _tl74317580_)))
                                                      (let ((_hd74337587_
                                                             (##car _e74327583_))
                                                            (_tl74347590_
                                                             (##cdr _e74327583_)))
                                                        ((lambda (_L7593_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L7595_)
                   (if (gx#identifier? _L7595_)
                       (_lp7405_ _L7593_ _opt?7410_ '#t)
                       '#f))
                 _tl74347590_
                 _hd74337587_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g74147566_ _g74177570_))
                                                (_g74147566_ _g74177570_))
                                            (_g74147566_ _g74177570_))))
                                    (_g74147566_ _g74177570_))))
                             (_g74127724_
                              (lambda (_g74177612_)
                                (if (gx#stx-pair? _g74177612_)
                                    (let ((_e74217615_
                                           (gx#syntax-e _g74177612_)))
                                      (let ((_hd74227619_ (##car _e74217615_))
                                            (_tl74237622_ (##cdr _e74217615_)))
                                        (if (gx#stx-pair? _tl74237622_)
                                            (let ((_e74247625_
                                                   (gx#syntax-e _tl74237622_)))
                                              (let ((_hd74257629_
                                                     (##car _e74247625_))
                                                    (_tl74267632_
                                                     (##cdr _e74247625_)))
                                                ((lambda (_L7635_
                                                          _L7637_
                                                          _L7638_)
                                                   (if (gx#stx-keyword?
                                                        _L7638_)
                                                       (let* ((_g76537667_
                                                               (lambda (_g76547663_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g76547663_)))
                      (_g76527678_
                       (lambda (_g76547671_)
                         ((lambda ()
                            (if (gx#identifier? _L7637_)
                                (_lp7405_ _L7635_ _opt?7410_ '#t)
                                '#f)))))
                      (_g76517720_
                       (lambda (_g76547682_)
                         (if (gx#stx-pair? _g76547682_)
                             (let ((_e76567685_ (gx#syntax-e _g76547682_)))
                               (let ((_hd76577689_ (##car _e76567685_))
                                     (_tl76587692_ (##cdr _e76567685_)))
                                 (if (gx#stx-pair? _tl76587692_)
                                     (let ((_e76597695_
                                            (gx#syntax-e _tl76587692_)))
                                       (let ((_hd76607699_ (##car _e76597695_))
                                             (_tl76617702_
                                              (##cdr _e76597695_)))
                                         (if (gx#stx-null? _tl76617702_)
                                             ((lambda (_L7705_)
                                                (if (gx#identifier? _L7705_)
                                                    (_lp7405_
                                                     _L7635_
                                                     _opt?7410_
                                                     '#t)
                                                    '#f))
                                              _hd76577689_)
                                             (_g76527678_ _g76547682_))))
                                     (_g76527678_ _g76547682_))))
                             (_g76527678_ _g76547682_)))))
                 (_g76517720_ _L7637_))
               (_g74137608_ _g74177612_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _tl74267632_
                                                 _hd74257629_
                                                 _hd74227619_)))
                                            (_g74137608_ _g74177612_))))
                                    (_g74137608_ _g74177612_)))))
                        (_g74127724_ _rest7408_)))))
                 (_kw-lambda-split4879_
                  (lambda (_hd7141_)
                    (let _lp7144_ ((_rest7147_ _hd7141_)
                                   (_kwvar7149_ '#f)
                                   (_kwargs7150_ '())
                                   (_args7151_ '()))
                      (let* ((_g71567185_
                              (lambda (_g71577181_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g71577181_)))
                             (_g71557196_
                              (lambda (_g71577189_)
                                ((lambda ()
                                   (values _kwvar7149_
                                           (reverse _kwargs7150_)
                                           (foldl cons
                                                  _rest7147_
                                                  _args7151_))))))
                             (_g71547230_
                              (lambda (_g71577200_)
                                (if (gx#stx-pair? _g71577200_)
                                    (let ((_e71777203_
                                           (gx#syntax-e _g71577200_)))
                                      (let ((_hd71787207_ (##car _e71777203_))
                                            (_tl71797210_ (##cdr _e71777203_)))
                                        ((lambda (_L7213_ _L7215_)
                                           (_lp7144_
                                            _L7213_
                                            _kwvar7149_
                                            _kwargs7150_
                                            (cons _L7215_ _args7151_)))
                                         _tl71797210_
                                         _hd71787207_)))
                                    (_g71557196_ _g71577200_))))
                             (_g71537272_
                              (lambda (_g71577234_)
                                (if (gx#stx-pair? _g71577234_)
                                    (let ((_e71697237_
                                           (gx#syntax-e _g71577234_)))
                                      (let ((_hd71707241_ (##car _e71697237_))
                                            (_tl71717244_ (##cdr _e71697237_)))
                                        (if (gx#stx-datum? _hd71707241_)
                                            (if (equal? (gx#stx-e _hd71707241_)
                                                        '#!key)
                                                (if (gx#stx-pair? _tl71717244_)
                                                    (let ((_e71727247_
                                                           (gx#syntax-e
                                                            _tl71717244_)))
                                                      (let ((_hd71737251_
                                                             (##car _e71727247_))
                                                            (_tl71747254_
                                                             (##cdr _e71727247_)))
                                                        ((lambda (_L7257_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L7259_)
                   (if _kwvar7149_
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; duplicate #!key argument"
                        _stx4871_
                        _hd7141_
                        _L7259_)
                       (_lp7144_
                        _L7257_
                        (_generate-bind4880_ _L7259_)
                        _kwargs7150_
                        _args7151_)))
                 _tl71747254_
                 _hd71737251_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g71547230_ _g71577234_))
                                                (_g71547230_ _g71577234_))
                                            (_g71547230_ _g71577234_))))
                                    (_g71547230_ _g71577234_))))
                             (_g71527398_
                              (lambda (_g71577276_)
                                (if (gx#stx-pair? _g71577276_)
                                    (let ((_e71617279_
                                           (gx#syntax-e _g71577276_)))
                                      (let ((_hd71627283_ (##car _e71617279_))
                                            (_tl71637286_ (##cdr _e71617279_)))
                                        (if (gx#stx-pair? _tl71637286_)
                                            (let ((_e71647289_
                                                   (gx#syntax-e _tl71637286_)))
                                              (let ((_hd71657293_
                                                     (##car _e71647289_))
                                                    (_tl71667296_
                                                     (##cdr _e71647289_)))
                                                ((lambda (_L7299_
                                                          _L7301_
                                                          _L7302_)
                                                   (if (gx#stx-keyword?
                                                        _L7302_)
                                                       (let ((_key7316_
                                                              (gx#stx-e
                                                               _L7302_)))
                                                         (if (find (lambda (_kwarg7319_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (eq? _key7316_ (car _kwarg7319_)))
                           _kwargs7150_)
                     (gx#raise-syntax-error
                      '#f
                      '"Bad syntax; duplicate keyword argument"
                      _stx4871_
                      _hd7141_
                      _key7316_)
                     (let* ((_g73237338_
                             (lambda (_g73247334_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g73247334_)))
                            (_g73227349_
                             (lambda (_g73247342_)
                               ((lambda ()
                                  (_lp7144_
                                   _L7299_
                                   _kwvar7149_
                                   (cons (list _key7316_
                                               (_generate-bind4880_ _L7301_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'error)
                                                     (cons '"Missing required keyword argument"
                                                           (cons _L7302_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _kwargs7150_)
                                   _args7151_)))))
                            (_g73217394_
                             (lambda (_g73247353_)
                               (if (gx#stx-pair? _g73247353_)
                                   (let ((_e73277356_
                                          (gx#syntax-e _g73247353_)))
                                     (let ((_hd73287360_ (##car _e73277356_))
                                           (_tl73297363_ (##cdr _e73277356_)))
                                       (if (gx#stx-pair? _tl73297363_)
                                           (let ((_e73307366_
                                                  (gx#syntax-e _tl73297363_)))
                                             (let ((_hd73317370_
                                                    (##car _e73307366_))
                                                   (_tl73327373_
                                                    (##cdr _e73307366_)))
                                               (if (gx#stx-null? _tl73327373_)
                                                   ((lambda (_L7376_ _L7378_)
                                                      (_lp7144_
                                                       _L7299_
                                                       _kwvar7149_
                                                       (cons (list _key7316_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_generate-bind4880_ _L7378_)
                           _L7376_)
                     _kwargs7150_)
               _args7151_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd73317370_
                                                    _hd73287360_)
                                                   (_g73227349_ _g73247353_))))
                                           (_g73227349_ _g73247353_))))
                                   (_g73227349_ _g73247353_)))))
                       (_g73217394_ _L7301_))))
               (_g71537272_ _g71577276_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _tl71667296_
                                                 _hd71657293_
                                                 _hd71627283_)))
                                            (_g71537272_ _g71577276_))))
                                    (_g71537272_ _g71577276_)))))
                        (_g71527398_ _rest7147_)))))
                 (_generate-bind4880_
                  (lambda (_e7138_)
                    (if (gx#underscore? _e7138_)
                        (gx#genident _e7138_)
                        _e7138_)))
                 (_check-duplicate-bindings4881_
                  (lambda (_hd6835_)
                    (letrec ((_cons-id6838_
                              (lambda (_id7134_ _ids7136_)
                                (if (gx#underscore? _id7134_)
                                    _ids7136_
                                    (cons _id7134_ _ids7136_)))))
                      (let _lp6841_ ((_rest6844_ _hd6835_) (_ids6846_ '()))
                        (let* ((_g68496861_
                                (lambda (_g68506857_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g68506857_)))
                               (_g68486872_
                                (lambda (_g68506865_)
                                  ((lambda ()
                                     (gx#check-duplicate-identifiers
                                      (if (gx#stx-null? _rest6844_)
                                          _ids6846_
                                          (_cons-id6838_ _rest6844_ _ids6846_))
                                      _stx4871_)))))
                               (_g68477130_
                                (lambda (_g68506876_)
                                  (if (gx#stx-pair? _g68506876_)
                                      (let ((_e68536879_
                                             (gx#syntax-e _g68506876_)))
                                        (let ((_hd68546883_
                                               (##car _e68536879_))
                                              (_tl68556886_
                                               (##cdr _e68536879_)))
                                          ((lambda (_L6889_ _L6891_)
                                             (if (gx#identifier? _L6891_)
                                                 (_lp6841_
                                                  _L6889_
                                                  (_cons-id6838_
                                                   _L6891_
                                                   _ids6846_))
                                                 (if (gx#stx-pair? _L6891_)
                                                     (let* ((_g69076921_
                                                             (lambda (_g69086917_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g69086917_)))
                                                            (_g69066962_
                                                             (lambda (_g69086925_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g69086925_)
                           (let ((_e69106928_ (gx#syntax-e _g69086925_)))
                             (let ((_hd69116932_ (##car _e69106928_))
                                   (_tl69126935_ (##cdr _e69106928_)))
                               (if (gx#stx-pair? _tl69126935_)
                                   (let ((_e69136938_
                                          (gx#syntax-e _tl69126935_)))
                                     (let ((_hd69146942_ (##car _e69136938_))
                                           (_tl69156945_ (##cdr _e69136938_)))
                                       (if (gx#stx-null? _tl69156945_)
                                           ((lambda (_L6948_)
                                              (_lp6841_
                                               _L6889_
                                               (_cons-id6838_
                                                _L6948_
                                                _ids6846_)))
                                            _hd69116932_)
                                           (_g69076921_ _g69086925_))))
                                   (_g69076921_ _g69086925_))))
                           (_g69076921_ _g69086925_)))))
               (_g69066962_ _L6891_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-keyword?
                                                          _L6891_)
                                                         (let* ((_g69666978_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g69676974_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g69676974_)))
                        (_g69657080_
                         (lambda (_g69676982_)
                           (if (gx#stx-pair? _g69676982_)
                               (let ((_e69706985_ (gx#syntax-e _g69676982_)))
                                 (let ((_hd69716989_ (##car _e69706985_))
                                       (_tl69726992_ (##cdr _e69706985_)))
                                   ((lambda (_L6995_ _L6997_)
                                      (let* ((_g70097023_
                                              (lambda (_g70107019_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _g70107019_)))
                                             (_g70087034_
                                              (lambda (_g70107027_)
                                                ((lambda ()
                                                   (_lp6841_
                                                    _L6995_
                                                    (_cons-id6838_
                                                     _L6997_
                                                     _ids6846_))))))
                                             (_g70077076_
                                              (lambda (_g70107038_)
                                                (if (gx#stx-pair? _g70107038_)
                                                    (let ((_e70127041_
                                                           (gx#syntax-e
                                                            _g70107038_)))
                                                      (let ((_hd70137045_
                                                             (##car _e70127041_))
                                                            (_tl70147048_
                                                             (##cdr _e70127041_)))
                                                        (if (gx#stx-pair?
                                                             _tl70147048_)
                                                            (let ((_e70157051_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl70147048_)))
                      (let ((_hd70167055_ (##car _e70157051_))
                            (_tl70177058_ (##cdr _e70157051_)))
                        (if (gx#stx-null? _tl70177058_)
                            ((lambda (_L7061_)
                               (_lp6841_
                                _L6995_
                                (_cons-id6838_ _L7061_ _ids6846_)))
                             _hd70137045_)
                            (_g70087034_ _g70107038_))))
                    (_g70087034_ _g70107038_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g70087034_
                                                     _g70107038_)))))
                                        (_g70077076_ _L6997_)))
                                    _tl69726992_
                                    _hd69716989_)))
                               (_g69666978_ _g69676982_)))))
                   (_g69657080_ _L6889_))
                 (if (eq? (gx#stx-e _L6891_) '#!key)
                     (let* ((_g70847096_
                             (lambda (_g70857092_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g70857092_)))
                            (_g70837126_
                             (lambda (_g70857100_)
                               (if (gx#stx-pair? _g70857100_)
                                   (let ((_e70887103_
                                          (gx#syntax-e _g70857100_)))
                                     (let ((_hd70897107_ (##car _e70887103_))
                                           (_tl70907110_ (##cdr _e70887103_)))
                                       ((lambda (_L7113_ _L7115_)
                                          (_lp6841_
                                           _L7113_
                                           (_cons-id6838_ _L7115_ _ids6846_)))
                                        _tl70907110_
                                        _hd70897107_)))
                                   (_g70847096_ _g70857100_)))))
                       (_g70837126_ _L6889_))
                     (error '"BUG: check-duplicate-bindings"
                            _stx4871_
                            _rest6844_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _tl68556886_
                                           _hd68546883_)))
                                      (_g68486872_ _g68506876_)))))
                          (_g68477130_ _rest6844_))))))
                 (_generate-opt-primary4882_
                  (lambda (_pre6627_ _opt6629_ _tail6630_ _body6631_)
                    (let* ((_g66336674_
                            (lambda (_g66346670_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g66346670_)))
                           (_g66326831_
                            (lambda (_g66346678_)
                              (if (gx#stx-pair? _g66346678_)
                                  (let ((_e66396681_
                                         (gx#syntax-e _g66346678_)))
                                    (let ((_hd66406685_ (##car _e66396681_))
                                          (_tl66416688_ (##cdr _e66396681_)))
                                      (if (gx#stx-pair/null? _hd66406685_)
                                          (if (fx>= (gx#stx-length
                                                     _hd66406685_)
                                                    '0)
                                              (let ((_g31565_
                                                     (gx#syntax-split-splice
                                                      _hd66406685_
                                                      '0)))
                                                (begin
                                                  (let ((_g31566_
                                                         (values-count
                                                          _g31565_)))
                                                    (if (not (fx= _g31566_ 2))
                                                        (error "Context expects 2 values"
                                                               _g31566_)))
                                                  (let ((_target66426691_
                                                         (values-ref
                                                          _g31565_
                                                          0))
                                                        (_tl66446694_
                                                         (values-ref
                                                          _g31565_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl66446694_)
                                                        (letrec ((_loop66456697_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd66436701_ _pre66496704_)
                            (if (gx#stx-pair? _hd66436701_)
                                (let ((_e66466707_ (gx#syntax-e _hd66436701_)))
                                  (let ((_lp-hd66476711_ (##car _e66466707_))
                                        (_lp-tl66486714_ (##cdr _e66466707_)))
                                    (_loop66456697_
                                     _lp-tl66486714_
                                     (cons _lp-hd66476711_ _pre66496704_))))
                                (let ((_pre66506717_ (reverse _pre66496704_)))
                                  (if (gx#stx-pair? _tl66416688_)
                                      (let ((_e66516721_
                                             (gx#syntax-e _tl66416688_)))
                                        (let ((_hd66526725_
                                               (##car _e66516721_))
                                              (_tl66536728_
                                               (##cdr _e66516721_)))
                                          (if (gx#stx-pair/null? _hd66526725_)
                                              (if (fx>= (gx#stx-length
                                                         _hd66526725_)
                                                        '0)
                                                  (let ((_g31567_
                                                         (gx#syntax-split-splice
                                                          _hd66526725_
                                                          '0)))
                                                    (begin
                                                      (let ((_g31568_
                                                             (values-count
                                                              _g31567_)))
                                                        (if (not (fx= _g31568_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g31568_)))
              (let ((_target66546731_ (values-ref _g31567_ 0))
                    (_tl66566734_ (values-ref _g31567_ 1)))
                (if (gx#stx-null? _tl66566734_)
                    (letrec ((_loop66576737_
                              (lambda (_hd66556741_ _opt66616744_)
                                (if (gx#stx-pair? _hd66556741_)
                                    (let ((_e66586747_
                                           (gx#syntax-e _hd66556741_)))
                                      (let ((_lp-hd66596751_
                                             (##car _e66586747_))
                                            (_lp-tl66606754_
                                             (##cdr _e66586747_)))
                                        (_loop66576737_
                                         _lp-tl66606754_
                                         (cons _lp-hd66596751_
                                               _opt66616744_))))
                                    (let ((_opt66626757_
                                           (reverse _opt66616744_)))
                                      (if (gx#stx-pair? _tl66536728_)
                                          (let ((_e66636761_
                                                 (gx#syntax-e _tl66536728_)))
                                            (let ((_hd66646765_
                                                   (##car _e66636761_))
                                                  (_tl66656768_
                                                   (##cdr _e66636761_)))
                                              (if (gx#stx-pair? _tl66656768_)
                                                  (let ((_e66666771_
                                                         (gx#syntax-e
                                                          _tl66656768_)))
                                                    (let ((_hd66676775_
                                                           (##car _e66666771_))
                                                          (_tl66686778_
                                                           (##cdr _e66666771_)))
                                                      (if (gx#stx-null?
                                                           _tl66686778_)
                                                          ((lambda (_L6781_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L6783_
                            _L6784_
                            _L6785_)
                     (let ()
                       (cons (gx#datum->syntax '#f 'lambda%)
                             (cons (begin
                                     '#!void
                                     (foldr (lambda (_g68146819_ _g68156822_)
                                              (cons _g68146819_ _g68156822_))
                                            (begin
                                              '#!void
                                              (foldr (lambda (_g68166825_
                                                              _g68176828_)
                                                       (cons _g68166825_
                                                             _g68176828_))
                                                     _L6783_
                                                     _L6784_))
                                            _L6785_))
                                   _L6781_))))
                   _hd66676775_
                   _hd66646765_
                   _opt66626757_
                   _pre66506717_)
                  (_g66336674_ _g66346678_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g66336674_ _g66346678_))))
                                          (_g66336674_ _g66346678_)))))))
                      (_loop66576737_ _target66546731_ '()))
                    (_g66336674_ _g66346678_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g66336674_ _g66346678_))
                                              (_g66336674_ _g66346678_))))
                                      (_g66336674_ _g66346678_)))))))
                  (_loop66456697_ _target66426691_ '()))
                (_g66336674_ _g66346678_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g66336674_ _g66346678_))
                                          (_g66336674_ _g66346678_))))
                                  (_g66336674_ _g66346678_)))))
                      (_g66326831_
                       (list _pre6627_
                             (map car _opt6629_)
                             _tail6630_
                             _body6631_)))))
                 (_generate-opt-dispatch4883_
                  (lambda (_primary6621_ _pre6623_ _opt6624_ _tail6625_)
                    (cons (list _pre6623_
                                (_generate-opt-clause4885_
                                 _primary6621_
                                 _pre6623_
                                 _opt6624_))
                          (_generate-opt-dispatch*4884_
                           _primary6621_
                           _pre6623_
                           _opt6624_
                           _tail6625_))))
                 (_generate-opt-dispatch*4884_
                  (lambda (_primary6178_ _pre6180_ _opt6181_ _tail6182_)
                    (let _recur6184_ ((_opt-rest6187_ _opt6181_)
                                      (_right6189_ '()))
                      (if (pair? _opt-rest6187_)
                          (let* ((_hd6191_ (caar _opt-rest6187_))
                                 (_rest6194_ (cdr _opt-rest6187_))
                                 (_right*6197_ (cons _hd6191_ _right6189_))
                                 (_g62006217_
                                  (lambda (_g62016213_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g62016213_)))
                                 (_g61996400_
                                  (lambda (_g62016221_)
                                    (if (gx#stx-pair/null? _g62016221_)
                                        (if (fx>= (gx#stx-length _g62016221_)
                                                  '0)
                                            (let ((_g31569_
                                                   (gx#syntax-split-splice
                                                    _g62016221_
                                                    '0)))
                                              (begin
                                                (let ((_g31570_
                                                       (values-count
                                                        _g31569_)))
                                                  (if (not (fx= _g31570_ 2))
                                                      (error "Context expects 2 values"
                                                             _g31570_)))
                                                (let ((_target62036224_
                                                       (values-ref _g31569_ 0))
                                                      (_tl62056227_
                                                       (values-ref
                                                        _g31569_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl62056227_)
                                                      (letrec ((_loop62066230_
                                                                (lambda (_hd62046234_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _pre-bind62106237_)
                          (if (gx#stx-pair? _hd62046234_)
                              (let ((_e62076240_ (gx#syntax-e _hd62046234_)))
                                (let ((_lp-hd62086244_ (##car _e62076240_))
                                      (_lp-tl62096247_ (##cdr _e62076240_)))
                                  (_loop62066230_
                                   _lp-tl62096247_
                                   (cons _lp-hd62086244_ _pre-bind62106237_))))
                              (let ((_pre-bind62116250_
                                     (reverse _pre-bind62106237_)))
                                ((lambda (_L6254_)
                                   (let ()
                                     (let* ((_g62756292_
                                             (lambda (_g62766288_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g62766288_)))
                                            (_g62746396_
                                             (lambda (_g62766296_)
                                               (if (gx#stx-pair/null?
                                                    _g62766296_)
                                                   (if (fx>= (gx#stx-length
                                                              _g62766296_)
                                                             '0)
                                                       (let ((_g31571_
                                                              (gx#syntax-split-splice
                                                               _g62766296_
                                                               '0)))
                                                         (begin
                                                           (let ((_g31572_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (values-count _g31571_)))
                     (if (not (fx= _g31572_ 2))
                         (error "Context expects 2 values" _g31572_)))
                   (let ((_target62786299_ (values-ref _g31571_ 0))
                         (_tl62806302_ (values-ref _g31571_ 1)))
                     (if (gx#stx-null? _tl62806302_)
                         (letrec ((_loop62816305_
                                   (lambda (_hd62796309_ _opt-bind62856312_)
                                     (if (gx#stx-pair? _hd62796309_)
                                         (let ((_e62826315_
                                                (gx#syntax-e _hd62796309_)))
                                           (let ((_lp-hd62836319_
                                                  (##car _e62826315_))
                                                 (_lp-tl62846322_
                                                  (##cdr _e62826315_)))
                                             (_loop62816305_
                                              _lp-tl62846322_
                                              (cons _lp-hd62836319_
                                                    _opt-bind62856312_))))
                                         (let ((_opt-bind62866325_
                                                (reverse _opt-bind62856312_)))
                                           ((lambda (_L6329_)
                                              (let ()
                                                (let* ((_g63466354_
                                                        (lambda (_g63476350_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g63476350_)))
                                                       (_g63456392_
                                                        (lambda (_g63476358_)
                                                          ((lambda (_L6361_)
                                                             (let ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (list (begin
                                       '#!void
                                       (foldr (lambda (_g63756380_ _g63766383_)
                                                (cons _g63756380_ _g63766383_))
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g63776386_
                                                                _g63786389_)
                                                         (cons _g63776386_
                                                               _g63786389_))
                                                       (cons _L6361_ '())
                                                       _L6329_))
                                              _L6254_))
                                     (_generate-opt-clause4885_
                                      _primary6178_
                                      (foldr cons
                                             (reverse _right*6197_)
                                             _pre6180_)
                                      _rest6194_))
                               (_recur6184_ _rest6194_ _right*6197_)))))
                   _g63476358_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g63456392_ _hd6191_))))
                                            _opt-bind62866325_))))))
                           (_loop62816305_ _target62786299_ '()))
                         (_g62756292_ _g62766296_)))))
               (_g62756292_ _g62766296_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g62756292_
                                                    _g62766296_)))))
                                       (_g62746396_ (reverse _right6189_)))))
                                 _pre-bind62116250_))))))
                (_loop62066230_ _target62036224_ '()))
              (_g62006217_ _g62016221_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g62006217_ _g62016221_))
                                        (_g62006217_ _g62016221_)))))
                            (_g61996400_ _pre6180_))
                          (if (gx#stx-null? _tail6182_)
                              '()
                              (let* ((_g64046445_
                                      (lambda (_g64056441_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g64056441_)))
                                     (_g64036617_
                                      (lambda (_g64056449_)
                                        (if (gx#stx-pair? _g64056449_)
                                            (let ((_e64106452_
                                                   (gx#syntax-e _g64056449_)))
                                              (let ((_hd64116456_
                                                     (##car _e64106452_))
                                                    (_tl64126459_
                                                     (##cdr _e64106452_)))
                                                (if (gx#stx-pair/null?
                                                     _hd64116456_)
                                                    (if (fx>= (gx#stx-length
                                                               _hd64116456_)
                                                              '0)
                                                        (let ((_g31573_
                                                               (gx#syntax-split-splice
                                                                _hd64116456_
                                                                '0)))
                                                          (begin
                                                            (let ((_g31574_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (values-count _g31573_)))
                      (if (not (fx= _g31574_ 2))
                          (error "Context expects 2 values" _g31574_)))
                    (let ((_target64136462_ (values-ref _g31573_ 0))
                          (_tl64156465_ (values-ref _g31573_ 1)))
                      (if (gx#stx-null? _tl64156465_)
                          (letrec ((_loop64166468_
                                    (lambda (_hd64146472_ _pre64206475_)
                                      (if (gx#stx-pair? _hd64146472_)
                                          (let ((_e64176478_
                                                 (gx#syntax-e _hd64146472_)))
                                            (let ((_lp-hd64186482_
                                                   (##car _e64176478_))
                                                  (_lp-tl64196485_
                                                   (##cdr _e64176478_)))
                                              (_loop64166468_
                                               _lp-tl64196485_
                                               (cons _lp-hd64186482_
                                                     _pre64206475_))))
                                          (let ((_pre64216488_
                                                 (reverse _pre64206475_)))
                                            (if (gx#stx-pair? _tl64126459_)
                                                (let ((_e64226492_
                                                       (gx#syntax-e
                                                        _tl64126459_)))
                                                  (let ((_hd64236496_
                                                         (##car _e64226492_))
                                                        (_tl64246499_
                                                         (##cdr _e64226492_)))
                                                    (if (gx#stx-pair/null?
                                                         _hd64236496_)
                                                        (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd64236496_)
                          '0)
                    (let ((_g31575_ (gx#syntax-split-splice _hd64236496_ '0)))
                      (begin
                        (let ((_g31576_ (values-count _g31575_)))
                          (if (not (fx= _g31576_ 2))
                              (error "Context expects 2 values" _g31576_)))
                        (let ((_target64256502_ (values-ref _g31575_ 0))
                              (_tl64276505_ (values-ref _g31575_ 1)))
                          (if (gx#stx-null? _tl64276505_)
                              (letrec ((_loop64286508_
                                        (lambda (_hd64266512_ _opt64326515_)
                                          (if (gx#stx-pair? _hd64266512_)
                                              (let ((_e64296518_
                                                     (gx#syntax-e
                                                      _hd64266512_)))
                                                (let ((_lp-hd64306522_
                                                       (##car _e64296518_))
                                                      (_lp-tl64316525_
                                                       (##cdr _e64296518_)))
                                                  (_loop64286508_
                                                   _lp-tl64316525_
                                                   (cons _lp-hd64306522_
                                                         _opt64326515_))))
                                              (let ((_opt64336528_
                                                     (reverse _opt64326515_)))
                                                (if (gx#stx-pair? _tl64246499_)
                                                    (let ((_e64346532_
                                                           (gx#syntax-e
                                                            _tl64246499_)))
                                                      (let ((_hd64356536_
                                                             (##car _e64346532_))
                                                            (_tl64366539_
                                                             (##cdr _e64346532_)))
                                                        (if (gx#stx-pair?
                                                             _tl64366539_)
                                                            (let ((_e64376542_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl64366539_)))
                      (let ((_hd64386546_ (##car _e64376542_))
                            (_tl64396549_ (##cdr _e64376542_)))
                        (if (gx#stx-null? _tl64396549_)
                            ((lambda (_L6552_ _L6554_ _L6555_ _L6556_)
                               (let ()
                                 (list (list (begin
                                               '#!void
                                               (foldr (lambda (_g65846589_
                                                               _g65856592_)
                                                        (cons _g65846589_
                                                              _g65856592_))
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g65866595_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g65876598_)
                         (cons _g65866595_ _g65876598_))
                       _L6554_
                       _L6555_))
              _L6556_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (gx#stx-wrap-source
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'apply)
                                                    (cons _L6552_
                                                          (begin
                                                            '#!void
                                                            (foldr (lambda (_g66006605_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g66016608_)
                             (cons _g66006605_ _g66016608_))
                           (begin
                             '#!void
                             (foldr (lambda (_g66026611_ _g66036614_)
                                      (cons _g66026611_ _g66036614_))
                                    (cons _L6554_ '())
                                    _L6555_))
                           _L6556_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx4871_))))))
                             _hd64386546_
                             _hd64356536_
                             _opt64336528_
                             _pre64216488_)
                            (_g64046445_ _g64056449_))))
                    (_g64046445_ _g64056449_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g64046445_
                                                     _g64056449_)))))))
                                (_loop64286508_ _target64256502_ '()))
                              (_g64046445_ _g64056449_)))))
                    (_g64046445_ _g64056449_))
                (_g64046445_ _g64056449_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g64046445_ _g64056449_)))))))
                            (_loop64166468_ _target64136462_ '()))
                          (_g64046445_ _g64056449_)))))
                (_g64046445_ _g64056449_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g64046445_
                                                     _g64056449_))))
                                            (_g64046445_ _g64056449_)))))
                                (_g64036617_
                                 (list _pre6180_
                                       (reverse _right6189_)
                                       _tail6182_
                                       _primary6178_))))))))
                 (_generate-opt-clause4885_
                  (lambda (_primary5876_ _pre5878_ _opt5879_)
                    (let _recur5881_ ((_opt-rest5884_ _opt5879_)
                                      (_right5886_ '()))
                      (if (pair? _opt-rest5884_)
                          (let* ((_hd5888_ (car _opt-rest5884_))
                                 (_rest5891_ (cdr _opt-rest5884_))
                                 (_g58945902_
                                  (lambda (_g58955898_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g58955898_)))
                                 (_g58935991_
                                  (lambda (_g58955906_)
                                    ((lambda (_L5909_)
                                       (let ()
                                         (let* ((_g59255933_
                                                 (lambda (_g59265929_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g59265929_)))
                                                (_g59245987_
                                                 (lambda (_g59265937_)
                                                   ((lambda (_L5940_)
                                                      (let ()
                                                        (let* ((_g59535961_
                                                                (lambda (_g59545957_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g59545957_)))
                       (_g59525983_
                        (lambda (_g59545965_)
                          ((lambda (_L5968_)
                             (let ()
                               (let ()
                                 (cons (gx#datum->syntax '#f 'let-values)
                                       (cons (cons (cons (cons _L5909_ '())
                                                         (cons _L5940_ '()))
                                                   '())
                                             (cons _L5968_ '()))))))
                           _g59545965_))))
                  (_g59525983_
                   (_recur5881_ _rest5891_ (cons _L5909_ _right5886_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g59265937_))))
                                           (_g59245987_ (cdr _hd5888_)))))
                                     _g58955906_))))
                            (_g58935991_ (car _hd5888_)))
                          (let* ((_g59956032_
                                  (lambda (_g59966028_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g59966028_)))
                                 (_g59946174_
                                  (lambda (_g59966036_)
                                    (if (gx#stx-pair? _g59966036_)
                                        (let ((_e60006039_
                                               (gx#syntax-e _g59966036_)))
                                          (let ((_hd60016043_
                                                 (##car _e60006039_))
                                                (_tl60026046_
                                                 (##cdr _e60006039_)))
                                            (if (gx#stx-pair/null?
                                                 _hd60016043_)
                                                (if (fx>= (gx#stx-length
                                                           _hd60016043_)
                                                          '0)
                                                    (let ((_g31577_
                                                           (gx#syntax-split-splice
                                                            _hd60016043_
                                                            '0)))
                                                      (begin
                                                        (let ((_g31578_
                                                               (values-count
                                                                _g31577_)))
                                                          (if (not (fx= _g31578_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                2))
                      (error "Context expects 2 values" _g31578_)))
                (let ((_target60036049_ (values-ref _g31577_ 0))
                      (_tl60056052_ (values-ref _g31577_ 1)))
                  (if (gx#stx-null? _tl60056052_)
                      (letrec ((_loop60066055_
                                (lambda (_hd60046059_ _pre60106062_)
                                  (if (gx#stx-pair? _hd60046059_)
                                      (let ((_e60076065_
                                             (gx#syntax-e _hd60046059_)))
                                        (let ((_lp-hd60086069_
                                               (##car _e60076065_))
                                              (_lp-tl60096072_
                                               (##cdr _e60076065_)))
                                          (_loop60066055_
                                           _lp-tl60096072_
                                           (cons _lp-hd60086069_
                                                 _pre60106062_))))
                                      (let ((_pre60116075_
                                             (reverse _pre60106062_)))
                                        (if (gx#stx-pair? _tl60026046_)
                                            (let ((_e60126079_
                                                   (gx#syntax-e _tl60026046_)))
                                              (let ((_hd60136083_
                                                     (##car _e60126079_))
                                                    (_tl60146086_
                                                     (##cdr _e60126079_)))
                                                (if (gx#stx-pair/null?
                                                     _hd60136083_)
                                                    (if (fx>= (gx#stx-length
                                                               _hd60136083_)
                                                              '0)
                                                        (let ((_g31579_
                                                               (gx#syntax-split-splice
                                                                _hd60136083_
                                                                '0)))
                                                          (begin
                                                            (let ((_g31580_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (values-count _g31579_)))
                      (if (not (fx= _g31580_ 2))
                          (error "Context expects 2 values" _g31580_)))
                    (let ((_target60156089_ (values-ref _g31579_ 0))
                          (_tl60176092_ (values-ref _g31579_ 1)))
                      (if (gx#stx-null? _tl60176092_)
                          (letrec ((_loop60186095_
                                    (lambda (_hd60166099_ _opt60226102_)
                                      (if (gx#stx-pair? _hd60166099_)
                                          (let ((_e60196105_
                                                 (gx#syntax-e _hd60166099_)))
                                            (let ((_lp-hd60206109_
                                                   (##car _e60196105_))
                                                  (_lp-tl60216112_
                                                   (##cdr _e60196105_)))
                                              (_loop60186095_
                                               _lp-tl60216112_
                                               (cons _lp-hd60206109_
                                                     _opt60226102_))))
                                          (let ((_opt60236115_
                                                 (reverse _opt60226102_)))
                                            (if (gx#stx-pair? _tl60146086_)
                                                (let ((_e60246119_
                                                       (gx#syntax-e
                                                        _tl60146086_)))
                                                  (let ((_hd60256123_
                                                         (##car _e60246119_))
                                                        (_tl60266126_
                                                         (##cdr _e60246119_)))
                                                    (if (gx#stx-null?
                                                         _tl60266126_)
                                                        ((lambda (_L6129_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L6131_
                          _L6132_)
                   (let ()
                     (gx#stx-wrap-source
                      (cons _L6129_
                            (begin
                              '#!void
                              (foldr (lambda (_g61576162_ _g61586165_)
                                       (cons _g61576162_ _g61586165_))
                                     (begin
                                       '#!void
                                       (foldr (lambda (_g61596168_ _g61606171_)
                                                (cons _g61596168_ _g61606171_))
                                              '()
                                              _L6131_))
                                     _L6132_)))
                      (gx#stx-source _stx4871_))))
                 _hd60256123_
                 _opt60236115_
                 _pre60116075_)
                (_g59956032_ _g59966036_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g59956032_ _g59966036_)))))))
                            (_loop60186095_ _target60156089_ '()))
                          (_g59956032_ _g59966036_)))))
                (_g59956032_ _g59966036_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g59956032_
                                                     _g59966036_))))
                                            (_g59956032_ _g59966036_)))))))
                        (_loop60066055_ _target60036049_ '()))
                      (_g59956032_ _g59966036_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g59956032_ _g59966036_))
                                                (_g59956032_ _g59966036_))))
                                        (_g59956032_ _g59966036_)))))
                            (_g59946174_
                             (list _pre5878_
                                   (reverse _right5886_)
                                   _primary5876_)))))))
                 (_generate-kw-primary4886_
                  (lambda (_kwvar5523_ _kwargs5525_ _args5526_ _body5527_)
                    (letrec* ((_absent5529_ (gx#genident 'absent))
                              (_make-body5531_
                               (lambda (_kwargs5695_ _body5697_)
                                 (if (pair? _kwargs5695_)
                                     (let* ((_next5699_ (car _kwargs5695_))
                                            (_rest5702_ (cdr _kwargs5695_))
                                            (_key5705_ (car _next5699_))
                                            (_var5708_ (cadr _next5699_))
                                            (_default5711_ (caddr _next5699_)))
                                       (let* ((_g57165751_
                                               (lambda (_g57175747_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g57175747_)))
                                              (_g57155872_
                                               (lambda (_g57175755_)
                                                 (if (gx#stx-pair? _g57175755_)
                                                     (let ((_e57255758_
                                                            (gx#syntax-e
                                                             _g57175755_)))
                                                       (let ((_hd57265762_
                                                              (##car _e57255758_))
                                                             (_tl57275765_
                                                              (##cdr _e57255758_)))
                                                         (if (gx#stx-pair?
                                                              _tl57275765_)
                                                             (let ((_e57285768_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl57275765_)))
                       (let ((_hd57295772_ (##car _e57285768_))
                             (_tl57305775_ (##cdr _e57285768_)))
                         (if (gx#stx-pair? _tl57305775_)
                             (let ((_e57315778_ (gx#syntax-e _tl57305775_)))
                               (let ((_hd57325782_ (##car _e57315778_))
                                     (_tl57335785_ (##cdr _e57315778_)))
                                 (if (gx#stx-pair? _tl57335785_)
                                     (let ((_e57345788_
                                            (gx#syntax-e _tl57335785_)))
                                       (let ((_hd57355792_ (##car _e57345788_))
                                             (_tl57365795_
                                              (##cdr _e57345788_)))
                                         (if (gx#stx-pair? _tl57365795_)
                                             (let ((_e57375798_
                                                    (gx#syntax-e
                                                     _tl57365795_)))
                                               (let ((_hd57385802_
                                                      (##car _e57375798_))
                                                     (_tl57395805_
                                                      (##cdr _e57375798_)))
                                                 (if (gx#stx-pair?
                                                      _tl57395805_)
                                                     (let ((_e57405808_
                                                            (gx#syntax-e
                                                             _tl57395805_)))
                                                       (let ((_hd57415812_
                                                              (##car _e57405808_))
                                                             (_tl57425815_
                                                              (##cdr _e57405808_)))
                                                         (if (gx#stx-pair?
                                                              _tl57425815_)
                                                             (let ((_e57435818_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl57425815_)))
                       (let ((_hd57445822_ (##car _e57435818_))
                             (_tl57455825_ (##cdr _e57435818_)))
                         (if (gx#stx-null? _tl57455825_)
                             ((lambda (_L5828_
                                       _L5830_
                                       _L5831_
                                       _L5832_
                                       _L5833_
                                       _L5834_
                                       _L5835_)
                                (let ()
                                  (cons (gx#datum->syntax '#f 'let-values)
                                        (cons (cons (cons (cons _L5832_ '())
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'hash-ref)
                              (cons _L5835_
                                    (cons (cons (gx#datum->syntax '#f 'quote)
                                                (cons _L5834_ '()))
                                          (cons _L5828_ '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'let-values)
                                                          (cons (cons (cons (cons _L5833_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons (cons (gx#datum->syntax '#f 'if)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'eq?)
                                                            (cons _L5832_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L5828_ '())))
              (cons _L5831_ (cons _L5832_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))
                              '())
                        (cons _L5830_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))))
                              _hd57445822_
                              _hd57415812_
                              _hd57385802_
                              _hd57355792_
                              _hd57325782_
                              _hd57295772_
                              _hd57265762_)
                             (_g57165751_ _g57175755_))))
                     (_g57165751_ _g57175755_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g57165751_
                                                      _g57175755_))))
                                             (_g57165751_ _g57175755_))))
                                     (_g57165751_ _g57175755_))))
                             (_g57165751_ _g57175755_))))
                     (_g57165751_ _g57175755_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g57165751_
                                                      _g57175755_)))))
                                         (_g57155872_
                                          (list _kwvar5523_
                                                _key5705_
                                                _var5708_
                                                (gx#genident _var5708_)
                                                _default5711_
                                                (_make-body5531_
                                                 _rest5702_
                                                 _body5697_)
                                                _absent5529_))))
                                     (cons 'begin _body5697_)))))
                      (let* ((_g55335541_
                              (lambda (_g55345537_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g55345537_)))
                             (_g55325691_
                              (lambda (_g55345545_)
                                ((lambda (_L5548_)
                                   (let ()
                                     (let* ((_g55615569_
                                             (lambda (_g55625565_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g55625565_)))
                                            (_g55605687_
                                             (lambda (_g55625573_)
                                               ((lambda (_L5576_)
                                                  (let ()
                                                    (let* ((_g55895597_
                                                            (lambda (_g55905593_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g55905593_)))
                                                           (_g55885683_
                                                            (lambda (_g55905601_)
                                                              ((lambda (_L5604_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g56175625_
                                   (lambda (_g56185621_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g56185621_)))
                                  (_g56165679_
                                   (lambda (_g56185629_)
                                     ((lambda (_L5632_)
                                        (let ()
                                          (let* ((_g56455653_
                                                  (lambda (_g56465649_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g56465649_)))
                                                 (_g56445675_
                                                  (lambda (_g56465657_)
                                                    ((lambda (_L5660_)
                                                       (let ()
                                                         (let ()
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'let-values)
                         (cons (cons (cons (cons _L5660_ '())
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'make-vector)
                                                       (cons '0 '()))
                                                 '()))
                                     '())
                               (cons _L5632_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g56465657_))))
                                            (_g56445675_ _absent5529_))))
                                      _g56185629_))))
                             (_g56165679_
                              (gx#stx-wrap-source
                               (cons (gx#datum->syntax '#f 'lambda)
                                     (cons (cons _L5548_ _L5576_)
                                           (cons _L5604_ '())))
                               (gx#stx-source _stx4871_))))))
                       _g55905601_))))
              (_g55885683_ (_make-body5531_ _kwargs5525_ _body5527_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g55625573_))))
                                       (_g55605687_ _args5526_))))
                                 _g55345545_))))
                        (_g55325691_ _kwvar5523_)))))
                 (_generate-kw-dispatch4887_
                  (lambda (_primary5436_ _kwargs5438_ _strict?5439_)
                    (let* ((_g54415460_
                            (lambda (_g54425456_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g54425456_)))
                           (_g54405519_
                            (lambda (_g54425464_)
                              (if (gx#stx-pair? _g54425464_)
                                  (let ((_e54465467_
                                         (gx#syntax-e _g54425464_)))
                                    (let ((_hd54475471_ (##car _e54465467_))
                                          (_tl54485474_ (##cdr _e54465467_)))
                                      (if (gx#stx-pair? _tl54485474_)
                                          (let ((_e54495477_
                                                 (gx#syntax-e _tl54485474_)))
                                            (let ((_hd54505481_
                                                   (##car _e54495477_))
                                                  (_tl54515484_
                                                   (##cdr _e54495477_)))
                                              (if (gx#stx-pair? _tl54515484_)
                                                  (let ((_e54525487_
                                                         (gx#syntax-e
                                                          _tl54515484_)))
                                                    (let ((_hd54535491_
                                                           (##car _e54525487_))
                                                          (_tl54545494_
                                                           (##cdr _e54525487_)))
                                                      (if (gx#stx-null?
                                                           _tl54545494_)
                                                          ((lambda (_L5497_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L5499_
                            _L5500_)
                     (let ()
                       (cons (gx#datum->syntax '#f 'lambda%)
                             (cons _L5497_
                                   (cons (cons (gx#datum->syntax '#f 'apply)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'keyword-dispatch)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _L5500_ '()))
                   (cons _L5499_ (cons _L5497_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))))
                   _hd54535491_
                   _hd54505481_
                   _hd54475471_)
                  (_g54415460_ _g54425464_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g54415460_ _g54425464_))))
                                          (_g54415460_ _g54425464_))))
                                  (_g54415460_ _g54425464_)))))
                      (_g54405519_
                       (list (if _strict?5439_
                                 (_generate-kw-table4888_
                                  (map car _kwargs5438_))
                                 '#f)
                             _primary5436_
                             (gx#genident 'args))))))
                 (_generate-kw-table4888_
                  (lambda (_kws5410_)
                    (let _rehash5413_ ((_pht5416_
                                        (make-vector (length _kws5410_) '#f)))
                      (let _lp5419_ ((_rest5422_ _kws5410_))
                        (if (pair? _rest5422_)
                            (let* ((_key5425_ (car _rest5422_))
                                   (_rest5428_ (cdr _rest5422_))
                                   (_pos5431_
                                    (fxmodulo
                                     (keyword-hash _key5425_)
                                     (vector-length _pht5416_))))
                              (if (vector-ref _pht5416_ _pos5431_)
                                  (if (fx< (vector-length _pht5416_) '8192)
                                      (_rehash5413_
                                       (make-vector
                                        (fx1+ (* '2 (vector-length _pht5416_)))
                                        '#f))
                                      (error '"Unresolvable keyword collision"
                                             _kws5410_))
                                  (begin
                                    (vector-set! _pht5416_ _pos5431_ _key5425_)
                                    (_lp5419_ _rest5428_))))
                            _pht5416_))))))
          (let* ((_g48924923_
                  (lambda (_g48934919_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g48934919_)))
                 (_g48915136_
                  (lambda (_g48934927_)
                    (if (gx#stx-pair? _g48934927_)
                        (let ((_e49124930_ (gx#syntax-e _g48934927_)))
                          (let ((_hd49134934_ (##car _e49124930_))
                                (_tl49144937_ (##cdr _e49124930_)))
                            (if (gx#stx-pair? _tl49144937_)
                                (let ((_e49154940_ (gx#syntax-e _tl49144937_)))
                                  (let ((_hd49164944_ (##car _e49154940_))
                                        (_tl49174947_ (##cdr _e49154940_)))
                                    ((lambda (_L4950_ _L4952_)
                                       (if (_kw-lambda?4878_ _L4952_)
                                           (let* ((_g49684975_
                                                   (lambda (_g49694971_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g49694971_)))
                                                  (_g49675132_
                                                   (lambda (_g49694979_)
                                                     ((lambda ()
                                                        (let ()
                                                          (let ((_g31581_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_kw-lambda-split4879_ _L4952_)))
                    (begin
                      (let ((_g31582_ (values-count _g31581_)))
                        (if (not (fx= _g31582_ 3))
                            (error "Context expects 3 values" _g31582_)))
                      (let ((_key4988_ (values-ref _g31581_ 0))
                            (_kwargs4990_ (values-ref _g31581_ 1))
                            (_args4991_ (values-ref _g31581_ 2)))
                        (let* ((_g49935001_
                                (lambda (_g49944997_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g49944997_)))
                               (_g49925124_
                                (lambda (_g49945005_)
                                  ((lambda (_L5008_)
                                     (let ()
                                       (let* ((_g50265034_
                                               (lambda (_g50275030_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g50275030_)))
                                              (_g50255120_
                                               (lambda (_g50275038_)
                                                 ((lambda (_L5041_)
                                                    (let ()
                                                      (let* ((_g50545062_
                                                              (lambda (_g50555058_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax"
                         _g50555058_)))
                     (_g50535116_
                      (lambda (_g50555066_)
                        ((lambda (_L5069_)
                           (let ()
                             (let* ((_g50825090_
                                     (lambda (_g50835086_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g50835086_)))
                                    (_g50815112_
                                     (lambda (_g50835094_)
                                       ((lambda (_L5097_)
                                          (let ()
                                            (let ()
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'let-values)
                                                    (cons (cons (cons (cons _L5041_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _L5069_ '()))
                        '())
                  (cons _L5097_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _g50835094_))))
                               (_g50815112_
                                (gx#stx-wrap-source
                                 (_generate-kw-dispatch4887_
                                  _L5041_
                                  _kwargs4990_
                                  (not _key4988_))
                                 (gx#stx-source _stx4871_))))))
                         _g50555066_))))
                (_g50535116_
                 (gx#stx-wrap-source
                  (_generate-kw-primary4886_
                   _L5008_
                   _kwargs4990_
                   _args4991_
                   _L4950_)
                  (gx#stx-source _stx4871_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g50275038_))))
                                         (_g50255120_
                                          (gx#genident 'kw-lambda)))))
                                   _g49945005_))))
                          (_g49925124_
                           (let ((_$e5128_ _key4988_))
                             (if _$e5128_
                                 _$e5128_
                                 (gx#genident 'key))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g49675132_
                                              (_check-duplicate-bindings4881_
                                               _L4952_)))
                                           (_g48924923_ _g48934927_)))
                                     _tl49174947_
                                     _hd49164944_)))
                                (_g48924923_ _g48934927_))))
                        (_g48924923_ _g48934927_))))
                 (_g48905364_
                  (lambda (_g48935140_)
                    (if (gx#stx-pair? _g48935140_)
                        (let ((_e49045143_ (gx#syntax-e _g48935140_)))
                          (let ((_hd49055147_ (##car _e49045143_))
                                (_tl49065150_ (##cdr _e49045143_)))
                            (if (gx#stx-pair? _tl49065150_)
                                (let ((_e49075153_ (gx#syntax-e _tl49065150_)))
                                  (let ((_hd49085157_ (##car _e49075153_))
                                        (_tl49095160_ (##cdr _e49075153_)))
                                    ((lambda (_L5163_ _L5165_)
                                       (if (_opt-lambda?4876_ _L5165_)
                                           (let ((_g31583_
                                                  (_opt-lambda-split4877_
                                                   _L5165_)))
                                             (begin
                                               (let ((_g31584_
                                                      (values-count _g31583_)))
                                                 (if (not (fx= _g31584_ 3))
                                                     (error "Context expects 3 values"
                                                            _g31584_)))
                                               (let ((_pre5178_
                                                      (values-ref _g31583_ 0))
                                                     (_opt5180_
                                                      (values-ref _g31583_ 1))
                                                     (_tail5181_
                                                      (values-ref _g31583_ 2)))
                                                 (let* ((_g51835191_
                                                         (lambda (_g51845187_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g51845187_)))
                                                        (_g51825360_
                                                         (lambda (_g51845195_)
                                                           ((lambda (_L5198_)
                                                              (let ()
                                                                (let* ((_g52115219_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_g52125215_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g52125215_)))
                               (_g52105356_
                                (lambda (_g52125223_)
                                  ((lambda (_L5226_)
                                     (let ()
                                       (let* ((_g52395256_
                                               (lambda (_g52405252_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g52405252_)))
                                              (_g52385352_
                                               (lambda (_g52405260_)
                                                 (if (gx#stx-pair/null?
                                                      _g52405260_)
                                                     (if (fx>= (gx#stx-length
                                                                _g52405260_)
                                                               '0)
                                                         (let ((_g31585_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g52405260_
                         '0)))
                   (begin
                     (let ((_g31586_ (values-count _g31585_)))
                       (if (not (fx= _g31586_ 2))
                           (error "Context expects 2 values" _g31586_)))
                     (let ((_target52425263_ (values-ref _g31585_ 0))
                           (_tl52445266_ (values-ref _g31585_ 1)))
                       (if (gx#stx-null? _tl52445266_)
                           (letrec ((_loop52455269_
                                     (lambda (_hd52435273_ _clause52495276_)
                                       (if (gx#stx-pair? _hd52435273_)
                                           (let ((_e52465279_
                                                  (gx#syntax-e _hd52435273_)))
                                             (let ((_lp-hd52475283_
                                                    (##car _e52465279_))
                                                   (_lp-tl52485286_
                                                    (##cdr _e52465279_)))
                                               (_loop52455269_
                                                _lp-tl52485286_
                                                (cons _lp-hd52475283_
                                                      _clause52495276_))))
                                           (let ((_clause52505289_
                                                  (reverse _clause52495276_)))
                                             ((lambda (_L5293_)
                                                (let ()
                                                  (let* ((_g53105318_
                                                          (lambda (_g53115314_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g53115314_)))
                                                         (_g53095340_
                                                          (lambda (_g53115322_)
                                                            ((lambda (_L5325_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (cons (gx#datum->syntax '#f 'let-values)
                                 (cons (cons (cons (cons _L5198_ '())
                                                   (cons _L5226_ '()))
                                             '())
                                       (cons _L5325_ '()))))))
                     _g53115322_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g53095340_
                                                     (gx#stx-wrap-source
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'case-lambda)
                                                            (begin
                                                              '#!void
                                                              (foldr (lambda (_g53435346_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g53445349_)
                               (cons _g53435346_ _g53445349_))
                             '()
                             _L5293_)))
              (gx#stx-source _stx4871_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _clause52505289_))))))
                             (_loop52455269_ _target52425263_ '()))
                           (_g52395256_ _g52405260_)))))
                 (_g52395256_ _g52405260_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g52395256_
                                                      _g52405260_)))))
                                         (_g52385352_
                                          (_generate-opt-dispatch4883_
                                           _L5198_
                                           _pre5178_
                                           _opt5180_
                                           _tail5181_)))))
                                   _g52125223_))))
                          (_g52105356_
                           (gx#stx-wrap-source
                            (_generate-opt-primary4882_
                             _pre5178_
                             _opt5180_
                             _tail5181_
                             _L5163_)
                            (gx#stx-source _stx4871_))))))
                    _g51845195_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g51825360_
                                                    (gx#genident
                                                     'opt-lambda))))))
                                           (_g48915136_ _g48935140_)))
                                     _tl49095160_
                                     _hd49085157_)))
                                (_g48915136_ _g48935140_))))
                        (_g48915136_ _g48935140_))))
                 (_g48895406_
                  (lambda (_g48935368_)
                    (if (gx#stx-pair? _g48935368_)
                        (let ((_e48965371_ (gx#syntax-e _g48935368_)))
                          (let ((_hd48975375_ (##car _e48965371_))
                                (_tl48985378_ (##cdr _e48965371_)))
                            (if (gx#stx-pair? _tl48985378_)
                                (let ((_e48995381_ (gx#syntax-e _tl48985378_)))
                                  (let ((_hd49005385_ (##car _e48995381_))
                                        (_tl49015388_ (##cdr _e48995381_)))
                                    ((lambda (_L5391_ _L5393_)
                                       (if (_simple-lambda?4874_ _L5393_)
                                           (cons (gx#datum->syntax
                                                  '#f
                                                  'lambda%)
                                                 (cons _L5393_ _L5391_))
                                           (_g48905364_ _g48935368_)))
                                     _tl49015388_
                                     _hd49005385_)))
                                (_g48905364_ _g48935368_))))
                        (_g48905364_ _g48935368_)))))
            (_g48895406_ _stx4871_)))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#def|
      (lambda (_$stx8038_)
        (let* ((_g80438082_
                (lambda (_g80448078_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g80448078_)))
               (_g80428137_
                (lambda (_g80448086_)
                  (if (gx#stx-pair? _g80448086_)
                      (let ((_e80688089_ (gx#syntax-e _g80448086_)))
                        (let ((_hd80698093_ (##car _e80688089_))
                              (_tl80708096_ (##cdr _e80688089_)))
                          (if (gx#stx-pair? _tl80708096_)
                              (let ((_e80718099_ (gx#syntax-e _tl80708096_)))
                                (let ((_hd80728103_ (##car _e80718099_))
                                      (_tl80738106_ (##cdr _e80718099_)))
                                  (if (gx#stx-pair? _tl80738106_)
                                      (let ((_e80748109_
                                             (gx#syntax-e _tl80738106_)))
                                        (let ((_hd80758113_
                                               (##car _e80748109_))
                                              (_tl80768116_
                                               (##cdr _e80748109_)))
                                          (if (gx#stx-null? _tl80768116_)
                                              ((lambda (_L8119_ _L8121_)
                                                 (if (gx#identifier? _L8121_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'define-values)
                                                           (cons (cons _L8121_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '())
                         (cons _L8119_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g80438082_
                                                      _g80448086_)))
                                               _hd80758113_
                                               _hd80728103_)
                                              (_g80438082_ _g80448086_))))
                                      (_g80438082_ _g80448086_))))
                              (_g80438082_ _g80448086_))))
                      (_g80438082_ _g80448086_))))
               (_g80418235_
                (lambda (_g80448141_)
                  (if (gx#stx-pair? _g80448141_)
                      (let ((_e80488144_ (gx#syntax-e _g80448141_)))
                        (let ((_hd80498148_ (##car _e80488144_))
                              (_tl80508151_ (##cdr _e80488144_)))
                          (if (gx#stx-pair? _tl80508151_)
                              (let ((_e80518154_ (gx#syntax-e _tl80508151_)))
                                (let ((_hd80528158_ (##car _e80518154_))
                                      (_tl80538161_ (##cdr _e80518154_)))
                                  (if (gx#stx-pair? _hd80528158_)
                                      (let ((_e80548164_
                                             (gx#syntax-e _hd80528158_)))
                                        (let ((_hd80558168_
                                               (##car _e80548164_))
                                              (_tl80568171_
                                               (##cdr _e80548164_)))
                                          (if (gx#stx-pair/null? _tl80538161_)
                                              (if (fx>= (gx#stx-length
                                                         _tl80538161_)
                                                        '0)
                                                  (let ((_g31587_
                                                         (gx#syntax-split-splice
                                                          _tl80538161_
                                                          '0)))
                                                    (begin
                                                      (let ((_g31588_
                                                             (values-count
                                                              _g31587_)))
                                                        (if (not (fx= _g31588_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g31588_)))
              (let ((_target80578174_ (values-ref _g31587_ 0))
                    (_tl80598177_ (values-ref _g31587_ 1)))
                (if (gx#stx-null? _tl80598177_)
                    (letrec ((_loop80608180_
                              (lambda (_hd80588184_ _body80648187_)
                                (if (gx#stx-pair? _hd80588184_)
                                    (let ((_e80618190_
                                           (gx#syntax-e _hd80588184_)))
                                      (let ((_lp-hd80628194_
                                             (##car _e80618190_))
                                            (_lp-tl80638197_
                                             (##cdr _e80618190_)))
                                        (_loop80608180_
                                         _lp-tl80638197_
                                         (cons _lp-hd80628194_
                                               _body80648187_))))
                                    (let ((_body80658200_
                                           (reverse _body80648187_)))
                                      ((lambda (_L8204_ _L8206_ _L8207_)
                                         (if (gx#identifier? _L8207_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'define-values)
                                                   (cons (cons _L8207_ '())
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'lambda)
                             (cons _L8206_
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g82268229_ _g82278232_)
                                              (cons _g82268229_ _g82278232_))
                                            '()
                                            _L8204_))))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g80428137_ _g80448141_)))
                                       _body80658200_
                                       _tl80568171_
                                       _hd80558168_))))))
                      (_loop80608180_ _target80578174_ '()))
                    (_g80428137_ _g80448141_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g80428137_ _g80448141_))
                                              (_g80428137_ _g80448141_))))
                                      (_g80428137_ _g80448141_))))
                              (_g80428137_ _g80448141_))))
                      (_g80428137_ _g80448141_)))))
          (_g80418235_ _$stx8038_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#def*|
      (lambda (_$stx8240_)
        (let* ((_g82448268_
                (lambda (_g82458264_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g82458264_)))
               (_g82438353_
                (lambda (_g82458272_)
                  (if (gx#stx-pair? _g82458272_)
                      (let ((_e82488275_ (gx#syntax-e _g82458272_)))
                        (let ((_hd82498279_ (##car _e82488275_))
                              (_tl82508282_ (##cdr _e82488275_)))
                          (if (gx#stx-pair? _tl82508282_)
                              (let ((_e82518285_ (gx#syntax-e _tl82508282_)))
                                (let ((_hd82528289_ (##car _e82518285_))
                                      (_tl82538292_ (##cdr _e82518285_)))
                                  (if (gx#stx-pair/null? _tl82538292_)
                                      (if (fx>= (gx#stx-length _tl82538292_)
                                                '0)
                                          (let ((_g31589_
                                                 (gx#syntax-split-splice
                                                  _tl82538292_
                                                  '0)))
                                            (begin
                                              (let ((_g31590_
                                                     (values-count _g31589_)))
                                                (if (not (fx= _g31590_ 2))
                                                    (error "Context expects 2 values"
                                                           _g31590_)))
                                              (let ((_target82548295_
                                                     (values-ref _g31589_ 0))
                                                    (_tl82568298_
                                                     (values-ref _g31589_ 1)))
                                                (if (gx#stx-null? _tl82568298_)
                                                    (letrec ((_loop82578301_
                                                              (lambda (_hd82558305_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _clauses82618308_)
                        (if (gx#stx-pair? _hd82558305_)
                            (let ((_e82588311_ (gx#syntax-e _hd82558305_)))
                              (let ((_lp-hd82598315_ (##car _e82588311_))
                                    (_lp-tl82608318_ (##cdr _e82588311_)))
                                (_loop82578301_
                                 _lp-tl82608318_
                                 (cons _lp-hd82598315_ _clauses82618308_))))
                            (let ((_clauses82628321_
                                   (reverse _clauses82618308_)))
                              ((lambda (_L8325_ _L8327_)
                                 (if (gx#identifier? _L8327_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'define-values)
                                           (cons (cons _L8327_ '())
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'case-lambda)
                                                             (begin
                                                               '#!void
                                                               (foldr (lambda (_g83448347_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g83458350_)
                                (cons _g83448347_ _g83458350_))
                              '()
                              _L8325_)))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_g82448268_ _g82458272_)))
                               _clauses82628321_
                               _hd82528289_))))))
              (_loop82578301_ _target82548295_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g82448268_
                                                     _g82458272_)))))
                                          (_g82448268_ _g82458272_))
                                      (_g82448268_ _g82458272_))))
                              (_g82448268_ _g82458272_))))
                      (_g82448268_ _g82458272_)))))
          (_g82438353_ _$stx8240_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#defvalues|
      (lambda (_$stx8358_)
        (let* ((_g83628380_
                (lambda (_g83638376_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g83638376_)))
               (_g83618435_
                (lambda (_g83638384_)
                  (if (gx#stx-pair? _g83638384_)
                      (let ((_e83668387_ (gx#syntax-e _g83638384_)))
                        (let ((_hd83678391_ (##car _e83668387_))
                              (_tl83688394_ (##cdr _e83668387_)))
                          (if (gx#stx-pair? _tl83688394_)
                              (let ((_e83698397_ (gx#syntax-e _tl83688394_)))
                                (let ((_hd83708401_ (##car _e83698397_))
                                      (_tl83718404_ (##cdr _e83698397_)))
                                  (if (gx#stx-pair? _tl83718404_)
                                      (let ((_e83728407_
                                             (gx#syntax-e _tl83718404_)))
                                        (let ((_hd83738411_
                                               (##car _e83728407_))
                                              (_tl83748414_
                                               (##cdr _e83728407_)))
                                          (if (gx#stx-null? _tl83748414_)
                                              ((lambda (_L8417_ _L8419_)
                                                 (if (gx#identifier-list?
                                                      _L8419_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'define-values)
                                                           (cons _L8419_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L8417_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g83628380_
                                                      _g83638384_)))
                                               _hd83738411_
                                               _hd83708401_)
                                              (_g83628380_ _g83638384_))))
                                      (_g83628380_ _g83638384_))))
                              (_g83628380_ _g83638384_))))
                      (_g83628380_ _g83638384_)))))
          (_g83618435_ _$stx8358_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#case|
      (lambda (_$stx8439_)
        (let* ((_g84438467_
                (lambda (_g84448463_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g84448463_)))
               (_g84428552_
                (lambda (_g84448471_)
                  (if (gx#stx-pair? _g84448471_)
                      (let ((_e84478474_ (gx#syntax-e _g84448471_)))
                        (let ((_hd84488478_ (##car _e84478474_))
                              (_tl84498481_ (##cdr _e84478474_)))
                          (if (gx#stx-pair? _tl84498481_)
                              (let ((_e84508484_ (gx#syntax-e _tl84498481_)))
                                (let ((_hd84518488_ (##car _e84508484_))
                                      (_tl84528491_ (##cdr _e84508484_)))
                                  (if (gx#stx-pair/null? _tl84528491_)
                                      (if (fx>= (gx#stx-length _tl84528491_)
                                                '0)
                                          (let ((_g31591_
                                                 (gx#syntax-split-splice
                                                  _tl84528491_
                                                  '0)))
                                            (begin
                                              (let ((_g31592_
                                                     (values-count _g31591_)))
                                                (if (not (fx= _g31592_ 2))
                                                    (error "Context expects 2 values"
                                                           _g31592_)))
                                              (let ((_target84538494_
                                                     (values-ref _g31591_ 0))
                                                    (_tl84558497_
                                                     (values-ref _g31591_ 1)))
                                                (if (gx#stx-null? _tl84558497_)
                                                    (letrec ((_loop84568500_
                                                              (lambda (_hd84548504_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _clause84608507_)
                        (if (gx#stx-pair? _hd84548504_)
                            (let ((_e84578510_ (gx#syntax-e _hd84548504_)))
                              (let ((_lp-hd84588514_ (##car _e84578510_))
                                    (_lp-tl84598517_ (##cdr _e84578510_)))
                                (_loop84568500_
                                 _lp-tl84598517_
                                 (cons _lp-hd84588514_ _clause84608507_))))
                            (let ((_clause84618520_
                                   (reverse _clause84608507_)))
                              ((lambda (_L8524_ _L8526_)
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (cons (gx#datum->syntax '#f '$e)
                                                   (cons _L8526_ '()))
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '~case)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                '$e)
                                                               (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#!void
                         (foldr (lambda (_g85438546_ _g85448549_)
                                  (cons _g85438546_ _g85448549_))
                                '()
                                _L8524_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                               _clause84618520_
                               _hd84518488_))))))
              (_loop84568500_ _target84538494_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g84438467_
                                                     _g84448471_)))))
                                          (_g84438467_ _g84448471_))
                                      (_g84438467_ _g84448471_))))
                              (_g84438467_ _g84448471_))))
                      (_g84438467_ _g84448471_)))))
          (_g84428552_ _$stx8439_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#~case|
      (lambda (_$stx8557_)
        (let* ((_g85658663_
                (lambda (_g85668659_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g85668659_)))
               (_g85648778_
                (lambda (_g85668667_)
                  (if (gx#stx-pair? _g85668667_)
                      (let ((_e86378670_ (gx#syntax-e _g85668667_)))
                        (let ((_hd86388674_ (##car _e86378670_))
                              (_tl86398677_ (##cdr _e86378670_)))
                          (if (gx#stx-pair? _tl86398677_)
                              (let ((_e86408680_ (gx#syntax-e _tl86398677_)))
                                (let ((_hd86418684_ (##car _e86408680_))
                                      (_tl86428687_ (##cdr _e86408680_)))
                                  (if (gx#stx-pair? _tl86428687_)
                                      (let ((_e86438690_
                                             (gx#syntax-e _tl86428687_)))
                                        (let ((_hd86448694_
                                               (##car _e86438690_))
                                              (_tl86458697_
                                               (##cdr _e86438690_)))
                                          (if (gx#stx-pair? _hd86448694_)
                                              (let ((_e86468700_
                                                     (gx#syntax-e
                                                      _hd86448694_)))
                                                (let ((_hd86478704_
                                                       (##car _e86468700_))
                                                      (_tl86488707_
                                                       (##cdr _e86468700_)))
                                                  (if (gx#stx-pair/null?
                                                       _tl86488707_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl86488707_)
                        '0)
                  (let ((_g31593_ (gx#syntax-split-splice _tl86488707_ '0)))
                    (begin
                      (let ((_g31594_ (values-count _g31593_)))
                        (if (not (fx= _g31594_ 2))
                            (error "Context expects 2 values" _g31594_)))
                      (let ((_target86498710_ (values-ref _g31593_ 0))
                            (_tl86518713_ (values-ref _g31593_ 1)))
                        (if (gx#stx-null? _tl86518713_)
                            (letrec ((_loop86528716_
                                      (lambda (_hd86508720_ _body86568723_)
                                        (if (gx#stx-pair? _hd86508720_)
                                            (let ((_e86538726_
                                                   (gx#syntax-e _hd86508720_)))
                                              (let ((_lp-hd86548730_
                                                     (##car _e86538726_))
                                                    (_lp-tl86558733_
                                                     (##cdr _e86538726_)))
                                                (_loop86528716_
                                                 _lp-tl86558733_
                                                 (cons _lp-hd86548730_
                                                       _body86568723_))))
                                            (let ((_body86578736_
                                                   (reverse _body86568723_)))
                                              ((lambda (_L8740_
                                                        _L8742_
                                                        _L8743_
                                                        _L8744_
                                                        _L8745_)
                                                 (if (gx#stx-list? _L8743_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'if)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '~case-test)
                               (cons _L8744_ (cons _L8743_ '())))
                         (cons (cons (gx#datum->syntax '#f 'begin)
                                     (begin
                                       '#!void
                                       (foldr (lambda (_g87698772_ _g87708775_)
                                                (cons _g87698772_ _g87708775_))
                                              '()
                                              _L8742_)))
                               (cons (cons _L8745_ (cons _L8744_ _L8740_))
                                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g85658663_
                                                      _g85668667_)))
                                               _tl86458697_
                                               _body86578736_
                                               _hd86478704_
                                               _hd86418684_
                                               _hd86388674_))))))
                              (_loop86528716_ _target86498710_ '()))
                            (_g85658663_ _g85668667_)))))
                  (_g85658663_ _g85668667_))
              (_g85658663_ _g85668667_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g85658663_ _g85668667_))))
                                      (_g85658663_ _g85668667_))))
                              (_g85658663_ _g85668667_))))
                      (_g85658663_ _g85668667_))))
               (_g85638874_
                (lambda (_g85668782_)
                  (if (gx#stx-pair? _g85668782_)
                      (let ((_e86148785_ (gx#syntax-e _g85668782_)))
                        (let ((_hd86158789_ (##car _e86148785_))
                              (_tl86168792_ (##cdr _e86148785_)))
                          (if (gx#stx-pair? _tl86168792_)
                              (let ((_e86178795_ (gx#syntax-e _tl86168792_)))
                                (let ((_hd86188799_ (##car _e86178795_))
                                      (_tl86198802_ (##cdr _e86178795_)))
                                  (if (gx#stx-pair? _tl86198802_)
                                      (let ((_e86208805_
                                             (gx#syntax-e _tl86198802_)))
                                        (let ((_hd86218809_
                                               (##car _e86208805_))
                                              (_tl86228812_
                                               (##cdr _e86208805_)))
                                          (if (gx#stx-pair? _hd86218809_)
                                              (let ((_e86238815_
                                                     (gx#syntax-e
                                                      _hd86218809_)))
                                                (let ((_hd86248819_
                                                       (##car _e86238815_))
                                                      (_tl86258822_
                                                       (##cdr _e86238815_)))
                                                  (if (gx#stx-pair?
                                                       _tl86258822_)
                                                      (let ((_e86268825_
                                                             (gx#syntax-e
                                                              _tl86258822_)))
                                                        (let ((_hd86278829_
                                                               (##car _e86268825_))
                                                              (_tl86288832_
                                                               (##cdr _e86268825_)))
                                                          (if (gx#identifier?
                                                               _hd86278829_)
                                                              (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           |gerbil/core$<sugar>$<sugar:2>[1]#_g31595_|
                           _hd86278829_)
                          (if (gx#stx-pair? _tl86288832_)
                              (let ((_e86298835_ (gx#syntax-e _tl86288832_)))
                                (let ((_hd86308839_ (##car _e86298835_))
                                      (_tl86318842_ (##cdr _e86298835_)))
                                  (if (gx#stx-null? _tl86318842_)
                                      ((lambda (_L8845_
                                                _L8847_
                                                _L8848_
                                                _L8849_
                                                _L8850_)
                                         (if (gx#stx-list? _L8848_)
                                             (cons (gx#datum->syntax '#f 'if)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                '~case-test)
                                                               (cons _L8849_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L8848_ '())))
                 (cons (cons _L8847_ (cons _L8849_ '()))
                       (cons (cons _L8850_ (cons _L8849_ _L8845_)) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g85648778_ _g85668782_)))
                                       _tl86228812_
                                       _hd86308839_
                                       _hd86248819_
                                       _hd86188799_
                                       _hd86158789_)
                                      (_g85648778_ _g85668782_))))
                              (_g85648778_ _g85668782_))
                          (_g85648778_ _g85668782_))
                      (_g85648778_ _g85668782_))))
              (_g85648778_ _g85668782_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g85648778_ _g85668782_))))
                                      (_g85648778_ _g85668782_))))
                              (_g85648778_ _g85668782_))))
                      (_g85648778_ _g85668782_))))
               (_g85628938_
                (lambda (_g85668878_)
                  (if (gx#stx-pair? _g85668878_)
                      (let ((_e85978881_ (gx#syntax-e _g85668878_)))
                        (let ((_hd85988885_ (##car _e85978881_))
                              (_tl85998888_ (##cdr _e85978881_)))
                          (if (gx#stx-pair? _tl85998888_)
                              (let ((_e86008891_ (gx#syntax-e _tl85998888_)))
                                (let ((_hd86018895_ (##car _e86008891_))
                                      (_tl86028898_ (##cdr _e86008891_)))
                                  (if (gx#stx-pair? _tl86028898_)
                                      (let ((_e86038901_
                                             (gx#syntax-e _tl86028898_)))
                                        (let ((_hd86048905_
                                               (##car _e86038901_))
                                              (_tl86058908_
                                               (##cdr _e86038901_)))
                                          (if (gx#stx-pair? _hd86048905_)
                                              (let ((_e86068911_
                                                     (gx#syntax-e
                                                      _hd86048905_)))
                                                (let ((_hd86078915_
                                                       (##car _e86068911_))
                                                      (_tl86088918_
                                                       (##cdr _e86068911_)))
                                                  (if (gx#identifier?
                                                       _hd86078915_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core$<sugar>$<sugar:2>[1]#_g31596_|
                                                           _hd86078915_)
                                                          ((lambda (_L8921_)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'syntax-error)
                           (cons '"Bad syntax; misplaced else" '())))
                   _hd86018895_)
                  (_g85638874_ _g85668878_))
              (_g85638874_ _g85668878_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g85638874_ _g85668878_))))
                                      (_g85638874_ _g85668878_))))
                              (_g85638874_ _g85668878_))))
                      (_g85638874_ _g85668878_))))
               (_g85619046_
                (lambda (_g85668942_)
                  (if (gx#stx-pair? _g85668942_)
                      (let ((_e85758945_ (gx#syntax-e _g85668942_)))
                        (let ((_hd85768949_ (##car _e85758945_))
                              (_tl85778952_ (##cdr _e85758945_)))
                          (if (gx#stx-pair? _tl85778952_)
                              (let ((_e85788955_ (gx#syntax-e _tl85778952_)))
                                (let ((_hd85798959_ (##car _e85788955_))
                                      (_tl85808962_ (##cdr _e85788955_)))
                                  (if (gx#stx-pair? _tl85808962_)
                                      (let ((_e85818965_
                                             (gx#syntax-e _tl85808962_)))
                                        (let ((_hd85828969_
                                               (##car _e85818965_))
                                              (_tl85838972_
                                               (##cdr _e85818965_)))
                                          (if (gx#stx-pair? _hd85828969_)
                                              (let ((_e85848975_
                                                     (gx#syntax-e
                                                      _hd85828969_)))
                                                (let ((_hd85858979_
                                                       (##car _e85848975_))
                                                      (_tl85868982_
                                                       (##cdr _e85848975_)))
                                                  (if (gx#identifier?
                                                       _hd85858979_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core$<sugar>$<sugar:2>[1]#_g31597_|
                                                           _hd85858979_)
                                                          (if (gx#stx-pair/null?
                                                               _tl85868982_)
                                                              (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _tl85868982_)
                                '0)
                          (let ((_g31598_
                                 (gx#syntax-split-splice _tl85868982_ '0)))
                            (begin
                              (let ((_g31599_ (values-count _g31598_)))
                                (if (not (fx= _g31599_ 2))
                                    (error "Context expects 2 values"
                                           _g31599_)))
                              (let ((_target85878985_ (values-ref _g31598_ 0))
                                    (_tl85898988_ (values-ref _g31598_ 1)))
                                (if (gx#stx-null? _tl85898988_)
                                    (letrec ((_loop85908991_
                                              (lambda (_hd85888995_
                                                       _body85948998_)
                                                (if (gx#stx-pair? _hd85888995_)
                                                    (let ((_e85919001_
                                                           (gx#syntax-e
                                                            _hd85888995_)))
                                                      (let ((_lp-hd85929005_
                                                             (##car _e85919001_))
                                                            (_lp-tl85939008_
                                                             (##cdr _e85919001_)))
                                                        (_loop85908991_
                                                         _lp-tl85939008_
                                                         (cons _lp-hd85929005_
                                                               _body85948998_))))
                                                    (let ((_body85959011_
                                                           (reverse _body85948998_)))
                                                      (if (gx#stx-null?
                                                           _tl85838972_)
                                                          ((lambda (_L9015_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L9017_)
                     (cons (gx#datum->syntax '#f 'begin)
                           (begin
                             '#!void
                             (foldr (lambda (_g90379040_ _g90389043_)
                                      (cons _g90379040_ _g90389043_))
                                    '()
                                    _L9015_))))
                   _body85959011_
                   _hd85798959_)
                  (_g85628938_ _g85668942_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop85908991_ _target85878985_ '()))
                                    (_g85628938_ _g85668942_)))))
                          (_g85628938_ _g85668942_))
                      (_g85628938_ _g85668942_))
                  (_g85628938_ _g85668942_))
              (_g85628938_ _g85668942_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g85628938_ _g85668942_))))
                                      (_g85628938_ _g85668942_))))
                              (_g85628938_ _g85668942_))))
                      (_g85628938_ _g85668942_))))
               (_g85609077_
                (lambda (_g85669050_)
                  (if (gx#stx-pair? _g85669050_)
                      (let ((_e85679053_ (gx#syntax-e _g85669050_)))
                        (let ((_hd85689057_ (##car _e85679053_))
                              (_tl85699060_ (##cdr _e85679053_)))
                          (if (gx#stx-pair? _tl85699060_)
                              (let ((_e85709063_ (gx#syntax-e _tl85699060_)))
                                (let ((_hd85719067_ (##car _e85709063_))
                                      (_tl85729070_ (##cdr _e85709063_)))
                                  (if (gx#stx-null? _tl85729070_)
                                      ((lambda () '#!void))
                                      (_g85619046_ _g85669050_))))
                              (_g85619046_ _g85669050_))))
                      (_g85619046_ _g85669050_)))))
          (_g85609077_ _$stx8557_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#~case-test|
      (lambda (_stx9083_)
        (letrec ((_memq-datum?9086_
                  (lambda (_x9448_)
                    (let* ((_e9451_ (gx#stx-e _x9448_))
                           (_$e9454_ (symbol? _e9451_)))
                      (if _$e9454_
                          _$e9454_
                          (let ((_$e9458_ (keyword? _e9451_)))
                            (if _$e9458_ _$e9458_ (immediate? _e9451_)))))))
                 (_memv-datum?9088_
                  (lambda (_x9441_)
                    (let ((_$e9444_ (_memq-datum?9086_ _x9441_)))
                      (if _$e9444_ _$e9444_ (gx#stx-number? _x9441_))))))
          (let* ((_g90929143_
                  (lambda (_g90939139_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g90939139_)))
                 (_g90919288_
                  (lambda (_g90939147_)
                    (if (gx#stx-pair? _g90939147_)
                        (let ((_e91209150_ (gx#syntax-e _g90939147_)))
                          (let ((_hd91219154_ (##car _e91209150_))
                                (_tl91229157_ (##cdr _e91209150_)))
                            (if (gx#stx-pair? _tl91229157_)
                                (let ((_e91239160_ (gx#syntax-e _tl91229157_)))
                                  (let ((_hd91249164_ (##car _e91239160_))
                                        (_tl91259167_ (##cdr _e91239160_)))
                                    (if (gx#stx-pair? _tl91259167_)
                                        (let ((_e91269170_
                                               (gx#syntax-e _tl91259167_)))
                                          (let ((_hd91279174_
                                                 (##car _e91269170_))
                                                (_tl91289177_
                                                 (##cdr _e91269170_)))
                                            (if (gx#stx-pair/null?
                                                 _hd91279174_)
                                                (if (fx>= (gx#stx-length
                                                           _hd91279174_)
                                                          '0)
                                                    (let ((_g31600_
                                                           (gx#syntax-split-splice
                                                            _hd91279174_
                                                            '0)))
                                                      (begin
                                                        (let ((_g31601_
                                                               (values-count
                                                                _g31600_)))
                                                          (if (not (fx= _g31601_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                2))
                      (error "Context expects 2 values" _g31601_)))
                (let ((_target91299180_ (values-ref _g31600_ 0))
                      (_tl91319183_ (values-ref _g31600_ 1)))
                  (if (gx#stx-null? _tl91319183_)
                      (letrec ((_loop91329186_
                                (lambda (_hd91309190_ _datum91369193_)
                                  (if (gx#stx-pair? _hd91309190_)
                                      (let ((_e91339196_
                                             (gx#syntax-e _hd91309190_)))
                                        (let ((_lp-hd91349200_
                                               (##car _e91339196_))
                                              (_lp-tl91359203_
                                               (##cdr _e91339196_)))
                                          (_loop91329186_
                                           _lp-tl91359203_
                                           (cons _lp-hd91349200_
                                                 _datum91369193_))))
                                      (let ((_datum91379206_
                                             (reverse _datum91369193_)))
                                        (if (gx#stx-null? _tl91289177_)
                                            ((lambda (_L9210_ _L9212_)
                                               (let* ((_g92339241_
                                                       (lambda (_g92349237_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g92349237_)))
                                                      (_g92329268_
                                                       (lambda (_g92349245_)
                                                         ((lambda (_L9248_)
                                                            (let ()
                                                              (cons _L9248_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _L9212_
                                  (cons (cons (gx#datum->syntax '#f 'quote)
                                              (cons (begin
                                                      '#!void
                                                      (foldr (lambda (_g92599262_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g92609265_)
                       (cons _g92599262_ _g92609265_))
                     '()
                     _L9210_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '())))))
                  _g92349245_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g92329268_
                                                  (if (gx#stx-andmap
                                                       _memq-datum?9086_
                                                       (begin
                                                         '#!void
                                                         (foldr (lambda (_g92719274_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g92729277_)
                          (cons _g92719274_ _g92729277_))
                        '()
                        _L9210_)))
              (gx#datum->syntax '#f 'memq)
              (if (gx#stx-andmap
                   _memv-datum?9088_
                   (begin
                     '#!void
                     (foldr (lambda (_g92799282_ _g92809285_)
                              (cons _g92799282_ _g92809285_))
                            '()
                            _L9210_)))
                  (gx#datum->syntax '#f 'memv)
                  (gx#datum->syntax '#f 'member))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _datum91379206_
                                             _hd91249164_)
                                            (_g90929143_ _g90939147_)))))))
                        (_loop91329186_ _target91299180_ '()))
                      (_g90929143_ _g90939147_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g90929143_ _g90939147_))
                                                (_g90929143_ _g90939147_))))
                                        (_g90929143_ _g90939147_))))
                                (_g90929143_ _g90939147_))))
                        (_g90929143_ _g90939147_))))
                 (_g90909385_
                  (lambda (_g90939292_)
                    (if (gx#stx-pair? _g90939292_)
                        (let ((_e91069295_ (gx#syntax-e _g90939292_)))
                          (let ((_hd91079299_ (##car _e91069295_))
                                (_tl91089302_ (##cdr _e91069295_)))
                            (if (gx#stx-pair? _tl91089302_)
                                (let ((_e91099305_ (gx#syntax-e _tl91089302_)))
                                  (let ((_hd91109309_ (##car _e91099305_))
                                        (_tl91119312_ (##cdr _e91099305_)))
                                    (if (gx#stx-pair? _tl91119312_)
                                        (let ((_e91129315_
                                               (gx#syntax-e _tl91119312_)))
                                          (let ((_hd91139319_
                                                 (##car _e91129315_))
                                                (_tl91149322_
                                                 (##cdr _e91129315_)))
                                            (if (gx#stx-pair? _hd91139319_)
                                                (let ((_e91159325_
                                                       (gx#syntax-e
                                                        _hd91139319_)))
                                                  (let ((_hd91169329_
                                                         (##car _e91159325_))
                                                        (_tl91179332_
                                                         (##cdr _e91159325_)))
                                                    (if (gx#stx-null?
                                                         _tl91179332_)
                                                        (if (gx#stx-null?
                                                             _tl91149322_)
                                                            ((lambda (_L9335_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L9337_)
                       (let* ((_g93549362_
                               (lambda (_g93559358_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g93559358_)))
                              (_g93539381_
                               (lambda (_g93559366_)
                                 ((lambda (_L9369_)
                                    (let ()
                                      (cons _L9369_
                                            (cons _L9337_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'quote)
                                                              (cons _L9335_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _g93559366_))))
                         (_g93539381_
                          (if (_memq-datum?9086_ _L9335_)
                              (gx#datum->syntax '#f 'eq?)
                              (if (_memv-datum?9088_ _L9335_)
                                  (gx#datum->syntax '#f 'eqv?)
                                  (gx#datum->syntax '#f 'equal?))))))
                     _hd91169329_
                     _hd91109309_)
                    (_g90919288_ _g90939292_))
                (_g90919288_ _g90939292_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g90919288_ _g90939292_))))
                                        (_g90919288_ _g90939292_))))
                                (_g90919288_ _g90939292_))))
                        (_g90919288_ _g90939292_))))
                 (_g90899437_
                  (lambda (_g90939389_)
                    (if (gx#stx-pair? _g90939389_)
                        (let ((_e90959392_ (gx#syntax-e _g90939389_)))
                          (let ((_hd90969396_ (##car _e90959392_))
                                (_tl90979399_ (##cdr _e90959392_)))
                            (if (gx#stx-pair? _tl90979399_)
                                (let ((_e90989402_ (gx#syntax-e _tl90979399_)))
                                  (let ((_hd90999406_ (##car _e90989402_))
                                        (_tl91009409_ (##cdr _e90989402_)))
                                    (if (gx#stx-pair? _tl91009409_)
                                        (let ((_e91019412_
                                               (gx#syntax-e _tl91009409_)))
                                          (let ((_hd91029416_
                                                 (##car _e91019412_))
                                                (_tl91039419_
                                                 (##cdr _e91019412_)))
                                            (if (gx#stx-null? _hd91029416_)
                                                (if (gx#stx-null? _tl91039419_)
                                                    ((lambda (_L9422_) '#f)
                                                     _hd90999406_)
                                                    (_g90909385_ _g90939389_))
                                                (_g90909385_ _g90939389_))))
                                        (_g90909385_ _g90939389_))))
                                (_g90909385_ _g90939389_))))
                        (_g90909385_ _g90939389_)))))
            (_g90899437_ _stx9083_)))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#do|
      (lambda (_$stx9463_)
        (let* ((_g94679538_
                (lambda (_g94689534_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g94689534_)))
               (_g94669827_
                (lambda (_g94689542_)
                  (if (gx#stx-pair? _g94689542_)
                      (let ((_e94759545_ (gx#syntax-e _g94689542_)))
                        (let ((_hd94769549_ (##car _e94759545_))
                              (_tl94779552_ (##cdr _e94759545_)))
                          (if (gx#stx-pair? _tl94779552_)
                              (let ((_e94789555_ (gx#syntax-e _tl94779552_)))
                                (let ((_hd94799559_ (##car _e94789555_))
                                      (_tl94809562_ (##cdr _e94789555_)))
                                  (if (gx#stx-pair/null? _hd94799559_)
                                      (if (fx>= (gx#stx-length _hd94799559_)
                                                '0)
                                          (let ((_g31602_
                                                 (gx#syntax-split-splice
                                                  _hd94799559_
                                                  '0)))
                                            (begin
                                              (let ((_g31603_
                                                     (values-count _g31602_)))
                                                (if (not (fx= _g31603_ 2))
                                                    (error "Context expects 2 values"
                                                           _g31603_)))
                                              (let ((_target94819565_
                                                     (values-ref _g31602_ 0))
                                                    (_tl94839568_
                                                     (values-ref _g31602_ 1)))
                                                (if (gx#stx-null? _tl94839568_)
                                                    (letrec ((_loop94849571_
                                                              (lambda (_hd94829575_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _step94889578_
                               _init94899580_
                               _var94909582_)
                        (if (gx#stx-pair? _hd94829575_)
                            (let ((_e94859585_ (gx#syntax-e _hd94829575_)))
                              (let ((_lp-hd94869589_ (##car _e94859585_))
                                    (_lp-tl94879592_ (##cdr _e94859585_)))
                                (if (gx#stx-pair? _lp-hd94869589_)
                                    (let ((_e94949595_
                                           (gx#syntax-e _lp-hd94869589_)))
                                      (let ((_hd94959599_ (##car _e94949595_))
                                            (_tl94969602_ (##cdr _e94949595_)))
                                        (if (gx#stx-pair? _tl94969602_)
                                            (let ((_e94979605_
                                                   (gx#syntax-e _tl94969602_)))
                                              (let ((_hd94989609_
                                                     (##car _e94979605_))
                                                    (_tl94999612_
                                                     (##cdr _e94979605_)))
                                                (if (gx#stx-pair/null?
                                                     _tl94999612_)
                                                    (if (fx>= (gx#stx-length
                                                               _tl94999612_)
                                                              '0)
                                                        (let ((_g31604_
                                                               (gx#syntax-split-splice
                                                                _tl94999612_
                                                                '0)))
                                                          (begin
                                                            (let ((_g31605_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (values-count _g31604_)))
                      (if (not (fx= _g31605_ 2))
                          (error "Context expects 2 values" _g31605_)))
                    (let ((_target95009615_ (values-ref _g31604_ 0))
                          (_tl95029618_ (values-ref _g31604_ 1)))
                      (if (gx#stx-null? _tl95029618_)
                          (letrec ((_loop95039621_
                                    (lambda (_hd95019625_ _step95079628_)
                                      (if (gx#stx-pair? _hd95019625_)
                                          (let ((_e95049631_
                                                 (gx#syntax-e _hd95019625_)))
                                            (let ((_lp-hd95059635_
                                                   (##car _e95049631_))
                                                  (_lp-tl95069638_
                                                   (##cdr _e95049631_)))
                                              (_loop95039621_
                                               _lp-tl95069638_
                                               (cons _lp-hd95059635_
                                                     _step95079628_))))
                                          (let ((_step95089641_
                                                 (reverse _step95079628_)))
                                            (_loop94849571_
                                             _lp-tl94879592_
                                             (cons _step95089641_
                                                   _step94889578_)
                                             (cons _hd94989609_ _init94899580_)
                                             (cons _hd94959599_
                                                   _var94909582_)))))))
                            (_loop95039621_ _target95009615_ '()))
                          (_g94679538_ _g94689542_)))))
                (_g94679538_ _g94689542_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g94679538_
                                                     _g94689542_))))
                                            (_g94679538_ _g94689542_))))
                                    (_g94679538_ _g94689542_))))
                            (let ((_step94919645_ (reverse _step94889578_))
                                  (_init94929648_ (reverse _init94899580_))
                                  (_var94939650_ (reverse _var94909582_)))
                              (if (gx#stx-pair? _tl94809562_)
                                  (let ((_e95099653_
                                         (gx#syntax-e _tl94809562_)))
                                    (let ((_hd95109657_ (##car _e95099653_))
                                          (_tl95119660_ (##cdr _e95099653_)))
                                      (if (gx#stx-pair? _hd95109657_)
                                          (let ((_e95129663_
                                                 (gx#syntax-e _hd95109657_)))
                                            (let ((_hd95139667_
                                                   (##car _e95129663_))
                                                  (_tl95149670_
                                                   (##cdr _e95129663_)))
                                              (if (gx#stx-pair/null?
                                                   _tl95149670_)
                                                  (if (fx>= (gx#stx-length
                                                             _tl95149670_)
                                                            '0)
                                                      (let ((_g31606_
                                                             (gx#syntax-split-splice
                                                              _tl95149670_
                                                              '0)))
                                                        (begin
                                                          (let ((_g31607_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (values-count _g31606_)))
                    (if (not (fx= _g31607_ 2))
                        (error "Context expects 2 values" _g31607_)))
                  (let ((_target95159673_ (values-ref _g31606_ 0))
                        (_tl95179676_ (values-ref _g31606_ 1)))
                    (if (gx#stx-null? _tl95179676_)
                        (letrec ((_loop95189679_
                                  (lambda (_hd95169683_ _fini95229686_)
                                    (if (gx#stx-pair? _hd95169683_)
                                        (let ((_e95199689_
                                               (gx#syntax-e _hd95169683_)))
                                          (let ((_lp-hd95209693_
                                                 (##car _e95199689_))
                                                (_lp-tl95219696_
                                                 (##cdr _e95199689_)))
                                            (_loop95189679_
                                             _lp-tl95219696_
                                             (cons _lp-hd95209693_
                                                   _fini95229686_))))
                                        (let ((_fini95239699_
                                               (reverse _fini95229686_)))
                                          (if (gx#stx-pair/null? _tl95119660_)
                                              (if (fx>= (gx#stx-length
                                                         _tl95119660_)
                                                        '0)
                                                  (let ((_g31608_
                                                         (gx#syntax-split-splice
                                                          _tl95119660_
                                                          '0)))
                                                    (begin
                                                      (let ((_g31609_
                                                             (values-count
                                                              _g31608_)))
                                                        (if (not (fx= _g31609_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g31609_)))
              (let ((_target95249703_ (values-ref _g31608_ 0))
                    (_tl95269706_ (values-ref _g31608_ 1)))
                (if (gx#stx-null? _tl95269706_)
                    (letrec ((_loop95279709_
                              (lambda (_hd95259713_ _body95319716_)
                                (if (gx#stx-pair? _hd95259713_)
                                    (let ((_e95289719_
                                           (gx#syntax-e _hd95259713_)))
                                      (let ((_lp-hd95299723_
                                             (##car _e95289719_))
                                            (_lp-tl95309726_
                                             (##cdr _e95289719_)))
                                        (_loop95279709_
                                         _lp-tl95309726_
                                         (cons _lp-hd95299723_
                                               _body95319716_))))
                                    (let ((_body95329729_
                                           (reverse _body95319716_)))
                                      ((lambda (_L9733_
                                                _L9735_
                                                _L9736_
                                                _L9737_
                                                _L9738_
                                                _L9739_)
                                         (if (gx#stx-andmap
                                              gx#identifier?
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g97729775_
                                                                _g97739778_)
                                                         (cons _g97729775_
                                                               _g97739778_))
                                                       '()
                                                       _L9739_)))
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          '$loop)
                                                         (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-check-splice-targets _L9738_ _L9739_)
                         (foldr (lambda (_g97809793_ _g97819796_ _g97829798_)
                                  (cons (cons _g97819796_
                                              (cons _g97809793_ '()))
                                        _g97829798_))
                                '()
                                _L9738_
                                _L9739_))
                       (cons (cons (gx#datum->syntax '#f 'if)
                                   (cons _L9736_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'begin)
                                                     (cons '#!void
                                                           (begin
                                                             '#!void
                                                             (foldr (lambda (_g97839801_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g97849804_)
                              (cons _g97839801_ _g97849804_))
                            '()
                            _L9735_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'begin)
                                                           (begin
                                                             '#!void
                                                             (foldr (lambda (_g97859807_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g97869810_)
                              (cons _g97859807_ _g97869810_))
                            (cons (cons (gx#datum->syntax '#f '$loop)
                                        (begin
                                          (gx#syntax-check-splice-targets
                                           _L9737_
                                           _L9739_)
                                          (foldr (lambda (_g97879813_
                                                          _g97889816_
                                                          _g97899818_)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'begin)
                                                               (cons _g97889816_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (begin
                               '#!void
                               (foldr (lambda (_g97909821_ _g97919824_)
                                        (cons _g97909821_ _g97919824_))
                                      '()
                                      _g97879813_))))
                 _g97899818_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()
                                                 _L9737_
                                                 _L9739_)))
                                  '())
                            _L9733_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g94679538_ _g94689542_)))
                                       _body95329729_
                                       _fini95239699_
                                       _hd95139667_
                                       _step94919645_
                                       _init94929648_
                                       _var94939650_))))))
                      (_loop95279709_ _target95249703_ '()))
                    (_g94679538_ _g94689542_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g94679538_ _g94689542_))
                                              (_g94679538_ _g94689542_)))))))
                          (_loop95189679_ _target95159673_ '()))
                        (_g94679538_ _g94689542_)))))
              (_g94679538_ _g94689542_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g94679538_ _g94689542_))))
                                          (_g94679538_ _g94689542_))))
                                  (_g94679538_ _g94689542_)))))))
              (_loop94849571_ _target94819565_ '() '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g94679538_
                                                     _g94689542_)))))
                                          (_g94679538_ _g94689542_))
                                      (_g94679538_ _g94689542_))))
                              (_g94679538_ _g94689542_))))
                      (_g94679538_ _g94689542_)))))
          (_g94669827_ _$stx9463_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#do-while|
      (lambda (_$stx9835_)
        (let* ((_g98399862_
                (lambda (_g98409858_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g98409858_)))
               (_g98389933_
                (lambda (_g98409866_)
                  (if (gx#stx-pair? _g98409866_)
                      (let ((_e98459869_ (gx#syntax-e _g98409866_)))
                        (let ((_hd98469873_ (##car _e98459869_))
                              (_tl98479876_ (##cdr _e98459869_)))
                          (if (gx#stx-pair? _tl98479876_)
                              (let ((_e98489879_ (gx#syntax-e _tl98479876_)))
                                (let ((_hd98499883_ (##car _e98489879_))
                                      (_tl98509886_ (##cdr _e98489879_)))
                                  (if (gx#stx-pair? _tl98509886_)
                                      (let ((_e98519889_
                                             (gx#syntax-e _tl98509886_)))
                                        (let ((_hd98529893_
                                               (##car _e98519889_))
                                              (_tl98539896_
                                               (##cdr _e98519889_)))
                                          (if (gx#stx-pair? _hd98529893_)
                                              (let ((_e98549899_
                                                     (gx#syntax-e
                                                      _hd98529893_)))
                                                (let ((_hd98559903_
                                                       (##car _e98549899_))
                                                      (_tl98569906_
                                                       (##cdr _e98549899_)))
                                                  ((lambda (_L9909_
                                                            _L9911_
                                                            _L9912_
                                                            _L9913_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'do)
                                                           (cons _L9913_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (cons (gx#datum->syntax '#f 'not)
                                           (cons _L9912_ '()))
                                     _L9911_)
                               _L9909_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _tl98539896_
                                                   _tl98569906_
                                                   _hd98559903_
                                                   _hd98499883_)))
                                              (_g98399862_ _g98409866_))))
                                      (_g98399862_ _g98409866_))))
                              (_g98399862_ _g98409866_))))
                      (_g98399862_ _g98409866_)))))
          (_g98389933_ _$stx9835_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#begin0|
      (lambda (_$stx9937_)
        (let* ((_g99429973_
                (lambda (_g99439969_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g99439969_)))
               (_g994110058_
                (lambda (_g99439977_)
                  (if (gx#stx-pair? _g99439977_)
                      (let ((_e99539980_ (gx#syntax-e _g99439977_)))
                        (let ((_hd99549984_ (##car _e99539980_))
                              (_tl99559987_ (##cdr _e99539980_)))
                          (if (gx#stx-pair? _tl99559987_)
                              (let ((_e99569990_ (gx#syntax-e _tl99559987_)))
                                (let ((_hd99579994_ (##car _e99569990_))
                                      (_tl99589997_ (##cdr _e99569990_)))
                                  (if (gx#stx-pair/null? _tl99589997_)
                                      (if (fx>= (gx#stx-length _tl99589997_)
                                                '0)
                                          (let ((_g31610_
                                                 (gx#syntax-split-splice
                                                  _tl99589997_
                                                  '0)))
                                            (begin
                                              (let ((_g31611_
                                                     (values-count _g31610_)))
                                                (if (not (fx= _g31611_ 2))
                                                    (error "Context expects 2 values"
                                                           _g31611_)))
                                              (let ((_target995910000_
                                                     (values-ref _g31610_ 0))
                                                    (_tl996110003_
                                                     (values-ref _g31610_ 1)))
                                                (if (gx#stx-null?
                                                     _tl996110003_)
                                                    (letrec ((_loop996210006_
                                                              (lambda (_hd996010010_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _rest996610013_)
                        (if (gx#stx-pair? _hd996010010_)
                            (let ((_e996310016_ (gx#syntax-e _hd996010010_)))
                              (let ((_lp-hd996410020_ (##car _e996310016_))
                                    (_lp-tl996510023_ (##cdr _e996310016_)))
                                (_loop996210006_
                                 _lp-tl996510023_
                                 (cons _lp-hd996410020_ _rest996610013_))))
                            (let ((_rest996710026_ (reverse _rest996610013_)))
                              ((lambda (_L10030_ _L10032_)
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (cons (gx#datum->syntax '#f '$r)
                                                   (cons _L10032_ '()))
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '%#expression)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'begin)
                             (begin
                               '#!void
                               (foldr (lambda (_g1004910052_ _g1005010055_)
                                        (cons _g1004910052_ _g1005010055_))
                                      '()
                                      _L10030_)))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          '$r)
                                                         '())))))
                               _rest996710026_
                               _hd99579994_))))))
              (_loop996210006_ _target995910000_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g99429973_
                                                     _g99439977_)))))
                                          (_g99429973_ _g99439977_))
                                      (_g99429973_ _g99439977_))))
                              (_g99429973_ _g99439977_))))
                      (_g99429973_ _g99439977_))))
               (_g994010098_
                (lambda (_g994310062_)
                  (if (gx#stx-pair? _g994310062_)
                      (let ((_e994510065_ (gx#syntax-e _g994310062_)))
                        (let ((_hd994610069_ (##car _e994510065_))
                              (_tl994710072_ (##cdr _e994510065_)))
                          (if (gx#stx-pair? _tl994710072_)
                              (let ((_e994810075_ (gx#syntax-e _tl994710072_)))
                                (let ((_hd994910079_ (##car _e994810075_))
                                      (_tl995010082_ (##cdr _e994810075_)))
                                  (if (gx#stx-null? _tl995010082_)
                                      ((lambda (_L10085_) _L10085_)
                                       _hd994910079_)
                                      (_g994110058_ _g994310062_))))
                              (_g994110058_ _g994310062_))))
                      (_g994110058_ _g994310062_)))))
          (_g994010098_ _$stx9937_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#rec|
      (lambda (_$stx10103_)
        (let* ((_g1010910162_
                (lambda (_g1011010158_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1011010158_)))
               (_g1010810261_
                (lambda (_g1011010166_)
                  (if (gx#stx-pair? _g1011010166_)
                      (let ((_e1013910169_ (gx#syntax-e _g1011010166_)))
                        (let ((_hd1014010173_ (##car _e1013910169_))
                              (_tl1014110176_ (##cdr _e1013910169_)))
                          (if (gx#stx-pair? _tl1014110176_)
                              (let ((_e1014210179_
                                     (gx#syntax-e _tl1014110176_)))
                                (let ((_hd1014310183_ (##car _e1014210179_))
                                      (_tl1014410186_ (##cdr _e1014210179_)))
                                  (if (gx#stx-pair? _hd1014310183_)
                                      (let ((_e1014510189_
                                             (gx#syntax-e _hd1014310183_)))
                                        (let ((_hd1014610193_
                                               (##car _e1014510189_))
                                              (_tl1014710196_
                                               (##cdr _e1014510189_)))
                                          (if (gx#stx-pair/null?
                                               _tl1014410186_)
                                              (if (fx>= (gx#stx-length
                                                         _tl1014410186_)
                                                        '0)
                                                  (let ((_g31612_
                                                         (gx#syntax-split-splice
                                                          _tl1014410186_
                                                          '0)))
                                                    (begin
                                                      (let ((_g31613_
                                                             (values-count
                                                              _g31612_)))
                                                        (if (not (fx= _g31613_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g31613_)))
              (let ((_target1014810199_ (values-ref _g31612_ 0))
                    (_tl1015010202_ (values-ref _g31612_ 1)))
                (if (gx#stx-null? _tl1015010202_)
                    (letrec ((_loop1015110205_
                              (lambda (_hd1014910209_ _body1015510212_)
                                (if (gx#stx-pair? _hd1014910209_)
                                    (let ((_e1015210215_
                                           (gx#syntax-e _hd1014910209_)))
                                      (let ((_lp-hd1015310219_
                                             (##car _e1015210215_))
                                            (_lp-tl1015410222_
                                             (##cdr _e1015210215_)))
                                        (_loop1015110205_
                                         _lp-tl1015410222_
                                         (cons _lp-hd1015310219_
                                               _body1015510212_))))
                                    (let ((_body1015610225_
                                           (reverse _body1015510212_)))
                                      ((lambda (_L10229_ _L10231_ _L10232_)
                                         (if (gx#identifier? _L10232_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'letrec)
                                                   (cons (cons (cons _L10232_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _L10231_
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g1025210255_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1025310258_)
                  (cons _g1025210255_ _g1025310258_))
                '()
                _L10229_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   '()))
                       '())
                 (cons _L10232_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1010910162_ _g1011010166_)))
                                       _body1015610225_
                                       _tl1014710196_
                                       _hd1014610193_))))))
                      (_loop1015110205_ _target1014810199_ '()))
                    (_g1010910162_ _g1011010166_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1010910162_
                                                   _g1011010166_))
                                              (_g1010910162_ _g1011010166_))))
                                      (_g1010910162_ _g1011010166_))))
                              (_g1010910162_ _g1011010166_))))
                      (_g1010910162_ _g1011010166_))))
               (_g1010710327_
                (lambda (_g1011010265_)
                  (if (gx#stx-pair? _g1011010265_)
                      (let ((_e1012410268_ (gx#syntax-e _g1011010265_)))
                        (let ((_hd1012510272_ (##car _e1012410268_))
                              (_tl1012610275_ (##cdr _e1012410268_)))
                          (if (gx#stx-pair? _tl1012610275_)
                              (let ((_e1012710278_
                                     (gx#syntax-e _tl1012610275_)))
                                (let ((_hd1012810282_ (##car _e1012710278_))
                                      (_tl1012910285_ (##cdr _e1012710278_)))
                                  (if (gx#stx-pair? _hd1012810282_)
                                      (let ((_e1013010288_
                                             (gx#syntax-e _hd1012810282_)))
                                        (let ((_hd1013110292_
                                               (##car _e1013010288_))
                                              (_tl1013210295_
                                               (##cdr _e1013010288_)))
                                          (if (gx#identifier? _hd1013110292_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<sugar>$<sugar:2>[1]#_g31614_|
                                                   _hd1013110292_)
                                                  (if (gx#stx-pair?
                                                       _tl1012910285_)
                                                      (let ((_e1013310298_
                                                             (gx#syntax-e
                                                              _tl1012910285_)))
                                                        (let ((_hd1013410302_
                                                               (##car _e1013310298_))
                                                              (_tl1013510305_
                                                               (##cdr _e1013310298_)))
                                                          (if (gx#stx-null?
                                                               _tl1013510305_)
                                                              ((lambda (_L10308_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _L10310_)
                         (if (gx#identifier-list? _L10310_)
                             (cons (gx#datum->syntax '#f 'letrec-values)
                                   (cons (cons (cons _L10310_
                                                     (cons _L10308_ '()))
                                               '())
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'values)
                                                     _L10310_)
                                               '())))
                             (_g1010810261_ _g1011010265_)))
                       _hd1013410302_
                       _tl1013210295_)
                      (_g1010810261_ _g1011010265_))))
              (_g1010810261_ _g1011010265_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1010810261_
                                                   _g1011010265_))
                                              (_g1010810261_ _g1011010265_))))
                                      (_g1010810261_ _g1011010265_))))
                              (_g1010810261_ _g1011010265_))))
                      (_g1010810261_ _g1011010265_))))
               (_g1010610381_
                (lambda (_g1011010331_)
                  (if (gx#stx-pair? _g1011010331_)
                      (let ((_e1011310334_ (gx#syntax-e _g1011010331_)))
                        (let ((_hd1011410338_ (##car _e1011310334_))
                              (_tl1011510341_ (##cdr _e1011310334_)))
                          (if (gx#stx-pair? _tl1011510341_)
                              (let ((_e1011610344_
                                     (gx#syntax-e _tl1011510341_)))
                                (let ((_hd1011710348_ (##car _e1011610344_))
                                      (_tl1011810351_ (##cdr _e1011610344_)))
                                  (if (gx#stx-pair? _tl1011810351_)
                                      (let ((_e1011910354_
                                             (gx#syntax-e _tl1011810351_)))
                                        (let ((_hd1012010358_
                                               (##car _e1011910354_))
                                              (_tl1012110361_
                                               (##cdr _e1011910354_)))
                                          (if (gx#stx-null? _tl1012110361_)
                                              ((lambda (_L10364_ _L10366_)
                                                 (if (gx#identifier? _L10366_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'letrec)
                                                           (cons (cons (cons _L10366_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (cons _L10364_ '()))
                               '())
                         (cons _L10366_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1010710327_
                                                      _g1011010331_)))
                                               _hd1012010358_
                                               _hd1011710348_)
                                              (_g1010710327_ _g1011010331_))))
                                      (_g1010710327_ _g1011010331_))))
                              (_g1010710327_ _g1011010331_))))
                      (_g1010710327_ _g1011010331_)))))
          (_g1010610381_ _$stx10103_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#alet|
      (lambda (_stx10386_)
        (letrec ((_let-head?10389_
                  (lambda (_x10936_)
                    (let* ((_g1094010951_
                            (lambda (_g1094110947_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1094110947_)))
                           (_g1093910962_
                            (lambda (_g1094110955_)
                              ((lambda () (gx#identifier? _x10936_)))))
                           (_g1093810992_
                            (lambda (_g1094110966_)
                              (if (gx#stx-pair? _g1094110966_)
                                  (let ((_e1094310969_
                                         (gx#syntax-e _g1094110966_)))
                                    (let ((_hd1094410973_
                                           (##car _e1094310969_))
                                          (_tl1094510976_
                                           (##cdr _e1094310969_)))
                                      (if (gx#identifier? _hd1094410973_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<sugar>$<sugar:2>[1]#_g31615_|
                                               _hd1094410973_)
                                              ((lambda (_L10979_)
                                                 (gx#stx-andmap
                                                  gx#identifier?
                                                  _L10979_))
                                               _tl1094510976_)
                                              (_g1093910962_ _g1094110966_))
                                          (_g1093910962_ _g1094110966_))))
                                  (_g1093910962_ _g1094110966_)))))
                      (_g1093810992_ _x10936_))))
                 (_let-head10391_
                  (lambda (_x10876_)
                    (let* ((_g1088010891_
                            (lambda (_g1088110887_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1088110887_)))
                           (_g1087910902_
                            (lambda (_g1088110895_)
                              ((lambda () (list _x10876_)))))
                           (_g1087810932_
                            (lambda (_g1088110906_)
                              (if (gx#stx-pair? _g1088110906_)
                                  (let ((_e1088310909_
                                         (gx#syntax-e _g1088110906_)))
                                    (let ((_hd1088410913_
                                           (##car _e1088310909_))
                                          (_tl1088510916_
                                           (##cdr _e1088310909_)))
                                      (if (gx#identifier? _hd1088410913_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<sugar>$<sugar:2>[1]#_g31616_|
                                               _hd1088410913_)
                                              ((lambda (_L10919_) _L10919_)
                                               _tl1088510916_)
                                              (_g1087910902_ _g1088110906_))
                                          (_g1087910902_ _g1088110906_))))
                                  (_g1087910902_ _g1088110906_)))))
                      (_g1087810932_ _x10876_)))))
          (let* ((_g1039410452_
                  (lambda (_g1039510448_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1039510448_)))
                 (_g1039310802_
                  (lambda (_g1039510456_)
                    (if (gx#stx-pair? _g1039510456_)
                        (let ((_e1041510459_ (gx#syntax-e _g1039510456_)))
                          (let ((_hd1041610463_ (##car _e1041510459_))
                                (_tl1041710466_ (##cdr _e1041510459_)))
                            (if (gx#stx-pair? _tl1041710466_)
                                (let ((_e1041810469_
                                       (gx#syntax-e _tl1041710466_)))
                                  (let ((_hd1041910473_ (##car _e1041810469_))
                                        (_tl1042010476_ (##cdr _e1041810469_)))
                                    (if (gx#stx-pair/null? _hd1041910473_)
                                        (if (fx>= (gx#stx-length
                                                   _hd1041910473_)
                                                  '0)
                                            (let ((_g31617_
                                                   (gx#syntax-split-splice
                                                    _hd1041910473_
                                                    '0)))
                                              (begin
                                                (let ((_g31618_
                                                       (values-count
                                                        _g31617_)))
                                                  (if (not (fx= _g31618_ 2))
                                                      (error "Context expects 2 values"
                                                             _g31618_)))
                                                (let ((_target1042110479_
                                                       (values-ref _g31617_ 0))
                                                      (_tl1042310482_
                                                       (values-ref
                                                        _g31617_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl1042310482_)
                                                      (letrec ((_loop1042410485_
                                                                (lambda (_hd1042210489_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _e1042810492_
                                 _hd1042910494_)
                          (if (gx#stx-pair? _hd1042210489_)
                              (let ((_e1042510497_
                                     (gx#syntax-e _hd1042210489_)))
                                (let ((_lp-hd1042610501_ (##car _e1042510497_))
                                      (_lp-tl1042710504_
                                       (##cdr _e1042510497_)))
                                  (if (gx#stx-pair? _lp-hd1042610501_)
                                      (let ((_e1043210507_
                                             (gx#syntax-e _lp-hd1042610501_)))
                                        (let ((_hd1043310511_
                                               (##car _e1043210507_))
                                              (_tl1043410514_
                                               (##cdr _e1043210507_)))
                                          (if (gx#stx-pair? _tl1043410514_)
                                              (let ((_e1043510517_
                                                     (gx#syntax-e
                                                      _tl1043410514_)))
                                                (let ((_hd1043610521_
                                                       (##car _e1043510517_))
                                                      (_tl1043710524_
                                                       (##cdr _e1043510517_)))
                                                  (if (gx#stx-null?
                                                       _tl1043710524_)
                                                      (_loop1042410485_
                                                       _lp-tl1042710504_
                                                       (cons _hd1043610521_
                                                             _e1042810492_)
                                                       (cons _hd1043310511_
                                                             _hd1042910494_))
                                                      (_g1039410452_
                                                       _g1039510456_))))
                                              (_g1039410452_ _g1039510456_))))
                                      (_g1039410452_ _g1039510456_))))
                              (let ((_e1043010527_ (reverse _e1042810492_))
                                    (_hd1043110530_ (reverse _hd1042910494_)))
                                (if (gx#stx-pair/null? _tl1042010476_)
                                    (if (fx>= (gx#stx-length _tl1042010476_)
                                              '0)
                                        (let ((_g31619_
                                               (gx#syntax-split-splice
                                                _tl1042010476_
                                                '0)))
                                          (begin
                                            (let ((_g31620_
                                                   (values-count _g31619_)))
                                              (if (not (fx= _g31620_ 2))
                                                  (error "Context expects 2 values"
                                                         _g31620_)))
                                            (let ((_target1043810533_
                                                   (values-ref _g31619_ 0))
                                                  (_tl1044010536_
                                                   (values-ref _g31619_ 1)))
                                              (if (gx#stx-null? _tl1044010536_)
                                                  (letrec ((_loop1044110539_
                                                            (lambda (_hd1043910543_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _body1044510546_)
                      (if (gx#stx-pair? _hd1043910543_)
                          (let ((_e1044210549_ (gx#syntax-e _hd1043910543_)))
                            (let ((_lp-hd1044310553_ (##car _e1044210549_))
                                  (_lp-tl1044410556_ (##cdr _e1044210549_)))
                              (_loop1044110539_
                               _lp-tl1044410556_
                               (cons _lp-hd1044310553_ _body1044510546_))))
                          (let ((_body1044610559_ (reverse _body1044510546_)))
                            ((lambda (_L10563_ _L10565_ _L10566_)
                               (if (gx#stx-andmap
                                    _let-head?10389_
                                    (begin
                                      '#!void
                                      (foldr (lambda (_g1058910592_
                                                      _g1059010595_)
                                               (cons _g1058910592_
                                                     _g1059010595_))
                                             '()
                                             _L10566_)))
                                   (let* ((_g1059810631_
                                           (lambda (_g1059910627_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1059910627_)))
                                          (_g1059710782_
                                           (lambda (_g1059910635_)
                                             (if (gx#stx-pair? _g1059910635_)
                                                 (let ((_e1060210638_
                                                        (gx#syntax-e
                                                         _g1059910635_)))
                                                   (let ((_hd1060310642_
                                                          (##car _e1060210638_))
                                                         (_tl1060410645_
                                                          (##cdr _e1060210638_)))
                                                     (if (gx#stx-pair/null?
                                                          _hd1060310642_)
                                                         (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd1060310642_)
                           '0)
                     (let ((_g31621_
                            (gx#syntax-split-splice _hd1060310642_ '0)))
                       (begin
                         (let ((_g31622_ (values-count _g31621_)))
                           (if (not (fx= _g31622_ 2))
                               (error "Context expects 2 values" _g31622_)))
                         (let ((_target1060510648_ (values-ref _g31621_ 0))
                               (_tl1060710651_ (values-ref _g31621_ 1)))
                           (if (gx#stx-null? _tl1060710651_)
                               (letrec ((_loop1060810654_
                                         (lambda (_hd1060610658_
                                                  _$e1061210661_)
                                           (if (gx#stx-pair? _hd1060610658_)
                                               (let ((_e1060910664_
                                                      (gx#syntax-e
                                                       _hd1060610658_)))
                                                 (let ((_lp-hd1061010668_
                                                        (##car _e1060910664_))
                                                       (_lp-tl1061110671_
                                                        (##cdr _e1060910664_)))
                                                   (_loop1060810654_
                                                    _lp-tl1061110671_
                                                    (cons _lp-hd1061010668_
                                                          _$e1061210661_))))
                                               (let ((_$e1061310674_
                                                      (reverse _$e1061210661_)))
                                                 (if (gx#stx-pair?
                                                      _tl1060410645_)
                                                     (let ((_e1061410678_
                                                            (gx#syntax-e
                                                             _tl1060410645_)))
                                                       (let ((_hd1061510682_
                                                              (##car _e1061410678_))
                                                             (_tl1061610685_
                                                              (##cdr _e1061410678_)))
                                                         (if (gx#stx-pair/null?
                                                              _hd1061510682_)
                                                             (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _hd1061510682_)
                               '0)
                         (let ((_g31623_
                                (gx#syntax-split-splice _hd1061510682_ '0)))
                           (begin
                             (let ((_g31624_ (values-count _g31623_)))
                               (if (not (fx= _g31624_ 2))
                                   (error "Context expects 2 values"
                                          _g31624_)))
                             (let ((_target1061710688_ (values-ref _g31623_ 0))
                                   (_tl1061910691_ (values-ref _g31623_ 1)))
                               (if (gx#stx-null? _tl1061910691_)
                                   (letrec ((_loop1062010694_
                                             (lambda (_hd1061810698_
                                                      _hd-bind1062410701_)
                                               (if (gx#stx-pair?
                                                    _hd1061810698_)
                                                   (let ((_e1062110704_
                                                          (gx#syntax-e
                                                           _hd1061810698_)))
                                                     (let ((_lp-hd1062210708_
                                                            (##car _e1062110704_))
                                                           (_lp-tl1062310711_
                                                            (##cdr _e1062110704_)))
                                                       (_loop1062010694_
                                                        _lp-tl1062310711_
                                                        (cons _lp-hd1062210708_
                                                              _hd-bind1062410701_))))
                                                   (let ((_hd-bind1062510714_
                                                          (reverse _hd-bind1062410701_)))
                                                     (if (gx#stx-null?
                                                          _tl1061610685_)
                                                         ((lambda (_L10718_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L10720_)
                    (let ()
                      (cons (gx#datum->syntax '#f 'let-values)
                            (cons (begin
                                    (gx#syntax-check-splice-targets
                                     _L10565_
                                     _L10720_)
                                    (foldr (lambda (_g1074310754_
                                                    _g1074410757_
                                                    _g1074510759_)
                                             (cons (cons (cons _g1074410757_
                                                               '())
                                                         (cons _g1074310754_
                                                               '()))
                                                   _g1074510759_))
                                           '()
                                           _L10565_
                                           _L10720_))
                                  (cons (cons (gx#datum->syntax '#f 'and)
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g1074610762_
                                                                _g1074710765_)
                                                         (cons _g1074610762_
                                                               _g1074710765_))
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'let-values)
                           (cons (begin
                                   (gx#syntax-check-splice-targets
                                    _L10720_
                                    _L10718_)
                                   (foldr (lambda (_g1074810768_
                                                   _g1074910771_
                                                   _g1075010773_)
                                            (cons (cons _g1074910771_
                                                        (cons _g1074810768_
                                                              '()))
                                                  _g1075010773_))
                                          '()
                                          _L10720_
                                          _L10718_))
                                 (begin
                                   '#!void
                                   (foldr (lambda (_g1075110776_ _g1075210779_)
                                            (cons _g1075110776_ _g1075210779_))
                                          '()
                                          _L10563_))))
                     '())
               _L10720_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                  _hd-bind1062510714_
                  _$e1061310674_)
                 (_g1059810631_ _g1059910635_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop1062010694_ _target1061710688_ '()))
                                   (_g1059810631_ _g1059910635_)))))
                         (_g1059810631_ _g1059910635_))
                     (_g1059810631_ _g1059910635_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1059810631_
                                                      _g1059910635_)))))))
                                 (_loop1060810654_ _target1060510648_ '()))
                               (_g1059810631_ _g1059910635_)))))
                     (_g1059810631_ _g1059910635_))
                 (_g1059810631_ _g1059910635_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1059810631_
                                                  _g1059910635_)))))
                                     (_g1059710782_
                                      (list (gx#gentemps
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g1078510788_
                                                               _g1078610791_)
                                                        (cons _g1078510788_
                                                              _g1078610791_))
                                                      '()
                                                      _L10566_)))
                                            (gx#stx-map
                                             _let-head10391_
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g1079310796_
                                                               _g1079410799_)
                                                        (cons _g1079310796_
                                                              _g1079410799_))
                                                      '()
                                                      _L10566_))))))
                                   (_g1039410452_ _g1039510456_)))
                             _body1044610559_
                             _e1043010527_
                             _hd1043110530_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1044110539_
                                                     _target1043810533_
                                                     '()))
                                                  (_g1039410452_
                                                   _g1039510456_)))))
                                        (_g1039410452_ _g1039510456_))
                                    (_g1039410452_ _g1039510456_)))))))
                (_loop1042410485_ _target1042110479_ '() '()))
              (_g1039410452_ _g1039510456_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1039410452_ _g1039510456_))
                                        (_g1039410452_ _g1039510456_))))
                                (_g1039410452_ _g1039510456_))))
                        (_g1039410452_ _g1039510456_))))
                 (_g1039210872_
                  (lambda (_g1039510806_)
                    (if (gx#stx-pair? _g1039510806_)
                        (let ((_e1040010809_ (gx#syntax-e _g1039510806_)))
                          (let ((_hd1040110813_ (##car _e1040010809_))
                                (_tl1040210816_ (##cdr _e1040010809_)))
                            (if (gx#stx-pair? _tl1040210816_)
                                (let ((_e1040310819_
                                       (gx#syntax-e _tl1040210816_)))
                                  (let ((_hd1040410823_ (##car _e1040310819_))
                                        (_tl1040510826_ (##cdr _e1040310819_)))
                                    (if (gx#stx-pair? _hd1040410823_)
                                        (let ((_e1040610829_
                                               (gx#syntax-e _hd1040410823_)))
                                          (let ((_hd1040710833_
                                                 (##car _e1040610829_))
                                                (_tl1040810836_
                                                 (##cdr _e1040610829_)))
                                            (if (gx#stx-pair? _tl1040810836_)
                                                (let ((_e1040910839_
                                                       (gx#syntax-e
                                                        _tl1040810836_)))
                                                  (let ((_hd1041010843_
                                                         (##car _e1040910839_))
                                                        (_tl1041110846_
                                                         (##cdr _e1040910839_)))
                                                    (if (gx#stx-null?
                                                         _tl1041110846_)
                                                        ((lambda (_L10849_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L10851_
                          _L10852_
                          _L10853_)
                   (if (_let-head?10389_ _L10852_)
                       (cons _L10853_
                             (cons (cons (cons _L10852_ (cons _L10851_ '()))
                                         '())
                                   _L10849_))
                       (_g1039310802_ _g1039510806_)))
                 _tl1040510826_
                 _hd1041010843_
                 _hd1040710833_
                 _hd1040110813_)
                (_g1039310802_ _g1039510806_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1039310802_
                                                 _g1039510806_))))
                                        (_g1039310802_ _g1039510806_))))
                                (_g1039310802_ _g1039510806_))))
                        (_g1039310802_ _g1039510806_)))))
            (_g1039210872_ _stx10386_)))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#alet*|
      (lambda (_$stx11000_)
        (let* ((_g1100511050_
                (lambda (_g1100611046_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1100611046_)))
               (_g1100411151_
                (lambda (_g1100611054_)
                  (if (gx#stx-pair? _g1100611054_)
                      (let ((_e1102711057_ (gx#syntax-e _g1100611054_)))
                        (let ((_hd1102811061_ (##car _e1102711057_))
                              (_tl1102911064_ (##cdr _e1102711057_)))
                          (if (gx#stx-pair? _tl1102911064_)
                              (let ((_e1103011067_
                                     (gx#syntax-e _tl1102911064_)))
                                (let ((_hd1103111071_ (##car _e1103011067_))
                                      (_tl1103211074_ (##cdr _e1103011067_)))
                                  (if (gx#stx-pair? _hd1103111071_)
                                      (let ((_e1103311077_
                                             (gx#syntax-e _hd1103111071_)))
                                        (let ((_hd1103411081_
                                               (##car _e1103311077_))
                                              (_tl1103511084_
                                               (##cdr _e1103311077_)))
                                          (if (gx#stx-pair/null?
                                               _tl1103211074_)
                                              (if (fx>= (gx#stx-length
                                                         _tl1103211074_)
                                                        '0)
                                                  (let ((_g31625_
                                                         (gx#syntax-split-splice
                                                          _tl1103211074_
                                                          '0)))
                                                    (begin
                                                      (let ((_g31626_
                                                             (values-count
                                                              _g31625_)))
                                                        (if (not (fx= _g31626_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g31626_)))
              (let ((_target1103611087_ (values-ref _g31625_ 0))
                    (_tl1103811090_ (values-ref _g31625_ 1)))
                (if (gx#stx-null? _tl1103811090_)
                    (letrec ((_loop1103911093_
                              (lambda (_hd1103711097_ _body1104311100_)
                                (if (gx#stx-pair? _hd1103711097_)
                                    (let ((_e1104011103_
                                           (gx#syntax-e _hd1103711097_)))
                                      (let ((_lp-hd1104111107_
                                             (##car _e1104011103_))
                                            (_lp-tl1104211110_
                                             (##cdr _e1104011103_)))
                                        (_loop1103911093_
                                         _lp-tl1104211110_
                                         (cons _lp-hd1104111107_
                                               _body1104311100_))))
                                    (let ((_body1104411113_
                                           (reverse _body1104311100_)))
                                      ((lambda (_L11117_
                                                _L11119_
                                                _L11120_
                                                _L11121_)
                                         (cons (gx#datum->syntax '#f 'alet)
                                               (cons (cons _L11120_ '())
                                                     (cons (cons _L11121_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L11119_
                               (begin
                                 '#!void
                                 (foldr (lambda (_g1114211145_ _g1114311148_)
                                          (cons _g1114211145_ _g1114311148_))
                                        '()
                                        _L11117_))))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _body1104411113_
                                       _tl1103511084_
                                       _hd1103411081_
                                       _hd1102811061_))))))
                      (_loop1103911093_ _target1103611087_ '()))
                    (_g1100511050_ _g1100611054_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1100511050_
                                                   _g1100611054_))
                                              (_g1100511050_ _g1100611054_))))
                                      (_g1100511050_ _g1100611054_))))
                              (_g1100511050_ _g1100611054_))))
                      (_g1100511050_ _g1100611054_))))
               (_g1100311233_
                (lambda (_g1100611155_)
                  (if (gx#stx-pair? _g1100611155_)
                      (let ((_e1100811158_ (gx#syntax-e _g1100611155_)))
                        (let ((_hd1100911162_ (##car _e1100811158_))
                              (_tl1101011165_ (##cdr _e1100811158_)))
                          (if (gx#stx-pair? _tl1101011165_)
                              (let ((_e1101111168_
                                     (gx#syntax-e _tl1101011165_)))
                                (let ((_hd1101211172_ (##car _e1101111168_))
                                      (_tl1101311175_ (##cdr _e1101111168_)))
                                  (if (gx#stx-null? _hd1101211172_)
                                      (if (gx#stx-pair/null? _tl1101311175_)
                                          (if (fx>= (gx#stx-length
                                                     _tl1101311175_)
                                                    '0)
                                              (let ((_g31627_
                                                     (gx#syntax-split-splice
                                                      _tl1101311175_
                                                      '0)))
                                                (begin
                                                  (let ((_g31628_
                                                         (values-count
                                                          _g31627_)))
                                                    (if (not (fx= _g31628_ 2))
                                                        (error "Context expects 2 values"
                                                               _g31628_)))
                                                  (let ((_target1101411178_
                                                         (values-ref
                                                          _g31627_
                                                          0))
                                                        (_tl1101611181_
                                                         (values-ref
                                                          _g31627_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl1101611181_)
                                                        (letrec ((_loop1101711184_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd1101511188_ _body1102111191_)
                            (if (gx#stx-pair? _hd1101511188_)
                                (let ((_e1101811194_
                                       (gx#syntax-e _hd1101511188_)))
                                  (let ((_lp-hd1101911198_
                                         (##car _e1101811194_))
                                        (_lp-tl1102011201_
                                         (##cdr _e1101811194_)))
                                    (_loop1101711184_
                                     _lp-tl1102011201_
                                     (cons _lp-hd1101911198_
                                           _body1102111191_))))
                                (let ((_body1102211204_
                                       (reverse _body1102111191_)))
                                  ((lambda (_L11208_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons '()
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g1122411227_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1122511230_)
                    (cons _g1122411227_ _g1122511230_))
                  '()
                  _L11208_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _body1102211204_))))))
                  (_loop1101711184_ _target1101411178_ '()))
                (_g1100411151_ _g1100611155_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1100411151_ _g1100611155_))
                                          (_g1100411151_ _g1100611155_))
                                      (_g1100411151_ _g1100611155_))))
                              (_g1100411151_ _g1100611155_))))
                      (_g1100411151_ _g1100611155_)))))
          (_g1100311233_ _$stx11000_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#@list|
      (lambda (_$stx11239_)
        (let* ((_g1124811305_
                (lambda (_g1124911301_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1124911301_)))
               (_g1124711334_
                (lambda (_g1124911309_)
                  (if (gx#stx-pair? _g1124911309_)
                      (let ((_e1129711312_ (gx#syntax-e _g1124911309_)))
                        (let ((_hd1129811316_ (##car _e1129711312_))
                              (_tl1129911319_ (##cdr _e1129711312_)))
                          ((lambda (_L11322_) _L11322_) _tl1129911319_)))
                      (_g1124811305_ _g1124911309_))))
               (_g1124611378_
                (lambda (_g1124911338_)
                  (if (gx#stx-pair? _g1124911338_)
                      (let ((_e1129011341_ (gx#syntax-e _g1124911338_)))
                        (let ((_hd1129111345_ (##car _e1129011341_))
                              (_tl1129211348_ (##cdr _e1129011341_)))
                          (if (gx#stx-pair? _tl1129211348_)
                              (let ((_e1129311351_
                                     (gx#syntax-e _tl1129211348_)))
                                (let ((_hd1129411355_ (##car _e1129311351_))
                                      (_tl1129511358_ (##cdr _e1129311351_)))
                                  ((lambda (_L11361_ _L11363_ _L11364_)
                                     (cons (gx#datum->syntax '#f 'cons)
                                           (cons _L11363_
                                                 (cons (cons _L11364_ _L11361_)
                                                       '()))))
                                   _tl1129511358_
                                   _hd1129411355_
                                   _hd1129111345_)))
                              (_g1124711334_ _g1124911338_))))
                      (_g1124711334_ _g1124911338_))))
               (_g1124511436_
                (lambda (_g1124911382_)
                  (if (gx#stx-pair? _g1124911382_)
                      (let ((_e1127811385_ (gx#syntax-e _g1124911382_)))
                        (let ((_hd1127911389_ (##car _e1127811385_))
                              (_tl1128011392_ (##cdr _e1127811385_)))
                          (if (gx#stx-pair? _tl1128011392_)
                              (let ((_e1128111395_
                                     (gx#syntax-e _tl1128011392_)))
                                (let ((_hd1128211399_ (##car _e1128111395_))
                                      (_tl1128311402_ (##cdr _e1128111395_)))
                                  (if (gx#stx-pair? _tl1128311402_)
                                      (let ((_e1128411405_
                                             (gx#syntax-e _tl1128311402_)))
                                        (let ((_hd1128511409_
                                               (##car _e1128411405_))
                                              (_tl1128611412_
                                               (##cdr _e1128411405_)))
                                          ((lambda (_L11415_
                                                    _L11417_
                                                    _L11418_
                                                    _L11419_)
                                             (if (gx#ellipsis? _L11417_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'foldr)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'cons)
                                                             (cons (cons _L11419_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L11415_)
                           (cons _L11418_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1124611378_
                                                  _g1124911382_)))
                                           _tl1128611412_
                                           _hd1128511409_
                                           _hd1128211399_
                                           _hd1127911389_)))
                                      (_g1124611378_ _g1124911382_))))
                              (_g1124611378_ _g1124911382_))))
                      (_g1124611378_ _g1124911382_))))
               (_g1124411490_
                (lambda (_g1124911440_)
                  (if (gx#stx-pair? _g1124911440_)
                      (let ((_e1126511443_ (gx#syntax-e _g1124911440_)))
                        (let ((_hd1126611447_ (##car _e1126511443_))
                              (_tl1126711450_ (##cdr _e1126511443_)))
                          (if (gx#stx-pair? _tl1126711450_)
                              (let ((_e1126811453_
                                     (gx#syntax-e _tl1126711450_)))
                                (let ((_hd1126911457_ (##car _e1126811453_))
                                      (_tl1127011460_ (##cdr _e1126811453_)))
                                  (if (gx#stx-pair? _tl1127011460_)
                                      (let ((_e1127111463_
                                             (gx#syntax-e _tl1127011460_)))
                                        (let ((_hd1127211467_
                                               (##car _e1127111463_))
                                              (_tl1127311470_
                                               (##cdr _e1127111463_)))
                                          (if (gx#stx-null? _tl1127311470_)
                                              ((lambda (_L11473_ _L11475_)
                                                 (if (gx#ellipsis? _L11473_)
                                                     _L11475_
                                                     (_g1124511436_
                                                      _g1124911440_)))
                                               _hd1127211467_
                                               _hd1126911457_)
                                              (_g1124511436_ _g1124911440_))))
                                      (_g1124511436_ _g1124911440_))))
                              (_g1124511436_ _g1124911440_))))
                      (_g1124511436_ _g1124911440_))))
               (_g1124311542_
                (lambda (_g1124911494_)
                  (if (gx#stx-pair? _g1124911494_)
                      (let ((_e1125411497_ (gx#syntax-e _g1124911494_)))
                        (let ((_hd1125511501_ (##car _e1125411497_))
                              (_tl1125611504_ (##cdr _e1125411497_)))
                          (if (gx#stx-pair? _tl1125611504_)
                              (let ((_e1125711507_
                                     (gx#syntax-e _tl1125611504_)))
                                (let ((_hd1125811511_ (##car _e1125711507_))
                                      (_tl1125911514_ (##cdr _e1125711507_)))
                                  (if (gx#stx-datum? _hd1125811511_)
                                      (if (equal? (gx#stx-e _hd1125811511_)
                                                  '::)
                                          (if (gx#stx-pair? _tl1125911514_)
                                              (let ((_e1126011517_
                                                     (gx#syntax-e
                                                      _tl1125911514_)))
                                                (let ((_hd1126111521_
                                                       (##car _e1126011517_))
                                                      (_tl1126211524_
                                                       (##cdr _e1126011517_)))
                                                  (if (gx#stx-null?
                                                       _tl1126211524_)
                                                      ((lambda (_L11527_)
                                                         _L11527_)
                                                       _hd1126111521_)
                                                      (_g1124411490_
                                                       _g1124911494_))))
                                              (_g1124411490_ _g1124911494_))
                                          (_g1124411490_ _g1124911494_))
                                      (_g1124411490_ _g1124911494_))))
                              (_g1124411490_ _g1124911494_))))
                      (_g1124411490_ _g1124911494_))))
               (_g1124211563_
                (lambda (_g1124911546_)
                  (if (gx#stx-pair? _g1124911546_)
                      (let ((_e1125011549_ (gx#syntax-e _g1124911546_)))
                        (let ((_hd1125111553_ (##car _e1125011549_))
                              (_tl1125211556_ (##cdr _e1125011549_)))
                          (if (gx#stx-null? _tl1125211556_)
                              ((lambda ()
                                 (cons (gx#datum->syntax '#f 'quote)
                                       (cons '() '()))))
                              (_g1124311542_ _g1124911546_))))
                      (_g1124311542_ _g1124911546_)))))
          (_g1124211563_ _$stx11239_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#quasiquote|
      (lambda (_stx11567_)
        (letrec ((_simple-quote?11570_
                  (lambda (_e12262_)
                    (let* ((_g1227012307_
                            (lambda (_g1227112303_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1227112303_)))
                           (_g1226912318_
                            (lambda (_g1227112311_) ((lambda () '#t))))
                           (_g1226812341_
                            (lambda (_g1227112322_)
                              (if (gx#stx-box? _g1227112322_)
                                  (let ((_e1230112325_
                                         (unbox (gx#syntax-e _g1227112322_))))
                                    ((lambda (_L12329_)
                                       (_simple-quote?11570_ _L12329_))
                                     _e1230112325_))
                                  (_g1226912318_ _g1227112322_))))
                           (_g1226712404_
                            (lambda (_g1227112345_)
                              (if (gx#stx-vector? _g1227112345_)
                                  (let ((_e1229012348_
                                         (vector->list
                                          (gx#syntax-e _g1227112345_))))
                                    (if (gx#stx-pair/null? _e1229012348_)
                                        (if (fx>= (gx#stx-length _e1229012348_)
                                                  '0)
                                            (let ((_g31629_
                                                   (gx#syntax-split-splice
                                                    _e1229012348_
                                                    '0)))
                                              (begin
                                                (let ((_g31630_
                                                       (values-count
                                                        _g31629_)))
                                                  (if (not (fx= _g31630_ 2))
                                                      (error "Context expects 2 values"
                                                             _g31630_)))
                                                (let ((_target1229112352_
                                                       (values-ref _g31629_ 0))
                                                      (_tl1229312355_
                                                       (values-ref
                                                        _g31629_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl1229312355_)
                                                      (letrec ((_loop1229412358_
                                                                (lambda (_hd1229212362_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _e1229812365_)
                          (if (gx#stx-pair? _hd1229212362_)
                              (let ((_e1229512368_
                                     (gx#syntax-e _hd1229212362_)))
                                (let ((_lp-hd1229612372_ (##car _e1229512368_))
                                      (_lp-tl1229712375_
                                       (##cdr _e1229512368_)))
                                  (_loop1229412358_
                                   _lp-tl1229712375_
                                   (cons _lp-hd1229612372_ _e1229812365_))))
                              (let ((_e1229912378_ (reverse _e1229812365_)))
                                ((lambda (_L12382_)
                                   (_simple-quote?11570_
                                    (begin
                                      '#!void
                                      (foldr (lambda (_g1239512398_
                                                      _g1239612401_)
                                               (cons _g1239512398_
                                                     _g1239612401_))
                                             '()
                                             _L12382_))))
                                 _e1229912378_))))))
                (_loop1229412358_ _target1229112352_ '()))
              (_g1226812341_ _g1227112345_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1226812341_ _g1227112345_))
                                        (_g1226812341_ _g1227112345_)))
                                  (_g1226812341_ _g1227112345_))))
                           (_g1226612434_
                            (lambda (_g1227112408_)
                              (if (gx#stx-pair? _g1227112408_)
                                  (let ((_e1228612411_
                                         (gx#syntax-e _g1227112408_)))
                                    (let ((_hd1228712415_
                                           (##car _e1228612411_))
                                          (_tl1228812418_
                                           (##cdr _e1228612411_)))
                                      ((lambda (_L12421_ _L12423_)
                                         (if (_simple-quote?11570_ _L12423_)
                                             (_simple-quote?11570_ _L12421_)
                                             '#f))
                                       _tl1228812418_
                                       _hd1228712415_)))
                                  (_g1226712404_ _g1227112408_))))
                           (_g1226512465_
                            (lambda (_g1227112438_)
                              (if (gx#stx-pair? _g1227112438_)
                                  (let ((_e1227812441_
                                         (gx#syntax-e _g1227112438_)))
                                    (let ((_hd1227912445_
                                           (##car _e1227812441_))
                                          (_tl1228012448_
                                           (##cdr _e1227812441_)))
                                      (if (gx#identifier? _hd1227912445_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<sugar>$<sugar:2>[1]#_g31631_|
                                               _hd1227912445_)
                                              (if (gx#stx-pair? _tl1228012448_)
                                                  (let ((_e1228112451_
                                                         (gx#syntax-e
                                                          _tl1228012448_)))
                                                    (let ((_hd1228212455_
                                                           (##car _e1228112451_))
                                                          (_tl1228312458_
                                                           (##cdr _e1228112451_)))
                                                      (if (gx#stx-null?
                                                           _tl1228312458_)
                                                          ((lambda () '#f))
                                                          (_g1226612434_
                                                           _g1227112438_))))
                                                  (_g1226612434_
                                                   _g1227112438_))
                                              (_g1226612434_ _g1227112438_))
                                          (_g1226612434_ _g1227112438_))))
                                  (_g1226612434_ _g1227112438_))))
                           (_g1226412496_
                            (lambda (_g1227112469_)
                              (if (gx#stx-pair? _g1227112469_)
                                  (let ((_e1227212472_
                                         (gx#syntax-e _g1227112469_)))
                                    (let ((_hd1227312476_
                                           (##car _e1227212472_))
                                          (_tl1227412479_
                                           (##cdr _e1227212472_)))
                                      (if (gx#identifier? _hd1227312476_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<sugar>$<sugar:2>[1]#_g31632_|
                                               _hd1227312476_)
                                              (if (gx#stx-pair? _tl1227412479_)
                                                  (let ((_e1227512482_
                                                         (gx#syntax-e
                                                          _tl1227412479_)))
                                                    (let ((_hd1227612486_
                                                           (##car _e1227512482_))
                                                          (_tl1227712489_
                                                           (##cdr _e1227512482_)))
                                                      (if (gx#stx-null?
                                                           _tl1227712489_)
                                                          ((lambda () '#f))
                                                          (_g1226512465_
                                                           _g1227112469_))))
                                                  (_g1226512465_
                                                   _g1227112469_))
                                              (_g1226512465_ _g1227112469_))
                                          (_g1226512465_ _g1227112469_))))
                                  (_g1226512465_ _g1227112469_)))))
                      (_g1226412496_ _e12262_))))
                 (_generate11572_
                  (lambda (_e11634_ _d11636_)
                    (let* ((_g1164511703_
                            (lambda (_g1164611699_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1164611699_)))
                           (_g1164411720_
                            (lambda (_g1164611707_)
                              ((lambda (_L11710_)
                                 (cons (gx#datum->syntax '#f 'quote)
                                       (cons _L11710_ '())))
                               _g1164611707_)))
                           (_g1164311772_
                            (lambda (_g1164611724_)
                              (if (gx#stx-box? _g1164611724_)
                                  (let ((_e1169611727_
                                         (unbox (gx#syntax-e _g1164611724_))))
                                    ((lambda (_L11731_)
                                       (let* ((_g1174111749_
                                               (lambda (_g1174211745_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1174211745_)))
                                              (_g1174011768_
                                               (lambda (_g1174211753_)
                                                 ((lambda (_L11756_)
                                                    (let ()
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'box)
                                                            (cons _L11756_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g1174211753_))))
                                         (_g1174011768_
                                          (_generate11572_
                                           _L11731_
                                           _d11636_))))
                                     _e1169611727_))
                                  (_g1164411720_ _g1164611724_))))
                           (_g1164211866_
                            (lambda (_g1164611776_)
                              (if (gx#stx-vector? _g1164611776_)
                                  (let ((_e1168511779_
                                         (vector->list
                                          (gx#syntax-e _g1164611776_))))
                                    (if (gx#stx-pair/null? _e1168511779_)
                                        (if (fx>= (gx#stx-length _e1168511779_)
                                                  '0)
                                            (let ((_g31633_
                                                   (gx#syntax-split-splice
                                                    _e1168511779_
                                                    '0)))
                                              (begin
                                                (let ((_g31634_
                                                       (values-count
                                                        _g31633_)))
                                                  (if (not (fx= _g31634_ 2))
                                                      (error "Context expects 2 values"
                                                             _g31634_)))
                                                (let ((_target1168611783_
                                                       (values-ref _g31633_ 0))
                                                      (_tl1168811786_
                                                       (values-ref
                                                        _g31633_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl1168811786_)
                                                      (letrec ((_loop1168911789_
                                                                (lambda (_hd1168711793_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _e1169311796_)
                          (if (gx#stx-pair? _hd1168711793_)
                              (let ((_e1169011799_
                                     (gx#syntax-e _hd1168711793_)))
                                (let ((_lp-hd1169111803_ (##car _e1169011799_))
                                      (_lp-tl1169211806_
                                       (##cdr _e1169011799_)))
                                  (_loop1168911789_
                                   _lp-tl1169211806_
                                   (cons _lp-hd1169111803_ _e1169311796_))))
                              (let ((_e1169411809_ (reverse _e1169311796_)))
                                ((lambda (_L11813_)
                                   (let* ((_g1182711835_
                                           (lambda (_g1182811831_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1182811831_)))
                                          (_g1182611854_
                                           (lambda (_g1182811839_)
                                             ((lambda (_L11842_)
                                                (let ()
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'list->vector)
                                                        (cons _L11842_ '()))))
                                              _g1182811839_))))
                                     (_g1182611854_
                                      (_generate11572_
                                       (begin
                                         '#!void
                                         (foldr (lambda (_g1185711860_
                                                         _g1185811863_)
                                                  (cons _g1185711860_
                                                        _g1185811863_))
                                                '()
                                                _L11813_))
                                       _d11636_))))
                                 _e1169411809_))))))
                (_loop1168911789_ _target1168611783_ '()))
              (_g1164311772_ _g1164611776_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1164311772_ _g1164611776_))
                                        (_g1164311772_ _g1164611776_)))
                                  (_g1164311772_ _g1164611776_))))
                           (_g1164111960_
                            (lambda (_g1164611870_)
                              (if (gx#stx-pair? _g1164611870_)
                                  (let ((_e1168111873_
                                         (gx#syntax-e _g1164611870_)))
                                    (let ((_hd1168211877_
                                           (##car _e1168111873_))
                                          (_tl1168311880_
                                           (##cdr _e1168111873_)))
                                      ((lambda (_L11883_ _L11885_)
                                         (let* ((_g1189611911_
                                                 (lambda (_g1189711907_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1189711907_)))
                                                (_g1189511956_
                                                 (lambda (_g1189711915_)
                                                   (if (gx#stx-pair?
                                                        _g1189711915_)
                                                       (let ((_e1190011918_
                                                              (gx#syntax-e
                                                               _g1189711915_)))
                                                         (let ((_hd1190111922_
                                                                (##car _e1190011918_))
                                                               (_tl1190211925_
                                                                (##cdr _e1190011918_)))
                                                           (if (gx#stx-pair?
                                                                _tl1190211925_)
                                                               (let ((_e1190311928_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl1190211925_)))
                         (let ((_hd1190411932_ (##car _e1190311928_))
                               (_tl1190511935_ (##cdr _e1190311928_)))
                           (if (gx#stx-null? _tl1190511935_)
                               ((lambda (_L11938_ _L11940_)
                                  (let ()
                                    (cons (gx#datum->syntax '#f 'cons)
                                          (cons _L11940_
                                                (cons _L11938_ '())))))
                                _hd1190411932_
                                _hd1190111922_)
                               (_g1189611911_ _g1189711915_))))
                       (_g1189611911_ _g1189711915_))))
               (_g1189611911_ _g1189711915_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g1189511956_
                                            (list (_generate11572_
                                                   _L11885_
                                                   _d11636_)
                                                  (_generate11572_
                                                   _L11883_
                                                   _d11636_)))))
                                       _tl1168311880_
                                       _hd1168211877_)))
                                  (_g1164211866_ _g1164611870_))))
                           (_g1164012045_
                            (lambda (_g1164611964_)
                              (if (gx#stx-pair? _g1164611964_)
                                  (let ((_e1167011967_
                                         (gx#syntax-e _g1164611964_)))
                                    (let ((_hd1167111971_
                                           (##car _e1167011967_))
                                          (_tl1167211974_
                                           (##cdr _e1167011967_)))
                                      (if (gx#stx-pair? _hd1167111971_)
                                          (let ((_e1167311977_
                                                 (gx#syntax-e _hd1167111971_)))
                                            (let ((_hd1167411981_
                                                   (##car _e1167311977_))
                                                  (_tl1167511984_
                                                   (##cdr _e1167311977_)))
                                              (if (gx#identifier?
                                                   _hd1167411981_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<sugar>$<sugar:2>[1]#_g31635_|
                                                       _hd1167411981_)
                                                      (if (gx#stx-pair?
                                                           _tl1167511984_)
                                                          (let ((_e1167611987_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1167511984_)))
                    (let ((_hd1167711991_ (##car _e1167611987_))
                          (_tl1167811994_ (##cdr _e1167611987_)))
                      (if (gx#stx-null? _tl1167811994_)
                          ((lambda (_L11997_ _L11999_)
                             (if (fxzero? _d11636_)
                                 (let* ((_g1201412022_
                                         (lambda (_g1201512018_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g1201512018_)))
                                        (_g1201312041_
                                         (lambda (_g1201512026_)
                                           ((lambda (_L12029_)
                                              (let ()
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'foldr)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'cons)
                                                            (cons _L12029_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L11999_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g1201512026_))))
                                   (_g1201312041_
                                    (_generate11572_ _L11997_ _d11636_)))
                                 (_g1164111960_ _g1164611964_)))
                           _tl1167211974_
                           _hd1167711991_)
                          (_g1164111960_ _g1164611964_))))
                  (_g1164111960_ _g1164611964_))
              (_g1164111960_ _g1164611964_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1164111960_
                                                   _g1164611964_))))
                                          (_g1164111960_ _g1164611964_))))
                                  (_g1164111960_ _g1164611964_))))
                           (_g1163912116_
                            (lambda (_g1164612049_)
                              (if (gx#stx-pair? _g1164612049_)
                                  (let ((_e1166212052_
                                         (gx#syntax-e _g1164612049_)))
                                    (let ((_hd1166312056_
                                           (##car _e1166212052_))
                                          (_tl1166412059_
                                           (##cdr _e1166212052_)))
                                      (if (gx#identifier? _hd1166312056_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<sugar>$<sugar:2>[1]#_g31636_|
                                               _hd1166312056_)
                                              (if (gx#stx-pair? _tl1166412059_)
                                                  (let ((_e1166512062_
                                                         (gx#syntax-e
                                                          _tl1166412059_)))
                                                    (let ((_hd1166612066_
                                                           (##car _e1166512062_))
                                                          (_tl1166712069_
                                                           (##cdr _e1166512062_)))
                                                      (if (gx#stx-null?
                                                           _tl1166712069_)
                                                          ((lambda (_L12072_)
                                                             (if (fxzero? _d11636_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'foldr)
                               (cons (gx#datum->syntax '#f 'cons)
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons '() '()))
                                           (cons _L12072_ '()))))
                         (let* ((_g1208512093_
                                 (lambda (_g1208612089_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1208612089_)))
                                (_g1208412112_
                                 (lambda (_g1208612097_)
                                   ((lambda (_L12100_)
                                      (let ()
                                        (cons (gx#datum->syntax '#f 'list)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'quote)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'unquote-splicing)
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _L12100_ '())))))
                                    _g1208612097_))))
                           (_g1208412112_
                            (_generate11572_ _L12072_ (fx1- _d11636_))))))
                   _hd1166612066_)
                  (_g1164012045_ _g1164612049_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1164012045_
                                                   _g1164612049_))
                                              (_g1164012045_ _g1164612049_))
                                          (_g1164012045_ _g1164612049_))))
                                  (_g1164012045_ _g1164612049_))))
                           (_g1163812187_
                            (lambda (_g1164612120_)
                              (if (gx#stx-pair? _g1164612120_)
                                  (let ((_e1165512123_
                                         (gx#syntax-e _g1164612120_)))
                                    (let ((_hd1165612127_
                                           (##car _e1165512123_))
                                          (_tl1165712130_
                                           (##cdr _e1165512123_)))
                                      (if (gx#identifier? _hd1165612127_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<sugar>$<sugar:2>[1]#_g31637_|
                                               _hd1165612127_)
                                              (if (gx#stx-pair? _tl1165712130_)
                                                  (let ((_e1165812133_
                                                         (gx#syntax-e
                                                          _tl1165712130_)))
                                                    (let ((_hd1165912137_
                                                           (##car _e1165812133_))
                                                          (_tl1166012140_
                                                           (##cdr _e1165812133_)))
                                                      (if (gx#stx-null?
                                                           _tl1166012140_)
                                                          ((lambda (_L12143_)
                                                             (if (fxzero? _d11636_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L12143_
                         (let* ((_g1215612164_
                                 (lambda (_g1215712160_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1215712160_)))
                                (_g1215512183_
                                 (lambda (_g1215712168_)
                                   ((lambda (_L12171_)
                                      (let ()
                                        (cons (gx#datum->syntax '#f 'list)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'quote)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'unquote)
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _L12171_ '())))))
                                    _g1215712168_))))
                           (_g1215512183_
                            (_generate11572_ _L12143_ (fx1- _d11636_))))))
                   _hd1165912137_)
                  (_g1163912116_ _g1164612120_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1163912116_
                                                   _g1164612120_))
                                              (_g1163912116_ _g1164612120_))
                                          (_g1163912116_ _g1164612120_))))
                                  (_g1163912116_ _g1164612120_))))
                           (_g1163712258_
                            (lambda (_g1164612191_)
                              (if (gx#stx-pair? _g1164612191_)
                                  (let ((_e1164812194_
                                         (gx#syntax-e _g1164612191_)))
                                    (let ((_hd1164912198_
                                           (##car _e1164812194_))
                                          (_tl1165012201_
                                           (##cdr _e1164812194_)))
                                      (if (gx#identifier? _hd1164912198_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<sugar>$<sugar:2>[1]#_g31638_|
                                               _hd1164912198_)
                                              (if (gx#stx-pair? _tl1165012201_)
                                                  (let ((_e1165112204_
                                                         (gx#syntax-e
                                                          _tl1165012201_)))
                                                    (let ((_hd1165212208_
                                                           (##car _e1165112204_))
                                                          (_tl1165312211_
                                                           (##cdr _e1165112204_)))
                                                      (if (gx#stx-null?
                                                           _tl1165312211_)
                                                          ((lambda (_L12214_)
                                                             (let* ((_g1222712235_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1222812231_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g1222812231_)))
                            (_g1222612254_
                             (lambda (_g1222812239_)
                               ((lambda (_L12242_)
                                  (let ()
                                    (cons (gx#datum->syntax '#f 'list)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'quote)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'quasiquote)
                                                            '()))
                                                (cons _L12242_ '())))))
                                _g1222812239_))))
                       (_g1222612254_
                        (_generate11572_ _L12214_ (fx1+ _d11636_)))))
                   _hd1165212208_)
                  (_g1163812187_ _g1164612191_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1163812187_
                                                   _g1164612191_))
                                              (_g1163812187_ _g1164612191_))
                                          (_g1163812187_ _g1164612191_))))
                                  (_g1163812187_ _g1164612191_)))))
                      (_g1163712258_ _e11634_)))))
          (let* ((_g1157411588_
                  (lambda (_g1157511584_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1157511584_)))
                 (_g1157311630_
                  (lambda (_g1157511592_)
                    (if (gx#stx-pair? _g1157511592_)
                        (let ((_e1157711595_ (gx#syntax-e _g1157511592_)))
                          (let ((_hd1157811599_ (##car _e1157711595_))
                                (_tl1157911602_ (##cdr _e1157711595_)))
                            (if (gx#stx-pair? _tl1157911602_)
                                (let ((_e1158011605_
                                       (gx#syntax-e _tl1157911602_)))
                                  (let ((_hd1158111609_ (##car _e1158011605_))
                                        (_tl1158211612_ (##cdr _e1158011605_)))
                                    (if (gx#stx-null? _tl1158211612_)
                                        ((lambda (_L11615_)
                                           (if (_simple-quote?11570_ _L11615_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _L11615_ '()))
                                               (_generate11572_ _L11615_ '0)))
                                         _hd1158111609_)
                                        (_g1157411588_ _g1157511592_))))
                                (_g1157411588_ _g1157511592_))))
                        (_g1157411588_ _g1157511592_)))))
            (_g1157311630_ _stx11567_)))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#delay|
      (lambda (_$stx12502_)
        (let* ((_g1250712528_
                (lambda (_g1250812524_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1250812524_)))
               (_g1250612569_
                (lambda (_g1250812532_)
                  (if (gx#stx-pair? _g1250812532_)
                      (let ((_e1251712535_ (gx#syntax-e _g1250812532_)))
                        (let ((_hd1251812539_ (##car _e1251712535_))
                              (_tl1251912542_ (##cdr _e1251712535_)))
                          (if (gx#stx-pair? _tl1251912542_)
                              (let ((_e1252012545_
                                     (gx#syntax-e _tl1251912542_)))
                                (let ((_hd1252112549_ (##car _e1252012545_))
                                      (_tl1252212552_ (##cdr _e1252012545_)))
                                  (if (gx#stx-null? _tl1252212552_)
                                      ((lambda (_L12555_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                'make-promise)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'lambda%)
                                                           (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L12555_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _hd1252112549_)
                                      (_g1250712528_ _g1250812532_))))
                              (_g1250712528_ _g1250812532_))))
                      (_g1250712528_ _g1250812532_))))
               (_g1250512609_
                (lambda (_g1250812573_)
                  (if (gx#stx-pair? _g1250812573_)
                      (let ((_e1251012576_ (gx#syntax-e _g1250812573_)))
                        (let ((_hd1251112580_ (##car _e1251012576_))
                              (_tl1251212583_ (##cdr _e1251012576_)))
                          (if (gx#stx-pair? _tl1251212583_)
                              (let ((_e1251312586_
                                     (gx#syntax-e _tl1251212583_)))
                                (let ((_hd1251412590_ (##car _e1251312586_))
                                      (_tl1251512593_ (##cdr _e1251312586_)))
                                  (if (gx#stx-null? _tl1251512593_)
                                      ((lambda (_L12596_)
                                         (if (gx#stx-datum? _L12596_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _L12596_ '()))
                                             (_g1250612569_ _g1250812573_)))
                                       _hd1251412590_)
                                      (_g1250612569_ _g1250812573_))))
                              (_g1250612569_ _g1250812573_))))
                      (_g1250612569_ _g1250812573_)))))
          (_g1250512609_ _$stx12502_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#cut|
      (lambda (_stx12613_)
        (letrec ((_generate12616_
                  (lambda (_rest12735_)
                    (let _lp12738_ ((_rest12741_ _rest12735_)
                                    (_hd12743_ '())
                                    (_body12744_ '()))
                      (let* ((_g1274712759_
                              (lambda (_g1274812755_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1274812755_)))
                             (_g1274612770_
                              (lambda (_g1274812763_)
                                ((lambda ()
                                   (values (reverse _hd12743_)
                                           (reverse _body12744_)
                                           '#f)))))
                             (_g1274512856_
                              (lambda (_g1274812774_)
                                (if (gx#stx-pair? _g1274812774_)
                                    (let ((_e1275112777_
                                           (gx#syntax-e _g1274812774_)))
                                      (let ((_hd1275212781_
                                             (##car _e1275112777_))
                                            (_tl1275312784_
                                             (##cdr _e1275112777_)))
                                        ((lambda (_L12787_ _L12789_)
                                           (let* ((_g1280612813_
                                                   (lambda (_g1280712809_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g1280712809_)))
                                                  (_g1280512824_
                                                   (lambda (_g1280712817_)
                                                     ((lambda ()
                                                        (_lp12738_
                                                         _L12787_
                                                         _hd12743_
                                                         (cons _L12789_
                                                               _body12744_))))))
                                                  (_g1280412838_
                                                   (lambda (_g1280712828_)
                                                     (if (gx#identifier?
                                                          _g1280712828_)
                                                         (if (gx#free-identifier=?
                                                              |gerbil/core$<sugar>$<sugar:2>[1]#_g31639_|
                                                              _g1280712828_)
                                                             ((lambda ()
                                                                (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L12787_)
                            (let ((_tail12835_ (gx#genident)))
                              (values (foldl cons _tail12835_ _hd12743_)
                                      (foldl cons
                                             (list _tail12835_)
                                             _body12744_)
                                      '#t))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _stx12613_
                             _L12789_))))
                     (_g1280512824_ _g1280712828_))
                 (_g1280512824_ _g1280712828_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1280312852_
                                                   (lambda (_g1280712842_)
                                                     (if (gx#identifier?
                                                          _g1280712842_)
                                                         (if (gx#free-identifier=?
                                                              |gerbil/core$<sugar>$<sugar:2>[1]#_g31640_|
                                                              _g1280712842_)
                                                             ((lambda ()
                                                                (let ((_arg12849_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#genident)))
                          (_lp12738_
                           _L12787_
                           (cons _arg12849_ _hd12743_)
                           (cons _arg12849_ _body12744_)))))
                     (_g1280412838_ _g1280712842_))
                 (_g1280412838_ _g1280712842_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1280312852_ _L12789_)))
                                         _tl1275312784_
                                         _hd1275212781_)))
                                    (_g1274612770_ _g1274812774_)))))
                        (_g1274512856_ _rest12741_))))))
          (let* ((_g1261912630_
                  (lambda (_g1262012626_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1262012626_)))
                 (_g1261812731_
                  (lambda (_g1262012634_)
                    (if (gx#stx-pair? _g1262012634_)
                        (let ((_e1262212637_ (gx#syntax-e _g1262012634_)))
                          (let ((_hd1262312641_ (##car _e1262212637_))
                                (_tl1262412644_ (##cdr _e1262212637_)))
                            ((lambda (_L12647_)
                               (if (if (gx#stx-list? _L12647_)
                                       (not (gx#stx-null? _L12647_))
                                       '#f)
                                   (let ((_g31641_ (_generate12616_ _L12647_)))
                                     (begin
                                       (let ((_g31642_
                                              (values-count _g31641_)))
                                         (if (not (fx= _g31642_ 3))
                                             (error "Context expects 3 values"
                                                    _g31642_)))
                                       (let ((_hd12660_
                                              (values-ref _g31641_ 0))
                                             (_body12662_
                                              (values-ref _g31641_ 1))
                                             (_tail?12663_
                                              (values-ref _g31641_ 2)))
                                         (let* ((_g1266512673_
                                                 (lambda (_g1266612669_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1266612669_)))
                                                (_g1266412727_
                                                 (lambda (_g1266612677_)
                                                   ((lambda (_L12680_)
                                                      (let ()
                                                        (let* ((_g1269312701_
                                                                (lambda (_g1269412697_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1269412697_)))
                       (_g1269212723_
                        (lambda (_g1269412705_)
                          ((lambda (_L12708_)
                             (let ()
                               (let ()
                                 (if _tail?12663_
                                     (cons (gx#datum->syntax '#f 'lambda%)
                                           (cons _L12680_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'apply)
                                                             _L12708_)
                                                       '())))
                                     (cons (gx#datum->syntax '#f 'lambda%)
                                           (cons _L12680_
                                                 (cons _L12708_ '())))))))
                           _g1269412705_))))
                  (_g1269212723_ _body12662_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1266612677_))))
                                           (_g1266412727_ _hd12660_)))))
                                   (_g1261912630_ _g1262012634_)))
                             _tl1262412644_)))
                        (_g1261912630_ _g1262012634_)))))
            (_g1261812731_ _stx12613_)))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#<>|
      (lambda (_$stx12861_)
        (let ((_g1286412871_
               (lambda (_g1286512867_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1286512867_))))
          (_g1286412871_ _$stx12861_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#<...>|
      (lambda (_$stx12875_)
        (let ((_g1287812885_
               (lambda (_g1287912881_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1287912881_))))
          (_g1287812885_ _$stx12875_))))))
