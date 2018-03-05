(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g34700_|
    (gx#make-syntax-quote '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g34701_|
    (gx#make-syntax-quote 'else #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g34750_|
    (gx#make-syntax-quote 'values #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g34751_|
    (gx#make-syntax-quote 'values #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g34752_|
    (gx#make-syntax-quote 'values #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g34767_|
    (gx#make-syntax-quote
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g34768_|
    (gx#make-syntax-quote 'unquote #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g34771_|
    (gx#make-syntax-quote
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g34772_|
    (gx#make-syntax-quote
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g34773_|
    (gx#make-syntax-quote 'unquote #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g34774_|
    (gx#make-syntax-quote 'quasiquote #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g34775_|
    (gx#make-syntax-quote '<...> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g34776_|
    (gx#make-syntax-quote '<> #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#lambda|
      (lambda (_stx4892_)
        (letrec ((_simple-lambda?4895_
                  (lambda (_hd8045_) (gx#stx-andmap gx#identifier? _hd8045_)))
                 (_opt-lambda?4897_
                  (lambda (_hd7897_)
                    (let _lp7900_ ((_rest7903_ _hd7897_) (_opt?7905_ '#f))
                      (let* ((_g79087920_
                              (lambda (_g79097916_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g79097916_)))
                             (_g79077935_
                              (lambda (_g79097924_)
                                ((lambda ()
                                   (if _opt?7905_
                                       (let ((_$e7931_
                                              (gx#stx-null? _rest7903_)))
                                         (if _$e7931_
                                             _$e7931_
                                             (gx#identifier? _rest7903_)))
                                       '#f)))))
                             (_g79068041_
                              (lambda (_g79097939_)
                                (if (gx#stx-pair? _g79097939_)
                                    (let ((_e79127942_
                                           (gx#syntax-e _g79097939_)))
                                      (let ((_hd79137946_ (##car _e79127942_))
                                            (_tl79147949_ (##cdr _e79127942_)))
                                        ((lambda (_L7952_ _L7954_)
                                           (let* ((_g79707984_
                                                   (lambda (_g79717980_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g79717980_)))
                                                  (_g79697995_
                                                   (lambda (_g79717988_)
                                                     ((lambda ()
                                                        (if (gx#identifier?
                                                             _L7954_)
                                                            (if (not _opt?7905_)
                                                                (_lp7900_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L7952_
                         '#f)
                        '#f)
                    '#f)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g79688037_
                                                   (lambda (_g79717999_)
                                                     (if (gx#stx-pair?
                                                          _g79717999_)
                                                         (let ((_e79738002_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g79717999_)))
                   (let ((_hd79748006_ (##car _e79738002_))
                         (_tl79758009_ (##cdr _e79738002_)))
                     (if (gx#stx-pair? _tl79758009_)
                         (let ((_e79768012_ (gx#syntax-e _tl79758009_)))
                           (let ((_hd79778016_ (##car _e79768012_))
                                 (_tl79788019_ (##cdr _e79768012_)))
                             (if (gx#stx-null? _tl79788019_)
                                 ((lambda (_L8022_)
                                    (if (gx#identifier? _L8022_)
                                        (_lp7900_ _L7952_ '#t)
                                        (_g79697995_ _g79717999_)))
                                  _hd79748006_)
                                 (_g79697995_ _g79717999_))))
                         (_g79697995_ _g79717999_))))
                 (_g79697995_ _g79717999_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g79688037_ _L7954_)))
                                         _tl79147949_
                                         _hd79137946_)))
                                    (_g79077935_ _g79097939_)))))
                        (_g79068041_ _rest7903_)))))
                 (_opt-lambda-split4898_
                  (lambda (_hd7749_)
                    (let _lp7752_ ((_rest7755_ _hd7749_)
                                   (_pre7757_ '())
                                   (_opt7758_ '()))
                      (let* ((_g77617773_
                              (lambda (_g77627769_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g77627769_)))
                             (_g77607784_
                              (lambda (_g77627777_)
                                ((lambda ()
                                   (values (reverse _pre7757_)
                                           (reverse _opt7758_)
                                           (if (gx#identifier? _rest7755_)
                                               (_generate-bind4901_ _rest7755_)
                                               _rest7755_))))))
                             (_g77597893_
                              (lambda (_g77627788_)
                                (if (gx#stx-pair? _g77627788_)
                                    (let ((_e77657791_
                                           (gx#syntax-e _g77627788_)))
                                      (let ((_hd77667795_ (##car _e77657791_))
                                            (_tl77677798_ (##cdr _e77657791_)))
                                        ((lambda (_L7801_ _L7803_)
                                           (let* ((_g78197834_
                                                   (lambda (_g78207830_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g78207830_)))
                                                  (_g78187845_
                                                   (lambda (_g78207838_)
                                                     ((lambda ()
                                                        (_lp7752_
                                                         _L7801_
                                                         (cons (_generate-bind4901_
                                                                _L7803_)
                                                               _pre7757_)
                                                         _opt7758_)))))
                                                  (_g78177889_
                                                   (lambda (_g78207849_)
                                                     (if (gx#stx-pair?
                                                          _g78207849_)
                                                         (let ((_e78237852_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g78207849_)))
                   (let ((_hd78247856_ (##car _e78237852_))
                         (_tl78257859_ (##cdr _e78237852_)))
                     (if (gx#stx-pair? _tl78257859_)
                         (let ((_e78267862_ (gx#syntax-e _tl78257859_)))
                           (let ((_hd78277866_ (##car _e78267862_))
                                 (_tl78287869_ (##cdr _e78267862_)))
                             (if (gx#stx-null? _tl78287869_)
                                 ((lambda (_L7872_ _L7874_)
                                    (_lp7752_
                                     _L7801_
                                     _pre7757_
                                     (cons (cons (_generate-bind4901_ _L7874_)
                                                 _L7872_)
                                           _opt7758_)))
                                  _hd78277866_
                                  _hd78247856_)
                                 (_g78187845_ _g78207849_))))
                         (_g78187845_ _g78207849_))))
                 (_g78187845_ _g78207849_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g78177889_ _L7803_)))
                                         _tl77677798_
                                         _hd77667795_)))
                                    (_g77607784_ _g77627788_)))))
                        (_g77597893_ _rest7755_)))))
                 (_kw-lambda?4899_
                  (lambda (_hd7423_)
                    (let _lp7426_ ((_rest7429_ _hd7423_)
                                   (_opt?7431_ '#f)
                                   (_key?7432_ '#f))
                      (let* ((_g74377466_
                              (lambda (_g74387462_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g74387462_)))
                             (_g74367481_
                              (lambda (_g74387470_)
                                ((lambda ()
                                   (if _key?7432_
                                       (let ((_$e7477_
                                              (gx#stx-null? _rest7429_)))
                                         (if _$e7477_
                                             _$e7477_
                                             (gx#identifier? _rest7429_)))
                                       '#f)))))
                             (_g74357587_
                              (lambda (_g74387485_)
                                (if (gx#stx-pair? _g74387485_)
                                    (let ((_e74587488_
                                           (gx#syntax-e _g74387485_)))
                                      (let ((_hd74597492_ (##car _e74587488_))
                                            (_tl74607495_ (##cdr _e74587488_)))
                                        ((lambda (_L7498_ _L7500_)
                                           (let* ((_g75167530_
                                                   (lambda (_g75177526_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g75177526_)))
                                                  (_g75157541_
                                                   (lambda (_g75177534_)
                                                     ((lambda ()
                                                        (if (gx#identifier?
                                                             _L7500_)
                                                            (if (not _opt?7431_)
                                                                (_lp7426_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L7498_
                         '#f
                         _key?7432_)
                        '#f)
                    '#f)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g75147583_
                                                   (lambda (_g75177545_)
                                                     (if (gx#stx-pair?
                                                          _g75177545_)
                                                         (let ((_e75197548_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g75177545_)))
                   (let ((_hd75207552_ (##car _e75197548_))
                         (_tl75217555_ (##cdr _e75197548_)))
                     (if (gx#stx-pair? _tl75217555_)
                         (let ((_e75227558_ (gx#syntax-e _tl75217555_)))
                           (let ((_hd75237562_ (##car _e75227558_))
                                 (_tl75247565_ (##cdr _e75227558_)))
                             (if (gx#stx-null? _tl75247565_)
                                 ((lambda (_L7568_)
                                    (if (gx#identifier? _L7568_)
                                        (_lp7426_ _L7498_ '#t _key?7432_)
                                        '#f))
                                  _hd75207552_)
                                 (_g75157541_ _g75177545_))))
                         (_g75157541_ _g75177545_))))
                 (_g75157541_ _g75177545_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g75147583_ _L7500_)))
                                         _tl74607495_
                                         _hd74597492_)))
                                    (_g74367481_ _g74387485_))))
                             (_g74347629_
                              (lambda (_g74387591_)
                                (if (gx#stx-pair? _g74387591_)
                                    (let ((_e74507594_
                                           (gx#syntax-e _g74387591_)))
                                      (let ((_hd74517598_ (##car _e74507594_))
                                            (_tl74527601_ (##cdr _e74507594_)))
                                        (if (gx#stx-datum? _hd74517598_)
                                            (if (equal? (gx#stx-e _hd74517598_)
                                                        '#!key)
                                                (if (gx#stx-pair? _tl74527601_)
                                                    (let ((_e74537604_
                                                           (gx#syntax-e
                                                            _tl74527601_)))
                                                      (let ((_hd74547608_
                                                             (##car _e74537604_))
                                                            (_tl74557611_
                                                             (##cdr _e74537604_)))
                                                        ((lambda (_L7614_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L7616_)
                   (if (gx#identifier? _L7616_)
                       (_lp7426_ _L7614_ _opt?7431_ '#t)
                       '#f))
                 _tl74557611_
                 _hd74547608_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g74357587_ _g74387591_))
                                                (_g74357587_ _g74387591_))
                                            (_g74357587_ _g74387591_))))
                                    (_g74357587_ _g74387591_))))
                             (_g74337745_
                              (lambda (_g74387633_)
                                (if (gx#stx-pair? _g74387633_)
                                    (let ((_e74427636_
                                           (gx#syntax-e _g74387633_)))
                                      (let ((_hd74437640_ (##car _e74427636_))
                                            (_tl74447643_ (##cdr _e74427636_)))
                                        (if (gx#stx-pair? _tl74447643_)
                                            (let ((_e74457646_
                                                   (gx#syntax-e _tl74447643_)))
                                              (let ((_hd74467650_
                                                     (##car _e74457646_))
                                                    (_tl74477653_
                                                     (##cdr _e74457646_)))
                                                ((lambda (_L7656_
                                                          _L7658_
                                                          _L7659_)
                                                   (if (gx#stx-keyword?
                                                        _L7659_)
                                                       (let* ((_g76747688_
                                                               (lambda (_g76757684_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g76757684_)))
                      (_g76737699_
                       (lambda (_g76757692_)
                         ((lambda ()
                            (if (gx#identifier? _L7658_)
                                (_lp7426_ _L7656_ _opt?7431_ '#t)
                                '#f)))))
                      (_g76727741_
                       (lambda (_g76757703_)
                         (if (gx#stx-pair? _g76757703_)
                             (let ((_e76777706_ (gx#syntax-e _g76757703_)))
                               (let ((_hd76787710_ (##car _e76777706_))
                                     (_tl76797713_ (##cdr _e76777706_)))
                                 (if (gx#stx-pair? _tl76797713_)
                                     (let ((_e76807716_
                                            (gx#syntax-e _tl76797713_)))
                                       (let ((_hd76817720_ (##car _e76807716_))
                                             (_tl76827723_
                                              (##cdr _e76807716_)))
                                         (if (gx#stx-null? _tl76827723_)
                                             ((lambda (_L7726_)
                                                (if (gx#identifier? _L7726_)
                                                    (_lp7426_
                                                     _L7656_
                                                     _opt?7431_
                                                     '#t)
                                                    '#f))
                                              _hd76787710_)
                                             (_g76737699_ _g76757703_))))
                                     (_g76737699_ _g76757703_))))
                             (_g76737699_ _g76757703_)))))
                 (_g76727741_ _L7658_))
               (_g74347629_ _g74387633_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _tl74477653_
                                                 _hd74467650_
                                                 _hd74437640_)))
                                            (_g74347629_ _g74387633_))))
                                    (_g74347629_ _g74387633_)))))
                        (_g74337745_ _rest7429_)))))
                 (_kw-lambda-split4900_
                  (lambda (_hd7162_)
                    (let _lp7165_ ((_rest7168_ _hd7162_)
                                   (_kwvar7170_ '#f)
                                   (_kwargs7171_ '())
                                   (_args7172_ '()))
                      (let* ((_g71777206_
                              (lambda (_g71787202_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g71787202_)))
                             (_g71767217_
                              (lambda (_g71787210_)
                                ((lambda ()
                                   (values _kwvar7170_
                                           (reverse _kwargs7171_)
                                           (foldl cons
                                                  _rest7168_
                                                  _args7172_))))))
                             (_g71757251_
                              (lambda (_g71787221_)
                                (if (gx#stx-pair? _g71787221_)
                                    (let ((_e71987224_
                                           (gx#syntax-e _g71787221_)))
                                      (let ((_hd71997228_ (##car _e71987224_))
                                            (_tl72007231_ (##cdr _e71987224_)))
                                        ((lambda (_L7234_ _L7236_)
                                           (_lp7165_
                                            _L7234_
                                            _kwvar7170_
                                            _kwargs7171_
                                            (cons _L7236_ _args7172_)))
                                         _tl72007231_
                                         _hd71997228_)))
                                    (_g71767217_ _g71787221_))))
                             (_g71747293_
                              (lambda (_g71787255_)
                                (if (gx#stx-pair? _g71787255_)
                                    (let ((_e71907258_
                                           (gx#syntax-e _g71787255_)))
                                      (let ((_hd71917262_ (##car _e71907258_))
                                            (_tl71927265_ (##cdr _e71907258_)))
                                        (if (gx#stx-datum? _hd71917262_)
                                            (if (equal? (gx#stx-e _hd71917262_)
                                                        '#!key)
                                                (if (gx#stx-pair? _tl71927265_)
                                                    (let ((_e71937268_
                                                           (gx#syntax-e
                                                            _tl71927265_)))
                                                      (let ((_hd71947272_
                                                             (##car _e71937268_))
                                                            (_tl71957275_
                                                             (##cdr _e71937268_)))
                                                        ((lambda (_L7278_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L7280_)
                   (if _kwvar7170_
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; duplicate #!key argument"
                        _stx4892_
                        _hd7162_
                        _L7280_)
                       (_lp7165_
                        _L7278_
                        (_generate-bind4901_ _L7280_)
                        _kwargs7171_
                        _args7172_)))
                 _tl71957275_
                 _hd71947272_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g71757251_ _g71787255_))
                                                (_g71757251_ _g71787255_))
                                            (_g71757251_ _g71787255_))))
                                    (_g71757251_ _g71787255_))))
                             (_g71737419_
                              (lambda (_g71787297_)
                                (if (gx#stx-pair? _g71787297_)
                                    (let ((_e71827300_
                                           (gx#syntax-e _g71787297_)))
                                      (let ((_hd71837304_ (##car _e71827300_))
                                            (_tl71847307_ (##cdr _e71827300_)))
                                        (if (gx#stx-pair? _tl71847307_)
                                            (let ((_e71857310_
                                                   (gx#syntax-e _tl71847307_)))
                                              (let ((_hd71867314_
                                                     (##car _e71857310_))
                                                    (_tl71877317_
                                                     (##cdr _e71857310_)))
                                                ((lambda (_L7320_
                                                          _L7322_
                                                          _L7323_)
                                                   (if (gx#stx-keyword?
                                                        _L7323_)
                                                       (let ((_key7337_
                                                              (gx#stx-e
                                                               _L7323_)))
                                                         (if (find (lambda (_kwarg7340_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (eq? _key7337_ (car _kwarg7340_)))
                           _kwargs7171_)
                     (gx#raise-syntax-error
                      '#f
                      '"Bad syntax; duplicate keyword argument"
                      _stx4892_
                      _hd7162_
                      _key7337_)
                     (let* ((_g73447359_
                             (lambda (_g73457355_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g73457355_)))
                            (_g73437370_
                             (lambda (_g73457363_)
                               ((lambda ()
                                  (_lp7165_
                                   _L7320_
                                   _kwvar7170_
                                   (cons (list _key7337_
                                               (_generate-bind4901_ _L7322_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'error)
                                                     (cons '"Missing required keyword argument"
                                                           (cons _L7323_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _kwargs7171_)
                                   _args7172_)))))
                            (_g73427415_
                             (lambda (_g73457374_)
                               (if (gx#stx-pair? _g73457374_)
                                   (let ((_e73487377_
                                          (gx#syntax-e _g73457374_)))
                                     (let ((_hd73497381_ (##car _e73487377_))
                                           (_tl73507384_ (##cdr _e73487377_)))
                                       (if (gx#stx-pair? _tl73507384_)
                                           (let ((_e73517387_
                                                  (gx#syntax-e _tl73507384_)))
                                             (let ((_hd73527391_
                                                    (##car _e73517387_))
                                                   (_tl73537394_
                                                    (##cdr _e73517387_)))
                                               (if (gx#stx-null? _tl73537394_)
                                                   ((lambda (_L7397_ _L7399_)
                                                      (_lp7165_
                                                       _L7320_
                                                       _kwvar7170_
                                                       (cons (list _key7337_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_generate-bind4901_ _L7399_)
                           _L7397_)
                     _kwargs7171_)
               _args7172_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd73527391_
                                                    _hd73497381_)
                                                   (_g73437370_ _g73457374_))))
                                           (_g73437370_ _g73457374_))))
                                   (_g73437370_ _g73457374_)))))
                       (_g73427415_ _L7322_))))
               (_g71747293_ _g71787297_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _tl71877317_
                                                 _hd71867314_
                                                 _hd71837304_)))
                                            (_g71747293_ _g71787297_))))
                                    (_g71747293_ _g71787297_)))))
                        (_g71737419_ _rest7168_)))))
                 (_generate-bind4901_
                  (lambda (_e7159_)
                    (if (gx#underscore? _e7159_)
                        (gx#genident _e7159_)
                        _e7159_)))
                 (_check-duplicate-bindings4902_
                  (lambda (_hd6856_)
                    (letrec ((_cons-id6859_
                              (lambda (_id7155_ _ids7157_)
                                (if (gx#underscore? _id7155_)
                                    _ids7157_
                                    (cons _id7155_ _ids7157_)))))
                      (let _lp6862_ ((_rest6865_ _hd6856_) (_ids6867_ '()))
                        (let* ((_g68706882_
                                (lambda (_g68716878_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g68716878_)))
                               (_g68696893_
                                (lambda (_g68716886_)
                                  ((lambda ()
                                     (gx#check-duplicate-identifiers
                                      (if (gx#stx-null? _rest6865_)
                                          _ids6867_
                                          (_cons-id6859_ _rest6865_ _ids6867_))
                                      _stx4892_)))))
                               (_g68687151_
                                (lambda (_g68716897_)
                                  (if (gx#stx-pair? _g68716897_)
                                      (let ((_e68746900_
                                             (gx#syntax-e _g68716897_)))
                                        (let ((_hd68756904_
                                               (##car _e68746900_))
                                              (_tl68766907_
                                               (##cdr _e68746900_)))
                                          ((lambda (_L6910_ _L6912_)
                                             (if (gx#identifier? _L6912_)
                                                 (_lp6862_
                                                  _L6910_
                                                  (_cons-id6859_
                                                   _L6912_
                                                   _ids6867_))
                                                 (if (gx#stx-pair? _L6912_)
                                                     (let* ((_g69286942_
                                                             (lambda (_g69296938_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g69296938_)))
                                                            (_g69276983_
                                                             (lambda (_g69296946_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g69296946_)
                           (let ((_e69316949_ (gx#syntax-e _g69296946_)))
                             (let ((_hd69326953_ (##car _e69316949_))
                                   (_tl69336956_ (##cdr _e69316949_)))
                               (if (gx#stx-pair? _tl69336956_)
                                   (let ((_e69346959_
                                          (gx#syntax-e _tl69336956_)))
                                     (let ((_hd69356963_ (##car _e69346959_))
                                           (_tl69366966_ (##cdr _e69346959_)))
                                       (if (gx#stx-null? _tl69366966_)
                                           ((lambda (_L6969_)
                                              (_lp6862_
                                               _L6910_
                                               (_cons-id6859_
                                                _L6969_
                                                _ids6867_)))
                                            _hd69326953_)
                                           (_g69286942_ _g69296946_))))
                                   (_g69286942_ _g69296946_))))
                           (_g69286942_ _g69296946_)))))
               (_g69276983_ _L6912_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-keyword?
                                                          _L6912_)
                                                         (let* ((_g69876999_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g69886995_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g69886995_)))
                        (_g69867101_
                         (lambda (_g69887003_)
                           (if (gx#stx-pair? _g69887003_)
                               (let ((_e69917006_ (gx#syntax-e _g69887003_)))
                                 (let ((_hd69927010_ (##car _e69917006_))
                                       (_tl69937013_ (##cdr _e69917006_)))
                                   ((lambda (_L7016_ _L7018_)
                                      (let* ((_g70307044_
                                              (lambda (_g70317040_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _g70317040_)))
                                             (_g70297055_
                                              (lambda (_g70317048_)
                                                ((lambda ()
                                                   (_lp6862_
                                                    _L7016_
                                                    (_cons-id6859_
                                                     _L7018_
                                                     _ids6867_))))))
                                             (_g70287097_
                                              (lambda (_g70317059_)
                                                (if (gx#stx-pair? _g70317059_)
                                                    (let ((_e70337062_
                                                           (gx#syntax-e
                                                            _g70317059_)))
                                                      (let ((_hd70347066_
                                                             (##car _e70337062_))
                                                            (_tl70357069_
                                                             (##cdr _e70337062_)))
                                                        (if (gx#stx-pair?
                                                             _tl70357069_)
                                                            (let ((_e70367072_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl70357069_)))
                      (let ((_hd70377076_ (##car _e70367072_))
                            (_tl70387079_ (##cdr _e70367072_)))
                        (if (gx#stx-null? _tl70387079_)
                            ((lambda (_L7082_)
                               (_lp6862_
                                _L7016_
                                (_cons-id6859_ _L7082_ _ids6867_)))
                             _hd70347066_)
                            (_g70297055_ _g70317059_))))
                    (_g70297055_ _g70317059_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g70297055_
                                                     _g70317059_)))))
                                        (_g70287097_ _L7018_)))
                                    _tl69937013_
                                    _hd69927010_)))
                               (_g69876999_ _g69887003_)))))
                   (_g69867101_ _L6910_))
                 (if (eq? (gx#stx-e _L6912_) '#!key)
                     (let* ((_g71057117_
                             (lambda (_g71067113_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g71067113_)))
                            (_g71047147_
                             (lambda (_g71067121_)
                               (if (gx#stx-pair? _g71067121_)
                                   (let ((_e71097124_
                                          (gx#syntax-e _g71067121_)))
                                     (let ((_hd71107128_ (##car _e71097124_))
                                           (_tl71117131_ (##cdr _e71097124_)))
                                       ((lambda (_L7134_ _L7136_)
                                          (_lp6862_
                                           _L7134_
                                           (_cons-id6859_ _L7136_ _ids6867_)))
                                        _tl71117131_
                                        _hd71107128_)))
                                   (_g71057117_ _g71067121_)))))
                       (_g71047147_ _L6910_))
                     (error '"BUG: check-duplicate-bindings"
                            _stx4892_
                            _rest6865_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _tl68766907_
                                           _hd68756904_)))
                                      (_g68696893_ _g68716897_)))))
                          (_g68687151_ _rest6865_))))))
                 (_generate-opt-primary4903_
                  (lambda (_pre6648_ _opt6650_ _tail6651_ _body6652_)
                    (let* ((_g66546695_
                            (lambda (_g66556691_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g66556691_)))
                           (_g66536852_
                            (lambda (_g66556699_)
                              (if (gx#stx-pair? _g66556699_)
                                  (let ((_e66606702_
                                         (gx#syntax-e _g66556699_)))
                                    (let ((_hd66616706_ (##car _e66606702_))
                                          (_tl66626709_ (##cdr _e66606702_)))
                                      (if (gx#stx-pair/null? _hd66616706_)
                                          (if (fx>= (gx#stx-length
                                                     _hd66616706_)
                                                    '0)
                                              (let ((_g34666_
                                                     (gx#syntax-split-splice
                                                      _hd66616706_
                                                      '0)))
                                                (begin
                                                  (let ((_g34667_
                                                         (values-count
                                                          _g34666_)))
                                                    (if (not (fx= _g34667_ 2))
                                                        (error "Context expects 2 values"
                                                               _g34667_)))
                                                  (let ((_target66636712_
                                                         (values-ref
                                                          _g34666_
                                                          0))
                                                        (_tl66656715_
                                                         (values-ref
                                                          _g34666_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl66656715_)
                                                        (letrec ((_loop66666718_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd66646722_ _pre66706725_)
                            (if (gx#stx-pair? _hd66646722_)
                                (let ((_e66676728_ (gx#syntax-e _hd66646722_)))
                                  (let ((_lp-hd66686732_ (##car _e66676728_))
                                        (_lp-tl66696735_ (##cdr _e66676728_)))
                                    (_loop66666718_
                                     _lp-tl66696735_
                                     (cons _lp-hd66686732_ _pre66706725_))))
                                (let ((_pre66716738_ (reverse _pre66706725_)))
                                  (if (gx#stx-pair? _tl66626709_)
                                      (let ((_e66726742_
                                             (gx#syntax-e _tl66626709_)))
                                        (let ((_hd66736746_
                                               (##car _e66726742_))
                                              (_tl66746749_
                                               (##cdr _e66726742_)))
                                          (if (gx#stx-pair/null? _hd66736746_)
                                              (if (fx>= (gx#stx-length
                                                         _hd66736746_)
                                                        '0)
                                                  (let ((_g34668_
                                                         (gx#syntax-split-splice
                                                          _hd66736746_
                                                          '0)))
                                                    (begin
                                                      (let ((_g34669_
                                                             (values-count
                                                              _g34668_)))
                                                        (if (not (fx= _g34669_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g34669_)))
              (let ((_target66756752_ (values-ref _g34668_ 0))
                    (_tl66776755_ (values-ref _g34668_ 1)))
                (if (gx#stx-null? _tl66776755_)
                    (letrec ((_loop66786758_
                              (lambda (_hd66766762_ _opt66826765_)
                                (if (gx#stx-pair? _hd66766762_)
                                    (let ((_e66796768_
                                           (gx#syntax-e _hd66766762_)))
                                      (let ((_lp-hd66806772_
                                             (##car _e66796768_))
                                            (_lp-tl66816775_
                                             (##cdr _e66796768_)))
                                        (_loop66786758_
                                         _lp-tl66816775_
                                         (cons _lp-hd66806772_
                                               _opt66826765_))))
                                    (let ((_opt66836778_
                                           (reverse _opt66826765_)))
                                      (if (gx#stx-pair? _tl66746749_)
                                          (let ((_e66846782_
                                                 (gx#syntax-e _tl66746749_)))
                                            (let ((_hd66856786_
                                                   (##car _e66846782_))
                                                  (_tl66866789_
                                                   (##cdr _e66846782_)))
                                              (if (gx#stx-pair? _tl66866789_)
                                                  (let ((_e66876792_
                                                         (gx#syntax-e
                                                          _tl66866789_)))
                                                    (let ((_hd66886796_
                                                           (##car _e66876792_))
                                                          (_tl66896799_
                                                           (##cdr _e66876792_)))
                                                      (if (gx#stx-null?
                                                           _tl66896799_)
                                                          ((lambda (_L6802_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L6804_
                            _L6805_
                            _L6806_)
                     (let ()
                       (cons (gx#datum->syntax '#f 'lambda%)
                             (cons (begin
                                     '#!void
                                     (foldr (lambda (_g68356840_ _g68366843_)
                                              (cons _g68356840_ _g68366843_))
                                            (begin
                                              '#!void
                                              (foldr (lambda (_g68376846_
                                                              _g68386849_)
                                                       (cons _g68376846_
                                                             _g68386849_))
                                                     _L6804_
                                                     _L6805_))
                                            _L6806_))
                                   _L6802_))))
                   _hd66886796_
                   _hd66856786_
                   _opt66836778_
                   _pre66716738_)
                  (_g66546695_ _g66556699_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g66546695_ _g66556699_))))
                                          (_g66546695_ _g66556699_)))))))
                      (_loop66786758_ _target66756752_ '()))
                    (_g66546695_ _g66556699_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g66546695_ _g66556699_))
                                              (_g66546695_ _g66556699_))))
                                      (_g66546695_ _g66556699_)))))))
                  (_loop66666718_ _target66636712_ '()))
                (_g66546695_ _g66556699_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g66546695_ _g66556699_))
                                          (_g66546695_ _g66556699_))))
                                  (_g66546695_ _g66556699_)))))
                      (_g66536852_
                       (list _pre6648_
                             (map car _opt6650_)
                             _tail6651_
                             _body6652_)))))
                 (_generate-opt-dispatch4904_
                  (lambda (_primary6642_ _pre6644_ _opt6645_ _tail6646_)
                    (cons (list _pre6644_
                                (_generate-opt-clause4906_
                                 _primary6642_
                                 _pre6644_
                                 _opt6645_))
                          (_generate-opt-dispatch*4905_
                           _primary6642_
                           _pre6644_
                           _opt6645_
                           _tail6646_))))
                 (_generate-opt-dispatch*4905_
                  (lambda (_primary6199_ _pre6201_ _opt6202_ _tail6203_)
                    (let _recur6205_ ((_opt-rest6208_ _opt6202_)
                                      (_right6210_ '()))
                      (if (pair? _opt-rest6208_)
                          (let* ((_hd6212_ (caar _opt-rest6208_))
                                 (_rest6215_ (cdr _opt-rest6208_))
                                 (_right*6218_ (cons _hd6212_ _right6210_))
                                 (_g62216238_
                                  (lambda (_g62226234_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g62226234_)))
                                 (_g62206421_
                                  (lambda (_g62226242_)
                                    (if (gx#stx-pair/null? _g62226242_)
                                        (if (fx>= (gx#stx-length _g62226242_)
                                                  '0)
                                            (let ((_g34670_
                                                   (gx#syntax-split-splice
                                                    _g62226242_
                                                    '0)))
                                              (begin
                                                (let ((_g34671_
                                                       (values-count
                                                        _g34670_)))
                                                  (if (not (fx= _g34671_ 2))
                                                      (error "Context expects 2 values"
                                                             _g34671_)))
                                                (let ((_target62246245_
                                                       (values-ref _g34670_ 0))
                                                      (_tl62266248_
                                                       (values-ref
                                                        _g34670_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl62266248_)
                                                      (letrec ((_loop62276251_
                                                                (lambda (_hd62256255_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _pre-bind62316258_)
                          (if (gx#stx-pair? _hd62256255_)
                              (let ((_e62286261_ (gx#syntax-e _hd62256255_)))
                                (let ((_lp-hd62296265_ (##car _e62286261_))
                                      (_lp-tl62306268_ (##cdr _e62286261_)))
                                  (_loop62276251_
                                   _lp-tl62306268_
                                   (cons _lp-hd62296265_ _pre-bind62316258_))))
                              (let ((_pre-bind62326271_
                                     (reverse _pre-bind62316258_)))
                                ((lambda (_L6275_)
                                   (let ()
                                     (let* ((_g62966313_
                                             (lambda (_g62976309_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g62976309_)))
                                            (_g62956417_
                                             (lambda (_g62976317_)
                                               (if (gx#stx-pair/null?
                                                    _g62976317_)
                                                   (if (fx>= (gx#stx-length
                                                              _g62976317_)
                                                             '0)
                                                       (let ((_g34672_
                                                              (gx#syntax-split-splice
                                                               _g62976317_
                                                               '0)))
                                                         (begin
                                                           (let ((_g34673_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (values-count _g34672_)))
                     (if (not (fx= _g34673_ 2))
                         (error "Context expects 2 values" _g34673_)))
                   (let ((_target62996320_ (values-ref _g34672_ 0))
                         (_tl63016323_ (values-ref _g34672_ 1)))
                     (if (gx#stx-null? _tl63016323_)
                         (letrec ((_loop63026326_
                                   (lambda (_hd63006330_ _opt-bind63066333_)
                                     (if (gx#stx-pair? _hd63006330_)
                                         (let ((_e63036336_
                                                (gx#syntax-e _hd63006330_)))
                                           (let ((_lp-hd63046340_
                                                  (##car _e63036336_))
                                                 (_lp-tl63056343_
                                                  (##cdr _e63036336_)))
                                             (_loop63026326_
                                              _lp-tl63056343_
                                              (cons _lp-hd63046340_
                                                    _opt-bind63066333_))))
                                         (let ((_opt-bind63076346_
                                                (reverse _opt-bind63066333_)))
                                           ((lambda (_L6350_)
                                              (let ()
                                                (let* ((_g63676375_
                                                        (lambda (_g63686371_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g63686371_)))
                                                       (_g63666413_
                                                        (lambda (_g63686379_)
                                                          ((lambda (_L6382_)
                                                             (let ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (list (begin
                                       '#!void
                                       (foldr (lambda (_g63966401_ _g63976404_)
                                                (cons _g63966401_ _g63976404_))
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g63986407_
                                                                _g63996410_)
                                                         (cons _g63986407_
                                                               _g63996410_))
                                                       (cons _L6382_ '())
                                                       _L6350_))
                                              _L6275_))
                                     (_generate-opt-clause4906_
                                      _primary6199_
                                      (foldr cons
                                             (reverse _right*6218_)
                                             _pre6201_)
                                      _rest6215_))
                               (_recur6205_ _rest6215_ _right*6218_)))))
                   _g63686379_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g63666413_ _hd6212_))))
                                            _opt-bind63076346_))))))
                           (_loop63026326_ _target62996320_ '()))
                         (_g62966313_ _g62976317_)))))
               (_g62966313_ _g62976317_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g62966313_
                                                    _g62976317_)))))
                                       (_g62956417_ (reverse _right6210_)))))
                                 _pre-bind62326271_))))))
                (_loop62276251_ _target62246245_ '()))
              (_g62216238_ _g62226242_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g62216238_ _g62226242_))
                                        (_g62216238_ _g62226242_)))))
                            (_g62206421_ _pre6201_))
                          (if (gx#stx-null? _tail6203_)
                              '()
                              (let* ((_g64256466_
                                      (lambda (_g64266462_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g64266462_)))
                                     (_g64246638_
                                      (lambda (_g64266470_)
                                        (if (gx#stx-pair? _g64266470_)
                                            (let ((_e64316473_
                                                   (gx#syntax-e _g64266470_)))
                                              (let ((_hd64326477_
                                                     (##car _e64316473_))
                                                    (_tl64336480_
                                                     (##cdr _e64316473_)))
                                                (if (gx#stx-pair/null?
                                                     _hd64326477_)
                                                    (if (fx>= (gx#stx-length
                                                               _hd64326477_)
                                                              '0)
                                                        (let ((_g34674_
                                                               (gx#syntax-split-splice
                                                                _hd64326477_
                                                                '0)))
                                                          (begin
                                                            (let ((_g34675_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (values-count _g34674_)))
                      (if (not (fx= _g34675_ 2))
                          (error "Context expects 2 values" _g34675_)))
                    (let ((_target64346483_ (values-ref _g34674_ 0))
                          (_tl64366486_ (values-ref _g34674_ 1)))
                      (if (gx#stx-null? _tl64366486_)
                          (letrec ((_loop64376489_
                                    (lambda (_hd64356493_ _pre64416496_)
                                      (if (gx#stx-pair? _hd64356493_)
                                          (let ((_e64386499_
                                                 (gx#syntax-e _hd64356493_)))
                                            (let ((_lp-hd64396503_
                                                   (##car _e64386499_))
                                                  (_lp-tl64406506_
                                                   (##cdr _e64386499_)))
                                              (_loop64376489_
                                               _lp-tl64406506_
                                               (cons _lp-hd64396503_
                                                     _pre64416496_))))
                                          (let ((_pre64426509_
                                                 (reverse _pre64416496_)))
                                            (if (gx#stx-pair? _tl64336480_)
                                                (let ((_e64436513_
                                                       (gx#syntax-e
                                                        _tl64336480_)))
                                                  (let ((_hd64446517_
                                                         (##car _e64436513_))
                                                        (_tl64456520_
                                                         (##cdr _e64436513_)))
                                                    (if (gx#stx-pair/null?
                                                         _hd64446517_)
                                                        (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd64446517_)
                          '0)
                    (let ((_g34676_ (gx#syntax-split-splice _hd64446517_ '0)))
                      (begin
                        (let ((_g34677_ (values-count _g34676_)))
                          (if (not (fx= _g34677_ 2))
                              (error "Context expects 2 values" _g34677_)))
                        (let ((_target64466523_ (values-ref _g34676_ 0))
                              (_tl64486526_ (values-ref _g34676_ 1)))
                          (if (gx#stx-null? _tl64486526_)
                              (letrec ((_loop64496529_
                                        (lambda (_hd64476533_ _opt64536536_)
                                          (if (gx#stx-pair? _hd64476533_)
                                              (let ((_e64506539_
                                                     (gx#syntax-e
                                                      _hd64476533_)))
                                                (let ((_lp-hd64516543_
                                                       (##car _e64506539_))
                                                      (_lp-tl64526546_
                                                       (##cdr _e64506539_)))
                                                  (_loop64496529_
                                                   _lp-tl64526546_
                                                   (cons _lp-hd64516543_
                                                         _opt64536536_))))
                                              (let ((_opt64546549_
                                                     (reverse _opt64536536_)))
                                                (if (gx#stx-pair? _tl64456520_)
                                                    (let ((_e64556553_
                                                           (gx#syntax-e
                                                            _tl64456520_)))
                                                      (let ((_hd64566557_
                                                             (##car _e64556553_))
                                                            (_tl64576560_
                                                             (##cdr _e64556553_)))
                                                        (if (gx#stx-pair?
                                                             _tl64576560_)
                                                            (let ((_e64586563_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl64576560_)))
                      (let ((_hd64596567_ (##car _e64586563_))
                            (_tl64606570_ (##cdr _e64586563_)))
                        (if (gx#stx-null? _tl64606570_)
                            ((lambda (_L6573_ _L6575_ _L6576_ _L6577_)
                               (let ()
                                 (list (list (begin
                                               '#!void
                                               (foldr (lambda (_g66056610_
                                                               _g66066613_)
                                                        (cons _g66056610_
                                                              _g66066613_))
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g66076616_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g66086619_)
                         (cons _g66076616_ _g66086619_))
                       _L6575_
                       _L6576_))
              _L6577_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (gx#stx-wrap-source
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'apply)
                                                    (cons _L6573_
                                                          (begin
                                                            '#!void
                                                            (foldr (lambda (_g66216626_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g66226629_)
                             (cons _g66216626_ _g66226629_))
                           (begin
                             '#!void
                             (foldr (lambda (_g66236632_ _g66246635_)
                                      (cons _g66236632_ _g66246635_))
                                    (cons _L6575_ '())
                                    _L6576_))
                           _L6577_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx4892_))))))
                             _hd64596567_
                             _hd64566557_
                             _opt64546549_
                             _pre64426509_)
                            (_g64256466_ _g64266470_))))
                    (_g64256466_ _g64266470_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g64256466_
                                                     _g64266470_)))))))
                                (_loop64496529_ _target64466523_ '()))
                              (_g64256466_ _g64266470_)))))
                    (_g64256466_ _g64266470_))
                (_g64256466_ _g64266470_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g64256466_ _g64266470_)))))))
                            (_loop64376489_ _target64346483_ '()))
                          (_g64256466_ _g64266470_)))))
                (_g64256466_ _g64266470_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g64256466_
                                                     _g64266470_))))
                                            (_g64256466_ _g64266470_)))))
                                (_g64246638_
                                 (list _pre6201_
                                       (reverse _right6210_)
                                       _tail6203_
                                       _primary6199_))))))))
                 (_generate-opt-clause4906_
                  (lambda (_primary5897_ _pre5899_ _opt5900_)
                    (let _recur5902_ ((_opt-rest5905_ _opt5900_)
                                      (_right5907_ '()))
                      (if (pair? _opt-rest5905_)
                          (let* ((_hd5909_ (car _opt-rest5905_))
                                 (_rest5912_ (cdr _opt-rest5905_))
                                 (_g59155923_
                                  (lambda (_g59165919_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g59165919_)))
                                 (_g59146012_
                                  (lambda (_g59165927_)
                                    ((lambda (_L5930_)
                                       (let ()
                                         (let* ((_g59465954_
                                                 (lambda (_g59475950_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g59475950_)))
                                                (_g59456008_
                                                 (lambda (_g59475958_)
                                                   ((lambda (_L5961_)
                                                      (let ()
                                                        (let* ((_g59745982_
                                                                (lambda (_g59755978_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g59755978_)))
                       (_g59736004_
                        (lambda (_g59755986_)
                          ((lambda (_L5989_)
                             (let ()
                               (let ()
                                 (cons (gx#datum->syntax '#f 'let-values)
                                       (cons (cons (cons (cons _L5930_ '())
                                                         (cons _L5961_ '()))
                                                   '())
                                             (cons _L5989_ '()))))))
                           _g59755986_))))
                  (_g59736004_
                   (_recur5902_ _rest5912_ (cons _L5930_ _right5907_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g59475958_))))
                                           (_g59456008_ (cdr _hd5909_)))))
                                     _g59165927_))))
                            (_g59146012_ (car _hd5909_)))
                          (let* ((_g60166053_
                                  (lambda (_g60176049_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g60176049_)))
                                 (_g60156195_
                                  (lambda (_g60176057_)
                                    (if (gx#stx-pair? _g60176057_)
                                        (let ((_e60216060_
                                               (gx#syntax-e _g60176057_)))
                                          (let ((_hd60226064_
                                                 (##car _e60216060_))
                                                (_tl60236067_
                                                 (##cdr _e60216060_)))
                                            (if (gx#stx-pair/null?
                                                 _hd60226064_)
                                                (if (fx>= (gx#stx-length
                                                           _hd60226064_)
                                                          '0)
                                                    (let ((_g34678_
                                                           (gx#syntax-split-splice
                                                            _hd60226064_
                                                            '0)))
                                                      (begin
                                                        (let ((_g34679_
                                                               (values-count
                                                                _g34678_)))
                                                          (if (not (fx= _g34679_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                2))
                      (error "Context expects 2 values" _g34679_)))
                (let ((_target60246070_ (values-ref _g34678_ 0))
                      (_tl60266073_ (values-ref _g34678_ 1)))
                  (if (gx#stx-null? _tl60266073_)
                      (letrec ((_loop60276076_
                                (lambda (_hd60256080_ _pre60316083_)
                                  (if (gx#stx-pair? _hd60256080_)
                                      (let ((_e60286086_
                                             (gx#syntax-e _hd60256080_)))
                                        (let ((_lp-hd60296090_
                                               (##car _e60286086_))
                                              (_lp-tl60306093_
                                               (##cdr _e60286086_)))
                                          (_loop60276076_
                                           _lp-tl60306093_
                                           (cons _lp-hd60296090_
                                                 _pre60316083_))))
                                      (let ((_pre60326096_
                                             (reverse _pre60316083_)))
                                        (if (gx#stx-pair? _tl60236067_)
                                            (let ((_e60336100_
                                                   (gx#syntax-e _tl60236067_)))
                                              (let ((_hd60346104_
                                                     (##car _e60336100_))
                                                    (_tl60356107_
                                                     (##cdr _e60336100_)))
                                                (if (gx#stx-pair/null?
                                                     _hd60346104_)
                                                    (if (fx>= (gx#stx-length
                                                               _hd60346104_)
                                                              '0)
                                                        (let ((_g34680_
                                                               (gx#syntax-split-splice
                                                                _hd60346104_
                                                                '0)))
                                                          (begin
                                                            (let ((_g34681_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (values-count _g34680_)))
                      (if (not (fx= _g34681_ 2))
                          (error "Context expects 2 values" _g34681_)))
                    (let ((_target60366110_ (values-ref _g34680_ 0))
                          (_tl60386113_ (values-ref _g34680_ 1)))
                      (if (gx#stx-null? _tl60386113_)
                          (letrec ((_loop60396116_
                                    (lambda (_hd60376120_ _opt60436123_)
                                      (if (gx#stx-pair? _hd60376120_)
                                          (let ((_e60406126_
                                                 (gx#syntax-e _hd60376120_)))
                                            (let ((_lp-hd60416130_
                                                   (##car _e60406126_))
                                                  (_lp-tl60426133_
                                                   (##cdr _e60406126_)))
                                              (_loop60396116_
                                               _lp-tl60426133_
                                               (cons _lp-hd60416130_
                                                     _opt60436123_))))
                                          (let ((_opt60446136_
                                                 (reverse _opt60436123_)))
                                            (if (gx#stx-pair? _tl60356107_)
                                                (let ((_e60456140_
                                                       (gx#syntax-e
                                                        _tl60356107_)))
                                                  (let ((_hd60466144_
                                                         (##car _e60456140_))
                                                        (_tl60476147_
                                                         (##cdr _e60456140_)))
                                                    (if (gx#stx-null?
                                                         _tl60476147_)
                                                        ((lambda (_L6150_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L6152_
                          _L6153_)
                   (let ()
                     (gx#stx-wrap-source
                      (cons _L6150_
                            (begin
                              '#!void
                              (foldr (lambda (_g61786183_ _g61796186_)
                                       (cons _g61786183_ _g61796186_))
                                     (begin
                                       '#!void
                                       (foldr (lambda (_g61806189_ _g61816192_)
                                                (cons _g61806189_ _g61816192_))
                                              '()
                                              _L6152_))
                                     _L6153_)))
                      (gx#stx-source _stx4892_))))
                 _hd60466144_
                 _opt60446136_
                 _pre60326096_)
                (_g60166053_ _g60176057_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g60166053_ _g60176057_)))))))
                            (_loop60396116_ _target60366110_ '()))
                          (_g60166053_ _g60176057_)))))
                (_g60166053_ _g60176057_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g60166053_
                                                     _g60176057_))))
                                            (_g60166053_ _g60176057_)))))))
                        (_loop60276076_ _target60246070_ '()))
                      (_g60166053_ _g60176057_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g60166053_ _g60176057_))
                                                (_g60166053_ _g60176057_))))
                                        (_g60166053_ _g60176057_)))))
                            (_g60156195_
                             (list _pre5899_
                                   (reverse _right5907_)
                                   _primary5897_)))))))
                 (_generate-kw-primary4907_
                  (lambda (_kwvar5544_ _kwargs5546_ _args5547_ _body5548_)
                    (letrec* ((_absent5550_ (gx#genident 'absent))
                              (_make-body5552_
                               (lambda (_kwargs5716_ _body5718_)
                                 (if (pair? _kwargs5716_)
                                     (let* ((_next5720_ (car _kwargs5716_))
                                            (_rest5723_ (cdr _kwargs5716_))
                                            (_key5726_ (car _next5720_))
                                            (_var5729_ (cadr _next5720_))
                                            (_default5732_ (caddr _next5720_)))
                                       (let* ((_g57375772_
                                               (lambda (_g57385768_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g57385768_)))
                                              (_g57365893_
                                               (lambda (_g57385776_)
                                                 (if (gx#stx-pair? _g57385776_)
                                                     (let ((_e57465779_
                                                            (gx#syntax-e
                                                             _g57385776_)))
                                                       (let ((_hd57475783_
                                                              (##car _e57465779_))
                                                             (_tl57485786_
                                                              (##cdr _e57465779_)))
                                                         (if (gx#stx-pair?
                                                              _tl57485786_)
                                                             (let ((_e57495789_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl57485786_)))
                       (let ((_hd57505793_ (##car _e57495789_))
                             (_tl57515796_ (##cdr _e57495789_)))
                         (if (gx#stx-pair? _tl57515796_)
                             (let ((_e57525799_ (gx#syntax-e _tl57515796_)))
                               (let ((_hd57535803_ (##car _e57525799_))
                                     (_tl57545806_ (##cdr _e57525799_)))
                                 (if (gx#stx-pair? _tl57545806_)
                                     (let ((_e57555809_
                                            (gx#syntax-e _tl57545806_)))
                                       (let ((_hd57565813_ (##car _e57555809_))
                                             (_tl57575816_
                                              (##cdr _e57555809_)))
                                         (if (gx#stx-pair? _tl57575816_)
                                             (let ((_e57585819_
                                                    (gx#syntax-e
                                                     _tl57575816_)))
                                               (let ((_hd57595823_
                                                      (##car _e57585819_))
                                                     (_tl57605826_
                                                      (##cdr _e57585819_)))
                                                 (if (gx#stx-pair?
                                                      _tl57605826_)
                                                     (let ((_e57615829_
                                                            (gx#syntax-e
                                                             _tl57605826_)))
                                                       (let ((_hd57625833_
                                                              (##car _e57615829_))
                                                             (_tl57635836_
                                                              (##cdr _e57615829_)))
                                                         (if (gx#stx-pair?
                                                              _tl57635836_)
                                                             (let ((_e57645839_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl57635836_)))
                       (let ((_hd57655843_ (##car _e57645839_))
                             (_tl57665846_ (##cdr _e57645839_)))
                         (if (gx#stx-null? _tl57665846_)
                             ((lambda (_L5849_
                                       _L5851_
                                       _L5852_
                                       _L5853_
                                       _L5854_
                                       _L5855_
                                       _L5856_)
                                (let ()
                                  (cons (gx#datum->syntax '#f 'let-values)
                                        (cons (cons (cons (cons _L5853_ '())
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'hash-ref)
                              (cons _L5856_
                                    (cons (cons (gx#datum->syntax '#f 'quote)
                                                (cons _L5855_ '()))
                                          (cons _L5849_ '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'let-values)
                                                          (cons (cons (cons (cons _L5854_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons (cons (gx#datum->syntax '#f 'if)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'eq?)
                                                            (cons _L5853_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L5849_ '())))
              (cons _L5852_ (cons _L5853_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))
                              '())
                        (cons _L5851_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))))
                              _hd57655843_
                              _hd57625833_
                              _hd57595823_
                              _hd57565813_
                              _hd57535803_
                              _hd57505793_
                              _hd57475783_)
                             (_g57375772_ _g57385776_))))
                     (_g57375772_ _g57385776_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g57375772_
                                                      _g57385776_))))
                                             (_g57375772_ _g57385776_))))
                                     (_g57375772_ _g57385776_))))
                             (_g57375772_ _g57385776_))))
                     (_g57375772_ _g57385776_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g57375772_
                                                      _g57385776_)))))
                                         (_g57365893_
                                          (list _kwvar5544_
                                                _key5726_
                                                _var5729_
                                                (gx#genident _var5729_)
                                                _default5732_
                                                (_make-body5552_
                                                 _rest5723_
                                                 _body5718_)
                                                _absent5550_))))
                                     (cons 'begin _body5718_)))))
                      (let* ((_g55545562_
                              (lambda (_g55555558_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g55555558_)))
                             (_g55535712_
                              (lambda (_g55555566_)
                                ((lambda (_L5569_)
                                   (let ()
                                     (let* ((_g55825590_
                                             (lambda (_g55835586_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g55835586_)))
                                            (_g55815708_
                                             (lambda (_g55835594_)
                                               ((lambda (_L5597_)
                                                  (let ()
                                                    (let* ((_g56105618_
                                                            (lambda (_g56115614_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g56115614_)))
                                                           (_g56095704_
                                                            (lambda (_g56115622_)
                                                              ((lambda (_L5625_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g56385646_
                                   (lambda (_g56395642_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g56395642_)))
                                  (_g56375700_
                                   (lambda (_g56395650_)
                                     ((lambda (_L5653_)
                                        (let ()
                                          (let* ((_g56665674_
                                                  (lambda (_g56675670_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g56675670_)))
                                                 (_g56655696_
                                                  (lambda (_g56675678_)
                                                    ((lambda (_L5681_)
                                                       (let ()
                                                         (let ()
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'let-values)
                         (cons (cons (cons (cons _L5681_ '())
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'make-vector)
                                                       (cons '0 '()))
                                                 '()))
                                     '())
                               (cons _L5653_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g56675678_))))
                                            (_g56655696_ _absent5550_))))
                                      _g56395650_))))
                             (_g56375700_
                              (gx#stx-wrap-source
                               (cons (gx#datum->syntax '#f 'lambda)
                                     (cons (cons _L5569_ _L5597_)
                                           (cons _L5625_ '())))
                               (gx#stx-source _stx4892_))))))
                       _g56115622_))))
              (_g56095704_ (_make-body5552_ _kwargs5546_ _body5548_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g55835594_))))
                                       (_g55815708_ _args5547_))))
                                 _g55555566_))))
                        (_g55535712_ _kwvar5544_)))))
                 (_generate-kw-dispatch4908_
                  (lambda (_primary5457_ _kwargs5459_ _strict?5460_)
                    (let* ((_g54625481_
                            (lambda (_g54635477_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g54635477_)))
                           (_g54615540_
                            (lambda (_g54635485_)
                              (if (gx#stx-pair? _g54635485_)
                                  (let ((_e54675488_
                                         (gx#syntax-e _g54635485_)))
                                    (let ((_hd54685492_ (##car _e54675488_))
                                          (_tl54695495_ (##cdr _e54675488_)))
                                      (if (gx#stx-pair? _tl54695495_)
                                          (let ((_e54705498_
                                                 (gx#syntax-e _tl54695495_)))
                                            (let ((_hd54715502_
                                                   (##car _e54705498_))
                                                  (_tl54725505_
                                                   (##cdr _e54705498_)))
                                              (if (gx#stx-pair? _tl54725505_)
                                                  (let ((_e54735508_
                                                         (gx#syntax-e
                                                          _tl54725505_)))
                                                    (let ((_hd54745512_
                                                           (##car _e54735508_))
                                                          (_tl54755515_
                                                           (##cdr _e54735508_)))
                                                      (if (gx#stx-null?
                                                           _tl54755515_)
                                                          ((lambda (_L5518_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L5520_
                            _L5521_)
                     (let ()
                       (cons (gx#datum->syntax '#f 'lambda%)
                             (cons _L5518_
                                   (cons (cons (gx#datum->syntax '#f 'apply)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'keyword-dispatch)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _L5521_ '()))
                   (cons _L5520_ (cons _L5518_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))))
                   _hd54745512_
                   _hd54715502_
                   _hd54685492_)
                  (_g54625481_ _g54635485_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g54625481_ _g54635485_))))
                                          (_g54625481_ _g54635485_))))
                                  (_g54625481_ _g54635485_)))))
                      (_g54615540_
                       (list (if _strict?5460_
                                 (_generate-kw-table4909_
                                  (map car _kwargs5459_))
                                 '#f)
                             _primary5457_
                             (gx#genident 'args))))))
                 (_generate-kw-table4909_
                  (lambda (_kws5431_)
                    (let _rehash5434_ ((_pht5437_
                                        (make-vector (length _kws5431_) '#f)))
                      (let _lp5440_ ((_rest5443_ _kws5431_))
                        (if (pair? _rest5443_)
                            (let* ((_key5446_ (car _rest5443_))
                                   (_rest5449_ (cdr _rest5443_))
                                   (_pos5452_
                                    (fxmodulo
                                     (keyword-hash _key5446_)
                                     (vector-length _pht5437_))))
                              (if (vector-ref _pht5437_ _pos5452_)
                                  (if (fx< (vector-length _pht5437_) '8192)
                                      (_rehash5434_
                                       (make-vector
                                        (quotient
                                         (fx* '3 (vector-length _pht5437_))
                                         '2)
                                        '#f))
                                      (error '"Unresolvable keyword collision"
                                             _kws5431_))
                                  (begin
                                    (vector-set! _pht5437_ _pos5452_ _key5446_)
                                    (_lp5440_ _rest5449_))))
                            _pht5437_))))))
          (let* ((_g49134944_
                  (lambda (_g49144940_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g49144940_)))
                 (_g49125157_
                  (lambda (_g49144948_)
                    (if (gx#stx-pair? _g49144948_)
                        (let ((_e49334951_ (gx#syntax-e _g49144948_)))
                          (let ((_hd49344955_ (##car _e49334951_))
                                (_tl49354958_ (##cdr _e49334951_)))
                            (if (gx#stx-pair? _tl49354958_)
                                (let ((_e49364961_ (gx#syntax-e _tl49354958_)))
                                  (let ((_hd49374965_ (##car _e49364961_))
                                        (_tl49384968_ (##cdr _e49364961_)))
                                    ((lambda (_L4971_ _L4973_)
                                       (if (_kw-lambda?4899_ _L4973_)
                                           (let* ((_g49894996_
                                                   (lambda (_g49904992_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g49904992_)))
                                                  (_g49885153_
                                                   (lambda (_g49905000_)
                                                     ((lambda ()
                                                        (let ()
                                                          (let ((_g34682_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_kw-lambda-split4900_ _L4973_)))
                    (begin
                      (let ((_g34683_ (values-count _g34682_)))
                        (if (not (fx= _g34683_ 3))
                            (error "Context expects 3 values" _g34683_)))
                      (let ((_key5009_ (values-ref _g34682_ 0))
                            (_kwargs5011_ (values-ref _g34682_ 1))
                            (_args5012_ (values-ref _g34682_ 2)))
                        (let* ((_g50145022_
                                (lambda (_g50155018_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g50155018_)))
                               (_g50135145_
                                (lambda (_g50155026_)
                                  ((lambda (_L5029_)
                                     (let ()
                                       (let* ((_g50475055_
                                               (lambda (_g50485051_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g50485051_)))
                                              (_g50465141_
                                               (lambda (_g50485059_)
                                                 ((lambda (_L5062_)
                                                    (let ()
                                                      (let* ((_g50755083_
                                                              (lambda (_g50765079_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax"
                         _g50765079_)))
                     (_g50745137_
                      (lambda (_g50765087_)
                        ((lambda (_L5090_)
                           (let ()
                             (let* ((_g51035111_
                                     (lambda (_g51045107_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g51045107_)))
                                    (_g51025133_
                                     (lambda (_g51045115_)
                                       ((lambda (_L5118_)
                                          (let ()
                                            (let ()
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'let-values)
                                                    (cons (cons (cons (cons _L5062_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _L5090_ '()))
                        '())
                  (cons _L5118_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _g51045115_))))
                               (_g51025133_
                                (gx#stx-wrap-source
                                 (_generate-kw-dispatch4908_
                                  _L5062_
                                  _kwargs5011_
                                  (not _key5009_))
                                 (gx#stx-source _stx4892_))))))
                         _g50765087_))))
                (_g50745137_
                 (gx#stx-wrap-source
                  (_generate-kw-primary4907_
                   _L5029_
                   _kwargs5011_
                   _args5012_
                   _L4971_)
                  (gx#stx-source _stx4892_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g50485059_))))
                                         (_g50465141_
                                          (gx#genident 'kw-lambda)))))
                                   _g50155026_))))
                          (_g50135145_
                           (let ((_$e5149_ _key5009_))
                             (if _$e5149_
                                 _$e5149_
                                 (gx#genident 'key))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g49885153_
                                              (_check-duplicate-bindings4902_
                                               _L4973_)))
                                           (_g49134944_ _g49144948_)))
                                     _tl49384968_
                                     _hd49374965_)))
                                (_g49134944_ _g49144948_))))
                        (_g49134944_ _g49144948_))))
                 (_g49115385_
                  (lambda (_g49145161_)
                    (if (gx#stx-pair? _g49145161_)
                        (let ((_e49255164_ (gx#syntax-e _g49145161_)))
                          (let ((_hd49265168_ (##car _e49255164_))
                                (_tl49275171_ (##cdr _e49255164_)))
                            (if (gx#stx-pair? _tl49275171_)
                                (let ((_e49285174_ (gx#syntax-e _tl49275171_)))
                                  (let ((_hd49295178_ (##car _e49285174_))
                                        (_tl49305181_ (##cdr _e49285174_)))
                                    ((lambda (_L5184_ _L5186_)
                                       (if (_opt-lambda?4897_ _L5186_)
                                           (let ((_g34684_
                                                  (_opt-lambda-split4898_
                                                   _L5186_)))
                                             (begin
                                               (let ((_g34685_
                                                      (values-count _g34684_)))
                                                 (if (not (fx= _g34685_ 3))
                                                     (error "Context expects 3 values"
                                                            _g34685_)))
                                               (let ((_pre5199_
                                                      (values-ref _g34684_ 0))
                                                     (_opt5201_
                                                      (values-ref _g34684_ 1))
                                                     (_tail5202_
                                                      (values-ref _g34684_ 2)))
                                                 (let* ((_g52045212_
                                                         (lambda (_g52055208_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g52055208_)))
                                                        (_g52035381_
                                                         (lambda (_g52055216_)
                                                           ((lambda (_L5219_)
                                                              (let ()
                                                                (let* ((_g52325240_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_g52335236_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g52335236_)))
                               (_g52315377_
                                (lambda (_g52335244_)
                                  ((lambda (_L5247_)
                                     (let ()
                                       (let* ((_g52605277_
                                               (lambda (_g52615273_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g52615273_)))
                                              (_g52595373_
                                               (lambda (_g52615281_)
                                                 (if (gx#stx-pair/null?
                                                      _g52615281_)
                                                     (if (fx>= (gx#stx-length
                                                                _g52615281_)
                                                               '0)
                                                         (let ((_g34686_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g52615281_
                         '0)))
                   (begin
                     (let ((_g34687_ (values-count _g34686_)))
                       (if (not (fx= _g34687_ 2))
                           (error "Context expects 2 values" _g34687_)))
                     (let ((_target52635284_ (values-ref _g34686_ 0))
                           (_tl52655287_ (values-ref _g34686_ 1)))
                       (if (gx#stx-null? _tl52655287_)
                           (letrec ((_loop52665290_
                                     (lambda (_hd52645294_ _clause52705297_)
                                       (if (gx#stx-pair? _hd52645294_)
                                           (let ((_e52675300_
                                                  (gx#syntax-e _hd52645294_)))
                                             (let ((_lp-hd52685304_
                                                    (##car _e52675300_))
                                                   (_lp-tl52695307_
                                                    (##cdr _e52675300_)))
                                               (_loop52665290_
                                                _lp-tl52695307_
                                                (cons _lp-hd52685304_
                                                      _clause52705297_))))
                                           (let ((_clause52715310_
                                                  (reverse _clause52705297_)))
                                             ((lambda (_L5314_)
                                                (let ()
                                                  (let* ((_g53315339_
                                                          (lambda (_g53325335_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g53325335_)))
                                                         (_g53305361_
                                                          (lambda (_g53325343_)
                                                            ((lambda (_L5346_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (cons (gx#datum->syntax '#f 'let-values)
                                 (cons (cons (cons (cons _L5219_ '())
                                                   (cons _L5247_ '()))
                                             '())
                                       (cons _L5346_ '()))))))
                     _g53325343_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g53305361_
                                                     (gx#stx-wrap-source
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'case-lambda)
                                                            (begin
                                                              '#!void
                                                              (foldr (lambda (_g53645367_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g53655370_)
                               (cons _g53645367_ _g53655370_))
                             '()
                             _L5314_)))
              (gx#stx-source _stx4892_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _clause52715310_))))))
                             (_loop52665290_ _target52635284_ '()))
                           (_g52605277_ _g52615281_)))))
                 (_g52605277_ _g52615281_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g52605277_
                                                      _g52615281_)))))
                                         (_g52595373_
                                          (_generate-opt-dispatch4904_
                                           _L5219_
                                           _pre5199_
                                           _opt5201_
                                           _tail5202_)))))
                                   _g52335244_))))
                          (_g52315377_
                           (gx#stx-wrap-source
                            (_generate-opt-primary4903_
                             _pre5199_
                             _opt5201_
                             _tail5202_
                             _L5184_)
                            (gx#stx-source _stx4892_))))))
                    _g52055216_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g52035381_
                                                    (gx#genident
                                                     'opt-lambda))))))
                                           (_g49125157_ _g49145161_)))
                                     _tl49305181_
                                     _hd49295178_)))
                                (_g49125157_ _g49145161_))))
                        (_g49125157_ _g49145161_))))
                 (_g49105427_
                  (lambda (_g49145389_)
                    (if (gx#stx-pair? _g49145389_)
                        (let ((_e49175392_ (gx#syntax-e _g49145389_)))
                          (let ((_hd49185396_ (##car _e49175392_))
                                (_tl49195399_ (##cdr _e49175392_)))
                            (if (gx#stx-pair? _tl49195399_)
                                (let ((_e49205402_ (gx#syntax-e _tl49195399_)))
                                  (let ((_hd49215406_ (##car _e49205402_))
                                        (_tl49225409_ (##cdr _e49205402_)))
                                    ((lambda (_L5412_ _L5414_)
                                       (if (_simple-lambda?4895_ _L5414_)
                                           (cons (gx#datum->syntax
                                                  '#f
                                                  'lambda%)
                                                 (cons _L5414_ _L5412_))
                                           (_g49115385_ _g49145389_)))
                                     _tl49225409_
                                     _hd49215406_)))
                                (_g49115385_ _g49145389_))))
                        (_g49115385_ _g49145389_)))))
            (_g49105427_ _stx4892_)))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#def|
      (lambda (_$stx8059_)
        (let* ((_g80648103_
                (lambda (_g80658099_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g80658099_)))
               (_g80638158_
                (lambda (_g80658107_)
                  (if (gx#stx-pair? _g80658107_)
                      (let ((_e80898110_ (gx#syntax-e _g80658107_)))
                        (let ((_hd80908114_ (##car _e80898110_))
                              (_tl80918117_ (##cdr _e80898110_)))
                          (if (gx#stx-pair? _tl80918117_)
                              (let ((_e80928120_ (gx#syntax-e _tl80918117_)))
                                (let ((_hd80938124_ (##car _e80928120_))
                                      (_tl80948127_ (##cdr _e80928120_)))
                                  (if (gx#stx-pair? _tl80948127_)
                                      (let ((_e80958130_
                                             (gx#syntax-e _tl80948127_)))
                                        (let ((_hd80968134_
                                               (##car _e80958130_))
                                              (_tl80978137_
                                               (##cdr _e80958130_)))
                                          (if (gx#stx-null? _tl80978137_)
                                              ((lambda (_L8140_ _L8142_)
                                                 (if (gx#identifier? _L8142_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'define-values)
                                                           (cons (cons _L8142_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '())
                         (cons _L8140_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g80648103_
                                                      _g80658107_)))
                                               _hd80968134_
                                               _hd80938124_)
                                              (_g80648103_ _g80658107_))))
                                      (_g80648103_ _g80658107_))))
                              (_g80648103_ _g80658107_))))
                      (_g80648103_ _g80658107_))))
               (_g80628256_
                (lambda (_g80658162_)
                  (if (gx#stx-pair? _g80658162_)
                      (let ((_e80698165_ (gx#syntax-e _g80658162_)))
                        (let ((_hd80708169_ (##car _e80698165_))
                              (_tl80718172_ (##cdr _e80698165_)))
                          (if (gx#stx-pair? _tl80718172_)
                              (let ((_e80728175_ (gx#syntax-e _tl80718172_)))
                                (let ((_hd80738179_ (##car _e80728175_))
                                      (_tl80748182_ (##cdr _e80728175_)))
                                  (if (gx#stx-pair? _hd80738179_)
                                      (let ((_e80758185_
                                             (gx#syntax-e _hd80738179_)))
                                        (let ((_hd80768189_
                                               (##car _e80758185_))
                                              (_tl80778192_
                                               (##cdr _e80758185_)))
                                          (if (gx#stx-pair/null? _tl80748182_)
                                              (if (fx>= (gx#stx-length
                                                         _tl80748182_)
                                                        '0)
                                                  (let ((_g34688_
                                                         (gx#syntax-split-splice
                                                          _tl80748182_
                                                          '0)))
                                                    (begin
                                                      (let ((_g34689_
                                                             (values-count
                                                              _g34688_)))
                                                        (if (not (fx= _g34689_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g34689_)))
              (let ((_target80788195_ (values-ref _g34688_ 0))
                    (_tl80808198_ (values-ref _g34688_ 1)))
                (if (gx#stx-null? _tl80808198_)
                    (letrec ((_loop80818201_
                              (lambda (_hd80798205_ _body80858208_)
                                (if (gx#stx-pair? _hd80798205_)
                                    (let ((_e80828211_
                                           (gx#syntax-e _hd80798205_)))
                                      (let ((_lp-hd80838215_
                                             (##car _e80828211_))
                                            (_lp-tl80848218_
                                             (##cdr _e80828211_)))
                                        (_loop80818201_
                                         _lp-tl80848218_
                                         (cons _lp-hd80838215_
                                               _body80858208_))))
                                    (let ((_body80868221_
                                           (reverse _body80858208_)))
                                      ((lambda (_L8225_ _L8227_ _L8228_)
                                         (if (gx#identifier? _L8228_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'define-values)
                                                   (cons (cons _L8228_ '())
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'lambda)
                             (cons _L8227_
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g82478250_ _g82488253_)
                                              (cons _g82478250_ _g82488253_))
                                            '()
                                            _L8225_))))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g80638158_ _g80658162_)))
                                       _body80868221_
                                       _tl80778192_
                                       _hd80768189_))))))
                      (_loop80818201_ _target80788195_ '()))
                    (_g80638158_ _g80658162_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g80638158_ _g80658162_))
                                              (_g80638158_ _g80658162_))))
                                      (_g80638158_ _g80658162_))))
                              (_g80638158_ _g80658162_))))
                      (_g80638158_ _g80658162_)))))
          (_g80628256_ _$stx8059_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#def*|
      (lambda (_$stx8261_)
        (let* ((_g82658289_
                (lambda (_g82668285_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g82668285_)))
               (_g82648374_
                (lambda (_g82668293_)
                  (if (gx#stx-pair? _g82668293_)
                      (let ((_e82698296_ (gx#syntax-e _g82668293_)))
                        (let ((_hd82708300_ (##car _e82698296_))
                              (_tl82718303_ (##cdr _e82698296_)))
                          (if (gx#stx-pair? _tl82718303_)
                              (let ((_e82728306_ (gx#syntax-e _tl82718303_)))
                                (let ((_hd82738310_ (##car _e82728306_))
                                      (_tl82748313_ (##cdr _e82728306_)))
                                  (if (gx#stx-pair/null? _tl82748313_)
                                      (if (fx>= (gx#stx-length _tl82748313_)
                                                '0)
                                          (let ((_g34690_
                                                 (gx#syntax-split-splice
                                                  _tl82748313_
                                                  '0)))
                                            (begin
                                              (let ((_g34691_
                                                     (values-count _g34690_)))
                                                (if (not (fx= _g34691_ 2))
                                                    (error "Context expects 2 values"
                                                           _g34691_)))
                                              (let ((_target82758316_
                                                     (values-ref _g34690_ 0))
                                                    (_tl82778319_
                                                     (values-ref _g34690_ 1)))
                                                (if (gx#stx-null? _tl82778319_)
                                                    (letrec ((_loop82788322_
                                                              (lambda (_hd82768326_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _clauses82828329_)
                        (if (gx#stx-pair? _hd82768326_)
                            (let ((_e82798332_ (gx#syntax-e _hd82768326_)))
                              (let ((_lp-hd82808336_ (##car _e82798332_))
                                    (_lp-tl82818339_ (##cdr _e82798332_)))
                                (_loop82788322_
                                 _lp-tl82818339_
                                 (cons _lp-hd82808336_ _clauses82828329_))))
                            (let ((_clauses82838342_
                                   (reverse _clauses82828329_)))
                              ((lambda (_L8346_ _L8348_)
                                 (if (gx#identifier? _L8348_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'define-values)
                                           (cons (cons _L8348_ '())
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'case-lambda)
                                                             (begin
                                                               '#!void
                                                               (foldr (lambda (_g83658368_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g83668371_)
                                (cons _g83658368_ _g83668371_))
                              '()
                              _L8346_)))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_g82658289_ _g82668293_)))
                               _clauses82838342_
                               _hd82738310_))))))
              (_loop82788322_ _target82758316_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g82658289_
                                                     _g82668293_)))))
                                          (_g82658289_ _g82668293_))
                                      (_g82658289_ _g82668293_))))
                              (_g82658289_ _g82668293_))))
                      (_g82658289_ _g82668293_)))))
          (_g82648374_ _$stx8261_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#defvalues|
      (lambda (_$stx8379_)
        (let* ((_g83838401_
                (lambda (_g83848397_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g83848397_)))
               (_g83828456_
                (lambda (_g83848405_)
                  (if (gx#stx-pair? _g83848405_)
                      (let ((_e83878408_ (gx#syntax-e _g83848405_)))
                        (let ((_hd83888412_ (##car _e83878408_))
                              (_tl83898415_ (##cdr _e83878408_)))
                          (if (gx#stx-pair? _tl83898415_)
                              (let ((_e83908418_ (gx#syntax-e _tl83898415_)))
                                (let ((_hd83918422_ (##car _e83908418_))
                                      (_tl83928425_ (##cdr _e83908418_)))
                                  (if (gx#stx-pair? _tl83928425_)
                                      (let ((_e83938428_
                                             (gx#syntax-e _tl83928425_)))
                                        (let ((_hd83948432_
                                               (##car _e83938428_))
                                              (_tl83958435_
                                               (##cdr _e83938428_)))
                                          (if (gx#stx-null? _tl83958435_)
                                              ((lambda (_L8438_ _L8440_)
                                                 (if (gx#identifier-list?
                                                      _L8440_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'define-values)
                                                           (cons _L8440_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L8438_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g83838401_
                                                      _g83848405_)))
                                               _hd83948432_
                                               _hd83918422_)
                                              (_g83838401_ _g83848405_))))
                                      (_g83838401_ _g83848405_))))
                              (_g83838401_ _g83848405_))))
                      (_g83838401_ _g83848405_)))))
          (_g83828456_ _$stx8379_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#case|
      (lambda (_$stx8460_)
        (let* ((_g84648488_
                (lambda (_g84658484_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g84658484_)))
               (_g84638573_
                (lambda (_g84658492_)
                  (if (gx#stx-pair? _g84658492_)
                      (let ((_e84688495_ (gx#syntax-e _g84658492_)))
                        (let ((_hd84698499_ (##car _e84688495_))
                              (_tl84708502_ (##cdr _e84688495_)))
                          (if (gx#stx-pair? _tl84708502_)
                              (let ((_e84718505_ (gx#syntax-e _tl84708502_)))
                                (let ((_hd84728509_ (##car _e84718505_))
                                      (_tl84738512_ (##cdr _e84718505_)))
                                  (if (gx#stx-pair/null? _tl84738512_)
                                      (if (fx>= (gx#stx-length _tl84738512_)
                                                '0)
                                          (let ((_g34692_
                                                 (gx#syntax-split-splice
                                                  _tl84738512_
                                                  '0)))
                                            (begin
                                              (let ((_g34693_
                                                     (values-count _g34692_)))
                                                (if (not (fx= _g34693_ 2))
                                                    (error "Context expects 2 values"
                                                           _g34693_)))
                                              (let ((_target84748515_
                                                     (values-ref _g34692_ 0))
                                                    (_tl84768518_
                                                     (values-ref _g34692_ 1)))
                                                (if (gx#stx-null? _tl84768518_)
                                                    (letrec ((_loop84778521_
                                                              (lambda (_hd84758525_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _clause84818528_)
                        (if (gx#stx-pair? _hd84758525_)
                            (let ((_e84788531_ (gx#syntax-e _hd84758525_)))
                              (let ((_lp-hd84798535_ (##car _e84788531_))
                                    (_lp-tl84808538_ (##cdr _e84788531_)))
                                (_loop84778521_
                                 _lp-tl84808538_
                                 (cons _lp-hd84798535_ _clause84818528_))))
                            (let ((_clause84828541_
                                   (reverse _clause84818528_)))
                              ((lambda (_L8545_ _L8547_)
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (cons (gx#datum->syntax '#f '$e)
                                                   (cons _L8547_ '()))
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '~case)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                '$e)
                                                               (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#!void
                         (foldr (lambda (_g85648567_ _g85658570_)
                                  (cons _g85648567_ _g85658570_))
                                '()
                                _L8545_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                               _clause84828541_
                               _hd84728509_))))))
              (_loop84778521_ _target84748515_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g84648488_
                                                     _g84658492_)))))
                                          (_g84648488_ _g84658492_))
                                      (_g84648488_ _g84658492_))))
                              (_g84648488_ _g84658492_))))
                      (_g84648488_ _g84658492_)))))
          (_g84638573_ _$stx8460_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#~case|
      (lambda (_stx8578_)
        (letrec ((_parse-clauses8581_
                  (lambda (_e10869_ _clauses10871_)
                    (let _lp10873_ ((_rest10876_ _clauses10871_)
                                    (_datums10878_ '())
                                    (_dispatch10879_ '())
                                    (_default10880_ '#f))
                      (let* ((_g1088310895_
                              (lambda (_g1088410891_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1088410891_)))
                             (_g1088210910_
                              (lambda (_g1088410899_)
                                (if (gx#stx-null? _g1088410899_)
                                    ((lambda ()
                                       (begin
                                         (_check-duplicate-datums8583_
                                          _datums10878_)
                                         (values (reverse _datums10878_)
                                                 (reverse _dispatch10879_)
                                                 (let ((_$e10906_
                                                        _default10880_))
                                                   (if _$e10906_
                                                       _$e10906_
                                                       '#!void))))))
                                    (_g1088310895_ _g1088410899_))))
                             (_g1088111341_
                              (lambda (_g1088410914_)
                                (if (gx#stx-pair? _g1088410914_)
                                    (let ((_e1088710917_
                                           (gx#syntax-e _g1088410914_)))
                                      (let ((_hd1088810921_
                                             (##car _e1088710917_))
                                            (_tl1088910924_
                                             (##cdr _e1088710917_)))
                                        ((lambda (_L10927_ _L10929_)
                                           (let* ((_g1094611009_
                                                   (lambda (_g1094711005_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g1094711005_)))
                                                  (_g1094511132_
                                                   (lambda (_g1094711013_)
                                                     (if (gx#stx-pair?
                                                          _g1094711013_)
                                                         (let ((_e1098311016_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1094711013_)))
                   (let ((_hd1098411020_ (##car _e1098311016_))
                         (_tl1098511023_ (##cdr _e1098311016_)))
                     (if (gx#stx-pair/null? _hd1098411020_)
                         (if (fx>= (gx#stx-length _hd1098411020_) '0)
                             (let ((_g34694_
                                    (gx#syntax-split-splice
                                     _hd1098411020_
                                     '0)))
                               (begin
                                 (let ((_g34695_ (values-count _g34694_)))
                                   (if (not (fx= _g34695_ 2))
                                       (error "Context expects 2 values"
                                              _g34695_)))
                                 (let ((_target1098611026_
                                        (values-ref _g34694_ 0))
                                       (_tl1098811029_
                                        (values-ref _g34694_ 1)))
                                   (if (gx#stx-null? _tl1098811029_)
                                       (letrec ((_loop1098911032_
                                                 (lambda (_hd1098711036_
                                                          _datum1099311039_)
                                                   (if (gx#stx-pair?
                                                        _hd1098711036_)
                                                       (let ((_e1099011042_
                                                              (gx#syntax-e
                                                               _hd1098711036_)))
                                                         (let ((_lp-hd1099111046_
                                                                (##car _e1099011042_))
                                                               (_lp-tl1099211049_
                                                                (##cdr _e1099011042_)))
                                                           (_loop1098911032_
                                                            _lp-tl1099211049_
                                                            (cons _lp-hd1099111046_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _datum1099311039_))))
               (let ((_datum1099411052_ (reverse _datum1099311039_)))
                 (if (gx#stx-pair/null? _tl1098511023_)
                     (if (fx>= (gx#stx-length _tl1098511023_) '0)
                         (let ((_g34696_
                                (gx#syntax-split-splice _tl1098511023_ '0)))
                           (begin
                             (let ((_g34697_ (values-count _g34696_)))
                               (if (not (fx= _g34697_ 2))
                                   (error "Context expects 2 values"
                                          _g34697_)))
                             (let ((_target1099511056_ (values-ref _g34696_ 0))
                                   (_tl1099711059_ (values-ref _g34696_ 1)))
                               (if (gx#stx-null? _tl1099711059_)
                                   (letrec ((_loop1099811062_
                                             (lambda (_hd1099611066_
                                                      _body1100211069_)
                                               (if (gx#stx-pair?
                                                    _hd1099611066_)
                                                   (let ((_e1099911072_
                                                          (gx#syntax-e
                                                           _hd1099611066_)))
                                                     (let ((_lp-hd1100011076_
                                                            (##car _e1099911072_))
                                                           (_lp-tl1100111079_
                                                            (##cdr _e1099911072_)))
                                                       (_loop1099811062_
                                                        _lp-tl1100111079_
                                                        (cons _lp-hd1100011076_
                                                              _body1100211069_))))
                                                   (let ((_body1100311082_
                                                          (reverse _body1100211069_)))
                                                     ((lambda (_L11086_
                                                               _L11088_)
                                                        (if (null? (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#!void
                             (foldr (lambda (_g1110711110_ _g1110811113_)
                                      (cons _g1110711110_ _g1110811113_))
                                    '()
                                    _L11088_)))
                    (_lp10873_
                     _L10927_
                     _datums10878_
                     _dispatch10879_
                     _default10880_)
                    (_lp10873_
                     _L10927_
                     (cons (map gx#stx-e
                                (begin
                                  '#!void
                                  (foldr (lambda (_g1111511118_ _g1111611121_)
                                           (cons _g1111511118_ _g1111611121_))
                                         '()
                                         _L11088_)))
                           _datums10878_)
                     (cons (cons (gx#datum->syntax '#f 'begin)
                                 (begin
                                   '#!void
                                   (foldr (lambda (_g1112311126_ _g1112411129_)
                                            (cons _g1112311126_ _g1112411129_))
                                          '()
                                          _L11086_)))
                           _dispatch10879_)
                     _default10880_)))
              _body1100311082_
              _datum1099411052_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop1099811062_ _target1099511056_ '()))
                                   (_g1094611009_ _g1094711013_)))))
                         (_g1094611009_ _g1094711013_))
                     (_g1094611009_ _g1094711013_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop1098911032_
                                          _target1098611026_
                                          '()))
                                       (_g1094611009_ _g1094711013_)))))
                             (_g1094611009_ _g1094711013_))
                         (_g1094611009_ _g1094711013_))))
                 (_g1094611009_ _g1094711013_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1094411267_
                                                   (lambda (_g1094711136_)
                                                     (if (gx#stx-pair?
                                                          _g1094711136_)
                                                         (let ((_e1096311139_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1094711136_)))
                   (let ((_hd1096411143_ (##car _e1096311139_))
                         (_tl1096511146_ (##cdr _e1096311139_)))
                     (if (gx#stx-pair/null? _hd1096411143_)
                         (if (fx>= (gx#stx-length _hd1096411143_) '0)
                             (let ((_g34698_
                                    (gx#syntax-split-splice
                                     _hd1096411143_
                                     '0)))
                               (begin
                                 (let ((_g34699_ (values-count _g34698_)))
                                   (if (not (fx= _g34699_ 2))
                                       (error "Context expects 2 values"
                                              _g34699_)))
                                 (let ((_target1096611149_
                                        (values-ref _g34698_ 0))
                                       (_tl1096811152_
                                        (values-ref _g34698_ 1)))
                                   (if (gx#stx-null? _tl1096811152_)
                                       (letrec ((_loop1096911155_
                                                 (lambda (_hd1096711159_
                                                          _datum1097311162_)
                                                   (if (gx#stx-pair?
                                                        _hd1096711159_)
                                                       (let ((_e1097011165_
                                                              (gx#syntax-e
                                                               _hd1096711159_)))
                                                         (let ((_lp-hd1097111169_
                                                                (##car _e1097011165_))
                                                               (_lp-tl1097211172_
                                                                (##cdr _e1097011165_)))
                                                           (_loop1096911155_
                                                            _lp-tl1097211172_
                                                            (cons _lp-hd1097111169_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _datum1097311162_))))
               (let ((_datum1097411175_ (reverse _datum1097311162_)))
                 (if (gx#stx-pair? _tl1096511146_)
                     (let ((_e1097511179_ (gx#syntax-e _tl1096511146_)))
                       (let ((_hd1097611183_ (##car _e1097511179_))
                             (_tl1097711186_ (##cdr _e1097511179_)))
                         (if (gx#identifier? _hd1097611183_)
                             (if (gx#free-identifier=?
                                  |gerbil/core$<sugar>$<sugar:2>[1]#_g34700_|
                                  _hd1097611183_)
                                 (if (gx#stx-pair? _tl1097711186_)
                                     (let ((_e1097811189_
                                            (gx#syntax-e _tl1097711186_)))
                                       (let ((_hd1097911193_
                                              (##car _e1097811189_))
                                             (_tl1098011196_
                                              (##cdr _e1097811189_)))
                                         (if (gx#stx-null? _tl1098011196_)
                                             ((lambda (_L11199_ _L11201_)
                                                (if (null? (begin
                                                             '#!void
                                                             (foldr (lambda (_g1121911222_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1122011225_)
                              (cons _g1121911222_ _g1122011225_))
                            '()
                            _L11201_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_lp10873_
                                                     _L10927_
                                                     _datums10878_
                                                     _dispatch10879_
                                                     _default10880_)
                                                    (let* ((_g1122811236_
                                                            (lambda (_g1122911232_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g1122911232_)))
                                                           (_g1122711263_
                                                            (lambda (_g1122911240_)
                                                              ((lambda (_L11243_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (_lp10873_
                            _L10927_
                            (cons (map gx#stx-e
                                       (begin
                                         '#!void
                                         (foldr (lambda (_g1125411257_
                                                         _g1125511260_)
                                                  (cons _g1125411257_
                                                        _g1125511260_))
                                                '()
                                                _L11201_)))
                                  _datums10878_)
                            (cons (cons _L11199_ (cons _L11243_ '()))
                                  _dispatch10879_)
                            _default10880_)))
                       _g1122911240_))))
              (_g1122711263_ _e10869_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd1097911193_
                                              _datum1097411175_)
                                             (_g1094511132_ _g1094711136_))))
                                     (_g1094511132_ _g1094711136_))
                                 (_g1094511132_ _g1094711136_))
                             (_g1094511132_ _g1094711136_))))
                     (_g1094511132_ _g1094711136_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop1096911155_
                                          _target1096611149_
                                          '()))
                                       (_g1094511132_ _g1094711136_)))))
                             (_g1094511132_ _g1094711136_))
                         (_g1094511132_ _g1094711136_))))
                 (_g1094511132_ _g1094711136_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1094311337_
                                                   (lambda (_g1094711271_)
                                                     (if (gx#stx-pair?
                                                          _g1094711271_)
                                                         (let ((_e1094911274_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1094711271_)))
                   (let ((_hd1095011278_ (##car _e1094911274_))
                         (_tl1095111281_ (##cdr _e1094911274_)))
                     (if (gx#identifier? _hd1095011278_)
                         (if (gx#free-identifier=?
                              |gerbil/core$<sugar>$<sugar:2>[1]#_g34701_|
                              _hd1095011278_)
                             (if (gx#stx-pair/null? _tl1095111281_)
                                 (if (fx>= (gx#stx-length _tl1095111281_) '0)
                                     (let ((_g34702_
                                            (gx#syntax-split-splice
                                             _tl1095111281_
                                             '0)))
                                       (begin
                                         (let ((_g34703_
                                                (values-count _g34702_)))
                                           (if (not (fx= _g34703_ 2))
                                               (error "Context expects 2 values"
                                                      _g34703_)))
                                         (let ((_target1095211284_
                                                (values-ref _g34702_ 0))
                                               (_tl1095411287_
                                                (values-ref _g34702_ 1)))
                                           (if (gx#stx-null? _tl1095411287_)
                                               (letrec ((_loop1095511290_
                                                         (lambda (_hd1095311294_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _body1095911297_)
                   (if (gx#stx-pair? _hd1095311294_)
                       (let ((_e1095611300_ (gx#syntax-e _hd1095311294_)))
                         (let ((_lp-hd1095711304_ (##car _e1095611300_))
                               (_lp-tl1095811307_ (##cdr _e1095611300_)))
                           (_loop1095511290_
                            _lp-tl1095811307_
                            (cons _lp-hd1095711304_ _body1095911297_))))
                       (let ((_body1096011310_ (reverse _body1095911297_)))
                         ((lambda (_L11314_)
                            (if (gx#stx-null? _L10927_)
                                (if _default10880_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Duplicate else clause"
                                     _stx8578_
                                     _L10929_)
                                    (_lp10873_
                                     _L10927_
                                     _datums10878_
                                     _dispatch10879_
                                     (cons (gx#datum->syntax '#f 'begin)
                                           (begin
                                             '#!void
                                             (foldr (lambda (_g1132811331_
                                                             _g1132911334_)
                                                      (cons _g1132811331_
                                                            _g1132911334_))
                                                    '()
                                                    _L11314_)))))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Misplaced else clause"
                                 _stx8578_
                                 _L10929_)))
                          _body1096011310_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1095511290_
                                                  _target1095211284_
                                                  '()))
                                               (_g1094411267_
                                                _g1094711271_)))))
                                     (_g1094411267_ _g1094711271_))
                                 (_g1094411267_ _g1094711271_))
                             (_g1094411267_ _g1094711271_))
                         (_g1094411267_ _g1094711271_))))
                 (_g1094411267_ _g1094711271_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1094311337_ _L10929_)))
                                         _tl1088910924_
                                         _hd1088810921_)))
                                    (_g1088210910_ _g1088410914_)))))
                        (_g1088111341_ _rest10876_)))))
                 (_check-duplicate-datums8583_
                  (lambda (_datums10857_)
                    (let ((_ht10860_ (make-hash-table)))
                      (for-each
                       (lambda (_lst10863_)
                         (for-each
                          (lambda (_datum10866_)
                            (if (hash-get _ht10860_ _datum10866_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Duplicate datum"
                                 _stx8578_
                                 _datum10866_)
                                (hash-put! _ht10860_ _datum10866_ '#t)))
                          _lst10863_))
                       _datums10857_))))
                 (_count-datums8584_
                  (lambda (_datums10850_)
                    (foldl (lambda (_lst10853_ _r10855_)
                             (+ (length _lst10853_) _r10855_))
                           '0
                           _datums10850_)))
                 (_symbolic-datums?8585_
                  (lambda (_datums10844_)
                    (andmap (lambda (_lst10847_) (andmap symbol? _lst10847_))
                            _datums10844_)))
                 (_char-datums?8586_
                  (lambda (_datums10838_)
                    (andmap (lambda (_lst10841_) (andmap char? _lst10841_))
                            _datums10838_)))
                 (_fixnum-datums?8587_
                  (lambda (_datums10832_)
                    (andmap (lambda (_lst10835_) (andmap fixnum? _lst10835_))
                            _datums10832_)))
                 (_eq-datums?8588_
                  (lambda (_datums10815_)
                    (andmap (lambda (_lst10818_)
                              (andmap (lambda (_x10821_)
                                        (let ((_$e10824_ (symbol? _x10821_)))
                                          (if _$e10824_
                                              _$e10824_
                                              (let ((_$e10828_
                                                     (keyword? _x10821_)))
                                                (if _$e10828_
                                                    _$e10828_
                                                    (immediate? _x10821_))))))
                                      _lst10818_))
                            _datums10815_)))
                 (_generate-simple-case8589_
                  (lambda (_e10579_
                           _datums10581_
                           _dispatch10582_
                           _default10583_)
                    (let* ((_g1058510593_
                            (lambda (_g1058610589_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1058610589_)))
                           (_g1058410811_
                            (lambda (_g1058610597_)
                              ((lambda (_L10600_)
                                 (let ()
                                   (let _recur10612_ ((_datums10615_
                                                       _datums10581_)
                                                      (_dispatch10617_
                                                       _dispatch10582_))
                                     (let* ((_g1062010641_
                                             (lambda (_g1062110637_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1062110637_)))
                                            (_g1061910652_
                                             (lambda (_g1062110645_)
                                               ((lambda () _default10583_))))
                                            (_g1061810807_
                                             (lambda (_g1062110656_)
                                               (if (gx#stx-pair? _g1062110656_)
                                                   (let ((_e1062410659_
                                                          (gx#syntax-e
                                                           _g1062110656_)))
                                                     (let ((_hd1062510663_
                                                            (##car _e1062410659_))
                                                           (_tl1062610666_
                                                            (##cdr _e1062410659_)))
                                                       (if (gx#stx-pair/null?
                                                            _hd1062510663_)
                                                           (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd1062510663_)
                             '0)
                       (let ((_g34704_
                              (gx#syntax-split-splice _hd1062510663_ '0)))
                         (begin
                           (let ((_g34705_ (values-count _g34704_)))
                             (if (not (fx= _g34705_ 2))
                                 (error "Context expects 2 values" _g34705_)))
                           (let ((_target1062710669_ (values-ref _g34704_ 0))
                                 (_tl1062910672_ (values-ref _g34704_ 1)))
                             (if (gx#stx-null? _tl1062910672_)
                                 (letrec ((_loop1063010675_
                                           (lambda (_hd1062810679_
                                                    _datum1063410682_)
                                             (if (gx#stx-pair? _hd1062810679_)
                                                 (let ((_e1063110685_
                                                        (gx#syntax-e
                                                         _hd1062810679_)))
                                                   (let ((_lp-hd1063210689_
                                                          (##car _e1063110685_))
                                                         (_lp-tl1063310692_
                                                          (##cdr _e1063110685_)))
                                                     (_loop1063010675_
                                                      _lp-tl1063310692_
                                                      (cons _lp-hd1063210689_
                                                            _datum1063410682_))))
                                                 (let ((_datum1063510695_
                                                        (reverse _datum1063410682_)))
                                                   ((lambda (_L10699_ _L10701_)
                                                      (let* ((_g1072110733_
                                                              (lambda (_g1072210729_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax"
                         _g1072210729_)))
                     (_g1072010803_
                      (lambda (_g1072210737_)
                        (if (gx#stx-pair? _g1072210737_)
                            (let ((_e1072510740_ (gx#syntax-e _g1072210737_)))
                              (let ((_hd1072610744_ (##car _e1072510740_))
                                    (_tl1072710747_ (##cdr _e1072510740_)))
                                ((lambda (_L10750_ _L10752_)
                                   (let* ((_g1076410772_
                                           (lambda (_g1076510768_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1076510768_)))
                                          (_g1076310799_
                                           (lambda (_g1076510776_)
                                             ((lambda (_L10779_)
                                                (let ()
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'if)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'or)
                            (begin
                              '#!void
                              (foldr (lambda (_g1079010793_ _g1079110796_)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '~case-test)
                                                   (cons _g1079010793_
                                                         (cons _L10600_ '())))
                                             _g1079110796_))
                                     '()
                                     _L10701_)))
                      (cons _L10752_ (cons _L10779_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _g1076510776_))))
                                     (_g1076310799_
                                      (_recur10612_ _L10699_ _L10750_))))
                                 _tl1072710747_
                                 _hd1072610744_)))
                            (_g1072110733_ _g1072210737_)))))
                (_g1072010803_ _dispatch10617_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl1062610666_
                                                    _datum1063510695_))))))
                                   (_loop1063010675_ _target1062710669_ '()))
                                 (_g1061910652_ _g1062110656_)))))
                       (_g1061910652_ _g1062110656_))
                   (_g1061910652_ _g1062110656_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1061910652_
                                                    _g1062110656_)))))
                                       (_g1061810807_ _datums10615_)))))
                               _g1058610597_))))
                      (_g1058410811_ _e10579_))))
                 (_datum-dispatch-index8590_
                  (lambda (_datums10451_)
                    (let _lp10454_ ((_rest10457_ _datums10451_)
                                    (_ix10459_ '0)
                                    (_r10460_ '()))
                      (let* ((_g1046310484_
                              (lambda (_g1046410480_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1046410480_)))
                             (_g1046210495_
                              (lambda (_g1046410488_) ((lambda () _r10460_))))
                             (_g1046110575_
                              (lambda (_g1046410499_)
                                (if (gx#stx-pair? _g1046410499_)
                                    (let ((_e1046710502_
                                           (gx#syntax-e _g1046410499_)))
                                      (let ((_hd1046810506_
                                             (##car _e1046710502_))
                                            (_tl1046910509_
                                             (##cdr _e1046710502_)))
                                        (if (gx#stx-pair/null? _hd1046810506_)
                                            (if (fx>= (gx#stx-length
                                                       _hd1046810506_)
                                                      '0)
                                                (let ((_g34706_
                                                       (gx#syntax-split-splice
                                                        _hd1046810506_
                                                        '0)))
                                                  (begin
                                                    (let ((_g34707_
                                                           (values-count
                                                            _g34706_)))
                                                      (if (not (fx= _g34707_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g34707_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1047010512_
                                                           (values-ref
                                                            _g34706_
                                                            0))
                                                          (_tl1047210515_
                                                           (values-ref
                                                            _g34706_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl1047210515_)
                                                          (letrec ((_loop1047310518_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1047110522_ _datum1047710525_)
                              (if (gx#stx-pair? _hd1047110522_)
                                  (let ((_e1047410528_
                                         (gx#syntax-e _hd1047110522_)))
                                    (let ((_lp-hd1047510532_
                                           (##car _e1047410528_))
                                          (_lp-tl1047610535_
                                           (##cdr _e1047410528_)))
                                      (_loop1047310518_
                                       _lp-tl1047610535_
                                       (cons _lp-hd1047510532_
                                             _datum1047710525_))))
                                  (let ((_datum1047810538_
                                         (reverse _datum1047710525_)))
                                    ((lambda (_L10542_ _L10544_)
                                       (_lp10454_
                                        _L10542_
                                        (fx1+ _ix10459_)
                                        (foldl (lambda (_x10563_ _r10565_)
                                                 (cons (cons _x10563_
                                                             _ix10459_)
                                                       _r10565_))
                                               _r10460_
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g1056610569_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1056710572_)
                  (cons _g1056610569_ _g1056710572_))
                '()
                _L10544_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _tl1046910509_
                                     _datum1047810538_))))))
                    (_loop1047310518_ _target1047010512_ '()))
                  (_g1046210495_ _g1046410499_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1046210495_ _g1046410499_))
                                            (_g1046210495_ _g1046410499_))))
                                    (_g1046210495_ _g1046410499_)))))
                        (_g1046110575_ _rest10457_)))))
                 (_duplicate-indexes?8591_
                  (lambda (_xs10432_)
                    (let ((_ht10435_ (make-hash-table-eq)))
                      (let _lp10438_ ((_rest10441_ _xs10432_))
                        (if (pair? _rest10441_)
                            (let* ((_ix10444_ (car _rest10441_))
                                   (_$e10447_ (hash-get _ht10435_ _ix10444_)))
                              (if _$e10447_
                                  _$e10447_
                                  (begin
                                    (hash-put! _ht10435_ _ix10444_ '#t)
                                    (_lp10438_ (cdr _rest10441_)))))
                            '#f)))))
                 (_generate-hash-dispatch-table8592_
                  (lambda (_indexes10401_ _hash-e10403_)
                    (let _lp10405_ ((_len10408_
                                     (* '2 (length _indexes10401_))))
                      (let* ((_hs10414_
                              (map (lambda (_x10411_)
                                     (_hash-e10403_ (car _x10411_)))
                                   _indexes10401_))
                             (_xs10420_
                              (map (lambda (_h10417_)
                                     (fxmodulo _h10417_ _len10408_))
                                   _hs10414_)))
                        (if (_duplicate-indexes?8591_ _xs10420_)
                            (if (< _len10408_ '131072)
                                (_lp10405_ (quotient (fx* _len10408_ '3) '2))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Cannot create perfect dispatch table"
                                 _stx8578_
                                 _indexes10401_))
                            (let ((_tab10425_ (make-vector _len10408_ '#f)))
                              (begin
                                (for-each
                                 (lambda (_entry10428_ _x10430_)
                                   (vector-set!
                                    _tab10425_
                                    _x10430_
                                    _entry10428_))
                                 _indexes10401_
                                 _xs10420_)
                                _tab10425_)))))))
                 (_generate-symbolic-dispatch8593_
                  (lambda (_e10179_
                           _datums10181_
                           _dispatch10182_
                           _default10183_)
                    (let* ((_indexes10185_
                            (_datum-dispatch-index8590_ _datums10181_))
                           (_tab10188_
                            (_generate-hash-dispatch-table8592_
                             _indexes10185_
                             symbol-hash)))
                      (let* ((_g1019310237_
                              (lambda (_g1019410233_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1019410233_)))
                             (_g1019210397_
                              (lambda (_g1019410241_)
                                (if (gx#stx-pair? _g1019410241_)
                                    (let ((_e1020210244_
                                           (gx#syntax-e _g1019410241_)))
                                      (let ((_hd1020310248_
                                             (##car _e1020210244_))
                                            (_tl1020410251_
                                             (##cdr _e1020210244_)))
                                        (if (gx#stx-pair? _tl1020410251_)
                                            (let ((_e1020510254_
                                                   (gx#syntax-e
                                                    _tl1020410251_)))
                                              (let ((_hd1020610258_
                                                     (##car _e1020510254_))
                                                    (_tl1020710261_
                                                     (##cdr _e1020510254_)))
                                                (if (gx#stx-pair?
                                                     _tl1020710261_)
                                                    (let ((_e1020810264_
                                                           (gx#syntax-e
                                                            _tl1020710261_)))
                                                      (let ((_hd1020910268_
                                                             (##car _e1020810264_))
                                                            (_tl1021010271_
                                                             (##cdr _e1020810264_)))
                                                        (if (gx#stx-pair?
                                                             _tl1021010271_)
                                                            (let ((_e1021110274_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl1021010271_)))
                      (let ((_hd1021210278_ (##car _e1021110274_))
                            (_tl1021310281_ (##cdr _e1021110274_)))
                        (if (gx#stx-pair/null? _hd1021210278_)
                            (if (fx>= (gx#stx-length _hd1021210278_) '0)
                                (let ((_g34708_
                                       (gx#syntax-split-splice
                                        _hd1021210278_
                                        '0)))
                                  (begin
                                    (let ((_g34709_ (values-count _g34708_)))
                                      (if (not (fx= _g34709_ 2))
                                          (error "Context expects 2 values"
                                                 _g34709_)))
                                    (let ((_target1021410284_
                                           (values-ref _g34708_ 0))
                                          (_tl1021610287_
                                           (values-ref _g34708_ 1)))
                                      (if (gx#stx-null? _tl1021610287_)
                                          (letrec ((_loop1021710290_
                                                    (lambda (_hd1021510294_
                                                             _dispatch1022110297_)
                                                      (if (gx#stx-pair?
                                                           _hd1021510294_)
                                                          (let ((_e1021810300_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _hd1021510294_)))
                    (let ((_lp-hd1021910304_ (##car _e1021810300_))
                          (_lp-tl1022010307_ (##cdr _e1021810300_)))
                      (_loop1021710290_
                       _lp-tl1022010307_
                       (cons _lp-hd1021910304_ _dispatch1022110297_))))
                  (let ((_dispatch1022210310_ (reverse _dispatch1022110297_)))
                    (if (gx#stx-pair? _tl1021310281_)
                        (let ((_e1022310314_ (gx#syntax-e _tl1021310281_)))
                          (let ((_hd1022410318_ (##car _e1022310314_))
                                (_tl1022510321_ (##cdr _e1022310314_)))
                            (if (gx#stx-pair? _tl1022510321_)
                                (let ((_e1022610324_
                                       (gx#syntax-e _tl1022510321_)))
                                  (let ((_hd1022710328_ (##car _e1022610324_))
                                        (_tl1022810331_ (##cdr _e1022610324_)))
                                    (if (gx#stx-pair? _tl1022810331_)
                                        (let ((_e1022910334_
                                               (gx#syntax-e _tl1022810331_)))
                                          (let ((_hd1023010338_
                                                 (##car _e1022910334_))
                                                (_tl1023110341_
                                                 (##cdr _e1022910334_)))
                                            (if (gx#stx-null? _tl1023110341_)
                                                ((lambda (_L10344_
                                                          _L10346_
                                                          _L10347_
                                                          _L10348_
                                                          _L10349_
                                                          _L10350_
                                                          _L10351_)
                                                   (let ()
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'let)
                                                           (cons (cons (cons _L10350_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (cons (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons _L10347_ '())))
                                           '()))
                               (cons (cons _L10349_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'quote)
                                                       (cons _L10346_ '()))
                                                 '()))
                                     '()))
                         (cons (cons (gx#datum->syntax '#f 'if)
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'symbol?)
                                                 (cons _L10351_ '()))
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
                                             (cons _L10351_ '()))
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'ix)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##fxmodulo)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'h)
                                                         (cons _L10344_ '())))
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'q)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '##vector-ref)
                                                         (cons _L10349_
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
                             (cons _L10351_ '())))
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
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g1038810391_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1038910394_)
                        (cons _g1038810391_ _g1038910394_))
                      '()
                      _L10348_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       (cons (cons _L10350_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons _L10350_ '()) '()))))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L10350_ '())
                                                       '()))))
                               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1023010338_
                                                 _hd1022710328_
                                                 _hd1022410318_
                                                 _dispatch1022210310_
                                                 _hd1020910268_
                                                 _hd1020610258_
                                                 _hd1020310248_)
                                                (_g1019310237_
                                                 _g1019410241_))))
                                        (_g1019310237_ _g1019410241_))))
                                (_g1019310237_ _g1019410241_))))
                        (_g1019310237_ _g1019410241_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1021710290_
                                             _target1021410284_
                                             '()))
                                          (_g1019310237_ _g1019410241_)))))
                                (_g1019310237_ _g1019410241_))
                            (_g1019310237_ _g1019410241_))))
                    (_g1019310237_ _g1019410241_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1019310237_
                                                     _g1019410241_))))
                                            (_g1019310237_ _g1019410241_))))
                                    (_g1019310237_ _g1019410241_)))))
                        (_g1019210397_
                         (list _e10179_
                               (gx#genident 'default)
                               (gx#genident 'table)
                               _dispatch10182_
                               _default10183_
                               _tab10188_
                               (vector-length _tab10188_)))))))
                 (_max-char8594_
                  (lambda (_datums10168_)
                    (foldl (lambda (_lst10171_ _r10173_)
                             (foldl (lambda (_char10175_ _r10177_)
                                      (max (char->integer _char10175_)
                                           _r10177_))
                                    _r10173_
                                    _lst10171_))
                           '0
                           _datums10168_)))
                 (_generate-char-dispatch-table8595_
                  (lambda (_indexes10147_)
                    (let* ((_ixs10153_
                            (map (lambda (_x10150_)
                                   (char->integer (car _x10150_)))
                                 _indexes10147_))
                           (_len10156_ (fx1+ (foldl max '0 _ixs10153_)))
                           (_vec10159_ (make-vector _len10156_ '#f)))
                      (begin
                        (for-each
                         (lambda (_entry10164_ _x10166_)
                           (vector-set!
                            _vec10159_
                            _x10166_
                            (cdr _entry10164_)))
                         _indexes10147_
                         _ixs10153_)
                        _vec10159_))))
                 (_simple-char-range?8596_
                  (lambda (_tab10123_)
                    (let ((_end10126_ (vector-length _tab10123_)))
                      (let _lp10129_ ((_i10132_ '0))
                        (let ((_ix10135_ (vector-ref _tab10123_ _i10132_)))
                          (if _ix10135_
                              (let _lp210138_ ((_i10141_ (fx1+ _i10132_)))
                                (if (fx< _i10141_ _end10126_)
                                    (let ((_ix*10144_
                                           (vector-ref _tab10123_ _i10141_)))
                                      (if (eq? _ix10135_ _ix*10144_)
                                          (_lp210138_ (fx1+ _i10141_))
                                          '#f))
                                    '#t))
                              (_lp10129_ (fx1+ _i10132_))))))))
                 (_char-range-start8597_
                  (lambda (_tab10114_)
                    (let _lp10117_ ((_i10120_ '0))
                      (if (vector-ref _tab10114_ _i10120_)
                          _i10120_
                          (_lp10117_ (fx1+ _i10120_))))))
                 (_generate-char-dispatch8598_
                  (lambda (_e9737_ _datums9739_ _dispatch9740_ _default9741_)
                    (if (< (_max-char8594_ _datums9739_) '128)
                        (let* ((_indexes9743_
                                (_datum-dispatch-index8590_ _datums9739_))
                               (_tab9746_
                                (_generate-char-dispatch-table8595_
                                 _indexes9743_)))
                          (if (_simple-char-range?8596_ _tab9746_)
                              (let ((_start9751_
                                     (_char-range-start8597_ _tab9746_))
                                    (_end9753_ (vector-length _tab9746_)))
                                (let* ((_g97559789_
                                        (lambda (_g97569785_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g97569785_)))
                                       (_g97549906_
                                        (lambda (_g97569793_)
                                          (if (gx#stx-pair? _g97569793_)
                                              (let ((_e97639796_
                                                     (gx#syntax-e
                                                      _g97569793_)))
                                                (let ((_hd97649800_
                                                       (##car _e97639796_))
                                                      (_tl97659803_
                                                       (##cdr _e97639796_)))
                                                  (if (gx#stx-pair?
                                                       _tl97659803_)
                                                      (let ((_e97669806_
                                                             (gx#syntax-e
                                                              _tl97659803_)))
                                                        (let ((_hd97679810_
                                                               (##car _e97669806_))
                                                              (_tl97689813_
                                                               (##cdr _e97669806_)))
                                                          (if (gx#stx-pair?
                                                               _tl97689813_)
                                                              (let ((_e97699816_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl97689813_)))
                        (let ((_hd97709820_ (##car _e97699816_))
                              (_tl97719823_ (##cdr _e97699816_)))
                          (if (gx#stx-pair? _hd97709820_)
                              (let ((_e97729826_ (gx#syntax-e _hd97709820_)))
                                (let ((_hd97739830_ (##car _e97729826_))
                                      (_tl97749833_ (##cdr _e97729826_)))
                                  (if (gx#stx-null? _tl97749833_)
                                      (if (gx#stx-pair? _tl97719823_)
                                          (let ((_e97759836_
                                                 (gx#syntax-e _tl97719823_)))
                                            (let ((_hd97769840_
                                                   (##car _e97759836_))
                                                  (_tl97779843_
                                                   (##cdr _e97759836_)))
                                              (if (gx#stx-pair? _tl97779843_)
                                                  (let ((_e97789846_
                                                         (gx#syntax-e
                                                          _tl97779843_)))
                                                    (let ((_hd97799850_
                                                           (##car _e97789846_))
                                                          (_tl97809853_
                                                           (##cdr _e97789846_)))
                                                      (if (gx#stx-pair?
                                                           _tl97809853_)
                                                          (let ((_e97819856_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl97809853_)))
                    (let ((_hd97829860_ (##car _e97819856_))
                          (_tl97839863_ (##cdr _e97819856_)))
                      (if (gx#stx-null? _tl97839863_)
                          ((lambda (_L9866_
                                    _L9868_
                                    _L9869_
                                    _L9870_
                                    _L9871_
                                    _L9872_)
                             (let ()
                               (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons _L9871_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _L9869_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'if)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'char?)
                           (cons _L9872_ '()))
                     (cons (cons (gx#datum->syntax '#f 'let)
                                 (cons (cons (gx#datum->syntax '#f 'ix)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '##char->integer)
                                                         (cons _L9872_ '()))
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
                                         (cons _L9868_ '())))
                             (cons (cons (gx#datum->syntax '#f '##fx<)
                                         (cons (gx#datum->syntax '#f 'ix)
                                               (cons _L9866_ '())))
                                   '())))
                 (cons _L9870_ (cons (cons _L9871_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))
                           (cons (cons _L9871_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                           _hd97829860_
                           _hd97799850_
                           _hd97769840_
                           _hd97739830_
                           _hd97679810_
                           _hd97649800_)
                          (_g97559789_ _g97569793_))))
                  (_g97559789_ _g97569793_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g97559789_ _g97569793_))))
                                          (_g97559789_ _g97569793_))
                                      (_g97559789_ _g97569793_))))
                              (_g97559789_ _g97569793_))))
                      (_g97559789_ _g97569793_))))
              (_g97559789_ _g97569793_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g97559789_ _g97569793_)))))
                                  (_g97549906_
                                   (list _e9737_
                                         (gx#genident 'default)
                                         _dispatch9740_
                                         _default9741_
                                         _start9751_
                                         _end9753_))))
                              (let* ((_g99109954_
                                      (lambda (_g99119950_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g99119950_)))
                                     (_g990910110_
                                      (lambda (_g99119958_)
                                        (if (gx#stx-pair? _g99119958_)
                                            (let ((_e99199961_
                                                   (gx#syntax-e _g99119958_)))
                                              (let ((_hd99209965_
                                                     (##car _e99199961_))
                                                    (_tl99219968_
                                                     (##cdr _e99199961_)))
                                                (if (gx#stx-pair? _tl99219968_)
                                                    (let ((_e99229971_
                                                           (gx#syntax-e
                                                            _tl99219968_)))
                                                      (let ((_hd99239975_
                                                             (##car _e99229971_))
                                                            (_tl99249978_
                                                             (##cdr _e99229971_)))
                                                        (if (gx#stx-pair?
                                                             _tl99249978_)
                                                            (let ((_e99259981_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl99249978_)))
                      (let ((_hd99269985_ (##car _e99259981_))
                            (_tl99279988_ (##cdr _e99259981_)))
                        (if (gx#stx-pair? _tl99279988_)
                            (let ((_e99289991_ (gx#syntax-e _tl99279988_)))
                              (let ((_hd99299995_ (##car _e99289991_))
                                    (_tl99309998_ (##cdr _e99289991_)))
                                (if (gx#stx-pair/null? _hd99299995_)
                                    (if (fx>= (gx#stx-length _hd99299995_) '0)
                                        (let ((_g34710_
                                               (gx#syntax-split-splice
                                                _hd99299995_
                                                '0)))
                                          (begin
                                            (let ((_g34711_
                                                   (values-count _g34710_)))
                                              (if (not (fx= _g34711_ 2))
                                                  (error "Context expects 2 values"
                                                         _g34711_)))
                                            (let ((_target993110001_
                                                   (values-ref _g34710_ 0))
                                                  (_tl993310004_
                                                   (values-ref _g34710_ 1)))
                                              (if (gx#stx-null? _tl993310004_)
                                                  (letrec ((_loop993410007_
                                                            (lambda (_hd993210011_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _dispatch993810014_)
                      (if (gx#stx-pair? _hd993210011_)
                          (let ((_e993510017_ (gx#syntax-e _hd993210011_)))
                            (let ((_lp-hd993610021_ (##car _e993510017_))
                                  (_lp-tl993710024_ (##cdr _e993510017_)))
                              (_loop993410007_
                               _lp-tl993710024_
                               (cons _lp-hd993610021_ _dispatch993810014_))))
                          (let ((_dispatch993910027_
                                 (reverse _dispatch993810014_)))
                            (if (gx#stx-pair? _tl99309998_)
                                (let ((_e994010031_
                                       (gx#syntax-e _tl99309998_)))
                                  (let ((_hd994110035_ (##car _e994010031_))
                                        (_tl994210038_ (##cdr _e994010031_)))
                                    (if (gx#stx-pair? _tl994210038_)
                                        (let ((_e994310041_
                                               (gx#syntax-e _tl994210038_)))
                                          (let ((_hd994410045_
                                                 (##car _e994310041_))
                                                (_tl994510048_
                                                 (##cdr _e994310041_)))
                                            (if (gx#stx-pair? _tl994510048_)
                                                (let ((_e994610051_
                                                       (gx#syntax-e
                                                        _tl994510048_)))
                                                  (let ((_hd994710055_
                                                         (##car _e994610051_))
                                                        (_tl994810058_
                                                         (##cdr _e994610051_)))
                                                    (if (gx#stx-null?
                                                         _tl994810058_)
                                                        ((lambda (_L10061_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L10063_
                          _L10064_
                          _L10065_
                          _L10066_
                          _L10067_
                          _L10068_)
                   (let ()
                     (cons (gx#datum->syntax '#f 'let)
                           (cons (cons (cons _L10067_
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'lambda)
                                                         (cons '()
                                                               (cons _L10064_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                       (cons (cons _L10066_
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'quote)
                                                               (cons _L10063_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'if)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'char?)
                                                         (cons _L10068_ '()))
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
                                               (cons _L10068_ '()))
                                         '()))
                             (cons (cons (gx#datum->syntax '#f 'if)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fx<)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'ix)
                                                           (cons _L10061_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'let)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'x)
                               (cons (cons (gx#datum->syntax '#f '##vector-ref)
                                           (cons _L10066_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'ix)
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
                                                             (begin
                                                               '#!void
                                                               (foldr (lambda (_g1010110104_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1010210107_)
                                (cons _g1010110104_ _g1010210107_))
                              '()
                              _L10065_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L10067_ '())
                                                       '()))))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons _L10067_ '())
                                                           '()))))
                                   '())))
                 (cons (cons _L10067_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))))
                 _hd994710055_
                 _hd994410045_
                 _hd994110035_
                 _dispatch993910027_
                 _hd99269985_
                 _hd99239975_
                 _hd99209965_)
                (_g99109954_ _g99119958_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g99109954_ _g99119958_))))
                                        (_g99109954_ _g99119958_))))
                                (_g99109954_ _g99119958_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop993410007_
                                                     _target993110001_
                                                     '()))
                                                  (_g99109954_ _g99119958_)))))
                                        (_g99109954_ _g99119958_))
                                    (_g99109954_ _g99119958_))))
                            (_g99109954_ _g99119958_))))
                    (_g99109954_ _g99119958_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g99109954_
                                                     _g99119958_))))
                                            (_g99109954_ _g99119958_)))))
                                (_g990910110_
                                 (list _e9737_
                                       (gx#genident 'default)
                                       (gx#genident 'table)
                                       _dispatch9740_
                                       _default9741_
                                       _tab9746_
                                       (vector-length _tab9746_))))))
                        (_generate-char-dispatch/hash8599_
                         _e9737_
                         _datums9739_
                         _dispatch9740_
                         _default9741_))))
                 (_generate-char-dispatch/hash8599_
                  (lambda (_e9515_ _datums9517_ _dispatch9518_ _default9519_)
                    (let* ((_indexes9521_
                            (_datum-dispatch-index8590_ _datums9517_))
                           (_tab9524_
                            (_generate-hash-dispatch-table8592_
                             _indexes9521_
                             char->integer)))
                      (let* ((_g95299573_
                              (lambda (_g95309569_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g95309569_)))
                             (_g95289733_
                              (lambda (_g95309577_)
                                (if (gx#stx-pair? _g95309577_)
                                    (let ((_e95389580_
                                           (gx#syntax-e _g95309577_)))
                                      (let ((_hd95399584_ (##car _e95389580_))
                                            (_tl95409587_ (##cdr _e95389580_)))
                                        (if (gx#stx-pair? _tl95409587_)
                                            (let ((_e95419590_
                                                   (gx#syntax-e _tl95409587_)))
                                              (let ((_hd95429594_
                                                     (##car _e95419590_))
                                                    (_tl95439597_
                                                     (##cdr _e95419590_)))
                                                (if (gx#stx-pair? _tl95439597_)
                                                    (let ((_e95449600_
                                                           (gx#syntax-e
                                                            _tl95439597_)))
                                                      (let ((_hd95459604_
                                                             (##car _e95449600_))
                                                            (_tl95469607_
                                                             (##cdr _e95449600_)))
                                                        (if (gx#stx-pair?
                                                             _tl95469607_)
                                                            (let ((_e95479610_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl95469607_)))
                      (let ((_hd95489614_ (##car _e95479610_))
                            (_tl95499617_ (##cdr _e95479610_)))
                        (if (gx#stx-pair/null? _hd95489614_)
                            (if (fx>= (gx#stx-length _hd95489614_) '0)
                                (let ((_g34712_
                                       (gx#syntax-split-splice
                                        _hd95489614_
                                        '0)))
                                  (begin
                                    (let ((_g34713_ (values-count _g34712_)))
                                      (if (not (fx= _g34713_ 2))
                                          (error "Context expects 2 values"
                                                 _g34713_)))
                                    (let ((_target95509620_
                                           (values-ref _g34712_ 0))
                                          (_tl95529623_
                                           (values-ref _g34712_ 1)))
                                      (if (gx#stx-null? _tl95529623_)
                                          (letrec ((_loop95539626_
                                                    (lambda (_hd95519630_
                                                             _dispatch95579633_)
                                                      (if (gx#stx-pair?
                                                           _hd95519630_)
                                                          (let ((_e95549636_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _hd95519630_)))
                    (let ((_lp-hd95559640_ (##car _e95549636_))
                          (_lp-tl95569643_ (##cdr _e95549636_)))
                      (_loop95539626_
                       _lp-tl95569643_
                       (cons _lp-hd95559640_ _dispatch95579633_))))
                  (let ((_dispatch95589646_ (reverse _dispatch95579633_)))
                    (if (gx#stx-pair? _tl95499617_)
                        (let ((_e95599650_ (gx#syntax-e _tl95499617_)))
                          (let ((_hd95609654_ (##car _e95599650_))
                                (_tl95619657_ (##cdr _e95599650_)))
                            (if (gx#stx-pair? _tl95619657_)
                                (let ((_e95629660_ (gx#syntax-e _tl95619657_)))
                                  (let ((_hd95639664_ (##car _e95629660_))
                                        (_tl95649667_ (##cdr _e95629660_)))
                                    (if (gx#stx-pair? _tl95649667_)
                                        (let ((_e95659670_
                                               (gx#syntax-e _tl95649667_)))
                                          (let ((_hd95669674_
                                                 (##car _e95659670_))
                                                (_tl95679677_
                                                 (##cdr _e95659670_)))
                                            (if (gx#stx-null? _tl95679677_)
                                                ((lambda (_L9680_
                                                          _L9682_
                                                          _L9683_
                                                          _L9684_
                                                          _L9685_
                                                          _L9686_
                                                          _L9687_)
                                                   (let ()
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'let)
                                                           (cons (cons (cons _L9686_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (cons (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '() (cons _L9683_ '())))
                                           '()))
                               (cons (cons _L9685_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'quote)
                                                       (cons _L9682_ '()))
                                                 '()))
                                     '()))
                         (cons (cons (gx#datum->syntax '#f 'if)
                                     (cons (cons (gx#datum->syntax '#f 'char?)
                                                 (cons _L9687_ '()))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let*)
                                                       (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'h)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              '##char->integer)
                                             (cons _L9687_ '()))
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'ix)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##fxmodulo)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'h)
                                                         (cons _L9680_ '())))
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'q)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '##vector-ref)
                                                         (cons _L9685_
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
                             (cons _L9687_ '())))
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
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g97249727_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g97259730_)
                        (cons _g97249727_ _g97259730_))
                      '()
                      _L9684_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       (cons (cons _L9686_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons _L9686_ '()) '()))))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L9686_ '())
                                                       '()))))
                               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd95669674_
                                                 _hd95639664_
                                                 _hd95609654_
                                                 _dispatch95589646_
                                                 _hd95459604_
                                                 _hd95429594_
                                                 _hd95399584_)
                                                (_g95299573_ _g95309577_))))
                                        (_g95299573_ _g95309577_))))
                                (_g95299573_ _g95309577_))))
                        (_g95299573_ _g95309577_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop95539626_
                                             _target95509620_
                                             '()))
                                          (_g95299573_ _g95309577_)))))
                                (_g95299573_ _g95309577_))
                            (_g95299573_ _g95309577_))))
                    (_g95299573_ _g95309577_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g95299573_
                                                     _g95309577_))))
                                            (_g95299573_ _g95309577_))))
                                    (_g95299573_ _g95309577_)))))
                        (_g95289733_
                         (list _e9515_
                               (gx#genident 'default)
                               (gx#genident 'table)
                               _dispatch9518_
                               _default9519_
                               _tab9524_
                               (vector-length _tab9524_)))))))
                 (_min-fixnum8600_
                  (lambda (_datums9508_)
                    (foldl (lambda (_lst9511_ _r9513_)
                             (foldl min _r9513_ _lst9511_))
                           ##max-fixnum
                           _datums9508_)))
                 (_max-fixnum8601_
                  (lambda (_datums9501_)
                    (foldl (lambda (_lst9504_ _r9506_)
                             (foldl max _r9506_ _lst9504_))
                           ##min-fixnum
                           _datums9501_)))
                 (_generate-fixnum-dispatch-table8602_
                  (lambda (_indexes9483_)
                    (let* ((_ixs9486_ (map car _indexes9483_))
                           (_len9489_ (fx1+ (foldl max '0 _ixs9486_)))
                           (_vec9492_ (make-vector _len9489_ '#f)))
                      (begin
                        (for-each
                         (lambda (_entry9497_ _x9499_)
                           (vector-set! _vec9492_ _x9499_ (cdr _entry9497_)))
                         _indexes9483_
                         _ixs9486_)
                        _vec9492_))))
                 (_generate-fixnum-dispatch8603_
                  (lambda (_e9217_ _datums9219_ _dispatch9220_ _default9221_)
                    (if (if (>= (_min-fixnum8600_ _datums9219_) '0)
                            (< (_max-fixnum8601_ _datums9219_) '1024)
                            '#f)
                        (let* ((_indexes9223_
                                (_datum-dispatch-index8590_ _datums9219_))
                               (_tab9226_
                                (_generate-fixnum-dispatch-table8602_
                                 _indexes9223_))
                               (_dense?9229_
                                (andmap values (vector->list _tab9226_))))
                          (let* ((_g92349278_
                                  (lambda (_g92359274_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g92359274_)))
                                 (_g92339479_
                                  (lambda (_g92359282_)
                                    (if (gx#stx-pair? _g92359282_)
                                        (let ((_e92439285_
                                               (gx#syntax-e _g92359282_)))
                                          (let ((_hd92449289_
                                                 (##car _e92439285_))
                                                (_tl92459292_
                                                 (##cdr _e92439285_)))
                                            (if (gx#stx-pair? _tl92459292_)
                                                (let ((_e92469295_
                                                       (gx#syntax-e
                                                        _tl92459292_)))
                                                  (let ((_hd92479299_
                                                         (##car _e92469295_))
                                                        (_tl92489302_
                                                         (##cdr _e92469295_)))
                                                    (if (gx#stx-pair?
                                                         _tl92489302_)
                                                        (let ((_e92499305_
                                                               (gx#syntax-e
                                                                _tl92489302_)))
                                                          (let ((_hd92509309_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e92499305_))
                        (_tl92519312_ (##cdr _e92499305_)))
                    (if (gx#stx-pair? _tl92519312_)
                        (let ((_e92529315_ (gx#syntax-e _tl92519312_)))
                          (let ((_hd92539319_ (##car _e92529315_))
                                (_tl92549322_ (##cdr _e92529315_)))
                            (if (gx#stx-pair/null? _hd92539319_)
                                (if (fx>= (gx#stx-length _hd92539319_) '0)
                                    (let ((_g34714_
                                           (gx#syntax-split-splice
                                            _hd92539319_
                                            '0)))
                                      (begin
                                        (let ((_g34715_
                                               (values-count _g34714_)))
                                          (if (not (fx= _g34715_ 2))
                                              (error "Context expects 2 values"
                                                     _g34715_)))
                                        (let ((_target92559325_
                                               (values-ref _g34714_ 0))
                                              (_tl92579328_
                                               (values-ref _g34714_ 1)))
                                          (if (gx#stx-null? _tl92579328_)
                                              (letrec ((_loop92589331_
                                                        (lambda (_hd92569335_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _dispatch92629338_)
                  (if (gx#stx-pair? _hd92569335_)
                      (let ((_e92599341_ (gx#syntax-e _hd92569335_)))
                        (let ((_lp-hd92609345_ (##car _e92599341_))
                              (_lp-tl92619348_ (##cdr _e92599341_)))
                          (_loop92589331_
                           _lp-tl92619348_
                           (cons _lp-hd92609345_ _dispatch92629338_))))
                      (let ((_dispatch92639351_ (reverse _dispatch92629338_)))
                        (if (gx#stx-pair? _tl92549322_)
                            (let ((_e92649355_ (gx#syntax-e _tl92549322_)))
                              (let ((_hd92659359_ (##car _e92649355_))
                                    (_tl92669362_ (##cdr _e92649355_)))
                                (if (gx#stx-pair? _tl92669362_)
                                    (let ((_e92679365_
                                           (gx#syntax-e _tl92669362_)))
                                      (let ((_hd92689369_ (##car _e92679365_))
                                            (_tl92699372_ (##cdr _e92679365_)))
                                        (if (gx#stx-pair? _tl92699372_)
                                            (let ((_e92709375_
                                                   (gx#syntax-e _tl92699372_)))
                                              (let ((_hd92719379_
                                                     (##car _e92709375_))
                                                    (_tl92729382_
                                                     (##cdr _e92709375_)))
                                                (if (gx#stx-null? _tl92729382_)
                                                    ((lambda (_L9385_
                                                              _L9387_
                                                              _L9388_
                                                              _L9389_
                                                              _L9390_
                                                              _L9391_
                                                              _L9392_)
                                                       (let ()
                                                         (let* ((_g94319439_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g94329435_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g94329435_)))
                        (_g94309459_
                         (lambda (_g94329443_)
                           ((lambda (_L9446_)
                              (let ()
                                (cons (gx#datum->syntax '#f 'let)
                                      (cons (cons (cons _L9391_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'lambda)
                            (cons '() (cons _L9388_ '())))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons _L9390_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _L9387_ '()))
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'if)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'fixnum?)
                            (cons _L9392_ '()))
                      (cons (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons (gx#datum->syntax '#f 'and)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '##fx>=)
                                                          (cons _L9392_
                                                                (cons '0 '())))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '##fx<)
                        (cons _L9392_ (cons _L9385_ '())))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons (cons (gx#datum->syntax '#f 'let)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'x)
                        (cons (cons (gx#datum->syntax '#f '##vector-ref)
                                    (cons _L9390_ (cons _L9392_ '())))
                              '()))
                  (cons _L9446_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons _L9391_ '()) '()))))
                            (cons (cons _L9391_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                            _g94329443_))))
                   (_g94309459_
                    (if _dense?9229_
                        (cons (gx#datum->syntax '#f '~case-dispatch)
                              (cons (gx#datum->syntax '#f 'x)
                                    (begin
                                      '#!void
                                      (foldr (lambda (_g94629465_ _g94639468_)
                                               (cons _g94629465_ _g94639468_))
                                             '()
                                             _L9389_))))
                        (cons (gx#datum->syntax '#f 'if)
                              (cons (gx#datum->syntax '#f 'x)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 '~case-dispatch)
                                                (cons (gx#datum->syntax '#f 'x)
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g94709473_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g94719476_)
                         (cons _g94709473_ _g94719476_))
                       '()
                       _L9389_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons _L9391_ '()) '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd92719379_
                                                     _hd92689369_
                                                     _hd92659359_
                                                     _dispatch92639351_
                                                     _hd92509309_
                                                     _hd92479299_
                                                     _hd92449289_)
                                                    (_g92349278_
                                                     _g92359282_))))
                                            (_g92349278_ _g92359282_))))
                                    (_g92349278_ _g92359282_))))
                            (_g92349278_ _g92359282_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop92589331_
                                                 _target92559325_
                                                 '()))
                                              (_g92349278_ _g92359282_)))))
                                    (_g92349278_ _g92359282_))
                                (_g92349278_ _g92359282_))))
                        (_g92349278_ _g92359282_))))
                (_g92349278_ _g92359282_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g92349278_ _g92359282_))))
                                        (_g92349278_ _g92359282_)))))
                            (_g92339479_
                             (list _e9217_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _dispatch9220_
                                   _default9221_
                                   _tab9226_
                                   (vector-length _tab9226_)))))
                        (_generate-fixnum-dispatch/hash8604_
                         _e9217_
                         _datums9219_
                         _dispatch9220_
                         _default9221_))))
                 (_generate-fixnum-dispatch/hash8604_
                  (lambda (_e8995_ _datums8997_ _dispatch8998_ _default8999_)
                    (let* ((_indexes9001_
                            (_datum-dispatch-index8590_ _datums8997_))
                           (_tab9004_
                            (_generate-hash-dispatch-table8592_
                             _indexes9001_
                             values)))
                      (let* ((_g90099053_
                              (lambda (_g90109049_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g90109049_)))
                             (_g90089213_
                              (lambda (_g90109057_)
                                (if (gx#stx-pair? _g90109057_)
                                    (let ((_e90189060_
                                           (gx#syntax-e _g90109057_)))
                                      (let ((_hd90199064_ (##car _e90189060_))
                                            (_tl90209067_ (##cdr _e90189060_)))
                                        (if (gx#stx-pair? _tl90209067_)
                                            (let ((_e90219070_
                                                   (gx#syntax-e _tl90209067_)))
                                              (let ((_hd90229074_
                                                     (##car _e90219070_))
                                                    (_tl90239077_
                                                     (##cdr _e90219070_)))
                                                (if (gx#stx-pair? _tl90239077_)
                                                    (let ((_e90249080_
                                                           (gx#syntax-e
                                                            _tl90239077_)))
                                                      (let ((_hd90259084_
                                                             (##car _e90249080_))
                                                            (_tl90269087_
                                                             (##cdr _e90249080_)))
                                                        (if (gx#stx-pair?
                                                             _tl90269087_)
                                                            (let ((_e90279090_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl90269087_)))
                      (let ((_hd90289094_ (##car _e90279090_))
                            (_tl90299097_ (##cdr _e90279090_)))
                        (if (gx#stx-pair/null? _hd90289094_)
                            (if (fx>= (gx#stx-length _hd90289094_) '0)
                                (let ((_g34716_
                                       (gx#syntax-split-splice
                                        _hd90289094_
                                        '0)))
                                  (begin
                                    (let ((_g34717_ (values-count _g34716_)))
                                      (if (not (fx= _g34717_ 2))
                                          (error "Context expects 2 values"
                                                 _g34717_)))
                                    (let ((_target90309100_
                                           (values-ref _g34716_ 0))
                                          (_tl90329103_
                                           (values-ref _g34716_ 1)))
                                      (if (gx#stx-null? _tl90329103_)
                                          (letrec ((_loop90339106_
                                                    (lambda (_hd90319110_
                                                             _dispatch90379113_)
                                                      (if (gx#stx-pair?
                                                           _hd90319110_)
                                                          (let ((_e90349116_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _hd90319110_)))
                    (let ((_lp-hd90359120_ (##car _e90349116_))
                          (_lp-tl90369123_ (##cdr _e90349116_)))
                      (_loop90339106_
                       _lp-tl90369123_
                       (cons _lp-hd90359120_ _dispatch90379113_))))
                  (let ((_dispatch90389126_ (reverse _dispatch90379113_)))
                    (if (gx#stx-pair? _tl90299097_)
                        (let ((_e90399130_ (gx#syntax-e _tl90299097_)))
                          (let ((_hd90409134_ (##car _e90399130_))
                                (_tl90419137_ (##cdr _e90399130_)))
                            (if (gx#stx-pair? _tl90419137_)
                                (let ((_e90429140_ (gx#syntax-e _tl90419137_)))
                                  (let ((_hd90439144_ (##car _e90429140_))
                                        (_tl90449147_ (##cdr _e90429140_)))
                                    (if (gx#stx-pair? _tl90449147_)
                                        (let ((_e90459150_
                                               (gx#syntax-e _tl90449147_)))
                                          (let ((_hd90469154_
                                                 (##car _e90459150_))
                                                (_tl90479157_
                                                 (##cdr _e90459150_)))
                                            (if (gx#stx-null? _tl90479157_)
                                                ((lambda (_L9160_
                                                          _L9162_
                                                          _L9163_
                                                          _L9164_
                                                          _L9165_
                                                          _L9166_
                                                          _L9167_)
                                                   (let ()
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'let)
                                                           (cons (cons (cons _L9166_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (cons (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '() (cons _L9163_ '())))
                                           '()))
                               (cons (cons _L9165_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'quote)
                                                       (cons _L9162_ '()))
                                                 '()))
                                     '()))
                         (cons (cons (gx#datum->syntax '#f 'if)
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'fixnum?)
                                                 (cons _L9167_ '()))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let*)
                                                       (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'ix)
                                 (cons (cons (gx#datum->syntax '#f '##fxmodulo)
                                             (cons _L9167_ (cons _L9160_ '())))
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'q)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##vector-ref)
                                                   (cons _L9165_
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
                             (cons _L9167_ '())))
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
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g92049207_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g92059210_)
                        (cons _g92049207_ _g92059210_))
                      '()
                      _L9164_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       (cons (cons _L9166_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons _L9166_ '()) '()))))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L9166_ '())
                                                       '()))))
                               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd90469154_
                                                 _hd90439144_
                                                 _hd90409134_
                                                 _dispatch90389126_
                                                 _hd90259084_
                                                 _hd90229074_
                                                 _hd90199064_)
                                                (_g90099053_ _g90109057_))))
                                        (_g90099053_ _g90109057_))))
                                (_g90099053_ _g90109057_))))
                        (_g90099053_ _g90109057_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop90339106_
                                             _target90309100_
                                             '()))
                                          (_g90099053_ _g90109057_)))))
                                (_g90099053_ _g90109057_))
                            (_g90099053_ _g90109057_))))
                    (_g90099053_ _g90109057_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g90099053_
                                                     _g90109057_))))
                                            (_g90099053_ _g90109057_))))
                                    (_g90099053_ _g90109057_)))))
                        (_g90089213_
                         (list _e8995_
                               (gx#genident 'default)
                               (gx#genident 'table)
                               _dispatch8998_
                               _default8999_
                               _tab9004_
                               (vector-length _tab9004_)))))))
                 (_generate-generic-dispatch8605_
                  (lambda (_e8731_ _datums8733_ _dispatch8734_ _default8735_)
                    (let ((_g34718_
                           (if (_eq-datums?8588_ _datums8733_)
                               (values eq?-hash 'eq?-hash 'eq?)
                               (values equal?-hash 'equal?-hash 'equal?))))
                      (begin
                        (let ((_g34719_ (values-count _g34718_)))
                          (if (not (fx= _g34719_ 3))
                              (error "Context expects 3 values" _g34719_)))
                        (let ((_hash-e8737_ (values-ref _g34718_ 0))
                              (_hashf8739_ (values-ref _g34718_ 1))
                              (_eqf8740_ (values-ref _g34718_ 2)))
                          (let* ((_indexes8742_
                                  (_datum-dispatch-index8590_ _datums8733_))
                                 (_tab8745_
                                  (_generate-hash-dispatch-table8592_
                                   _indexes8742_
                                   _hash-e8737_)))
                            (let* ((_g87508802_
                                    (lambda (_g87518798_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       _g87518798_)))
                                   (_g87498991_
                                    (lambda (_g87518806_)
                                      (if (gx#stx-pair? _g87518806_)
                                          (let ((_e87618809_
                                                 (gx#syntax-e _g87518806_)))
                                            (let ((_hd87628813_
                                                   (##car _e87618809_))
                                                  (_tl87638816_
                                                   (##cdr _e87618809_)))
                                              (if (gx#stx-pair? _tl87638816_)
                                                  (let ((_e87648819_
                                                         (gx#syntax-e
                                                          _tl87638816_)))
                                                    (let ((_hd87658823_
                                                           (##car _e87648819_))
                                                          (_tl87668826_
                                                           (##cdr _e87648819_)))
                                                      (if (gx#stx-pair?
                                                           _tl87668826_)
                                                          (let ((_e87678829_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl87668826_)))
                    (let ((_hd87688833_ (##car _e87678829_))
                          (_tl87698836_ (##cdr _e87678829_)))
                      (if (gx#stx-pair? _tl87698836_)
                          (let ((_e87708839_ (gx#syntax-e _tl87698836_)))
                            (let ((_hd87718843_ (##car _e87708839_))
                                  (_tl87728846_ (##cdr _e87708839_)))
                              (if (gx#stx-pair/null? _hd87718843_)
                                  (if (fx>= (gx#stx-length _hd87718843_) '0)
                                      (let ((_g34720_
                                             (gx#syntax-split-splice
                                              _hd87718843_
                                              '0)))
                                        (begin
                                          (let ((_g34721_
                                                 (values-count _g34720_)))
                                            (if (not (fx= _g34721_ 2))
                                                (error "Context expects 2 values"
                                                       _g34721_)))
                                          (let ((_target87738849_
                                                 (values-ref _g34720_ 0))
                                                (_tl87758852_
                                                 (values-ref _g34720_ 1)))
                                            (if (gx#stx-null? _tl87758852_)
                                                (letrec ((_loop87768855_
                                                          (lambda (_hd87748859_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _dispatch87808862_)
                    (if (gx#stx-pair? _hd87748859_)
                        (let ((_e87778865_ (gx#syntax-e _hd87748859_)))
                          (let ((_lp-hd87788869_ (##car _e87778865_))
                                (_lp-tl87798872_ (##cdr _e87778865_)))
                            (_loop87768855_
                             _lp-tl87798872_
                             (cons _lp-hd87788869_ _dispatch87808862_))))
                        (let ((_dispatch87818875_
                               (reverse _dispatch87808862_)))
                          (if (gx#stx-pair? _tl87728846_)
                              (let ((_e87828879_ (gx#syntax-e _tl87728846_)))
                                (let ((_hd87838883_ (##car _e87828879_))
                                      (_tl87848886_ (##cdr _e87828879_)))
                                  (if (gx#stx-pair? _tl87848886_)
                                      (let ((_e87858889_
                                             (gx#syntax-e _tl87848886_)))
                                        (let ((_hd87868893_
                                               (##car _e87858889_))
                                              (_tl87878896_
                                               (##cdr _e87858889_)))
                                          (if (gx#stx-pair? _tl87878896_)
                                              (let ((_e87888899_
                                                     (gx#syntax-e
                                                      _tl87878896_)))
                                                (let ((_hd87898903_
                                                       (##car _e87888899_))
                                                      (_tl87908906_
                                                       (##cdr _e87888899_)))
                                                  (if (gx#stx-pair?
                                                       _tl87908906_)
                                                      (let ((_e87918909_
                                                             (gx#syntax-e
                                                              _tl87908906_)))
                                                        (let ((_hd87928913_
                                                               (##car _e87918909_))
                                                              (_tl87938916_
                                                               (##cdr _e87918909_)))
                                                          (if (gx#stx-pair?
                                                               _tl87938916_)
                                                              (let ((_e87948919_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl87938916_)))
                        (let ((_hd87958923_ (##car _e87948919_))
                              (_tl87968926_ (##cdr _e87948919_)))
                          (if (gx#stx-null? _tl87968926_)
                              ((lambda (_L8929_
                                        _L8931_
                                        _L8932_
                                        _L8933_
                                        _L8934_
                                        _L8935_
                                        _L8936_
                                        _L8937_
                                        _L8938_)
                                 (let ()
                                   (cons (gx#datum->syntax '#f 'let)
                                         (cons (cons (cons _L8937_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'lambda)
                               (cons '() (cons _L8934_ '())))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons _L8936_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _L8933_ '()))
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
                                     (cons (cons _L8931_ (cons _L8938_ '()))
                                           '()))
                               (cons (cons (gx#datum->syntax '#f 'ix)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '##fxmodulo)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'h)
                                                             (cons _L8932_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     (cons (cons (gx#datum->syntax '#f 'q)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '##vector-ref)
                                                             (cons _L8936_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'ix) '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         (cons (cons (gx#datum->syntax '#f 'if)
                                     (cons (gx#datum->syntax '#f 'q)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'if)
                                                       (cons (cons _L8929_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f '##car)
                                       (cons (gx#datum->syntax '#f 'q) '()))
                                 (cons _L8938_ '())))
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
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'x)
                                                         (begin
                                                           '#!void
                                                           (foldr (lambda (_g89828985_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g89838988_)
                            (cons _g89828985_ _g89838988_))
                          '()
                          _L8935_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))
                           (cons (cons _L8937_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L8937_ '())
                                                       '()))))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                               _hd87958923_
                               _hd87928913_
                               _hd87898903_
                               _hd87868893_
                               _hd87838883_
                               _dispatch87818875_
                               _hd87688833_
                               _hd87658823_
                               _hd87628813_)
                              (_g87508802_ _g87518806_))))
                      (_g87508802_ _g87518806_))))
              (_g87508802_ _g87518806_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g87508802_ _g87518806_))))
                                      (_g87508802_ _g87518806_))))
                              (_g87508802_ _g87518806_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop87768855_
                                                   _target87738849_
                                                   '()))
                                                (_g87508802_ _g87518806_)))))
                                      (_g87508802_ _g87518806_))
                                  (_g87508802_ _g87518806_))))
                          (_g87508802_ _g87518806_))))
                  (_g87508802_ _g87518806_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g87508802_ _g87518806_))))
                                          (_g87508802_ _g87518806_)))))
                              (_g87498991_
                               (list _e8731_
                                     (gx#genident 'default)
                                     (gx#genident 'table)
                                     _dispatch8734_
                                     _default8735_
                                     _tab8745_
                                     (vector-length _tab8745_)
                                     _hashf8739_
                                     _eqf8740_))))))))))
          (let* ((_g86078631_
                  (lambda (_g86088627_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g86088627_)))
                 (_g86068727_
                  (lambda (_g86088635_)
                    (if (gx#stx-pair? _g86088635_)
                        (let ((_e86118638_ (gx#syntax-e _g86088635_)))
                          (let ((_hd86128642_ (##car _e86118638_))
                                (_tl86138645_ (##cdr _e86118638_)))
                            (if (gx#stx-pair? _tl86138645_)
                                (let ((_e86148648_ (gx#syntax-e _tl86138645_)))
                                  (let ((_hd86158652_ (##car _e86148648_))
                                        (_tl86168655_ (##cdr _e86148648_)))
                                    (if (gx#stx-pair/null? _tl86168655_)
                                        (if (fx>= (gx#stx-length _tl86168655_)
                                                  '0)
                                            (let ((_g34722_
                                                   (gx#syntax-split-splice
                                                    _tl86168655_
                                                    '0)))
                                              (begin
                                                (let ((_g34723_
                                                       (values-count
                                                        _g34722_)))
                                                  (if (not (fx= _g34723_ 2))
                                                      (error "Context expects 2 values"
                                                             _g34723_)))
                                                (let ((_target86178658_
                                                       (values-ref _g34722_ 0))
                                                      (_tl86198661_
                                                       (values-ref
                                                        _g34722_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl86198661_)
                                                      (letrec ((_loop86208664_
                                                                (lambda (_hd86188668_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _clause86248671_)
                          (if (gx#stx-pair? _hd86188668_)
                              (let ((_e86218674_ (gx#syntax-e _hd86188668_)))
                                (let ((_lp-hd86228678_ (##car _e86218674_))
                                      (_lp-tl86238681_ (##cdr _e86218674_)))
                                  (_loop86208664_
                                   _lp-tl86238681_
                                   (cons _lp-hd86228678_ _clause86248671_))))
                              (let ((_clause86258684_
                                     (reverse _clause86248671_)))
                                ((lambda (_L8688_ _L8690_)
                                   (let ((_g34724_
                                          (_parse-clauses8581_
                                           _L8690_
                                           (begin
                                             '#!void
                                             (foldr (lambda (_g87088711_
                                                             _g87098714_)
                                                      (cons _g87088711_
                                                            _g87098714_))
                                                    '()
                                                    _L8688_)))))
                                     (begin
                                       (let ((_g34725_
                                              (values-count _g34724_)))
                                         (if (not (fx= _g34725_ 3))
                                             (error "Context expects 3 values"
                                                    _g34725_)))
                                       (let ((_datums8717_
                                              (values-ref _g34724_ 0))
                                             (_dispatch8719_
                                              (values-ref _g34724_ 1))
                                             (_default8720_
                                              (values-ref _g34724_ 2)))
                                         (let ((_datum-count8722_
                                                (_count-datums8584_
                                                 _datums8717_)))
                                           (if (< _datum-count8722_ '6)
                                               (_generate-simple-case8589_
                                                _L8690_
                                                _datums8717_
                                                _dispatch8719_
                                                _default8720_)
                                               (if (_char-datums?8586_
                                                    _datums8717_)
                                                   (_generate-char-dispatch8598_
                                                    _L8690_
                                                    _datums8717_
                                                    _dispatch8719_
                                                    _default8720_)
                                                   (if (_fixnum-datums?8587_
                                                        _datums8717_)
                                                       (_generate-fixnum-dispatch8603_
                                                        _L8690_
                                                        _datums8717_
                                                        _dispatch8719_
                                                        _default8720_)
                                                       (if (< _datum-count8722_
                                                              '12)
                                                           (_generate-simple-case8589_
                                                            _L8690_
                                                            _datums8717_
                                                            _dispatch8719_
                                                            _default8720_)
                                                           (if (_symbolic-datums?8585_
                                                                _datums8717_)
                                                               (_generate-symbolic-dispatch8593_
                                                                _L8690_
                                                                _datums8717_
                                                                _dispatch8719_
                                                                _default8720_)
                                                               (_generate-generic-dispatch8605_
                                                                _L8690_
                                                                _datums8717_
                                                                _dispatch8719_
                                                                _default8720_)))))))))))
                                 _clause86258684_
                                 _hd86158652_))))))
                (_loop86208664_ _target86178658_ '()))
              (_g86078631_ _g86088635_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g86078631_ _g86088635_))
                                        (_g86078631_ _g86088635_))))
                                (_g86078631_ _g86088635_))))
                        (_g86078631_ _g86088635_)))))
            (_g86068727_ _stx8578_)))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#~case-test|
      (lambda (_stx11360_)
        (let* ((_g1136311381_
                (lambda (_g1136411377_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1136411377_)))
               (_g1136211447_
                (lambda (_g1136411385_)
                  (if (gx#stx-pair? _g1136411385_)
                      (let ((_e1136711388_ (gx#syntax-e _g1136411385_)))
                        (let ((_hd1136811392_ (##car _e1136711388_))
                              (_tl1136911395_ (##cdr _e1136711388_)))
                          (if (gx#stx-pair? _tl1136911395_)
                              (let ((_e1137011398_
                                     (gx#syntax-e _tl1136911395_)))
                                (let ((_hd1137111402_ (##car _e1137011398_))
                                      (_tl1137211405_ (##cdr _e1137011398_)))
                                  (if (gx#stx-pair? _tl1137211405_)
                                      (let ((_e1137311408_
                                             (gx#syntax-e _tl1137211405_)))
                                        (let ((_hd1137411412_
                                               (##car _e1137311408_))
                                              (_tl1137511415_
                                               (##cdr _e1137311408_)))
                                          (if (gx#stx-null? _tl1137511415_)
                                              ((lambda (_L11418_ _L11420_)
                                                 (let ((_datum-e11436_
                                                        (gx#stx-e _L11420_)))
                                                   (if (let ((_$e11439_
                                                              (symbol? _datum-e11436_)))
                                                         (if _$e11439_
                                                             _$e11439_
                                                             (let ((_$e11443_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (keyword? _datum-e11436_)))
                       (if _$e11443_ _$e11443_ (immediate? _datum-e11436_)))))
               (cons (gx#datum->syntax '#f 'eq?)
                     (cons (cons (gx#datum->syntax '#f 'quote)
                                 (cons _L11420_ '()))
                           (cons _L11418_ '())))
               (if (number? _datum-e11436_)
                   (cons (gx#datum->syntax '#f 'eqv?)
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _L11420_ '()))
                               (cons _L11418_ '())))
                   (cons (gx#datum->syntax '#f 'equal?)
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _L11420_ '()))
                               (cons _L11418_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd1137411412_
                                               _hd1137111402_)
                                              (_g1136311381_ _g1136411385_))))
                                      (_g1136311381_ _g1136411385_))))
                              (_g1136311381_ _g1136411385_))))
                      (_g1136311381_ _g1136411385_)))))
          (_g1136211447_ _stx11360_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#~case-dispatch|
      (lambda (_$stx11451_)
        (let* ((_g1145511479_
                (lambda (_g1145611475_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1145611475_)))
               (_g1145411564_
                (lambda (_g1145611483_)
                  (if (gx#stx-pair? _g1145611483_)
                      (let ((_e1145911486_ (gx#syntax-e _g1145611483_)))
                        (let ((_hd1146011490_ (##car _e1145911486_))
                              (_tl1146111493_ (##cdr _e1145911486_)))
                          (if (gx#stx-pair? _tl1146111493_)
                              (let ((_e1146211496_
                                     (gx#syntax-e _tl1146111493_)))
                                (let ((_hd1146311500_ (##car _e1146211496_))
                                      (_tl1146411503_ (##cdr _e1146211496_)))
                                  (if (gx#stx-pair/null? _tl1146411503_)
                                      (if (fx>= (gx#stx-length _tl1146411503_)
                                                '0)
                                          (let ((_g34726_
                                                 (gx#syntax-split-splice
                                                  _tl1146411503_
                                                  '0)))
                                            (begin
                                              (let ((_g34727_
                                                     (values-count _g34726_)))
                                                (if (not (fx= _g34727_ 2))
                                                    (error "Context expects 2 values"
                                                           _g34727_)))
                                              (let ((_target1146511506_
                                                     (values-ref _g34726_ 0))
                                                    (_tl1146711509_
                                                     (values-ref _g34726_ 1)))
                                                (if (gx#stx-null?
                                                     _tl1146711509_)
                                                    (letrec ((_loop1146811512_
                                                              (lambda (_hd1146611516_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _K1147211519_)
                        (if (gx#stx-pair? _hd1146611516_)
                            (let ((_e1146911522_ (gx#syntax-e _hd1146611516_)))
                              (let ((_lp-hd1147011526_ (##car _e1146911522_))
                                    (_lp-tl1147111529_ (##cdr _e1146911522_)))
                                (_loop1146811512_
                                 _lp-tl1147111529_
                                 (cons _lp-hd1147011526_ _K1147211519_))))
                            (let ((_K1147311532_ (reverse _K1147211519_)))
                              ((lambda (_L11536_ _L11538_)
                                 (cons (gx#datum->syntax '#f '~case-dispatch*)
                                       (cons '0
                                             (cons _L11538_
                                                   (begin
                                                     '#!void
                                                     (foldr (lambda (_g1155511558_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g1155611561_)
                      (cons _g1155511558_ _g1155611561_))
                    '()
                    _L11536_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _K1147311532_
                               _hd1146311500_))))))
              (_loop1146811512_ _target1146511506_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1145511479_
                                                     _g1145611483_)))))
                                          (_g1145511479_ _g1145611483_))
                                      (_g1145511479_ _g1145611483_))))
                              (_g1145511479_ _g1145611483_))))
                      (_g1145511479_ _g1145611483_)))))
          (_g1145411564_ _$stx11451_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#~case-dispatch*|
      (lambda (_stx11569_)
        (let* ((_g1157611672_
                (lambda (_g1157711668_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1157711668_)))
               (_g1157511771_
                (lambda (_g1157711676_)
                  (if (gx#stx-pair? _g1157711676_)
                      (let ((_e1164911679_ (gx#syntax-e _g1157711676_)))
                        (let ((_hd1165011683_ (##car _e1164911679_))
                              (_tl1165111686_ (##cdr _e1164911679_)))
                          (if (gx#stx-pair? _tl1165111686_)
                              (let ((_e1165211689_
                                     (gx#syntax-e _tl1165111686_)))
                                (let ((_hd1165311693_ (##car _e1165211689_))
                                      (_tl1165411696_ (##cdr _e1165211689_)))
                                  (if (gx#stx-pair? _tl1165411696_)
                                      (let ((_e1165511699_
                                             (gx#syntax-e _tl1165411696_)))
                                        (let ((_hd1165611703_
                                               (##car _e1165511699_))
                                              (_tl1165711706_
                                               (##cdr _e1165511699_)))
                                          (if (gx#stx-pair/null?
                                               _tl1165711706_)
                                              (if (fx>= (gx#stx-length
                                                         _tl1165711706_)
                                                        '0)
                                                  (let ((_g34728_
                                                         (gx#syntax-split-splice
                                                          _tl1165711706_
                                                          '0)))
                                                    (begin
                                                      (let ((_g34729_
                                                             (values-count
                                                              _g34728_)))
                                                        (if (not (fx= _g34729_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g34729_)))
              (let ((_target1165811709_ (values-ref _g34728_ 0))
                    (_tl1166011712_ (values-ref _g34728_ 1)))
                (if (gx#stx-null? _tl1166011712_)
                    (letrec ((_loop1166111715_
                              (lambda (_hd1165911719_ _K1166511722_)
                                (if (gx#stx-pair? _hd1165911719_)
                                    (let ((_e1166211725_
                                           (gx#syntax-e _hd1165911719_)))
                                      (let ((_lp-hd1166311729_
                                             (##car _e1166211725_))
                                            (_lp-tl1166411732_
                                             (##cdr _e1166211725_)))
                                        (_loop1166111715_
                                         _lp-tl1166411732_
                                         (cons _lp-hd1166311729_
                                               _K1166511722_))))
                                    (let ((_K1166611735_
                                           (reverse _K1166511722_)))
                                      ((lambda (_L11739_ _L11741_ _L11742_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                '~case-dispatch-bsearch)
                                               (cons _L11742_
                                                     (cons _L11741_
                                                           (begin
                                                             '#!void
                                                             (foldr (lambda (_g1176211765_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1176311768_)
                              (cons _g1176211765_ _g1176311768_))
                            '()
                            _L11739_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _K1166611735_
                                       _hd1165611703_
                                       _hd1165311693_))))))
                      (_loop1166111715_ _target1165811709_ '()))
                    (_g1157611672_ _g1157711676_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1157611672_
                                                   _g1157711676_))
                                              (_g1157611672_ _g1157711676_))))
                                      (_g1157611672_ _g1157711676_))))
                              (_g1157611672_ _g1157711676_))))
                      (_g1157611672_ _g1157711676_))))
               (_g1157411931_
                (lambda (_g1157711775_)
                  (if (gx#stx-pair? _g1157711775_)
                      (let ((_e1162811778_ (gx#syntax-e _g1157711775_)))
                        (let ((_hd1162911782_ (##car _e1162811778_))
                              (_tl1163011785_ (##cdr _e1162811778_)))
                          (if (gx#stx-pair? _tl1163011785_)
                              (let ((_e1163111788_
                                     (gx#syntax-e _tl1163011785_)))
                                (let ((_hd1163211792_ (##car _e1163111788_))
                                      (_tl1163311795_ (##cdr _e1163111788_)))
                                  (if (gx#stx-pair? _tl1163311795_)
                                      (let ((_e1163411798_
                                             (gx#syntax-e _tl1163311795_)))
                                        (let ((_hd1163511802_
                                               (##car _e1163411798_))
                                              (_tl1163611805_
                                               (##cdr _e1163411798_)))
                                          (if (gx#stx-pair? _tl1163611805_)
                                              (let ((_e1163711808_
                                                     (gx#syntax-e
                                                      _tl1163611805_)))
                                                (let ((_hd1163811812_
                                                       (##car _e1163711808_))
                                                      (_tl1163911815_
                                                       (##cdr _e1163711808_)))
                                                  (if (gx#stx-pair?
                                                       _tl1163911815_)
                                                      (let ((_e1164011818_
                                                             (gx#syntax-e
                                                              _tl1163911815_)))
                                                        (let ((_hd1164111822_
                                                               (##car _e1164011818_))
                                                              (_tl1164211825_
                                                               (##cdr _e1164011818_)))
                                                          (if (gx#stx-pair?
                                                               _tl1164211825_)
                                                              (let ((_e1164311828_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl1164211825_)))
                        (let ((_hd1164411832_ (##car _e1164311828_))
                              (_tl1164511835_ (##cdr _e1164311828_)))
                          (if (gx#stx-null? _tl1164511835_)
                              ((lambda (_L11838_
                                        _L11840_
                                        _L11841_
                                        _L11842_
                                        _L11843_)
                                 (let* ((_g1186711882_
                                         (lambda (_g1186811878_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g1186811878_)))
                                        (_g1186611927_
                                         (lambda (_g1186811886_)
                                           (if (gx#stx-pair? _g1186811886_)
                                               (let ((_e1187111889_
                                                      (gx#syntax-e
                                                       _g1186811886_)))
                                                 (let ((_hd1187211893_
                                                        (##car _e1187111889_))
                                                       (_tl1187311896_
                                                        (##cdr _e1187111889_)))
                                                   (if (gx#stx-pair?
                                                        _tl1187311896_)
                                                       (let ((_e1187411899_
                                                              (gx#syntax-e
                                                               _tl1187311896_)))
                                                         (let ((_hd1187511903_
                                                                (##car _e1187411899_))
                                                               (_tl1187611906_
                                                                (##cdr _e1187411899_)))
                                                           (if (gx#stx-null?
                                                                _tl1187611906_)
                                                               ((lambda (_L11909_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L11911_)
                          (let ()
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons (gx#datum->syntax '#f '##fx=)
                                              (cons _L11842_
                                                    (cons _L11911_ '())))
                                        (cons _L11841_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '##fx=)
                              (cons _L11842_ (cons _L11909_ '())))
                        (cons _L11840_ (cons _L11838_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))
                        _hd1187511903_
                        _hd1187211893_)
                       (_g1186711882_ _g1186811886_))))
               (_g1186711882_ _g1186811886_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1186711882_
                                                _g1186811886_)))))
                                   (_g1186611927_
                                    (list (gx#stx-e _L11843_)
                                          (fx1+ (gx#stx-e _L11843_))))))
                               _hd1164411832_
                               _hd1164111822_
                               _hd1163811812_
                               _hd1163511802_
                               _hd1163211792_)
                              (_g1157511771_ _g1157711775_))))
                      (_g1157511771_ _g1157711775_))))
              (_g1157511771_ _g1157711775_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1157511771_ _g1157711775_))))
                                      (_g1157511771_ _g1157711775_))))
                              (_g1157511771_ _g1157711775_))))
                      (_g1157511771_ _g1157711775_))))
               (_g1157312044_
                (lambda (_g1157711935_)
                  (if (gx#stx-pair? _g1157711935_)
                      (let ((_e1160811938_ (gx#syntax-e _g1157711935_)))
                        (let ((_hd1160911942_ (##car _e1160811938_))
                              (_tl1161011945_ (##cdr _e1160811938_)))
                          (if (gx#stx-pair? _tl1161011945_)
                              (let ((_e1161111948_
                                     (gx#syntax-e _tl1161011945_)))
                                (let ((_hd1161211952_ (##car _e1161111948_))
                                      (_tl1161311955_ (##cdr _e1161111948_)))
                                  (if (gx#stx-pair? _tl1161311955_)
                                      (let ((_e1161411958_
                                             (gx#syntax-e _tl1161311955_)))
                                        (let ((_hd1161511962_
                                               (##car _e1161411958_))
                                              (_tl1161611965_
                                               (##cdr _e1161411958_)))
                                          (if (gx#stx-pair? _tl1161611965_)
                                              (let ((_e1161711968_
                                                     (gx#syntax-e
                                                      _tl1161611965_)))
                                                (let ((_hd1161811972_
                                                       (##car _e1161711968_))
                                                      (_tl1161911975_
                                                       (##cdr _e1161711968_)))
                                                  (if (gx#stx-pair?
                                                       _tl1161911975_)
                                                      (let ((_e1162011978_
                                                             (gx#syntax-e
                                                              _tl1161911975_)))
                                                        (let ((_hd1162111982_
                                                               (##car _e1162011978_))
                                                              (_tl1162211985_
                                                               (##cdr _e1162011978_)))
                                                          (if (gx#stx-null?
                                                               _tl1162211985_)
                                                              ((lambda (_L11988_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _L11990_
                                _L11991_
                                _L11992_)
                         (let* ((_g1201312021_
                                 (lambda (_g1201412017_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1201412017_)))
                                (_g1201212040_
                                 (lambda (_g1201412025_)
                                   ((lambda (_L12028_)
                                      (let ()
                                        (cons (gx#datum->syntax '#f 'if)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '##fx=)
                                                          (cons _L11991_
                                                                (cons _L12028_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _L11990_
                                                          (cons _L11988_
                                                                '()))))))
                                    _g1201412025_))))
                           (_g1201212040_ (gx#stx-e _L11992_))))
                       _hd1162111982_
                       _hd1161811972_
                       _hd1161511962_
                       _hd1161211952_)
                      (_g1157411931_ _g1157711935_))))
              (_g1157411931_ _g1157711935_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1157411931_ _g1157711935_))))
                                      (_g1157411931_ _g1157711935_))))
                              (_g1157411931_ _g1157711935_))))
                      (_g1157411931_ _g1157711935_))))
               (_g1157212112_
                (lambda (_g1157712048_)
                  (if (gx#stx-pair? _g1157712048_)
                      (let ((_e1159212051_ (gx#syntax-e _g1157712048_)))
                        (let ((_hd1159312055_ (##car _e1159212051_))
                              (_tl1159412058_ (##cdr _e1159212051_)))
                          (if (gx#stx-pair? _tl1159412058_)
                              (let ((_e1159512061_
                                     (gx#syntax-e _tl1159412058_)))
                                (let ((_hd1159612065_ (##car _e1159512061_))
                                      (_tl1159712068_ (##cdr _e1159512061_)))
                                  (if (gx#stx-pair? _tl1159712068_)
                                      (let ((_e1159812071_
                                             (gx#syntax-e _tl1159712068_)))
                                        (let ((_hd1159912075_
                                               (##car _e1159812071_))
                                              (_tl1160012078_
                                               (##cdr _e1159812071_)))
                                          (if (gx#stx-pair? _tl1160012078_)
                                              (let ((_e1160112081_
                                                     (gx#syntax-e
                                                      _tl1160012078_)))
                                                (let ((_hd1160212085_
                                                       (##car _e1160112081_))
                                                      (_tl1160312088_
                                                       (##cdr _e1160112081_)))
                                                  (if (gx#stx-null?
                                                       _tl1160312088_)
                                                      ((lambda (_L12091_
                                                                _L12093_
                                                                _L12094_)
                                                         _L12091_)
                                                       _hd1160212085_
                                                       _hd1159912075_
                                                       _hd1159612065_)
                                                      (_g1157312044_
                                                       _g1157712048_))))
                                              (_g1157312044_ _g1157712048_))))
                                      (_g1157312044_ _g1157712048_))))
                              (_g1157312044_ _g1157712048_))))
                      (_g1157312044_ _g1157712048_))))
               (_g1157112166_
                (lambda (_g1157712116_)
                  (if (gx#stx-pair? _g1157712116_)
                      (let ((_e1158012119_ (gx#syntax-e _g1157712116_)))
                        (let ((_hd1158112123_ (##car _e1158012119_))
                              (_tl1158212126_ (##cdr _e1158012119_)))
                          (if (gx#stx-pair? _tl1158212126_)
                              (let ((_e1158312129_
                                     (gx#syntax-e _tl1158212126_)))
                                (let ((_hd1158412133_ (##car _e1158312129_))
                                      (_tl1158512136_ (##cdr _e1158312129_)))
                                  (if (gx#stx-pair? _tl1158512136_)
                                      (let ((_e1158612139_
                                             (gx#syntax-e _tl1158512136_)))
                                        (let ((_hd1158712143_
                                               (##car _e1158612139_))
                                              (_tl1158812146_
                                               (##cdr _e1158612139_)))
                                          (if (gx#stx-null? _tl1158812146_)
                                              ((lambda (_L12149_ _L12151_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'quote)
                                                       (cons '#!void '())))
                                               _hd1158712143_
                                               _hd1158412133_)
                                              (_g1157212112_ _g1157712116_))))
                                      (_g1157212112_ _g1157712116_))))
                              (_g1157212112_ _g1157712116_))))
                      (_g1157212112_ _g1157712116_)))))
          (_g1157112166_ _stx11569_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#~case-dispatch-bsearch|
      (lambda (_stx12171_)
        (letrec ((_split12174_
                  (lambda (_lst12535_ _mid12537_)
                    (let _lp12539_ ((_i12542_ '0)
                                    (_rest12544_ _lst12535_)
                                    (_left12545_ '()))
                      (if (fx< _i12542_ _mid12537_)
                          (_lp12539_
                           (fx1+ _i12542_)
                           (cdr _rest12544_)
                           (cons (car _rest12544_) _left12545_))
                          (values (reverse _left12545_) _rest12544_))))))
          (let* ((_g1217712205_
                  (lambda (_g1217812201_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1217812201_)))
                 (_g1217612531_
                  (lambda (_g1217812209_)
                    (if (gx#stx-pair? _g1217812209_)
                        (let ((_e1218212212_ (gx#syntax-e _g1217812209_)))
                          (let ((_hd1218312216_ (##car _e1218212212_))
                                (_tl1218412219_ (##cdr _e1218212212_)))
                            (if (gx#stx-pair? _tl1218412219_)
                                (let ((_e1218512222_
                                       (gx#syntax-e _tl1218412219_)))
                                  (let ((_hd1218612226_ (##car _e1218512222_))
                                        (_tl1218712229_ (##cdr _e1218512222_)))
                                    (if (gx#stx-pair? _tl1218712229_)
                                        (let ((_e1218812232_
                                               (gx#syntax-e _tl1218712229_)))
                                          (let ((_hd1218912236_
                                                 (##car _e1218812232_))
                                                (_tl1219012239_
                                                 (##cdr _e1218812232_)))
                                            (if (gx#stx-pair/null?
                                                 _tl1219012239_)
                                                (if (fx>= (gx#stx-length
                                                           _tl1219012239_)
                                                          '0)
                                                    (let ((_g34730_
                                                           (gx#syntax-split-splice
                                                            _tl1219012239_
                                                            '0)))
                                                      (begin
                                                        (let ((_g34731_
                                                               (values-count
                                                                _g34730_)))
                                                          (if (not (fx= _g34731_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                2))
                      (error "Context expects 2 values" _g34731_)))
                (let ((_target1219112242_ (values-ref _g34730_ 0))
                      (_tl1219312245_ (values-ref _g34730_ 1)))
                  (if (gx#stx-null? _tl1219312245_)
                      (letrec ((_loop1219412248_
                                (lambda (_hd1219212252_ _K1219812255_)
                                  (if (gx#stx-pair? _hd1219212252_)
                                      (let ((_e1219512258_
                                             (gx#syntax-e _hd1219212252_)))
                                        (let ((_lp-hd1219612262_
                                               (##car _e1219512258_))
                                              (_lp-tl1219712265_
                                               (##cdr _e1219512258_)))
                                          (_loop1219412248_
                                           _lp-tl1219712265_
                                           (cons _lp-hd1219612262_
                                                 _K1219812255_))))
                                      (let ((_K1219912268_
                                             (reverse _K1219812255_)))
                                        ((lambda (_L12272_ _L12274_ _L12275_)
                                           (let* ((_len12305_
                                                   (length (begin
                                                             '#!void
                                                             (foldr (lambda (_g1229612299_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1229712302_)
                              (cons _g1229612299_ _g1229712302_))
                            '()
                            _L12272_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_mid12308_
                                                   (quotient _len12305_ '2))
                                                  (_g34732_
                                                   (_split12174_
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g1231012313_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1231112316_)
                       (cons _g1231012313_ _g1231112316_))
                     '()
                     _L12272_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _mid12308_)))
                                             (begin
                                               (let ((_g34733_
                                                      (values-count _g34732_)))
                                                 (if (not (fx= _g34733_ 2))
                                                     (error "Context expects 2 values"
                                                            _g34733_)))
                                               (let ((_left12319_
                                                      (values-ref _g34732_ 0))
                                                     (_right12321_
                                                      (values-ref _g34732_ 1)))
                                                 (let ()
                                                   (let* ((_g1232512366_
                                                           (lambda (_g1232612362_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g1232612362_)))
                                                          (_g1232412527_
                                                           (lambda (_g1232612370_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1232612370_)
                         (let ((_e1233112373_ (gx#syntax-e _g1232612370_)))
                           (let ((_hd1233212377_ (##car _e1233112373_))
                                 (_tl1233312380_ (##cdr _e1233112373_)))
                             (if (gx#stx-pair? _tl1233312380_)
                                 (let ((_e1233412383_
                                        (gx#syntax-e _tl1233312380_)))
                                   (let ((_hd1233512387_ (##car _e1233412383_))
                                         (_tl1233612390_
                                          (##cdr _e1233412383_)))
                                     (if (gx#stx-pair/null? _hd1233512387_)
                                         (if (fx>= (gx#stx-length
                                                    _hd1233512387_)
                                                   '0)
                                             (let ((_g34734_
                                                    (gx#syntax-split-splice
                                                     _hd1233512387_
                                                     '0)))
                                               (begin
                                                 (let ((_g34735_
                                                        (values-count
                                                         _g34734_)))
                                                   (if (not (fx= _g34735_ 2))
                                                       (error "Context expects 2 values"
                                                              _g34735_)))
                                                 (let ((_target1233712393_
                                                        (values-ref
                                                         _g34734_
                                                         0))
                                                       (_tl1233912396_
                                                        (values-ref
                                                         _g34734_
                                                         1)))
                                                   (if (gx#stx-null?
                                                        _tl1233912396_)
                                                       (letrec ((_loop1234012399_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd1233812403_ _K-left1234412406_)
                           (if (gx#stx-pair? _hd1233812403_)
                               (let ((_e1234112409_
                                      (gx#syntax-e _hd1233812403_)))
                                 (let ((_lp-hd1234212413_
                                        (##car _e1234112409_))
                                       (_lp-tl1234312416_
                                        (##cdr _e1234112409_)))
                                   (_loop1234012399_
                                    _lp-tl1234312416_
                                    (cons _lp-hd1234212413_
                                          _K-left1234412406_))))
                               (let ((_K-left1234512419_
                                      (reverse _K-left1234412406_)))
                                 (if (gx#stx-pair? _tl1233612390_)
                                     (let ((_e1234612423_
                                            (gx#syntax-e _tl1233612390_)))
                                       (let ((_hd1234712427_
                                              (##car _e1234612423_))
                                             (_tl1234812430_
                                              (##cdr _e1234612423_)))
                                         (if (gx#stx-pair/null? _hd1234712427_)
                                             (if (fx>= (gx#stx-length
                                                        _hd1234712427_)
                                                       '0)
                                                 (let ((_g34736_
                                                        (gx#syntax-split-splice
                                                         _hd1234712427_
                                                         '0)))
                                                   (begin
                                                     (let ((_g34737_
                                                            (values-count
                                                             _g34736_)))
                                                       (if (not (fx= _g34737_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g34737_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target1234912433_
                                                            (values-ref
                                                             _g34736_
                                                             0))
                                                           (_tl1235112436_
                                                            (values-ref
                                                             _g34736_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl1235112436_)
                                                           (letrec ((_loop1235212439_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd1235012443_ _K-right1235612446_)
                               (if (gx#stx-pair? _hd1235012443_)
                                   (let ((_e1235312449_
                                          (gx#syntax-e _hd1235012443_)))
                                     (let ((_lp-hd1235412453_
                                            (##car _e1235312449_))
                                           (_lp-tl1235512456_
                                            (##cdr _e1235312449_)))
                                       (_loop1235212439_
                                        _lp-tl1235512456_
                                        (cons _lp-hd1235412453_
                                              _K-right1235612446_))))
                                   (let ((_K-right1235712459_
                                          (reverse _K-right1235612446_)))
                                     (if (gx#stx-pair? _tl1234812430_)
                                         (let ((_e1235812463_
                                                (gx#syntax-e _tl1234812430_)))
                                           (let ((_hd1235912467_
                                                  (##car _e1235812463_))
                                                 (_tl1236012470_
                                                  (##cdr _e1235812463_)))
                                             (if (gx#stx-null? _tl1236012470_)
                                                 ((lambda (_L12473_
                                                           _L12475_
                                                           _L12476_
                                                           _L12477_)
                                                    (let ()
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'if)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 '##fx<)
                                (cons _L12274_ (cons _L12473_ '())))
                          (cons (cons (gx#datum->syntax '#f '~case-dispatch*)
                                      (cons _L12275_
                                            (cons _L12274_
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g1251012515_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1251112518_)
                     (cons _g1251012515_ _g1251112518_))
                   '()
                   _L12476_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             '~case-dispatch*)
                                            (cons _L12473_
                                                  (cons _L12274_
                                                        (begin
                                                          '#!void
                                                          (foldr (lambda (_g1251212521_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g1251312524_)
                           (cons _g1251212521_ _g1251312524_))
                         '()
                         _L12475_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd1235912467_
                                                  _K-right1235712459_
                                                  _K-left1234512419_
                                                  _hd1233212377_)
                                                 (_g1232512366_
                                                  _g1232612370_))))
                                         (_g1232512366_ _g1232612370_)))))))
                     (_loop1235212439_ _target1234912433_ '()))
                   (_g1232512366_ _g1232612370_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1232512366_ _g1232612370_))
                                             (_g1232512366_ _g1232612370_))))
                                     (_g1232512366_ _g1232612370_)))))))
                 (_loop1234012399_ _target1233712393_ '()))
               (_g1232512366_ _g1232612370_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1232512366_ _g1232612370_))
                                         (_g1232512366_ _g1232612370_))))
                                 (_g1232512366_ _g1232612370_))))
                         (_g1232512366_ _g1232612370_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1232412527_
                                                      (list _mid12308_
                                                            _left12319_
                                                            _right12321_
                                                            (fx+ _mid12308_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _L12275_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _K1219912268_
                                         _hd1218912236_
                                         _hd1218612226_))))))
                        (_loop1219412248_ _target1219112242_ '()))
                      (_g1217712205_ _g1217812209_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1217712205_
                                                     _g1217812209_))
                                                (_g1217712205_
                                                 _g1217812209_))))
                                        (_g1217712205_ _g1217812209_))))
                                (_g1217712205_ _g1217812209_))))
                        (_g1217712205_ _g1217812209_)))))
            (_g1217612531_ _stx12171_)))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#do|
      (lambda (_$stx12551_)
        (let* ((_g1255512626_
                (lambda (_g1255612622_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1255612622_)))
               (_g1255412915_
                (lambda (_g1255612630_)
                  (if (gx#stx-pair? _g1255612630_)
                      (let ((_e1256312633_ (gx#syntax-e _g1255612630_)))
                        (let ((_hd1256412637_ (##car _e1256312633_))
                              (_tl1256512640_ (##cdr _e1256312633_)))
                          (if (gx#stx-pair? _tl1256512640_)
                              (let ((_e1256612643_
                                     (gx#syntax-e _tl1256512640_)))
                                (let ((_hd1256712647_ (##car _e1256612643_))
                                      (_tl1256812650_ (##cdr _e1256612643_)))
                                  (if (gx#stx-pair/null? _hd1256712647_)
                                      (if (fx>= (gx#stx-length _hd1256712647_)
                                                '0)
                                          (let ((_g34738_
                                                 (gx#syntax-split-splice
                                                  _hd1256712647_
                                                  '0)))
                                            (begin
                                              (let ((_g34739_
                                                     (values-count _g34738_)))
                                                (if (not (fx= _g34739_ 2))
                                                    (error "Context expects 2 values"
                                                           _g34739_)))
                                              (let ((_target1256912653_
                                                     (values-ref _g34738_ 0))
                                                    (_tl1257112656_
                                                     (values-ref _g34738_ 1)))
                                                (if (gx#stx-null?
                                                     _tl1257112656_)
                                                    (letrec ((_loop1257212659_
                                                              (lambda (_hd1257012663_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _step1257612666_
                               _init1257712668_
                               _var1257812670_)
                        (if (gx#stx-pair? _hd1257012663_)
                            (let ((_e1257312673_ (gx#syntax-e _hd1257012663_)))
                              (let ((_lp-hd1257412677_ (##car _e1257312673_))
                                    (_lp-tl1257512680_ (##cdr _e1257312673_)))
                                (if (gx#stx-pair? _lp-hd1257412677_)
                                    (let ((_e1258212683_
                                           (gx#syntax-e _lp-hd1257412677_)))
                                      (let ((_hd1258312687_
                                             (##car _e1258212683_))
                                            (_tl1258412690_
                                             (##cdr _e1258212683_)))
                                        (if (gx#stx-pair? _tl1258412690_)
                                            (let ((_e1258512693_
                                                   (gx#syntax-e
                                                    _tl1258412690_)))
                                              (let ((_hd1258612697_
                                                     (##car _e1258512693_))
                                                    (_tl1258712700_
                                                     (##cdr _e1258512693_)))
                                                (if (gx#stx-pair/null?
                                                     _tl1258712700_)
                                                    (if (fx>= (gx#stx-length
                                                               _tl1258712700_)
                                                              '0)
                                                        (let ((_g34740_
                                                               (gx#syntax-split-splice
                                                                _tl1258712700_
                                                                '0)))
                                                          (begin
                                                            (let ((_g34741_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (values-count _g34740_)))
                      (if (not (fx= _g34741_ 2))
                          (error "Context expects 2 values" _g34741_)))
                    (let ((_target1258812703_ (values-ref _g34740_ 0))
                          (_tl1259012706_ (values-ref _g34740_ 1)))
                      (if (gx#stx-null? _tl1259012706_)
                          (letrec ((_loop1259112709_
                                    (lambda (_hd1258912713_ _step1259512716_)
                                      (if (gx#stx-pair? _hd1258912713_)
                                          (let ((_e1259212719_
                                                 (gx#syntax-e _hd1258912713_)))
                                            (let ((_lp-hd1259312723_
                                                   (##car _e1259212719_))
                                                  (_lp-tl1259412726_
                                                   (##cdr _e1259212719_)))
                                              (_loop1259112709_
                                               _lp-tl1259412726_
                                               (cons _lp-hd1259312723_
                                                     _step1259512716_))))
                                          (let ((_step1259612729_
                                                 (reverse _step1259512716_)))
                                            (_loop1257212659_
                                             _lp-tl1257512680_
                                             (cons _step1259612729_
                                                   _step1257612666_)
                                             (cons _hd1258612697_
                                                   _init1257712668_)
                                             (cons _hd1258312687_
                                                   _var1257812670_)))))))
                            (_loop1259112709_ _target1258812703_ '()))
                          (_g1255512626_ _g1255612630_)))))
                (_g1255512626_ _g1255612630_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1255512626_
                                                     _g1255612630_))))
                                            (_g1255512626_ _g1255612630_))))
                                    (_g1255512626_ _g1255612630_))))
                            (let ((_step1257912733_ (reverse _step1257612666_))
                                  (_init1258012736_ (reverse _init1257712668_))
                                  (_var1258112738_ (reverse _var1257812670_)))
                              (if (gx#stx-pair? _tl1256812650_)
                                  (let ((_e1259712741_
                                         (gx#syntax-e _tl1256812650_)))
                                    (let ((_hd1259812745_
                                           (##car _e1259712741_))
                                          (_tl1259912748_
                                           (##cdr _e1259712741_)))
                                      (if (gx#stx-pair? _hd1259812745_)
                                          (let ((_e1260012751_
                                                 (gx#syntax-e _hd1259812745_)))
                                            (let ((_hd1260112755_
                                                   (##car _e1260012751_))
                                                  (_tl1260212758_
                                                   (##cdr _e1260012751_)))
                                              (if (gx#stx-pair/null?
                                                   _tl1260212758_)
                                                  (if (fx>= (gx#stx-length
                                                             _tl1260212758_)
                                                            '0)
                                                      (let ((_g34742_
                                                             (gx#syntax-split-splice
                                                              _tl1260212758_
                                                              '0)))
                                                        (begin
                                                          (let ((_g34743_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (values-count _g34742_)))
                    (if (not (fx= _g34743_ 2))
                        (error "Context expects 2 values" _g34743_)))
                  (let ((_target1260312761_ (values-ref _g34742_ 0))
                        (_tl1260512764_ (values-ref _g34742_ 1)))
                    (if (gx#stx-null? _tl1260512764_)
                        (letrec ((_loop1260612767_
                                  (lambda (_hd1260412771_ _fini1261012774_)
                                    (if (gx#stx-pair? _hd1260412771_)
                                        (let ((_e1260712777_
                                               (gx#syntax-e _hd1260412771_)))
                                          (let ((_lp-hd1260812781_
                                                 (##car _e1260712777_))
                                                (_lp-tl1260912784_
                                                 (##cdr _e1260712777_)))
                                            (_loop1260612767_
                                             _lp-tl1260912784_
                                             (cons _lp-hd1260812781_
                                                   _fini1261012774_))))
                                        (let ((_fini1261112787_
                                               (reverse _fini1261012774_)))
                                          (if (gx#stx-pair/null?
                                               _tl1259912748_)
                                              (if (fx>= (gx#stx-length
                                                         _tl1259912748_)
                                                        '0)
                                                  (let ((_g34744_
                                                         (gx#syntax-split-splice
                                                          _tl1259912748_
                                                          '0)))
                                                    (begin
                                                      (let ((_g34745_
                                                             (values-count
                                                              _g34744_)))
                                                        (if (not (fx= _g34745_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g34745_)))
              (let ((_target1261212791_ (values-ref _g34744_ 0))
                    (_tl1261412794_ (values-ref _g34744_ 1)))
                (if (gx#stx-null? _tl1261412794_)
                    (letrec ((_loop1261512797_
                              (lambda (_hd1261312801_ _body1261912804_)
                                (if (gx#stx-pair? _hd1261312801_)
                                    (let ((_e1261612807_
                                           (gx#syntax-e _hd1261312801_)))
                                      (let ((_lp-hd1261712811_
                                             (##car _e1261612807_))
                                            (_lp-tl1261812814_
                                             (##cdr _e1261612807_)))
                                        (_loop1261512797_
                                         _lp-tl1261812814_
                                         (cons _lp-hd1261712811_
                                               _body1261912804_))))
                                    (let ((_body1262012817_
                                           (reverse _body1261912804_)))
                                      ((lambda (_L12821_
                                                _L12823_
                                                _L12824_
                                                _L12825_
                                                _L12826_
                                                _L12827_)
                                         (if (gx#stx-andmap
                                              gx#identifier?
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g1286012863_
                                                                _g1286112866_)
                                                         (cons _g1286012863_
                                                               _g1286112866_))
                                                       '()
                                                       _L12827_)))
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          '$loop)
                                                         (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-check-splice-targets _L12826_ _L12827_)
                         (foldr (lambda (_g1286812881_
                                         _g1286912884_
                                         _g1287012886_)
                                  (cons (cons _g1286912884_
                                              (cons _g1286812881_ '()))
                                        _g1287012886_))
                                '()
                                _L12826_
                                _L12827_))
                       (cons (cons (gx#datum->syntax '#f 'if)
                                   (cons _L12824_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'begin)
                                                     (cons '#!void
                                                           (begin
                                                             '#!void
                                                             (foldr (lambda (_g1287112889_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1287212892_)
                              (cons _g1287112889_ _g1287212892_))
                            '()
                            _L12823_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'begin)
                                                           (begin
                                                             '#!void
                                                             (foldr (lambda (_g1287312895_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1287412898_)
                              (cons _g1287312895_ _g1287412898_))
                            (cons (cons (gx#datum->syntax '#f '$loop)
                                        (begin
                                          (gx#syntax-check-splice-targets
                                           _L12825_
                                           _L12827_)
                                          (foldr (lambda (_g1287512901_
                                                          _g1287612904_
                                                          _g1287712906_)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'begin)
                                                               (cons _g1287612904_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (begin
                               '#!void
                               (foldr (lambda (_g1287812909_ _g1287912912_)
                                        (cons _g1287812909_ _g1287912912_))
                                      '()
                                      _g1287512901_))))
                 _g1287712906_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()
                                                 _L12825_
                                                 _L12827_)))
                                  '())
                            _L12821_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1255512626_ _g1255612630_)))
                                       _body1262012817_
                                       _fini1261112787_
                                       _hd1260112755_
                                       _step1257912733_
                                       _init1258012736_
                                       _var1258112738_))))))
                      (_loop1261512797_ _target1261212791_ '()))
                    (_g1255512626_ _g1255612630_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1255512626_
                                                   _g1255612630_))
                                              (_g1255512626_
                                               _g1255612630_)))))))
                          (_loop1260612767_ _target1260312761_ '()))
                        (_g1255512626_ _g1255612630_)))))
              (_g1255512626_ _g1255612630_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1255512626_
                                                   _g1255612630_))))
                                          (_g1255512626_ _g1255612630_))))
                                  (_g1255512626_ _g1255612630_)))))))
              (_loop1257212659_ _target1256912653_ '() '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1255512626_
                                                     _g1255612630_)))))
                                          (_g1255512626_ _g1255612630_))
                                      (_g1255512626_ _g1255612630_))))
                              (_g1255512626_ _g1255612630_))))
                      (_g1255512626_ _g1255612630_)))))
          (_g1255412915_ _$stx12551_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#do-while|
      (lambda (_$stx12923_)
        (let* ((_g1292712950_
                (lambda (_g1292812946_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1292812946_)))
               (_g1292613021_
                (lambda (_g1292812954_)
                  (if (gx#stx-pair? _g1292812954_)
                      (let ((_e1293312957_ (gx#syntax-e _g1292812954_)))
                        (let ((_hd1293412961_ (##car _e1293312957_))
                              (_tl1293512964_ (##cdr _e1293312957_)))
                          (if (gx#stx-pair? _tl1293512964_)
                              (let ((_e1293612967_
                                     (gx#syntax-e _tl1293512964_)))
                                (let ((_hd1293712971_ (##car _e1293612967_))
                                      (_tl1293812974_ (##cdr _e1293612967_)))
                                  (if (gx#stx-pair? _tl1293812974_)
                                      (let ((_e1293912977_
                                             (gx#syntax-e _tl1293812974_)))
                                        (let ((_hd1294012981_
                                               (##car _e1293912977_))
                                              (_tl1294112984_
                                               (##cdr _e1293912977_)))
                                          (if (gx#stx-pair? _hd1294012981_)
                                              (let ((_e1294212987_
                                                     (gx#syntax-e
                                                      _hd1294012981_)))
                                                (let ((_hd1294312991_
                                                       (##car _e1294212987_))
                                                      (_tl1294412994_
                                                       (##cdr _e1294212987_)))
                                                  ((lambda (_L12997_
                                                            _L12999_
                                                            _L13000_
                                                            _L13001_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'do)
                                                           (cons _L13001_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (cons (gx#datum->syntax '#f 'not)
                                           (cons _L13000_ '()))
                                     _L12999_)
                               _L12997_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _tl1294112984_
                                                   _tl1294412994_
                                                   _hd1294312991_
                                                   _hd1293712971_)))
                                              (_g1292712950_ _g1292812954_))))
                                      (_g1292712950_ _g1292812954_))))
                              (_g1292712950_ _g1292812954_))))
                      (_g1292712950_ _g1292812954_)))))
          (_g1292613021_ _$stx12923_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#begin0|
      (lambda (_$stx13025_)
        (let* ((_g1303013061_
                (lambda (_g1303113057_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1303113057_)))
               (_g1302913146_
                (lambda (_g1303113065_)
                  (if (gx#stx-pair? _g1303113065_)
                      (let ((_e1304113068_ (gx#syntax-e _g1303113065_)))
                        (let ((_hd1304213072_ (##car _e1304113068_))
                              (_tl1304313075_ (##cdr _e1304113068_)))
                          (if (gx#stx-pair? _tl1304313075_)
                              (let ((_e1304413078_
                                     (gx#syntax-e _tl1304313075_)))
                                (let ((_hd1304513082_ (##car _e1304413078_))
                                      (_tl1304613085_ (##cdr _e1304413078_)))
                                  (if (gx#stx-pair/null? _tl1304613085_)
                                      (if (fx>= (gx#stx-length _tl1304613085_)
                                                '0)
                                          (let ((_g34746_
                                                 (gx#syntax-split-splice
                                                  _tl1304613085_
                                                  '0)))
                                            (begin
                                              (let ((_g34747_
                                                     (values-count _g34746_)))
                                                (if (not (fx= _g34747_ 2))
                                                    (error "Context expects 2 values"
                                                           _g34747_)))
                                              (let ((_target1304713088_
                                                     (values-ref _g34746_ 0))
                                                    (_tl1304913091_
                                                     (values-ref _g34746_ 1)))
                                                (if (gx#stx-null?
                                                     _tl1304913091_)
                                                    (letrec ((_loop1305013094_
                                                              (lambda (_hd1304813098_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _rest1305413101_)
                        (if (gx#stx-pair? _hd1304813098_)
                            (let ((_e1305113104_ (gx#syntax-e _hd1304813098_)))
                              (let ((_lp-hd1305213108_ (##car _e1305113104_))
                                    (_lp-tl1305313111_ (##cdr _e1305113104_)))
                                (_loop1305013094_
                                 _lp-tl1305313111_
                                 (cons _lp-hd1305213108_ _rest1305413101_))))
                            (let ((_rest1305513114_
                                   (reverse _rest1305413101_)))
                              ((lambda (_L13118_ _L13120_)
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (cons (gx#datum->syntax '#f '$r)
                                                   (cons _L13120_ '()))
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '%#expression)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'begin)
                             (begin
                               '#!void
                               (foldr (lambda (_g1313713140_ _g1313813143_)
                                        (cons _g1313713140_ _g1313813143_))
                                      '()
                                      _L13118_)))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          '$r)
                                                         '())))))
                               _rest1305513114_
                               _hd1304513082_))))))
              (_loop1305013094_ _target1304713088_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1303013061_
                                                     _g1303113065_)))))
                                          (_g1303013061_ _g1303113065_))
                                      (_g1303013061_ _g1303113065_))))
                              (_g1303013061_ _g1303113065_))))
                      (_g1303013061_ _g1303113065_))))
               (_g1302813186_
                (lambda (_g1303113150_)
                  (if (gx#stx-pair? _g1303113150_)
                      (let ((_e1303313153_ (gx#syntax-e _g1303113150_)))
                        (let ((_hd1303413157_ (##car _e1303313153_))
                              (_tl1303513160_ (##cdr _e1303313153_)))
                          (if (gx#stx-pair? _tl1303513160_)
                              (let ((_e1303613163_
                                     (gx#syntax-e _tl1303513160_)))
                                (let ((_hd1303713167_ (##car _e1303613163_))
                                      (_tl1303813170_ (##cdr _e1303613163_)))
                                  (if (gx#stx-null? _tl1303813170_)
                                      ((lambda (_L13173_) _L13173_)
                                       _hd1303713167_)
                                      (_g1302913146_ _g1303113150_))))
                              (_g1302913146_ _g1303113150_))))
                      (_g1302913146_ _g1303113150_)))))
          (_g1302813186_ _$stx13025_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#rec|
      (lambda (_$stx13191_)
        (let* ((_g1319713250_
                (lambda (_g1319813246_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1319813246_)))
               (_g1319613349_
                (lambda (_g1319813254_)
                  (if (gx#stx-pair? _g1319813254_)
                      (let ((_e1322713257_ (gx#syntax-e _g1319813254_)))
                        (let ((_hd1322813261_ (##car _e1322713257_))
                              (_tl1322913264_ (##cdr _e1322713257_)))
                          (if (gx#stx-pair? _tl1322913264_)
                              (let ((_e1323013267_
                                     (gx#syntax-e _tl1322913264_)))
                                (let ((_hd1323113271_ (##car _e1323013267_))
                                      (_tl1323213274_ (##cdr _e1323013267_)))
                                  (if (gx#stx-pair? _hd1323113271_)
                                      (let ((_e1323313277_
                                             (gx#syntax-e _hd1323113271_)))
                                        (let ((_hd1323413281_
                                               (##car _e1323313277_))
                                              (_tl1323513284_
                                               (##cdr _e1323313277_)))
                                          (if (gx#stx-pair/null?
                                               _tl1323213274_)
                                              (if (fx>= (gx#stx-length
                                                         _tl1323213274_)
                                                        '0)
                                                  (let ((_g34748_
                                                         (gx#syntax-split-splice
                                                          _tl1323213274_
                                                          '0)))
                                                    (begin
                                                      (let ((_g34749_
                                                             (values-count
                                                              _g34748_)))
                                                        (if (not (fx= _g34749_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g34749_)))
              (let ((_target1323613287_ (values-ref _g34748_ 0))
                    (_tl1323813290_ (values-ref _g34748_ 1)))
                (if (gx#stx-null? _tl1323813290_)
                    (letrec ((_loop1323913293_
                              (lambda (_hd1323713297_ _body1324313300_)
                                (if (gx#stx-pair? _hd1323713297_)
                                    (let ((_e1324013303_
                                           (gx#syntax-e _hd1323713297_)))
                                      (let ((_lp-hd1324113307_
                                             (##car _e1324013303_))
                                            (_lp-tl1324213310_
                                             (##cdr _e1324013303_)))
                                        (_loop1323913293_
                                         _lp-tl1324213310_
                                         (cons _lp-hd1324113307_
                                               _body1324313300_))))
                                    (let ((_body1324413313_
                                           (reverse _body1324313300_)))
                                      ((lambda (_L13317_ _L13319_ _L13320_)
                                         (if (gx#identifier? _L13320_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'letrec)
                                                   (cons (cons (cons _L13320_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _L13319_
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g1334013343_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1334113346_)
                  (cons _g1334013343_ _g1334113346_))
                '()
                _L13317_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   '()))
                       '())
                 (cons _L13320_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1319713250_ _g1319813254_)))
                                       _body1324413313_
                                       _tl1323513284_
                                       _hd1323413281_))))))
                      (_loop1323913293_ _target1323613287_ '()))
                    (_g1319713250_ _g1319813254_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1319713250_
                                                   _g1319813254_))
                                              (_g1319713250_ _g1319813254_))))
                                      (_g1319713250_ _g1319813254_))))
                              (_g1319713250_ _g1319813254_))))
                      (_g1319713250_ _g1319813254_))))
               (_g1319513415_
                (lambda (_g1319813353_)
                  (if (gx#stx-pair? _g1319813353_)
                      (let ((_e1321213356_ (gx#syntax-e _g1319813353_)))
                        (let ((_hd1321313360_ (##car _e1321213356_))
                              (_tl1321413363_ (##cdr _e1321213356_)))
                          (if (gx#stx-pair? _tl1321413363_)
                              (let ((_e1321513366_
                                     (gx#syntax-e _tl1321413363_)))
                                (let ((_hd1321613370_ (##car _e1321513366_))
                                      (_tl1321713373_ (##cdr _e1321513366_)))
                                  (if (gx#stx-pair? _hd1321613370_)
                                      (let ((_e1321813376_
                                             (gx#syntax-e _hd1321613370_)))
                                        (let ((_hd1321913380_
                                               (##car _e1321813376_))
                                              (_tl1322013383_
                                               (##cdr _e1321813376_)))
                                          (if (gx#identifier? _hd1321913380_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<sugar>$<sugar:2>[1]#_g34750_|
                                                   _hd1321913380_)
                                                  (if (gx#stx-pair?
                                                       _tl1321713373_)
                                                      (let ((_e1322113386_
                                                             (gx#syntax-e
                                                              _tl1321713373_)))
                                                        (let ((_hd1322213390_
                                                               (##car _e1322113386_))
                                                              (_tl1322313393_
                                                               (##cdr _e1322113386_)))
                                                          (if (gx#stx-null?
                                                               _tl1322313393_)
                                                              ((lambda (_L13396_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _L13398_)
                         (if (gx#identifier-list? _L13398_)
                             (cons (gx#datum->syntax '#f 'letrec-values)
                                   (cons (cons (cons _L13398_
                                                     (cons _L13396_ '()))
                                               '())
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'values)
                                                     _L13398_)
                                               '())))
                             (_g1319613349_ _g1319813353_)))
                       _hd1322213390_
                       _tl1322013383_)
                      (_g1319613349_ _g1319813353_))))
              (_g1319613349_ _g1319813353_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1319613349_
                                                   _g1319813353_))
                                              (_g1319613349_ _g1319813353_))))
                                      (_g1319613349_ _g1319813353_))))
                              (_g1319613349_ _g1319813353_))))
                      (_g1319613349_ _g1319813353_))))
               (_g1319413469_
                (lambda (_g1319813419_)
                  (if (gx#stx-pair? _g1319813419_)
                      (let ((_e1320113422_ (gx#syntax-e _g1319813419_)))
                        (let ((_hd1320213426_ (##car _e1320113422_))
                              (_tl1320313429_ (##cdr _e1320113422_)))
                          (if (gx#stx-pair? _tl1320313429_)
                              (let ((_e1320413432_
                                     (gx#syntax-e _tl1320313429_)))
                                (let ((_hd1320513436_ (##car _e1320413432_))
                                      (_tl1320613439_ (##cdr _e1320413432_)))
                                  (if (gx#stx-pair? _tl1320613439_)
                                      (let ((_e1320713442_
                                             (gx#syntax-e _tl1320613439_)))
                                        (let ((_hd1320813446_
                                               (##car _e1320713442_))
                                              (_tl1320913449_
                                               (##cdr _e1320713442_)))
                                          (if (gx#stx-null? _tl1320913449_)
                                              ((lambda (_L13452_ _L13454_)
                                                 (if (gx#identifier? _L13454_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'letrec)
                                                           (cons (cons (cons _L13454_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (cons _L13452_ '()))
                               '())
                         (cons _L13454_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1319513415_
                                                      _g1319813419_)))
                                               _hd1320813446_
                                               _hd1320513436_)
                                              (_g1319513415_ _g1319813419_))))
                                      (_g1319513415_ _g1319813419_))))
                              (_g1319513415_ _g1319813419_))))
                      (_g1319513415_ _g1319813419_)))))
          (_g1319413469_ _$stx13191_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#alet|
      (lambda (_stx13474_)
        (letrec ((_let-head?13477_
                  (lambda (_x14024_)
                    (let* ((_g1402814039_
                            (lambda (_g1402914035_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1402914035_)))
                           (_g1402714050_
                            (lambda (_g1402914043_)
                              ((lambda () (gx#identifier? _x14024_)))))
                           (_g1402614080_
                            (lambda (_g1402914054_)
                              (if (gx#stx-pair? _g1402914054_)
                                  (let ((_e1403114057_
                                         (gx#syntax-e _g1402914054_)))
                                    (let ((_hd1403214061_
                                           (##car _e1403114057_))
                                          (_tl1403314064_
                                           (##cdr _e1403114057_)))
                                      (if (gx#identifier? _hd1403214061_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<sugar>$<sugar:2>[1]#_g34751_|
                                               _hd1403214061_)
                                              ((lambda (_L14067_)
                                                 (gx#stx-andmap
                                                  gx#identifier?
                                                  _L14067_))
                                               _tl1403314064_)
                                              (_g1402714050_ _g1402914054_))
                                          (_g1402714050_ _g1402914054_))))
                                  (_g1402714050_ _g1402914054_)))))
                      (_g1402614080_ _x14024_))))
                 (_let-head13479_
                  (lambda (_x13964_)
                    (let* ((_g1396813979_
                            (lambda (_g1396913975_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1396913975_)))
                           (_g1396713990_
                            (lambda (_g1396913983_)
                              ((lambda () (list _x13964_)))))
                           (_g1396614020_
                            (lambda (_g1396913994_)
                              (if (gx#stx-pair? _g1396913994_)
                                  (let ((_e1397113997_
                                         (gx#syntax-e _g1396913994_)))
                                    (let ((_hd1397214001_
                                           (##car _e1397113997_))
                                          (_tl1397314004_
                                           (##cdr _e1397113997_)))
                                      (if (gx#identifier? _hd1397214001_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<sugar>$<sugar:2>[1]#_g34752_|
                                               _hd1397214001_)
                                              ((lambda (_L14007_) _L14007_)
                                               _tl1397314004_)
                                              (_g1396713990_ _g1396913994_))
                                          (_g1396713990_ _g1396913994_))))
                                  (_g1396713990_ _g1396913994_)))))
                      (_g1396614020_ _x13964_)))))
          (let* ((_g1348213540_
                  (lambda (_g1348313536_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1348313536_)))
                 (_g1348113890_
                  (lambda (_g1348313544_)
                    (if (gx#stx-pair? _g1348313544_)
                        (let ((_e1350313547_ (gx#syntax-e _g1348313544_)))
                          (let ((_hd1350413551_ (##car _e1350313547_))
                                (_tl1350513554_ (##cdr _e1350313547_)))
                            (if (gx#stx-pair? _tl1350513554_)
                                (let ((_e1350613557_
                                       (gx#syntax-e _tl1350513554_)))
                                  (let ((_hd1350713561_ (##car _e1350613557_))
                                        (_tl1350813564_ (##cdr _e1350613557_)))
                                    (if (gx#stx-pair/null? _hd1350713561_)
                                        (if (fx>= (gx#stx-length
                                                   _hd1350713561_)
                                                  '0)
                                            (let ((_g34753_
                                                   (gx#syntax-split-splice
                                                    _hd1350713561_
                                                    '0)))
                                              (begin
                                                (let ((_g34754_
                                                       (values-count
                                                        _g34753_)))
                                                  (if (not (fx= _g34754_ 2))
                                                      (error "Context expects 2 values"
                                                             _g34754_)))
                                                (let ((_target1350913567_
                                                       (values-ref _g34753_ 0))
                                                      (_tl1351113570_
                                                       (values-ref
                                                        _g34753_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl1351113570_)
                                                      (letrec ((_loop1351213573_
                                                                (lambda (_hd1351013577_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _e1351613580_
                                 _hd1351713582_)
                          (if (gx#stx-pair? _hd1351013577_)
                              (let ((_e1351313585_
                                     (gx#syntax-e _hd1351013577_)))
                                (let ((_lp-hd1351413589_ (##car _e1351313585_))
                                      (_lp-tl1351513592_
                                       (##cdr _e1351313585_)))
                                  (if (gx#stx-pair? _lp-hd1351413589_)
                                      (let ((_e1352013595_
                                             (gx#syntax-e _lp-hd1351413589_)))
                                        (let ((_hd1352113599_
                                               (##car _e1352013595_))
                                              (_tl1352213602_
                                               (##cdr _e1352013595_)))
                                          (if (gx#stx-pair? _tl1352213602_)
                                              (let ((_e1352313605_
                                                     (gx#syntax-e
                                                      _tl1352213602_)))
                                                (let ((_hd1352413609_
                                                       (##car _e1352313605_))
                                                      (_tl1352513612_
                                                       (##cdr _e1352313605_)))
                                                  (if (gx#stx-null?
                                                       _tl1352513612_)
                                                      (_loop1351213573_
                                                       _lp-tl1351513592_
                                                       (cons _hd1352413609_
                                                             _e1351613580_)
                                                       (cons _hd1352113599_
                                                             _hd1351713582_))
                                                      (_g1348213540_
                                                       _g1348313544_))))
                                              (_g1348213540_ _g1348313544_))))
                                      (_g1348213540_ _g1348313544_))))
                              (let ((_e1351813615_ (reverse _e1351613580_))
                                    (_hd1351913618_ (reverse _hd1351713582_)))
                                (if (gx#stx-pair/null? _tl1350813564_)
                                    (if (fx>= (gx#stx-length _tl1350813564_)
                                              '0)
                                        (let ((_g34755_
                                               (gx#syntax-split-splice
                                                _tl1350813564_
                                                '0)))
                                          (begin
                                            (let ((_g34756_
                                                   (values-count _g34755_)))
                                              (if (not (fx= _g34756_ 2))
                                                  (error "Context expects 2 values"
                                                         _g34756_)))
                                            (let ((_target1352613621_
                                                   (values-ref _g34755_ 0))
                                                  (_tl1352813624_
                                                   (values-ref _g34755_ 1)))
                                              (if (gx#stx-null? _tl1352813624_)
                                                  (letrec ((_loop1352913627_
                                                            (lambda (_hd1352713631_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _body1353313634_)
                      (if (gx#stx-pair? _hd1352713631_)
                          (let ((_e1353013637_ (gx#syntax-e _hd1352713631_)))
                            (let ((_lp-hd1353113641_ (##car _e1353013637_))
                                  (_lp-tl1353213644_ (##cdr _e1353013637_)))
                              (_loop1352913627_
                               _lp-tl1353213644_
                               (cons _lp-hd1353113641_ _body1353313634_))))
                          (let ((_body1353413647_ (reverse _body1353313634_)))
                            ((lambda (_L13651_ _L13653_ _L13654_)
                               (if (gx#stx-andmap
                                    _let-head?13477_
                                    (begin
                                      '#!void
                                      (foldr (lambda (_g1367713680_
                                                      _g1367813683_)
                                               (cons _g1367713680_
                                                     _g1367813683_))
                                             '()
                                             _L13654_)))
                                   (let* ((_g1368613719_
                                           (lambda (_g1368713715_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1368713715_)))
                                          (_g1368513870_
                                           (lambda (_g1368713723_)
                                             (if (gx#stx-pair? _g1368713723_)
                                                 (let ((_e1369013726_
                                                        (gx#syntax-e
                                                         _g1368713723_)))
                                                   (let ((_hd1369113730_
                                                          (##car _e1369013726_))
                                                         (_tl1369213733_
                                                          (##cdr _e1369013726_)))
                                                     (if (gx#stx-pair/null?
                                                          _hd1369113730_)
                                                         (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd1369113730_)
                           '0)
                     (let ((_g34757_
                            (gx#syntax-split-splice _hd1369113730_ '0)))
                       (begin
                         (let ((_g34758_ (values-count _g34757_)))
                           (if (not (fx= _g34758_ 2))
                               (error "Context expects 2 values" _g34758_)))
                         (let ((_target1369313736_ (values-ref _g34757_ 0))
                               (_tl1369513739_ (values-ref _g34757_ 1)))
                           (if (gx#stx-null? _tl1369513739_)
                               (letrec ((_loop1369613742_
                                         (lambda (_hd1369413746_
                                                  _$e1370013749_)
                                           (if (gx#stx-pair? _hd1369413746_)
                                               (let ((_e1369713752_
                                                      (gx#syntax-e
                                                       _hd1369413746_)))
                                                 (let ((_lp-hd1369813756_
                                                        (##car _e1369713752_))
                                                       (_lp-tl1369913759_
                                                        (##cdr _e1369713752_)))
                                                   (_loop1369613742_
                                                    _lp-tl1369913759_
                                                    (cons _lp-hd1369813756_
                                                          _$e1370013749_))))
                                               (let ((_$e1370113762_
                                                      (reverse _$e1370013749_)))
                                                 (if (gx#stx-pair?
                                                      _tl1369213733_)
                                                     (let ((_e1370213766_
                                                            (gx#syntax-e
                                                             _tl1369213733_)))
                                                       (let ((_hd1370313770_
                                                              (##car _e1370213766_))
                                                             (_tl1370413773_
                                                              (##cdr _e1370213766_)))
                                                         (if (gx#stx-pair/null?
                                                              _hd1370313770_)
                                                             (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _hd1370313770_)
                               '0)
                         (let ((_g34759_
                                (gx#syntax-split-splice _hd1370313770_ '0)))
                           (begin
                             (let ((_g34760_ (values-count _g34759_)))
                               (if (not (fx= _g34760_ 2))
                                   (error "Context expects 2 values"
                                          _g34760_)))
                             (let ((_target1370513776_ (values-ref _g34759_ 0))
                                   (_tl1370713779_ (values-ref _g34759_ 1)))
                               (if (gx#stx-null? _tl1370713779_)
                                   (letrec ((_loop1370813782_
                                             (lambda (_hd1370613786_
                                                      _hd-bind1371213789_)
                                               (if (gx#stx-pair?
                                                    _hd1370613786_)
                                                   (let ((_e1370913792_
                                                          (gx#syntax-e
                                                           _hd1370613786_)))
                                                     (let ((_lp-hd1371013796_
                                                            (##car _e1370913792_))
                                                           (_lp-tl1371113799_
                                                            (##cdr _e1370913792_)))
                                                       (_loop1370813782_
                                                        _lp-tl1371113799_
                                                        (cons _lp-hd1371013796_
                                                              _hd-bind1371213789_))))
                                                   (let ((_hd-bind1371313802_
                                                          (reverse _hd-bind1371213789_)))
                                                     (if (gx#stx-null?
                                                          _tl1370413773_)
                                                         ((lambda (_L13806_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L13808_)
                    (let ()
                      (cons (gx#datum->syntax '#f 'let-values)
                            (cons (begin
                                    (gx#syntax-check-splice-targets
                                     _L13653_
                                     _L13808_)
                                    (foldr (lambda (_g1383113842_
                                                    _g1383213845_
                                                    _g1383313847_)
                                             (cons (cons (cons _g1383213845_
                                                               '())
                                                         (cons _g1383113842_
                                                               '()))
                                                   _g1383313847_))
                                           '()
                                           _L13653_
                                           _L13808_))
                                  (cons (cons (gx#datum->syntax '#f 'and)
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g1383413850_
                                                                _g1383513853_)
                                                         (cons _g1383413850_
                                                               _g1383513853_))
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'let-values)
                           (cons (begin
                                   (gx#syntax-check-splice-targets
                                    _L13808_
                                    _L13806_)
                                   (foldr (lambda (_g1383613856_
                                                   _g1383713859_
                                                   _g1383813861_)
                                            (cons (cons _g1383713859_
                                                        (cons _g1383613856_
                                                              '()))
                                                  _g1383813861_))
                                          '()
                                          _L13808_
                                          _L13806_))
                                 (begin
                                   '#!void
                                   (foldr (lambda (_g1383913864_ _g1384013867_)
                                            (cons _g1383913864_ _g1384013867_))
                                          '()
                                          _L13651_))))
                     '())
               _L13808_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                  _hd-bind1371313802_
                  _$e1370113762_)
                 (_g1368613719_ _g1368713723_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop1370813782_ _target1370513776_ '()))
                                   (_g1368613719_ _g1368713723_)))))
                         (_g1368613719_ _g1368713723_))
                     (_g1368613719_ _g1368713723_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1368613719_
                                                      _g1368713723_)))))))
                                 (_loop1369613742_ _target1369313736_ '()))
                               (_g1368613719_ _g1368713723_)))))
                     (_g1368613719_ _g1368713723_))
                 (_g1368613719_ _g1368713723_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1368613719_
                                                  _g1368713723_)))))
                                     (_g1368513870_
                                      (list (gx#gentemps
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g1387313876_
                                                               _g1387413879_)
                                                        (cons _g1387313876_
                                                              _g1387413879_))
                                                      '()
                                                      _L13654_)))
                                            (gx#stx-map
                                             _let-head13479_
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g1388113884_
                                                               _g1388213887_)
                                                        (cons _g1388113884_
                                                              _g1388213887_))
                                                      '()
                                                      _L13654_))))))
                                   (_g1348213540_ _g1348313544_)))
                             _body1353413647_
                             _e1351813615_
                             _hd1351913618_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1352913627_
                                                     _target1352613621_
                                                     '()))
                                                  (_g1348213540_
                                                   _g1348313544_)))))
                                        (_g1348213540_ _g1348313544_))
                                    (_g1348213540_ _g1348313544_)))))))
                (_loop1351213573_ _target1350913567_ '() '()))
              (_g1348213540_ _g1348313544_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1348213540_ _g1348313544_))
                                        (_g1348213540_ _g1348313544_))))
                                (_g1348213540_ _g1348313544_))))
                        (_g1348213540_ _g1348313544_))))
                 (_g1348013960_
                  (lambda (_g1348313894_)
                    (if (gx#stx-pair? _g1348313894_)
                        (let ((_e1348813897_ (gx#syntax-e _g1348313894_)))
                          (let ((_hd1348913901_ (##car _e1348813897_))
                                (_tl1349013904_ (##cdr _e1348813897_)))
                            (if (gx#stx-pair? _tl1349013904_)
                                (let ((_e1349113907_
                                       (gx#syntax-e _tl1349013904_)))
                                  (let ((_hd1349213911_ (##car _e1349113907_))
                                        (_tl1349313914_ (##cdr _e1349113907_)))
                                    (if (gx#stx-pair? _hd1349213911_)
                                        (let ((_e1349413917_
                                               (gx#syntax-e _hd1349213911_)))
                                          (let ((_hd1349513921_
                                                 (##car _e1349413917_))
                                                (_tl1349613924_
                                                 (##cdr _e1349413917_)))
                                            (if (gx#stx-pair? _tl1349613924_)
                                                (let ((_e1349713927_
                                                       (gx#syntax-e
                                                        _tl1349613924_)))
                                                  (let ((_hd1349813931_
                                                         (##car _e1349713927_))
                                                        (_tl1349913934_
                                                         (##cdr _e1349713927_)))
                                                    (if (gx#stx-null?
                                                         _tl1349913934_)
                                                        ((lambda (_L13937_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L13939_
                          _L13940_
                          _L13941_)
                   (if (_let-head?13477_ _L13940_)
                       (cons _L13941_
                             (cons (cons (cons _L13940_ (cons _L13939_ '()))
                                         '())
                                   _L13937_))
                       (_g1348113890_ _g1348313894_)))
                 _tl1349313914_
                 _hd1349813931_
                 _hd1349513921_
                 _hd1348913901_)
                (_g1348113890_ _g1348313894_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1348113890_
                                                 _g1348313894_))))
                                        (_g1348113890_ _g1348313894_))))
                                (_g1348113890_ _g1348313894_))))
                        (_g1348113890_ _g1348313894_)))))
            (_g1348013960_ _stx13474_)))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#alet*|
      (lambda (_$stx14088_)
        (let* ((_g1409314138_
                (lambda (_g1409414134_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1409414134_)))
               (_g1409214239_
                (lambda (_g1409414142_)
                  (if (gx#stx-pair? _g1409414142_)
                      (let ((_e1411514145_ (gx#syntax-e _g1409414142_)))
                        (let ((_hd1411614149_ (##car _e1411514145_))
                              (_tl1411714152_ (##cdr _e1411514145_)))
                          (if (gx#stx-pair? _tl1411714152_)
                              (let ((_e1411814155_
                                     (gx#syntax-e _tl1411714152_)))
                                (let ((_hd1411914159_ (##car _e1411814155_))
                                      (_tl1412014162_ (##cdr _e1411814155_)))
                                  (if (gx#stx-pair? _hd1411914159_)
                                      (let ((_e1412114165_
                                             (gx#syntax-e _hd1411914159_)))
                                        (let ((_hd1412214169_
                                               (##car _e1412114165_))
                                              (_tl1412314172_
                                               (##cdr _e1412114165_)))
                                          (if (gx#stx-pair/null?
                                               _tl1412014162_)
                                              (if (fx>= (gx#stx-length
                                                         _tl1412014162_)
                                                        '0)
                                                  (let ((_g34761_
                                                         (gx#syntax-split-splice
                                                          _tl1412014162_
                                                          '0)))
                                                    (begin
                                                      (let ((_g34762_
                                                             (values-count
                                                              _g34761_)))
                                                        (if (not (fx= _g34762_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g34762_)))
              (let ((_target1412414175_ (values-ref _g34761_ 0))
                    (_tl1412614178_ (values-ref _g34761_ 1)))
                (if (gx#stx-null? _tl1412614178_)
                    (letrec ((_loop1412714181_
                              (lambda (_hd1412514185_ _body1413114188_)
                                (if (gx#stx-pair? _hd1412514185_)
                                    (let ((_e1412814191_
                                           (gx#syntax-e _hd1412514185_)))
                                      (let ((_lp-hd1412914195_
                                             (##car _e1412814191_))
                                            (_lp-tl1413014198_
                                             (##cdr _e1412814191_)))
                                        (_loop1412714181_
                                         _lp-tl1413014198_
                                         (cons _lp-hd1412914195_
                                               _body1413114188_))))
                                    (let ((_body1413214201_
                                           (reverse _body1413114188_)))
                                      ((lambda (_L14205_
                                                _L14207_
                                                _L14208_
                                                _L14209_)
                                         (cons (gx#datum->syntax '#f 'alet)
                                               (cons (cons _L14208_ '())
                                                     (cons (cons _L14209_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L14207_
                               (begin
                                 '#!void
                                 (foldr (lambda (_g1423014233_ _g1423114236_)
                                          (cons _g1423014233_ _g1423114236_))
                                        '()
                                        _L14205_))))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _body1413214201_
                                       _tl1412314172_
                                       _hd1412214169_
                                       _hd1411614149_))))))
                      (_loop1412714181_ _target1412414175_ '()))
                    (_g1409314138_ _g1409414142_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1409314138_
                                                   _g1409414142_))
                                              (_g1409314138_ _g1409414142_))))
                                      (_g1409314138_ _g1409414142_))))
                              (_g1409314138_ _g1409414142_))))
                      (_g1409314138_ _g1409414142_))))
               (_g1409114321_
                (lambda (_g1409414243_)
                  (if (gx#stx-pair? _g1409414243_)
                      (let ((_e1409614246_ (gx#syntax-e _g1409414243_)))
                        (let ((_hd1409714250_ (##car _e1409614246_))
                              (_tl1409814253_ (##cdr _e1409614246_)))
                          (if (gx#stx-pair? _tl1409814253_)
                              (let ((_e1409914256_
                                     (gx#syntax-e _tl1409814253_)))
                                (let ((_hd1410014260_ (##car _e1409914256_))
                                      (_tl1410114263_ (##cdr _e1409914256_)))
                                  (if (gx#stx-null? _hd1410014260_)
                                      (if (gx#stx-pair/null? _tl1410114263_)
                                          (if (fx>= (gx#stx-length
                                                     _tl1410114263_)
                                                    '0)
                                              (let ((_g34763_
                                                     (gx#syntax-split-splice
                                                      _tl1410114263_
                                                      '0)))
                                                (begin
                                                  (let ((_g34764_
                                                         (values-count
                                                          _g34763_)))
                                                    (if (not (fx= _g34764_ 2))
                                                        (error "Context expects 2 values"
                                                               _g34764_)))
                                                  (let ((_target1410214266_
                                                         (values-ref
                                                          _g34763_
                                                          0))
                                                        (_tl1410414269_
                                                         (values-ref
                                                          _g34763_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl1410414269_)
                                                        (letrec ((_loop1410514272_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd1410314276_ _body1410914279_)
                            (if (gx#stx-pair? _hd1410314276_)
                                (let ((_e1410614282_
                                       (gx#syntax-e _hd1410314276_)))
                                  (let ((_lp-hd1410714286_
                                         (##car _e1410614282_))
                                        (_lp-tl1410814289_
                                         (##cdr _e1410614282_)))
                                    (_loop1410514272_
                                     _lp-tl1410814289_
                                     (cons _lp-hd1410714286_
                                           _body1410914279_))))
                                (let ((_body1411014292_
                                       (reverse _body1410914279_)))
                                  ((lambda (_L14296_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons '()
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g1431214315_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1431314318_)
                    (cons _g1431214315_ _g1431314318_))
                  '()
                  _L14296_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _body1411014292_))))))
                  (_loop1410514272_ _target1410214266_ '()))
                (_g1409214239_ _g1409414243_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1409214239_ _g1409414243_))
                                          (_g1409214239_ _g1409414243_))
                                      (_g1409214239_ _g1409414243_))))
                              (_g1409214239_ _g1409414243_))))
                      (_g1409214239_ _g1409414243_)))))
          (_g1409114321_ _$stx14088_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#@list|
      (lambda (_$stx14327_)
        (let* ((_g1433614393_
                (lambda (_g1433714389_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1433714389_)))
               (_g1433514422_
                (lambda (_g1433714397_)
                  (if (gx#stx-pair? _g1433714397_)
                      (let ((_e1438514400_ (gx#syntax-e _g1433714397_)))
                        (let ((_hd1438614404_ (##car _e1438514400_))
                              (_tl1438714407_ (##cdr _e1438514400_)))
                          ((lambda (_L14410_) _L14410_) _tl1438714407_)))
                      (_g1433614393_ _g1433714397_))))
               (_g1433414466_
                (lambda (_g1433714426_)
                  (if (gx#stx-pair? _g1433714426_)
                      (let ((_e1437814429_ (gx#syntax-e _g1433714426_)))
                        (let ((_hd1437914433_ (##car _e1437814429_))
                              (_tl1438014436_ (##cdr _e1437814429_)))
                          (if (gx#stx-pair? _tl1438014436_)
                              (let ((_e1438114439_
                                     (gx#syntax-e _tl1438014436_)))
                                (let ((_hd1438214443_ (##car _e1438114439_))
                                      (_tl1438314446_ (##cdr _e1438114439_)))
                                  ((lambda (_L14449_ _L14451_ _L14452_)
                                     (cons (gx#datum->syntax '#f 'cons)
                                           (cons _L14451_
                                                 (cons (cons _L14452_ _L14449_)
                                                       '()))))
                                   _tl1438314446_
                                   _hd1438214443_
                                   _hd1437914433_)))
                              (_g1433514422_ _g1433714426_))))
                      (_g1433514422_ _g1433714426_))))
               (_g1433314524_
                (lambda (_g1433714470_)
                  (if (gx#stx-pair? _g1433714470_)
                      (let ((_e1436614473_ (gx#syntax-e _g1433714470_)))
                        (let ((_hd1436714477_ (##car _e1436614473_))
                              (_tl1436814480_ (##cdr _e1436614473_)))
                          (if (gx#stx-pair? _tl1436814480_)
                              (let ((_e1436914483_
                                     (gx#syntax-e _tl1436814480_)))
                                (let ((_hd1437014487_ (##car _e1436914483_))
                                      (_tl1437114490_ (##cdr _e1436914483_)))
                                  (if (gx#stx-pair? _tl1437114490_)
                                      (let ((_e1437214493_
                                             (gx#syntax-e _tl1437114490_)))
                                        (let ((_hd1437314497_
                                               (##car _e1437214493_))
                                              (_tl1437414500_
                                               (##cdr _e1437214493_)))
                                          ((lambda (_L14503_
                                                    _L14505_
                                                    _L14506_
                                                    _L14507_)
                                             (if (gx#ellipsis? _L14505_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'foldr)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'cons)
                                                             (cons (cons _L14507_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L14503_)
                           (cons _L14506_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1433414466_
                                                  _g1433714470_)))
                                           _tl1437414500_
                                           _hd1437314497_
                                           _hd1437014487_
                                           _hd1436714477_)))
                                      (_g1433414466_ _g1433714470_))))
                              (_g1433414466_ _g1433714470_))))
                      (_g1433414466_ _g1433714470_))))
               (_g1433214578_
                (lambda (_g1433714528_)
                  (if (gx#stx-pair? _g1433714528_)
                      (let ((_e1435314531_ (gx#syntax-e _g1433714528_)))
                        (let ((_hd1435414535_ (##car _e1435314531_))
                              (_tl1435514538_ (##cdr _e1435314531_)))
                          (if (gx#stx-pair? _tl1435514538_)
                              (let ((_e1435614541_
                                     (gx#syntax-e _tl1435514538_)))
                                (let ((_hd1435714545_ (##car _e1435614541_))
                                      (_tl1435814548_ (##cdr _e1435614541_)))
                                  (if (gx#stx-pair? _tl1435814548_)
                                      (let ((_e1435914551_
                                             (gx#syntax-e _tl1435814548_)))
                                        (let ((_hd1436014555_
                                               (##car _e1435914551_))
                                              (_tl1436114558_
                                               (##cdr _e1435914551_)))
                                          (if (gx#stx-null? _tl1436114558_)
                                              ((lambda (_L14561_ _L14563_)
                                                 (if (gx#ellipsis? _L14561_)
                                                     _L14563_
                                                     (_g1433314524_
                                                      _g1433714528_)))
                                               _hd1436014555_
                                               _hd1435714545_)
                                              (_g1433314524_ _g1433714528_))))
                                      (_g1433314524_ _g1433714528_))))
                              (_g1433314524_ _g1433714528_))))
                      (_g1433314524_ _g1433714528_))))
               (_g1433114630_
                (lambda (_g1433714582_)
                  (if (gx#stx-pair? _g1433714582_)
                      (let ((_e1434214585_ (gx#syntax-e _g1433714582_)))
                        (let ((_hd1434314589_ (##car _e1434214585_))
                              (_tl1434414592_ (##cdr _e1434214585_)))
                          (if (gx#stx-pair? _tl1434414592_)
                              (let ((_e1434514595_
                                     (gx#syntax-e _tl1434414592_)))
                                (let ((_hd1434614599_ (##car _e1434514595_))
                                      (_tl1434714602_ (##cdr _e1434514595_)))
                                  (if (gx#stx-datum? _hd1434614599_)
                                      (if (equal? (gx#stx-e _hd1434614599_)
                                                  '::)
                                          (if (gx#stx-pair? _tl1434714602_)
                                              (let ((_e1434814605_
                                                     (gx#syntax-e
                                                      _tl1434714602_)))
                                                (let ((_hd1434914609_
                                                       (##car _e1434814605_))
                                                      (_tl1435014612_
                                                       (##cdr _e1434814605_)))
                                                  (if (gx#stx-null?
                                                       _tl1435014612_)
                                                      ((lambda (_L14615_)
                                                         _L14615_)
                                                       _hd1434914609_)
                                                      (_g1433214578_
                                                       _g1433714582_))))
                                              (_g1433214578_ _g1433714582_))
                                          (_g1433214578_ _g1433714582_))
                                      (_g1433214578_ _g1433714582_))))
                              (_g1433214578_ _g1433714582_))))
                      (_g1433214578_ _g1433714582_))))
               (_g1433014651_
                (lambda (_g1433714634_)
                  (if (gx#stx-pair? _g1433714634_)
                      (let ((_e1433814637_ (gx#syntax-e _g1433714634_)))
                        (let ((_hd1433914641_ (##car _e1433814637_))
                              (_tl1434014644_ (##cdr _e1433814637_)))
                          (if (gx#stx-null? _tl1434014644_)
                              ((lambda ()
                                 (cons (gx#datum->syntax '#f 'quote)
                                       (cons '() '()))))
                              (_g1433114630_ _g1433714634_))))
                      (_g1433114630_ _g1433714634_)))))
          (_g1433014651_ _$stx14327_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#quasiquote|
      (lambda (_stx14655_)
        (letrec ((_simple-quote?14658_
                  (lambda (_e15350_)
                    (let* ((_g1535815395_
                            (lambda (_g1535915391_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1535915391_)))
                           (_g1535715406_
                            (lambda (_g1535915399_) ((lambda () '#t))))
                           (_g1535615429_
                            (lambda (_g1535915410_)
                              (if (gx#stx-box? _g1535915410_)
                                  (let ((_e1538915413_
                                         (unbox (gx#syntax-e _g1535915410_))))
                                    ((lambda (_L15417_)
                                       (_simple-quote?14658_ _L15417_))
                                     _e1538915413_))
                                  (_g1535715406_ _g1535915410_))))
                           (_g1535515492_
                            (lambda (_g1535915433_)
                              (if (gx#stx-vector? _g1535915433_)
                                  (let ((_e1537815436_
                                         (vector->list
                                          (gx#syntax-e _g1535915433_))))
                                    (if (gx#stx-pair/null? _e1537815436_)
                                        (if (fx>= (gx#stx-length _e1537815436_)
                                                  '0)
                                            (let ((_g34765_
                                                   (gx#syntax-split-splice
                                                    _e1537815436_
                                                    '0)))
                                              (begin
                                                (let ((_g34766_
                                                       (values-count
                                                        _g34765_)))
                                                  (if (not (fx= _g34766_ 2))
                                                      (error "Context expects 2 values"
                                                             _g34766_)))
                                                (let ((_target1537915440_
                                                       (values-ref _g34765_ 0))
                                                      (_tl1538115443_
                                                       (values-ref
                                                        _g34765_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl1538115443_)
                                                      (letrec ((_loop1538215446_
                                                                (lambda (_hd1538015450_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _e1538615453_)
                          (if (gx#stx-pair? _hd1538015450_)
                              (let ((_e1538315456_
                                     (gx#syntax-e _hd1538015450_)))
                                (let ((_lp-hd1538415460_ (##car _e1538315456_))
                                      (_lp-tl1538515463_
                                       (##cdr _e1538315456_)))
                                  (_loop1538215446_
                                   _lp-tl1538515463_
                                   (cons _lp-hd1538415460_ _e1538615453_))))
                              (let ((_e1538715466_ (reverse _e1538615453_)))
                                ((lambda (_L15470_)
                                   (_simple-quote?14658_
                                    (begin
                                      '#!void
                                      (foldr (lambda (_g1548315486_
                                                      _g1548415489_)
                                               (cons _g1548315486_
                                                     _g1548415489_))
                                             '()
                                             _L15470_))))
                                 _e1538715466_))))))
                (_loop1538215446_ _target1537915440_ '()))
              (_g1535615429_ _g1535915433_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1535615429_ _g1535915433_))
                                        (_g1535615429_ _g1535915433_)))
                                  (_g1535615429_ _g1535915433_))))
                           (_g1535415522_
                            (lambda (_g1535915496_)
                              (if (gx#stx-pair? _g1535915496_)
                                  (let ((_e1537415499_
                                         (gx#syntax-e _g1535915496_)))
                                    (let ((_hd1537515503_
                                           (##car _e1537415499_))
                                          (_tl1537615506_
                                           (##cdr _e1537415499_)))
                                      ((lambda (_L15509_ _L15511_)
                                         (if (_simple-quote?14658_ _L15511_)
                                             (_simple-quote?14658_ _L15509_)
                                             '#f))
                                       _tl1537615506_
                                       _hd1537515503_)))
                                  (_g1535515492_ _g1535915496_))))
                           (_g1535315553_
                            (lambda (_g1535915526_)
                              (if (gx#stx-pair? _g1535915526_)
                                  (let ((_e1536615529_
                                         (gx#syntax-e _g1535915526_)))
                                    (let ((_hd1536715533_
                                           (##car _e1536615529_))
                                          (_tl1536815536_
                                           (##cdr _e1536615529_)))
                                      (if (gx#identifier? _hd1536715533_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<sugar>$<sugar:2>[1]#_g34767_|
                                               _hd1536715533_)
                                              (if (gx#stx-pair? _tl1536815536_)
                                                  (let ((_e1536915539_
                                                         (gx#syntax-e
                                                          _tl1536815536_)))
                                                    (let ((_hd1537015543_
                                                           (##car _e1536915539_))
                                                          (_tl1537115546_
                                                           (##cdr _e1536915539_)))
                                                      (if (gx#stx-null?
                                                           _tl1537115546_)
                                                          ((lambda () '#f))
                                                          (_g1535415522_
                                                           _g1535915526_))))
                                                  (_g1535415522_
                                                   _g1535915526_))
                                              (_g1535415522_ _g1535915526_))
                                          (_g1535415522_ _g1535915526_))))
                                  (_g1535415522_ _g1535915526_))))
                           (_g1535215584_
                            (lambda (_g1535915557_)
                              (if (gx#stx-pair? _g1535915557_)
                                  (let ((_e1536015560_
                                         (gx#syntax-e _g1535915557_)))
                                    (let ((_hd1536115564_
                                           (##car _e1536015560_))
                                          (_tl1536215567_
                                           (##cdr _e1536015560_)))
                                      (if (gx#identifier? _hd1536115564_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<sugar>$<sugar:2>[1]#_g34768_|
                                               _hd1536115564_)
                                              (if (gx#stx-pair? _tl1536215567_)
                                                  (let ((_e1536315570_
                                                         (gx#syntax-e
                                                          _tl1536215567_)))
                                                    (let ((_hd1536415574_
                                                           (##car _e1536315570_))
                                                          (_tl1536515577_
                                                           (##cdr _e1536315570_)))
                                                      (if (gx#stx-null?
                                                           _tl1536515577_)
                                                          ((lambda () '#f))
                                                          (_g1535315553_
                                                           _g1535915557_))))
                                                  (_g1535315553_
                                                   _g1535915557_))
                                              (_g1535315553_ _g1535915557_))
                                          (_g1535315553_ _g1535915557_))))
                                  (_g1535315553_ _g1535915557_)))))
                      (_g1535215584_ _e15350_))))
                 (_generate14660_
                  (lambda (_e14722_ _d14724_)
                    (let* ((_g1473314791_
                            (lambda (_g1473414787_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1473414787_)))
                           (_g1473214808_
                            (lambda (_g1473414795_)
                              ((lambda (_L14798_)
                                 (cons (gx#datum->syntax '#f 'quote)
                                       (cons _L14798_ '())))
                               _g1473414795_)))
                           (_g1473114860_
                            (lambda (_g1473414812_)
                              (if (gx#stx-box? _g1473414812_)
                                  (let ((_e1478414815_
                                         (unbox (gx#syntax-e _g1473414812_))))
                                    ((lambda (_L14819_)
                                       (let* ((_g1482914837_
                                               (lambda (_g1483014833_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1483014833_)))
                                              (_g1482814856_
                                               (lambda (_g1483014841_)
                                                 ((lambda (_L14844_)
                                                    (let ()
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'box)
                                                            (cons _L14844_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g1483014841_))))
                                         (_g1482814856_
                                          (_generate14660_
                                           _L14819_
                                           _d14724_))))
                                     _e1478414815_))
                                  (_g1473214808_ _g1473414812_))))
                           (_g1473014954_
                            (lambda (_g1473414864_)
                              (if (gx#stx-vector? _g1473414864_)
                                  (let ((_e1477314867_
                                         (vector->list
                                          (gx#syntax-e _g1473414864_))))
                                    (if (gx#stx-pair/null? _e1477314867_)
                                        (if (fx>= (gx#stx-length _e1477314867_)
                                                  '0)
                                            (let ((_g34769_
                                                   (gx#syntax-split-splice
                                                    _e1477314867_
                                                    '0)))
                                              (begin
                                                (let ((_g34770_
                                                       (values-count
                                                        _g34769_)))
                                                  (if (not (fx= _g34770_ 2))
                                                      (error "Context expects 2 values"
                                                             _g34770_)))
                                                (let ((_target1477414871_
                                                       (values-ref _g34769_ 0))
                                                      (_tl1477614874_
                                                       (values-ref
                                                        _g34769_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl1477614874_)
                                                      (letrec ((_loop1477714877_
                                                                (lambda (_hd1477514881_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _e1478114884_)
                          (if (gx#stx-pair? _hd1477514881_)
                              (let ((_e1477814887_
                                     (gx#syntax-e _hd1477514881_)))
                                (let ((_lp-hd1477914891_ (##car _e1477814887_))
                                      (_lp-tl1478014894_
                                       (##cdr _e1477814887_)))
                                  (_loop1477714877_
                                   _lp-tl1478014894_
                                   (cons _lp-hd1477914891_ _e1478114884_))))
                              (let ((_e1478214897_ (reverse _e1478114884_)))
                                ((lambda (_L14901_)
                                   (let* ((_g1491514923_
                                           (lambda (_g1491614919_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1491614919_)))
                                          (_g1491414942_
                                           (lambda (_g1491614927_)
                                             ((lambda (_L14930_)
                                                (let ()
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'list->vector)
                                                        (cons _L14930_ '()))))
                                              _g1491614927_))))
                                     (_g1491414942_
                                      (_generate14660_
                                       (begin
                                         '#!void
                                         (foldr (lambda (_g1494514948_
                                                         _g1494614951_)
                                                  (cons _g1494514948_
                                                        _g1494614951_))
                                                '()
                                                _L14901_))
                                       _d14724_))))
                                 _e1478214897_))))))
                (_loop1477714877_ _target1477414871_ '()))
              (_g1473114860_ _g1473414864_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1473114860_ _g1473414864_))
                                        (_g1473114860_ _g1473414864_)))
                                  (_g1473114860_ _g1473414864_))))
                           (_g1472915048_
                            (lambda (_g1473414958_)
                              (if (gx#stx-pair? _g1473414958_)
                                  (let ((_e1476914961_
                                         (gx#syntax-e _g1473414958_)))
                                    (let ((_hd1477014965_
                                           (##car _e1476914961_))
                                          (_tl1477114968_
                                           (##cdr _e1476914961_)))
                                      ((lambda (_L14971_ _L14973_)
                                         (let* ((_g1498414999_
                                                 (lambda (_g1498514995_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1498514995_)))
                                                (_g1498315044_
                                                 (lambda (_g1498515003_)
                                                   (if (gx#stx-pair?
                                                        _g1498515003_)
                                                       (let ((_e1498815006_
                                                              (gx#syntax-e
                                                               _g1498515003_)))
                                                         (let ((_hd1498915010_
                                                                (##car _e1498815006_))
                                                               (_tl1499015013_
                                                                (##cdr _e1498815006_)))
                                                           (if (gx#stx-pair?
                                                                _tl1499015013_)
                                                               (let ((_e1499115016_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl1499015013_)))
                         (let ((_hd1499215020_ (##car _e1499115016_))
                               (_tl1499315023_ (##cdr _e1499115016_)))
                           (if (gx#stx-null? _tl1499315023_)
                               ((lambda (_L15026_ _L15028_)
                                  (let ()
                                    (cons (gx#datum->syntax '#f 'cons)
                                          (cons _L15028_
                                                (cons _L15026_ '())))))
                                _hd1499215020_
                                _hd1498915010_)
                               (_g1498414999_ _g1498515003_))))
                       (_g1498414999_ _g1498515003_))))
               (_g1498414999_ _g1498515003_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g1498315044_
                                            (list (_generate14660_
                                                   _L14973_
                                                   _d14724_)
                                                  (_generate14660_
                                                   _L14971_
                                                   _d14724_)))))
                                       _tl1477114968_
                                       _hd1477014965_)))
                                  (_g1473014954_ _g1473414958_))))
                           (_g1472815133_
                            (lambda (_g1473415052_)
                              (if (gx#stx-pair? _g1473415052_)
                                  (let ((_e1475815055_
                                         (gx#syntax-e _g1473415052_)))
                                    (let ((_hd1475915059_
                                           (##car _e1475815055_))
                                          (_tl1476015062_
                                           (##cdr _e1475815055_)))
                                      (if (gx#stx-pair? _hd1475915059_)
                                          (let ((_e1476115065_
                                                 (gx#syntax-e _hd1475915059_)))
                                            (let ((_hd1476215069_
                                                   (##car _e1476115065_))
                                                  (_tl1476315072_
                                                   (##cdr _e1476115065_)))
                                              (if (gx#identifier?
                                                   _hd1476215069_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<sugar>$<sugar:2>[1]#_g34771_|
                                                       _hd1476215069_)
                                                      (if (gx#stx-pair?
                                                           _tl1476315072_)
                                                          (let ((_e1476415075_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1476315072_)))
                    (let ((_hd1476515079_ (##car _e1476415075_))
                          (_tl1476615082_ (##cdr _e1476415075_)))
                      (if (gx#stx-null? _tl1476615082_)
                          ((lambda (_L15085_ _L15087_)
                             (if (fxzero? _d14724_)
                                 (let* ((_g1510215110_
                                         (lambda (_g1510315106_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g1510315106_)))
                                        (_g1510115129_
                                         (lambda (_g1510315114_)
                                           ((lambda (_L15117_)
                                              (let ()
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'foldr)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'cons)
                                                            (cons _L15117_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L15087_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g1510315114_))))
                                   (_g1510115129_
                                    (_generate14660_ _L15085_ _d14724_)))
                                 (_g1472915048_ _g1473415052_)))
                           _tl1476015062_
                           _hd1476515079_)
                          (_g1472915048_ _g1473415052_))))
                  (_g1472915048_ _g1473415052_))
              (_g1472915048_ _g1473415052_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1472915048_
                                                   _g1473415052_))))
                                          (_g1472915048_ _g1473415052_))))
                                  (_g1472915048_ _g1473415052_))))
                           (_g1472715204_
                            (lambda (_g1473415137_)
                              (if (gx#stx-pair? _g1473415137_)
                                  (let ((_e1475015140_
                                         (gx#syntax-e _g1473415137_)))
                                    (let ((_hd1475115144_
                                           (##car _e1475015140_))
                                          (_tl1475215147_
                                           (##cdr _e1475015140_)))
                                      (if (gx#identifier? _hd1475115144_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<sugar>$<sugar:2>[1]#_g34772_|
                                               _hd1475115144_)
                                              (if (gx#stx-pair? _tl1475215147_)
                                                  (let ((_e1475315150_
                                                         (gx#syntax-e
                                                          _tl1475215147_)))
                                                    (let ((_hd1475415154_
                                                           (##car _e1475315150_))
                                                          (_tl1475515157_
                                                           (##cdr _e1475315150_)))
                                                      (if (gx#stx-null?
                                                           _tl1475515157_)
                                                          ((lambda (_L15160_)
                                                             (if (fxzero? _d14724_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'foldr)
                               (cons (gx#datum->syntax '#f 'cons)
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons '() '()))
                                           (cons _L15160_ '()))))
                         (let* ((_g1517315181_
                                 (lambda (_g1517415177_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1517415177_)))
                                (_g1517215200_
                                 (lambda (_g1517415185_)
                                   ((lambda (_L15188_)
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
                                                    (cons _L15188_ '())))))
                                    _g1517415185_))))
                           (_g1517215200_
                            (_generate14660_ _L15160_ (fx1- _d14724_))))))
                   _hd1475415154_)
                  (_g1472815133_ _g1473415137_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1472815133_
                                                   _g1473415137_))
                                              (_g1472815133_ _g1473415137_))
                                          (_g1472815133_ _g1473415137_))))
                                  (_g1472815133_ _g1473415137_))))
                           (_g1472615275_
                            (lambda (_g1473415208_)
                              (if (gx#stx-pair? _g1473415208_)
                                  (let ((_e1474315211_
                                         (gx#syntax-e _g1473415208_)))
                                    (let ((_hd1474415215_
                                           (##car _e1474315211_))
                                          (_tl1474515218_
                                           (##cdr _e1474315211_)))
                                      (if (gx#identifier? _hd1474415215_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<sugar>$<sugar:2>[1]#_g34773_|
                                               _hd1474415215_)
                                              (if (gx#stx-pair? _tl1474515218_)
                                                  (let ((_e1474615221_
                                                         (gx#syntax-e
                                                          _tl1474515218_)))
                                                    (let ((_hd1474715225_
                                                           (##car _e1474615221_))
                                                          (_tl1474815228_
                                                           (##cdr _e1474615221_)))
                                                      (if (gx#stx-null?
                                                           _tl1474815228_)
                                                          ((lambda (_L15231_)
                                                             (if (fxzero? _d14724_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L15231_
                         (let* ((_g1524415252_
                                 (lambda (_g1524515248_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1524515248_)))
                                (_g1524315271_
                                 (lambda (_g1524515256_)
                                   ((lambda (_L15259_)
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
                                                    (cons _L15259_ '())))))
                                    _g1524515256_))))
                           (_g1524315271_
                            (_generate14660_ _L15231_ (fx1- _d14724_))))))
                   _hd1474715225_)
                  (_g1472715204_ _g1473415208_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1472715204_
                                                   _g1473415208_))
                                              (_g1472715204_ _g1473415208_))
                                          (_g1472715204_ _g1473415208_))))
                                  (_g1472715204_ _g1473415208_))))
                           (_g1472515346_
                            (lambda (_g1473415279_)
                              (if (gx#stx-pair? _g1473415279_)
                                  (let ((_e1473615282_
                                         (gx#syntax-e _g1473415279_)))
                                    (let ((_hd1473715286_
                                           (##car _e1473615282_))
                                          (_tl1473815289_
                                           (##cdr _e1473615282_)))
                                      (if (gx#identifier? _hd1473715286_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<sugar>$<sugar:2>[1]#_g34774_|
                                               _hd1473715286_)
                                              (if (gx#stx-pair? _tl1473815289_)
                                                  (let ((_e1473915292_
                                                         (gx#syntax-e
                                                          _tl1473815289_)))
                                                    (let ((_hd1474015296_
                                                           (##car _e1473915292_))
                                                          (_tl1474115299_
                                                           (##cdr _e1473915292_)))
                                                      (if (gx#stx-null?
                                                           _tl1474115299_)
                                                          ((lambda (_L15302_)
                                                             (let* ((_g1531515323_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1531615319_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g1531615319_)))
                            (_g1531415342_
                             (lambda (_g1531615327_)
                               ((lambda (_L15330_)
                                  (let ()
                                    (cons (gx#datum->syntax '#f 'list)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'quote)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'quasiquote)
                                                            '()))
                                                (cons _L15330_ '())))))
                                _g1531615327_))))
                       (_g1531415342_
                        (_generate14660_ _L15302_ (fx1+ _d14724_)))))
                   _hd1474015296_)
                  (_g1472615275_ _g1473415279_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1472615275_
                                                   _g1473415279_))
                                              (_g1472615275_ _g1473415279_))
                                          (_g1472615275_ _g1473415279_))))
                                  (_g1472615275_ _g1473415279_)))))
                      (_g1472515346_ _e14722_)))))
          (let* ((_g1466214676_
                  (lambda (_g1466314672_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1466314672_)))
                 (_g1466114718_
                  (lambda (_g1466314680_)
                    (if (gx#stx-pair? _g1466314680_)
                        (let ((_e1466514683_ (gx#syntax-e _g1466314680_)))
                          (let ((_hd1466614687_ (##car _e1466514683_))
                                (_tl1466714690_ (##cdr _e1466514683_)))
                            (if (gx#stx-pair? _tl1466714690_)
                                (let ((_e1466814693_
                                       (gx#syntax-e _tl1466714690_)))
                                  (let ((_hd1466914697_ (##car _e1466814693_))
                                        (_tl1467014700_ (##cdr _e1466814693_)))
                                    (if (gx#stx-null? _tl1467014700_)
                                        ((lambda (_L14703_)
                                           (if (_simple-quote?14658_ _L14703_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _L14703_ '()))
                                               (_generate14660_ _L14703_ '0)))
                                         _hd1466914697_)
                                        (_g1466214676_ _g1466314680_))))
                                (_g1466214676_ _g1466314680_))))
                        (_g1466214676_ _g1466314680_)))))
            (_g1466114718_ _stx14655_)))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#delay|
      (lambda (_$stx15590_)
        (let* ((_g1559515616_
                (lambda (_g1559615612_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1559615612_)))
               (_g1559415657_
                (lambda (_g1559615620_)
                  (if (gx#stx-pair? _g1559615620_)
                      (let ((_e1560515623_ (gx#syntax-e _g1559615620_)))
                        (let ((_hd1560615627_ (##car _e1560515623_))
                              (_tl1560715630_ (##cdr _e1560515623_)))
                          (if (gx#stx-pair? _tl1560715630_)
                              (let ((_e1560815633_
                                     (gx#syntax-e _tl1560715630_)))
                                (let ((_hd1560915637_ (##car _e1560815633_))
                                      (_tl1561015640_ (##cdr _e1560815633_)))
                                  (if (gx#stx-null? _tl1561015640_)
                                      ((lambda (_L15643_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                'make-promise)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'lambda%)
                                                           (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L15643_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _hd1560915637_)
                                      (_g1559515616_ _g1559615620_))))
                              (_g1559515616_ _g1559615620_))))
                      (_g1559515616_ _g1559615620_))))
               (_g1559315697_
                (lambda (_g1559615661_)
                  (if (gx#stx-pair? _g1559615661_)
                      (let ((_e1559815664_ (gx#syntax-e _g1559615661_)))
                        (let ((_hd1559915668_ (##car _e1559815664_))
                              (_tl1560015671_ (##cdr _e1559815664_)))
                          (if (gx#stx-pair? _tl1560015671_)
                              (let ((_e1560115674_
                                     (gx#syntax-e _tl1560015671_)))
                                (let ((_hd1560215678_ (##car _e1560115674_))
                                      (_tl1560315681_ (##cdr _e1560115674_)))
                                  (if (gx#stx-null? _tl1560315681_)
                                      ((lambda (_L15684_)
                                         (if (gx#stx-datum? _L15684_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _L15684_ '()))
                                             (_g1559415657_ _g1559615661_)))
                                       _hd1560215678_)
                                      (_g1559415657_ _g1559615661_))))
                              (_g1559415657_ _g1559615661_))))
                      (_g1559415657_ _g1559615661_)))))
          (_g1559315697_ _$stx15590_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#cut|
      (lambda (_stx15701_)
        (letrec ((_generate15704_
                  (lambda (_rest15823_)
                    (let _lp15826_ ((_rest15829_ _rest15823_)
                                    (_hd15831_ '())
                                    (_body15832_ '()))
                      (let* ((_g1583515847_
                              (lambda (_g1583615843_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1583615843_)))
                             (_g1583415858_
                              (lambda (_g1583615851_)
                                ((lambda ()
                                   (values (reverse _hd15831_)
                                           (reverse _body15832_)
                                           '#f)))))
                             (_g1583315944_
                              (lambda (_g1583615862_)
                                (if (gx#stx-pair? _g1583615862_)
                                    (let ((_e1583915865_
                                           (gx#syntax-e _g1583615862_)))
                                      (let ((_hd1584015869_
                                             (##car _e1583915865_))
                                            (_tl1584115872_
                                             (##cdr _e1583915865_)))
                                        ((lambda (_L15875_ _L15877_)
                                           (let* ((_g1589415901_
                                                   (lambda (_g1589515897_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g1589515897_)))
                                                  (_g1589315912_
                                                   (lambda (_g1589515905_)
                                                     ((lambda ()
                                                        (_lp15826_
                                                         _L15875_
                                                         _hd15831_
                                                         (cons _L15877_
                                                               _body15832_))))))
                                                  (_g1589215926_
                                                   (lambda (_g1589515916_)
                                                     (if (gx#identifier?
                                                          _g1589515916_)
                                                         (if (gx#free-identifier=?
                                                              |gerbil/core$<sugar>$<sugar:2>[1]#_g34775_|
                                                              _g1589515916_)
                                                             ((lambda ()
                                                                (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L15875_)
                            (let ((_tail15923_ (gx#genident)))
                              (values (foldl cons _tail15923_ _hd15831_)
                                      (foldl cons
                                             (list _tail15923_)
                                             _body15832_)
                                      '#t))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _stx15701_
                             _L15877_))))
                     (_g1589315912_ _g1589515916_))
                 (_g1589315912_ _g1589515916_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1589115940_
                                                   (lambda (_g1589515930_)
                                                     (if (gx#identifier?
                                                          _g1589515930_)
                                                         (if (gx#free-identifier=?
                                                              |gerbil/core$<sugar>$<sugar:2>[1]#_g34776_|
                                                              _g1589515930_)
                                                             ((lambda ()
                                                                (let ((_arg15937_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#genident)))
                          (_lp15826_
                           _L15875_
                           (cons _arg15937_ _hd15831_)
                           (cons _arg15937_ _body15832_)))))
                     (_g1589215926_ _g1589515930_))
                 (_g1589215926_ _g1589515930_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1589115940_ _L15877_)))
                                         _tl1584115872_
                                         _hd1584015869_)))
                                    (_g1583415858_ _g1583615862_)))))
                        (_g1583315944_ _rest15829_))))))
          (let* ((_g1570715718_
                  (lambda (_g1570815714_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1570815714_)))
                 (_g1570615819_
                  (lambda (_g1570815722_)
                    (if (gx#stx-pair? _g1570815722_)
                        (let ((_e1571015725_ (gx#syntax-e _g1570815722_)))
                          (let ((_hd1571115729_ (##car _e1571015725_))
                                (_tl1571215732_ (##cdr _e1571015725_)))
                            ((lambda (_L15735_)
                               (if (if (gx#stx-list? _L15735_)
                                       (not (gx#stx-null? _L15735_))
                                       '#f)
                                   (let ((_g34777_ (_generate15704_ _L15735_)))
                                     (begin
                                       (let ((_g34778_
                                              (values-count _g34777_)))
                                         (if (not (fx= _g34778_ 3))
                                             (error "Context expects 3 values"
                                                    _g34778_)))
                                       (let ((_hd15748_
                                              (values-ref _g34777_ 0))
                                             (_body15750_
                                              (values-ref _g34777_ 1))
                                             (_tail?15751_
                                              (values-ref _g34777_ 2)))
                                         (let* ((_g1575315761_
                                                 (lambda (_g1575415757_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1575415757_)))
                                                (_g1575215815_
                                                 (lambda (_g1575415765_)
                                                   ((lambda (_L15768_)
                                                      (let ()
                                                        (let* ((_g1578115789_
                                                                (lambda (_g1578215785_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1578215785_)))
                       (_g1578015811_
                        (lambda (_g1578215793_)
                          ((lambda (_L15796_)
                             (let ()
                               (let ()
                                 (if _tail?15751_
                                     (cons (gx#datum->syntax '#f 'lambda%)
                                           (cons _L15768_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'apply)
                                                             _L15796_)
                                                       '())))
                                     (cons (gx#datum->syntax '#f 'lambda%)
                                           (cons _L15768_
                                                 (cons _L15796_ '())))))))
                           _g1578215793_))))
                  (_g1578015811_ _body15750_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1575415765_))))
                                           (_g1575215815_ _hd15748_)))))
                                   (_g1570715718_ _g1570815722_)))
                             _tl1571215732_)))
                        (_g1570715718_ _g1570815722_)))))
            (_g1570615819_ _stx15701_)))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#<>|
      (lambda (_$stx15949_)
        (let ((_g1595215959_
               (lambda (_g1595315955_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1595315955_))))
          (_g1595215959_ _$stx15949_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#<...>|
      (lambda (_$stx15963_)
        (let ((_g1596615973_
               (lambda (_g1596715969_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1596715969_))))
          (_g1596615973_ _$stx15963_))))))
