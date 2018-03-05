(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g34505_|
    (gx#make-syntax-quote '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g34506_|
    (gx#make-syntax-quote 'else #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g34555_|
    (gx#make-syntax-quote 'values #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g34556_|
    (gx#make-syntax-quote 'values #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g34557_|
    (gx#make-syntax-quote 'values #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g34572_|
    (gx#make-syntax-quote
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g34573_|
    (gx#make-syntax-quote 'unquote #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g34576_|
    (gx#make-syntax-quote
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g34577_|
    (gx#make-syntax-quote
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g34578_|
    (gx#make-syntax-quote 'unquote #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g34579_|
    (gx#make-syntax-quote 'quasiquote #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g34580_|
    (gx#make-syntax-quote '<...> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g34581_|
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
                                              (let ((_g34471_
                                                     (gx#syntax-split-splice
                                                      _hd66616706_
                                                      '0)))
                                                (begin
                                                  (let ((_g34472_
                                                         (values-count
                                                          _g34471_)))
                                                    (if (not (fx= _g34472_ 2))
                                                        (error "Context expects 2 values"
                                                               _g34472_)))
                                                  (let ((_target66636712_
                                                         (values-ref
                                                          _g34471_
                                                          0))
                                                        (_tl66656715_
                                                         (values-ref
                                                          _g34471_
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
                                                  (let ((_g34473_
                                                         (gx#syntax-split-splice
                                                          _hd66736746_
                                                          '0)))
                                                    (begin
                                                      (let ((_g34474_
                                                             (values-count
                                                              _g34473_)))
                                                        (if (not (fx= _g34474_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g34474_)))
              (let ((_target66756752_ (values-ref _g34473_ 0))
                    (_tl66776755_ (values-ref _g34473_ 1)))
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
                                            (let ((_g34475_
                                                   (gx#syntax-split-splice
                                                    _g62226242_
                                                    '0)))
                                              (begin
                                                (let ((_g34476_
                                                       (values-count
                                                        _g34475_)))
                                                  (if (not (fx= _g34476_ 2))
                                                      (error "Context expects 2 values"
                                                             _g34476_)))
                                                (let ((_target62246245_
                                                       (values-ref _g34475_ 0))
                                                      (_tl62266248_
                                                       (values-ref
                                                        _g34475_
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
                                                       (let ((_g34477_
                                                              (gx#syntax-split-splice
                                                               _g62976317_
                                                               '0)))
                                                         (begin
                                                           (let ((_g34478_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (values-count _g34477_)))
                     (if (not (fx= _g34478_ 2))
                         (error "Context expects 2 values" _g34478_)))
                   (let ((_target62996320_ (values-ref _g34477_ 0))
                         (_tl63016323_ (values-ref _g34477_ 1)))
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
                                                        (let ((_g34479_
                                                               (gx#syntax-split-splice
                                                                _hd64326477_
                                                                '0)))
                                                          (begin
                                                            (let ((_g34480_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (values-count _g34479_)))
                      (if (not (fx= _g34480_ 2))
                          (error "Context expects 2 values" _g34480_)))
                    (let ((_target64346483_ (values-ref _g34479_ 0))
                          (_tl64366486_ (values-ref _g34479_ 1)))
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
                    (let ((_g34481_ (gx#syntax-split-splice _hd64446517_ '0)))
                      (begin
                        (let ((_g34482_ (values-count _g34481_)))
                          (if (not (fx= _g34482_ 2))
                              (error "Context expects 2 values" _g34482_)))
                        (let ((_target64466523_ (values-ref _g34481_ 0))
                              (_tl64486526_ (values-ref _g34481_ 1)))
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
                                                    (let ((_g34483_
                                                           (gx#syntax-split-splice
                                                            _hd60226064_
                                                            '0)))
                                                      (begin
                                                        (let ((_g34484_
                                                               (values-count
                                                                _g34483_)))
                                                          (if (not (fx= _g34484_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                2))
                      (error "Context expects 2 values" _g34484_)))
                (let ((_target60246070_ (values-ref _g34483_ 0))
                      (_tl60266073_ (values-ref _g34483_ 1)))
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
                                                        (let ((_g34485_
                                                               (gx#syntax-split-splice
                                                                _hd60346104_
                                                                '0)))
                                                          (begin
                                                            (let ((_g34486_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (values-count _g34485_)))
                      (if (not (fx= _g34486_ 2))
                          (error "Context expects 2 values" _g34486_)))
                    (let ((_target60366110_ (values-ref _g34485_ 0))
                          (_tl60386113_ (values-ref _g34485_ 1)))
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
                                                          (let ((_g34487_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_kw-lambda-split4900_ _L4973_)))
                    (begin
                      (let ((_g34488_ (values-count _g34487_)))
                        (if (not (fx= _g34488_ 3))
                            (error "Context expects 3 values" _g34488_)))
                      (let ((_key5009_ (values-ref _g34487_ 0))
                            (_kwargs5011_ (values-ref _g34487_ 1))
                            (_args5012_ (values-ref _g34487_ 2)))
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
                                           (let ((_g34489_
                                                  (_opt-lambda-split4898_
                                                   _L5186_)))
                                             (begin
                                               (let ((_g34490_
                                                      (values-count _g34489_)))
                                                 (if (not (fx= _g34490_ 3))
                                                     (error "Context expects 3 values"
                                                            _g34490_)))
                                               (let ((_pre5199_
                                                      (values-ref _g34489_ 0))
                                                     (_opt5201_
                                                      (values-ref _g34489_ 1))
                                                     (_tail5202_
                                                      (values-ref _g34489_ 2)))
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
                                                         (let ((_g34491_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g52615281_
                         '0)))
                   (begin
                     (let ((_g34492_ (values-count _g34491_)))
                       (if (not (fx= _g34492_ 2))
                           (error "Context expects 2 values" _g34492_)))
                     (let ((_target52635284_ (values-ref _g34491_ 0))
                           (_tl52655287_ (values-ref _g34491_ 1)))
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
                                                  (let ((_g34493_
                                                         (gx#syntax-split-splice
                                                          _tl80748182_
                                                          '0)))
                                                    (begin
                                                      (let ((_g34494_
                                                             (values-count
                                                              _g34493_)))
                                                        (if (not (fx= _g34494_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g34494_)))
              (let ((_target80788195_ (values-ref _g34493_ 0))
                    (_tl80808198_ (values-ref _g34493_ 1)))
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
                                          (let ((_g34495_
                                                 (gx#syntax-split-splice
                                                  _tl82748313_
                                                  '0)))
                                            (begin
                                              (let ((_g34496_
                                                     (values-count _g34495_)))
                                                (if (not (fx= _g34496_ 2))
                                                    (error "Context expects 2 values"
                                                           _g34496_)))
                                              (let ((_target82758316_
                                                     (values-ref _g34495_ 0))
                                                    (_tl82778319_
                                                     (values-ref _g34495_ 1)))
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
                                          (let ((_g34497_
                                                 (gx#syntax-split-splice
                                                  _tl84738512_
                                                  '0)))
                                            (begin
                                              (let ((_g34498_
                                                     (values-count _g34497_)))
                                                (if (not (fx= _g34498_ 2))
                                                    (error "Context expects 2 values"
                                                           _g34498_)))
                                              (let ((_target84748515_
                                                     (values-ref _g34497_ 0))
                                                    (_tl84768518_
                                                     (values-ref _g34497_ 1)))
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
                  (lambda (_e10674_ _clauses10676_)
                    (let _lp10678_ ((_rest10681_ _clauses10676_)
                                    (_datums10683_ '())
                                    (_dispatch10684_ '())
                                    (_default10685_ '#f))
                      (let* ((_g1068810700_
                              (lambda (_g1068910696_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1068910696_)))
                             (_g1068710715_
                              (lambda (_g1068910704_)
                                (if (gx#stx-null? _g1068910704_)
                                    ((lambda ()
                                       (begin
                                         (_check-duplicate-datums8583_
                                          _datums10683_)
                                         (values (reverse _datums10683_)
                                                 (reverse _dispatch10684_)
                                                 (let ((_$e10711_
                                                        _default10685_))
                                                   (if _$e10711_
                                                       _$e10711_
                                                       '#!void))))))
                                    (_g1068810700_ _g1068910704_))))
                             (_g1068611146_
                              (lambda (_g1068910719_)
                                (if (gx#stx-pair? _g1068910719_)
                                    (let ((_e1069210722_
                                           (gx#syntax-e _g1068910719_)))
                                      (let ((_hd1069310726_
                                             (##car _e1069210722_))
                                            (_tl1069410729_
                                             (##cdr _e1069210722_)))
                                        ((lambda (_L10732_ _L10734_)
                                           (let* ((_g1075110814_
                                                   (lambda (_g1075210810_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g1075210810_)))
                                                  (_g1075010937_
                                                   (lambda (_g1075210818_)
                                                     (if (gx#stx-pair?
                                                          _g1075210818_)
                                                         (let ((_e1078810821_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1075210818_)))
                   (let ((_hd1078910825_ (##car _e1078810821_))
                         (_tl1079010828_ (##cdr _e1078810821_)))
                     (if (gx#stx-pair/null? _hd1078910825_)
                         (if (fx>= (gx#stx-length _hd1078910825_) '0)
                             (let ((_g34499_
                                    (gx#syntax-split-splice
                                     _hd1078910825_
                                     '0)))
                               (begin
                                 (let ((_g34500_ (values-count _g34499_)))
                                   (if (not (fx= _g34500_ 2))
                                       (error "Context expects 2 values"
                                              _g34500_)))
                                 (let ((_target1079110831_
                                        (values-ref _g34499_ 0))
                                       (_tl1079310834_
                                        (values-ref _g34499_ 1)))
                                   (if (gx#stx-null? _tl1079310834_)
                                       (letrec ((_loop1079410837_
                                                 (lambda (_hd1079210841_
                                                          _datum1079810844_)
                                                   (if (gx#stx-pair?
                                                        _hd1079210841_)
                                                       (let ((_e1079510847_
                                                              (gx#syntax-e
                                                               _hd1079210841_)))
                                                         (let ((_lp-hd1079610851_
                                                                (##car _e1079510847_))
                                                               (_lp-tl1079710854_
                                                                (##cdr _e1079510847_)))
                                                           (_loop1079410837_
                                                            _lp-tl1079710854_
                                                            (cons _lp-hd1079610851_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _datum1079810844_))))
               (let ((_datum1079910857_ (reverse _datum1079810844_)))
                 (if (gx#stx-pair/null? _tl1079010828_)
                     (if (fx>= (gx#stx-length _tl1079010828_) '0)
                         (let ((_g34501_
                                (gx#syntax-split-splice _tl1079010828_ '0)))
                           (begin
                             (let ((_g34502_ (values-count _g34501_)))
                               (if (not (fx= _g34502_ 2))
                                   (error "Context expects 2 values"
                                          _g34502_)))
                             (let ((_target1080010861_ (values-ref _g34501_ 0))
                                   (_tl1080210864_ (values-ref _g34501_ 1)))
                               (if (gx#stx-null? _tl1080210864_)
                                   (letrec ((_loop1080310867_
                                             (lambda (_hd1080110871_
                                                      _body1080710874_)
                                               (if (gx#stx-pair?
                                                    _hd1080110871_)
                                                   (let ((_e1080410877_
                                                          (gx#syntax-e
                                                           _hd1080110871_)))
                                                     (let ((_lp-hd1080510881_
                                                            (##car _e1080410877_))
                                                           (_lp-tl1080610884_
                                                            (##cdr _e1080410877_)))
                                                       (_loop1080310867_
                                                        _lp-tl1080610884_
                                                        (cons _lp-hd1080510881_
                                                              _body1080710874_))))
                                                   (let ((_body1080810887_
                                                          (reverse _body1080710874_)))
                                                     ((lambda (_L10891_
                                                               _L10893_)
                                                        (if (null? (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#!void
                             (foldr (lambda (_g1091210915_ _g1091310918_)
                                      (cons _g1091210915_ _g1091310918_))
                                    '()
                                    _L10893_)))
                    (_lp10678_
                     _L10732_
                     _datums10683_
                     _dispatch10684_
                     _default10685_)
                    (_lp10678_
                     _L10732_
                     (cons (map gx#stx-e
                                (begin
                                  '#!void
                                  (foldr (lambda (_g1092010923_ _g1092110926_)
                                           (cons _g1092010923_ _g1092110926_))
                                         '()
                                         _L10893_)))
                           _datums10683_)
                     (cons (cons (gx#datum->syntax '#f 'begin)
                                 (begin
                                   '#!void
                                   (foldr (lambda (_g1092810931_ _g1092910934_)
                                            (cons _g1092810931_ _g1092910934_))
                                          '()
                                          _L10891_)))
                           _dispatch10684_)
                     _default10685_)))
              _body1080810887_
              _datum1079910857_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop1080310867_ _target1080010861_ '()))
                                   (_g1075110814_ _g1075210818_)))))
                         (_g1075110814_ _g1075210818_))
                     (_g1075110814_ _g1075210818_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop1079410837_
                                          _target1079110831_
                                          '()))
                                       (_g1075110814_ _g1075210818_)))))
                             (_g1075110814_ _g1075210818_))
                         (_g1075110814_ _g1075210818_))))
                 (_g1075110814_ _g1075210818_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1074911072_
                                                   (lambda (_g1075210941_)
                                                     (if (gx#stx-pair?
                                                          _g1075210941_)
                                                         (let ((_e1076810944_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1075210941_)))
                   (let ((_hd1076910948_ (##car _e1076810944_))
                         (_tl1077010951_ (##cdr _e1076810944_)))
                     (if (gx#stx-pair/null? _hd1076910948_)
                         (if (fx>= (gx#stx-length _hd1076910948_) '0)
                             (let ((_g34503_
                                    (gx#syntax-split-splice
                                     _hd1076910948_
                                     '0)))
                               (begin
                                 (let ((_g34504_ (values-count _g34503_)))
                                   (if (not (fx= _g34504_ 2))
                                       (error "Context expects 2 values"
                                              _g34504_)))
                                 (let ((_target1077110954_
                                        (values-ref _g34503_ 0))
                                       (_tl1077310957_
                                        (values-ref _g34503_ 1)))
                                   (if (gx#stx-null? _tl1077310957_)
                                       (letrec ((_loop1077410960_
                                                 (lambda (_hd1077210964_
                                                          _datum1077810967_)
                                                   (if (gx#stx-pair?
                                                        _hd1077210964_)
                                                       (let ((_e1077510970_
                                                              (gx#syntax-e
                                                               _hd1077210964_)))
                                                         (let ((_lp-hd1077610974_
                                                                (##car _e1077510970_))
                                                               (_lp-tl1077710977_
                                                                (##cdr _e1077510970_)))
                                                           (_loop1077410960_
                                                            _lp-tl1077710977_
                                                            (cons _lp-hd1077610974_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _datum1077810967_))))
               (let ((_datum1077910980_ (reverse _datum1077810967_)))
                 (if (gx#stx-pair? _tl1077010951_)
                     (let ((_e1078010984_ (gx#syntax-e _tl1077010951_)))
                       (let ((_hd1078110988_ (##car _e1078010984_))
                             (_tl1078210991_ (##cdr _e1078010984_)))
                         (if (gx#identifier? _hd1078110988_)
                             (if (gx#free-identifier=?
                                  |gerbil/core$<sugar>$<sugar:2>[1]#_g34505_|
                                  _hd1078110988_)
                                 (if (gx#stx-pair? _tl1078210991_)
                                     (let ((_e1078310994_
                                            (gx#syntax-e _tl1078210991_)))
                                       (let ((_hd1078410998_
                                              (##car _e1078310994_))
                                             (_tl1078511001_
                                              (##cdr _e1078310994_)))
                                         (if (gx#stx-null? _tl1078511001_)
                                             ((lambda (_L11004_ _L11006_)
                                                (if (null? (begin
                                                             '#!void
                                                             (foldr (lambda (_g1102411027_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1102511030_)
                              (cons _g1102411027_ _g1102511030_))
                            '()
                            _L11006_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_lp10678_
                                                     _L10732_
                                                     _datums10683_
                                                     _dispatch10684_
                                                     _default10685_)
                                                    (let* ((_g1103311041_
                                                            (lambda (_g1103411037_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g1103411037_)))
                                                           (_g1103211068_
                                                            (lambda (_g1103411045_)
                                                              ((lambda (_L11048_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (_lp10678_
                            _L10732_
                            (cons (map gx#stx-e
                                       (begin
                                         '#!void
                                         (foldr (lambda (_g1105911062_
                                                         _g1106011065_)
                                                  (cons _g1105911062_
                                                        _g1106011065_))
                                                '()
                                                _L11006_)))
                                  _datums10683_)
                            (cons (cons _L11004_ (cons _L11048_ '()))
                                  _dispatch10684_)
                            _default10685_)))
                       _g1103411045_))))
              (_g1103211068_ _e10674_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd1078410998_
                                              _datum1077910980_)
                                             (_g1075010937_ _g1075210941_))))
                                     (_g1075010937_ _g1075210941_))
                                 (_g1075010937_ _g1075210941_))
                             (_g1075010937_ _g1075210941_))))
                     (_g1075010937_ _g1075210941_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop1077410960_
                                          _target1077110954_
                                          '()))
                                       (_g1075010937_ _g1075210941_)))))
                             (_g1075010937_ _g1075210941_))
                         (_g1075010937_ _g1075210941_))))
                 (_g1075010937_ _g1075210941_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1074811142_
                                                   (lambda (_g1075211076_)
                                                     (if (gx#stx-pair?
                                                          _g1075211076_)
                                                         (let ((_e1075411079_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1075211076_)))
                   (let ((_hd1075511083_ (##car _e1075411079_))
                         (_tl1075611086_ (##cdr _e1075411079_)))
                     (if (gx#identifier? _hd1075511083_)
                         (if (gx#free-identifier=?
                              |gerbil/core$<sugar>$<sugar:2>[1]#_g34506_|
                              _hd1075511083_)
                             (if (gx#stx-pair/null? _tl1075611086_)
                                 (if (fx>= (gx#stx-length _tl1075611086_) '0)
                                     (let ((_g34507_
                                            (gx#syntax-split-splice
                                             _tl1075611086_
                                             '0)))
                                       (begin
                                         (let ((_g34508_
                                                (values-count _g34507_)))
                                           (if (not (fx= _g34508_ 2))
                                               (error "Context expects 2 values"
                                                      _g34508_)))
                                         (let ((_target1075711089_
                                                (values-ref _g34507_ 0))
                                               (_tl1075911092_
                                                (values-ref _g34507_ 1)))
                                           (if (gx#stx-null? _tl1075911092_)
                                               (letrec ((_loop1076011095_
                                                         (lambda (_hd1075811099_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _body1076411102_)
                   (if (gx#stx-pair? _hd1075811099_)
                       (let ((_e1076111105_ (gx#syntax-e _hd1075811099_)))
                         (let ((_lp-hd1076211109_ (##car _e1076111105_))
                               (_lp-tl1076311112_ (##cdr _e1076111105_)))
                           (_loop1076011095_
                            _lp-tl1076311112_
                            (cons _lp-hd1076211109_ _body1076411102_))))
                       (let ((_body1076511115_ (reverse _body1076411102_)))
                         ((lambda (_L11119_)
                            (if (gx#stx-null? _L10732_)
                                (if _default10685_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Duplicate else clause"
                                     _stx8578_
                                     _L10734_)
                                    (_lp10678_
                                     _L10732_
                                     _datums10683_
                                     _dispatch10684_
                                     (cons (gx#datum->syntax '#f 'begin)
                                           (begin
                                             '#!void
                                             (foldr (lambda (_g1113311136_
                                                             _g1113411139_)
                                                      (cons _g1113311136_
                                                            _g1113411139_))
                                                    '()
                                                    _L11119_)))))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Misplaced else clause"
                                 _stx8578_
                                 _L10734_)))
                          _body1076511115_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1076011095_
                                                  _target1075711089_
                                                  '()))
                                               (_g1074911072_
                                                _g1075211076_)))))
                                     (_g1074911072_ _g1075211076_))
                                 (_g1074911072_ _g1075211076_))
                             (_g1074911072_ _g1075211076_))
                         (_g1074911072_ _g1075211076_))))
                 (_g1074911072_ _g1075211076_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1074811142_ _L10734_)))
                                         _tl1069410729_
                                         _hd1069310726_)))
                                    (_g1068710715_ _g1068910719_)))))
                        (_g1068611146_ _rest10681_)))))
                 (_check-duplicate-datums8583_
                  (lambda (_datums10662_)
                    (let ((_ht10665_ (make-hash-table)))
                      (for-each
                       (lambda (_lst10668_)
                         (for-each
                          (lambda (_datum10671_)
                            (if (hash-get _ht10665_ _datum10671_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Duplicate datum"
                                 _stx8578_
                                 _datum10671_)
                                (hash-put! _ht10665_ _datum10671_ '#t)))
                          _lst10668_))
                       _datums10662_))))
                 (_count-datums8584_
                  (lambda (_datums10655_)
                    (foldl (lambda (_lst10658_ _r10660_)
                             (+ (length _lst10658_) _r10660_))
                           '0
                           _datums10655_)))
                 (_symbolic-datums?8585_
                  (lambda (_datums10649_)
                    (andmap (lambda (_lst10652_) (andmap symbol? _lst10652_))
                            _datums10649_)))
                 (_char-datums?8586_
                  (lambda (_datums10643_)
                    (andmap (lambda (_lst10646_) (andmap char? _lst10646_))
                            _datums10643_)))
                 (_fixnum-datums?8587_
                  (lambda (_datums10637_)
                    (andmap (lambda (_lst10640_) (andmap fixnum? _lst10640_))
                            _datums10637_)))
                 (_eq-datums?8588_
                  (lambda (_datums10620_)
                    (andmap (lambda (_lst10623_)
                              (andmap (lambda (_x10626_)
                                        (let ((_$e10629_ (symbol? _x10626_)))
                                          (if _$e10629_
                                              _$e10629_
                                              (let ((_$e10633_
                                                     (keyword? _x10626_)))
                                                (if _$e10633_
                                                    _$e10633_
                                                    (immediate? _x10626_))))))
                                      _lst10623_))
                            _datums10620_)))
                 (_generate-simple-case8589_
                  (lambda (_e10384_
                           _datums10386_
                           _dispatch10387_
                           _default10388_)
                    (let* ((_g1039010398_
                            (lambda (_g1039110394_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1039110394_)))
                           (_g1038910616_
                            (lambda (_g1039110402_)
                              ((lambda (_L10405_)
                                 (let ()
                                   (let _recur10417_ ((_datums10420_
                                                       _datums10386_)
                                                      (_dispatch10422_
                                                       _dispatch10387_))
                                     (let* ((_g1042510446_
                                             (lambda (_g1042610442_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1042610442_)))
                                            (_g1042410457_
                                             (lambda (_g1042610450_)
                                               ((lambda () _default10388_))))
                                            (_g1042310612_
                                             (lambda (_g1042610461_)
                                               (if (gx#stx-pair? _g1042610461_)
                                                   (let ((_e1042910464_
                                                          (gx#syntax-e
                                                           _g1042610461_)))
                                                     (let ((_hd1043010468_
                                                            (##car _e1042910464_))
                                                           (_tl1043110471_
                                                            (##cdr _e1042910464_)))
                                                       (if (gx#stx-pair/null?
                                                            _hd1043010468_)
                                                           (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd1043010468_)
                             '0)
                       (let ((_g34509_
                              (gx#syntax-split-splice _hd1043010468_ '0)))
                         (begin
                           (let ((_g34510_ (values-count _g34509_)))
                             (if (not (fx= _g34510_ 2))
                                 (error "Context expects 2 values" _g34510_)))
                           (let ((_target1043210474_ (values-ref _g34509_ 0))
                                 (_tl1043410477_ (values-ref _g34509_ 1)))
                             (if (gx#stx-null? _tl1043410477_)
                                 (letrec ((_loop1043510480_
                                           (lambda (_hd1043310484_
                                                    _datum1043910487_)
                                             (if (gx#stx-pair? _hd1043310484_)
                                                 (let ((_e1043610490_
                                                        (gx#syntax-e
                                                         _hd1043310484_)))
                                                   (let ((_lp-hd1043710494_
                                                          (##car _e1043610490_))
                                                         (_lp-tl1043810497_
                                                          (##cdr _e1043610490_)))
                                                     (_loop1043510480_
                                                      _lp-tl1043810497_
                                                      (cons _lp-hd1043710494_
                                                            _datum1043910487_))))
                                                 (let ((_datum1044010500_
                                                        (reverse _datum1043910487_)))
                                                   ((lambda (_L10504_ _L10506_)
                                                      (let* ((_g1052610538_
                                                              (lambda (_g1052710534_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax"
                         _g1052710534_)))
                     (_g1052510608_
                      (lambda (_g1052710542_)
                        (if (gx#stx-pair? _g1052710542_)
                            (let ((_e1053010545_ (gx#syntax-e _g1052710542_)))
                              (let ((_hd1053110549_ (##car _e1053010545_))
                                    (_tl1053210552_ (##cdr _e1053010545_)))
                                ((lambda (_L10555_ _L10557_)
                                   (let* ((_g1056910577_
                                           (lambda (_g1057010573_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1057010573_)))
                                          (_g1056810604_
                                           (lambda (_g1057010581_)
                                             ((lambda (_L10584_)
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
                              (foldr (lambda (_g1059510598_ _g1059610601_)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '~case-test)
                                                   (cons _g1059510598_
                                                         (cons _L10405_ '())))
                                             _g1059610601_))
                                     '()
                                     _L10506_)))
                      (cons _L10557_ (cons _L10584_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _g1057010581_))))
                                     (_g1056810604_
                                      (_recur10417_ _L10504_ _L10555_))))
                                 _tl1053210552_
                                 _hd1053110549_)))
                            (_g1052610538_ _g1052710542_)))))
                (_g1052510608_ _dispatch10422_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl1043110471_
                                                    _datum1044010500_))))))
                                   (_loop1043510480_ _target1043210474_ '()))
                                 (_g1042410457_ _g1042610461_)))))
                       (_g1042410457_ _g1042610461_))
                   (_g1042410457_ _g1042610461_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1042410457_
                                                    _g1042610461_)))))
                                       (_g1042310612_ _datums10420_)))))
                               _g1039110402_))))
                      (_g1038910616_ _e10384_))))
                 (_datum-dispatch-index8590_
                  (lambda (_datums10256_)
                    (let _lp10259_ ((_rest10262_ _datums10256_)
                                    (_ix10264_ '0)
                                    (_r10265_ '()))
                      (let* ((_g1026810289_
                              (lambda (_g1026910285_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1026910285_)))
                             (_g1026710300_
                              (lambda (_g1026910293_) ((lambda () _r10265_))))
                             (_g1026610380_
                              (lambda (_g1026910304_)
                                (if (gx#stx-pair? _g1026910304_)
                                    (let ((_e1027210307_
                                           (gx#syntax-e _g1026910304_)))
                                      (let ((_hd1027310311_
                                             (##car _e1027210307_))
                                            (_tl1027410314_
                                             (##cdr _e1027210307_)))
                                        (if (gx#stx-pair/null? _hd1027310311_)
                                            (if (fx>= (gx#stx-length
                                                       _hd1027310311_)
                                                      '0)
                                                (let ((_g34511_
                                                       (gx#syntax-split-splice
                                                        _hd1027310311_
                                                        '0)))
                                                  (begin
                                                    (let ((_g34512_
                                                           (values-count
                                                            _g34511_)))
                                                      (if (not (fx= _g34512_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g34512_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1027510317_
                                                           (values-ref
                                                            _g34511_
                                                            0))
                                                          (_tl1027710320_
                                                           (values-ref
                                                            _g34511_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl1027710320_)
                                                          (letrec ((_loop1027810323_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1027610327_ _datum1028210330_)
                              (if (gx#stx-pair? _hd1027610327_)
                                  (let ((_e1027910333_
                                         (gx#syntax-e _hd1027610327_)))
                                    (let ((_lp-hd1028010337_
                                           (##car _e1027910333_))
                                          (_lp-tl1028110340_
                                           (##cdr _e1027910333_)))
                                      (_loop1027810323_
                                       _lp-tl1028110340_
                                       (cons _lp-hd1028010337_
                                             _datum1028210330_))))
                                  (let ((_datum1028310343_
                                         (reverse _datum1028210330_)))
                                    ((lambda (_L10347_ _L10349_)
                                       (_lp10259_
                                        _L10347_
                                        (fx1+ _ix10264_)
                                        (foldl (lambda (_x10368_ _r10370_)
                                                 (cons (cons _x10368_
                                                             _ix10264_)
                                                       _r10370_))
                                               _r10265_
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g1037110374_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1037210377_)
                  (cons _g1037110374_ _g1037210377_))
                '()
                _L10349_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _tl1027410314_
                                     _datum1028310343_))))))
                    (_loop1027810323_ _target1027510317_ '()))
                  (_g1026710300_ _g1026910304_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1026710300_ _g1026910304_))
                                            (_g1026710300_ _g1026910304_))))
                                    (_g1026710300_ _g1026910304_)))))
                        (_g1026610380_ _rest10262_)))))
                 (_duplicate-indexes?8591_
                  (lambda (_xs10237_)
                    (let ((_ht10240_ (make-hash-table-eq)))
                      (let _lp10243_ ((_rest10246_ _xs10237_))
                        (if (pair? _rest10246_)
                            (let* ((_ix10249_ (car _rest10246_))
                                   (_$e10252_ (hash-get _ht10240_ _ix10249_)))
                              (if _$e10252_
                                  _$e10252_
                                  (begin
                                    (hash-put! _ht10240_ _ix10249_ '#t)
                                    (_lp10243_ (cdr _rest10246_)))))
                            '#f)))))
                 (_generate-hash-dispatch-table8592_
                  (lambda (_indexes10206_ _hash-e10208_)
                    (let _lp10210_ ((_len10213_
                                     (* '2 (length _indexes10206_))))
                      (let* ((_hs10219_
                              (map (lambda (_x10216_)
                                     (_hash-e10208_ (car _x10216_)))
                                   _indexes10206_))
                             (_xs10225_
                              (map (lambda (_h10222_)
                                     (fxmodulo _h10222_ _len10213_))
                                   _hs10219_)))
                        (if (_duplicate-indexes?8591_ _xs10225_)
                            (if (< _len10213_ '131072)
                                (_lp10210_ (quotient (fx* _len10213_ '3) '2))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Cannot create perfect dispatch table"
                                 _stx8578_
                                 _indexes10206_))
                            (let ((_tab10230_ (make-vector _len10213_ '#f)))
                              (begin
                                (for-each
                                 (lambda (_entry10233_ _x10235_)
                                   (vector-set!
                                    _tab10230_
                                    _x10235_
                                    _entry10233_))
                                 _indexes10206_
                                 _xs10225_)
                                _tab10230_)))))))
                 (_generate-symbolic-dispatch8593_
                  (lambda (_e9984_ _datums9986_ _dispatch9987_ _default9988_)
                    (let* ((_indexes9990_
                            (_datum-dispatch-index8590_ _datums9986_))
                           (_tab9993_
                            (_generate-hash-dispatch-table8592_
                             _indexes9990_
                             symbol-hash)))
                      (let* ((_g999810042_
                              (lambda (_g999910038_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g999910038_)))
                             (_g999710202_
                              (lambda (_g999910046_)
                                (if (gx#stx-pair? _g999910046_)
                                    (let ((_e1000710049_
                                           (gx#syntax-e _g999910046_)))
                                      (let ((_hd1000810053_
                                             (##car _e1000710049_))
                                            (_tl1000910056_
                                             (##cdr _e1000710049_)))
                                        (if (gx#stx-pair? _tl1000910056_)
                                            (let ((_e1001010059_
                                                   (gx#syntax-e
                                                    _tl1000910056_)))
                                              (let ((_hd1001110063_
                                                     (##car _e1001010059_))
                                                    (_tl1001210066_
                                                     (##cdr _e1001010059_)))
                                                (if (gx#stx-pair?
                                                     _tl1001210066_)
                                                    (let ((_e1001310069_
                                                           (gx#syntax-e
                                                            _tl1001210066_)))
                                                      (let ((_hd1001410073_
                                                             (##car _e1001310069_))
                                                            (_tl1001510076_
                                                             (##cdr _e1001310069_)))
                                                        (if (gx#stx-pair?
                                                             _tl1001510076_)
                                                            (let ((_e1001610079_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl1001510076_)))
                      (let ((_hd1001710083_ (##car _e1001610079_))
                            (_tl1001810086_ (##cdr _e1001610079_)))
                        (if (gx#stx-pair/null? _hd1001710083_)
                            (if (fx>= (gx#stx-length _hd1001710083_) '0)
                                (let ((_g34513_
                                       (gx#syntax-split-splice
                                        _hd1001710083_
                                        '0)))
                                  (begin
                                    (let ((_g34514_ (values-count _g34513_)))
                                      (if (not (fx= _g34514_ 2))
                                          (error "Context expects 2 values"
                                                 _g34514_)))
                                    (let ((_target1001910089_
                                           (values-ref _g34513_ 0))
                                          (_tl1002110092_
                                           (values-ref _g34513_ 1)))
                                      (if (gx#stx-null? _tl1002110092_)
                                          (letrec ((_loop1002210095_
                                                    (lambda (_hd1002010099_
                                                             _dispatch1002610102_)
                                                      (if (gx#stx-pair?
                                                           _hd1002010099_)
                                                          (let ((_e1002310105_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _hd1002010099_)))
                    (let ((_lp-hd1002410109_ (##car _e1002310105_))
                          (_lp-tl1002510112_ (##cdr _e1002310105_)))
                      (_loop1002210095_
                       _lp-tl1002510112_
                       (cons _lp-hd1002410109_ _dispatch1002610102_))))
                  (let ((_dispatch1002710115_ (reverse _dispatch1002610102_)))
                    (if (gx#stx-pair? _tl1001810086_)
                        (let ((_e1002810119_ (gx#syntax-e _tl1001810086_)))
                          (let ((_hd1002910123_ (##car _e1002810119_))
                                (_tl1003010126_ (##cdr _e1002810119_)))
                            (if (gx#stx-pair? _tl1003010126_)
                                (let ((_e1003110129_
                                       (gx#syntax-e _tl1003010126_)))
                                  (let ((_hd1003210133_ (##car _e1003110129_))
                                        (_tl1003310136_ (##cdr _e1003110129_)))
                                    (if (gx#stx-pair? _tl1003310136_)
                                        (let ((_e1003410139_
                                               (gx#syntax-e _tl1003310136_)))
                                          (let ((_hd1003510143_
                                                 (##car _e1003410139_))
                                                (_tl1003610146_
                                                 (##cdr _e1003410139_)))
                                            (if (gx#stx-null? _tl1003610146_)
                                                ((lambda (_L10149_
                                                          _L10151_
                                                          _L10152_
                                                          _L10153_
                                                          _L10154_
                                                          _L10155_
                                                          _L10156_)
                                                   (let ()
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'let)
                                                           (cons (cons (cons _L10155_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (cons (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons _L10152_ '())))
                                           '()))
                               (cons (cons _L10154_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'quote)
                                                       (cons _L10151_ '()))
                                                 '()))
                                     '()))
                         (cons (cons (gx#datum->syntax '#f 'if)
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'symbol?)
                                                 (cons _L10156_ '()))
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
                                             (cons _L10156_ '()))
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'ix)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##fxmodulo)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'h)
                                                         (cons _L10149_ '())))
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'q)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '##vector-ref)
                                                         (cons _L10154_
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
                             (cons _L10156_ '())))
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
                                                       (foldr (lambda (_g1019310196_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1019410199_)
                        (cons _g1019310196_ _g1019410199_))
                      '()
                      _L10153_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       (cons (cons _L10155_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons _L10155_ '()) '()))))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L10155_ '())
                                                       '()))))
                               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1003510143_
                                                 _hd1003210133_
                                                 _hd1002910123_
                                                 _dispatch1002710115_
                                                 _hd1001410073_
                                                 _hd1001110063_
                                                 _hd1000810053_)
                                                (_g999810042_ _g999910046_))))
                                        (_g999810042_ _g999910046_))))
                                (_g999810042_ _g999910046_))))
                        (_g999810042_ _g999910046_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1002210095_
                                             _target1001910089_
                                             '()))
                                          (_g999810042_ _g999910046_)))))
                                (_g999810042_ _g999910046_))
                            (_g999810042_ _g999910046_))))
                    (_g999810042_ _g999910046_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g999810042_
                                                     _g999910046_))))
                                            (_g999810042_ _g999910046_))))
                                    (_g999810042_ _g999910046_)))))
                        (_g999710202_
                         (list _e9984_
                               (gx#genident 'default)
                               (gx#genident 'table)
                               _dispatch9987_
                               _default9988_
                               _tab9993_
                               (vector-length _tab9993_)))))))
                 (_max-char8594_
                  (lambda (_datums9973_)
                    (foldl (lambda (_lst9976_ _r9978_)
                             (foldl (lambda (_char9980_ _r9982_)
                                      (max (char->integer _char9980_) _r9982_))
                                    _r9978_
                                    _lst9976_))
                           '0
                           _datums9973_)))
                 (_generate-char-dispatch-table8595_
                  (lambda (_indexes9952_)
                    (let* ((_ixs9958_
                            (map (lambda (_x9955_)
                                   (char->integer (car _x9955_)))
                                 _indexes9952_))
                           (_len9961_ (fx1+ (foldl max '0 _ixs9958_)))
                           (_vec9964_ (make-vector _len9961_ '#f)))
                      (begin
                        (for-each
                         (lambda (_entry9969_ _x9971_)
                           (vector-set! _vec9964_ _x9971_ (cdr _entry9969_)))
                         _indexes9952_
                         _ixs9958_)
                        _vec9964_))))
                 (_generate-char-dispatch8596_
                  (lambda (_e9730_ _datums9732_ _dispatch9733_ _default9734_)
                    (if (< (_max-char8594_ _datums9732_) '128)
                        (let* ((_indexes9736_
                                (_datum-dispatch-index8590_ _datums9732_))
                               (_tab9739_
                                (_generate-char-dispatch-table8595_
                                 _indexes9736_)))
                          (let* ((_g97449788_
                                  (lambda (_g97459784_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g97459784_)))
                                 (_g97439948_
                                  (lambda (_g97459792_)
                                    (if (gx#stx-pair? _g97459792_)
                                        (let ((_e97539795_
                                               (gx#syntax-e _g97459792_)))
                                          (let ((_hd97549799_
                                                 (##car _e97539795_))
                                                (_tl97559802_
                                                 (##cdr _e97539795_)))
                                            (if (gx#stx-pair? _tl97559802_)
                                                (let ((_e97569805_
                                                       (gx#syntax-e
                                                        _tl97559802_)))
                                                  (let ((_hd97579809_
                                                         (##car _e97569805_))
                                                        (_tl97589812_
                                                         (##cdr _e97569805_)))
                                                    (if (gx#stx-pair?
                                                         _tl97589812_)
                                                        (let ((_e97599815_
                                                               (gx#syntax-e
                                                                _tl97589812_)))
                                                          (let ((_hd97609819_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e97599815_))
                        (_tl97619822_ (##cdr _e97599815_)))
                    (if (gx#stx-pair? _tl97619822_)
                        (let ((_e97629825_ (gx#syntax-e _tl97619822_)))
                          (let ((_hd97639829_ (##car _e97629825_))
                                (_tl97649832_ (##cdr _e97629825_)))
                            (if (gx#stx-pair/null? _hd97639829_)
                                (if (fx>= (gx#stx-length _hd97639829_) '0)
                                    (let ((_g34515_
                                           (gx#syntax-split-splice
                                            _hd97639829_
                                            '0)))
                                      (begin
                                        (let ((_g34516_
                                               (values-count _g34515_)))
                                          (if (not (fx= _g34516_ 2))
                                              (error "Context expects 2 values"
                                                     _g34516_)))
                                        (let ((_target97659835_
                                               (values-ref _g34515_ 0))
                                              (_tl97679838_
                                               (values-ref _g34515_ 1)))
                                          (if (gx#stx-null? _tl97679838_)
                                              (letrec ((_loop97689841_
                                                        (lambda (_hd97669845_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _dispatch97729848_)
                  (if (gx#stx-pair? _hd97669845_)
                      (let ((_e97699851_ (gx#syntax-e _hd97669845_)))
                        (let ((_lp-hd97709855_ (##car _e97699851_))
                              (_lp-tl97719858_ (##cdr _e97699851_)))
                          (_loop97689841_
                           _lp-tl97719858_
                           (cons _lp-hd97709855_ _dispatch97729848_))))
                      (let ((_dispatch97739861_ (reverse _dispatch97729848_)))
                        (if (gx#stx-pair? _tl97649832_)
                            (let ((_e97749865_ (gx#syntax-e _tl97649832_)))
                              (let ((_hd97759869_ (##car _e97749865_))
                                    (_tl97769872_ (##cdr _e97749865_)))
                                (if (gx#stx-pair? _tl97769872_)
                                    (let ((_e97779875_
                                           (gx#syntax-e _tl97769872_)))
                                      (let ((_hd97789879_ (##car _e97779875_))
                                            (_tl97799882_ (##cdr _e97779875_)))
                                        (if (gx#stx-pair? _tl97799882_)
                                            (let ((_e97809885_
                                                   (gx#syntax-e _tl97799882_)))
                                              (let ((_hd97819889_
                                                     (##car _e97809885_))
                                                    (_tl97829892_
                                                     (##cdr _e97809885_)))
                                                (if (gx#stx-null? _tl97829892_)
                                                    ((lambda (_L9895_
                                                              _L9897_
                                                              _L9898_
                                                              _L9899_
                                                              _L9900_
                                                              _L9901_
                                                              _L9902_)
                                                       (let ()
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'let)
                                                               (cons (cons (cons _L9901_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons '()
                                                           (cons _L9898_ '())))
                                               '()))
                                   (cons (cons _L9900_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote)
                                                           (cons _L9897_ '()))
                                                     '()))
                                         '()))
                             (cons (cons (gx#datum->syntax '#f 'if)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'char?)
                                                     (cons _L9902_ '()))
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
                                           (cons _L9902_ '()))
                                     '()))
                         (cons (cons (gx#datum->syntax '#f 'if)
                                     (cons (cons (gx#datum->syntax '#f '##fx<)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'ix)
                                                       (cons _L9895_ '())))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'x)
                           (cons (cons (gx#datum->syntax '#f '##vector-ref)
                                       (cons _L9900_
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
                                                         (begin
                                                           '#!void
                                                           (foldr (lambda (_g99399942_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g99409945_)
                            (cons _g99399942_ _g99409945_))
                          '()
                          _L9899_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons _L9901_ '()) '()))))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L9901_ '())
                                                       '()))))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons _L9901_ '())
                                                           '()))))
                                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd97819889_
                                                     _hd97789879_
                                                     _hd97759869_
                                                     _dispatch97739861_
                                                     _hd97609819_
                                                     _hd97579809_
                                                     _hd97549799_)
                                                    (_g97449788_
                                                     _g97459792_))))
                                            (_g97449788_ _g97459792_))))
                                    (_g97449788_ _g97459792_))))
                            (_g97449788_ _g97459792_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop97689841_
                                                 _target97659835_
                                                 '()))
                                              (_g97449788_ _g97459792_)))))
                                    (_g97449788_ _g97459792_))
                                (_g97449788_ _g97459792_))))
                        (_g97449788_ _g97459792_))))
                (_g97449788_ _g97459792_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g97449788_ _g97459792_))))
                                        (_g97449788_ _g97459792_)))))
                            (_g97439948_
                             (list _e9730_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _dispatch9733_
                                   _default9734_
                                   _tab9739_
                                   (vector-length _tab9739_)))))
                        (_generate-char-dispatch/hash8597_
                         _e9730_
                         _datums9732_
                         _dispatch9733_
                         _default9734_))))
                 (_generate-char-dispatch/hash8597_
                  (lambda (_e9508_ _datums9510_ _dispatch9511_ _default9512_)
                    (let* ((_indexes9514_
                            (_datum-dispatch-index8590_ _datums9510_))
                           (_tab9517_
                            (_generate-hash-dispatch-table8592_
                             _indexes9514_
                             char->integer)))
                      (let* ((_g95229566_
                              (lambda (_g95239562_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g95239562_)))
                             (_g95219726_
                              (lambda (_g95239570_)
                                (if (gx#stx-pair? _g95239570_)
                                    (let ((_e95319573_
                                           (gx#syntax-e _g95239570_)))
                                      (let ((_hd95329577_ (##car _e95319573_))
                                            (_tl95339580_ (##cdr _e95319573_)))
                                        (if (gx#stx-pair? _tl95339580_)
                                            (let ((_e95349583_
                                                   (gx#syntax-e _tl95339580_)))
                                              (let ((_hd95359587_
                                                     (##car _e95349583_))
                                                    (_tl95369590_
                                                     (##cdr _e95349583_)))
                                                (if (gx#stx-pair? _tl95369590_)
                                                    (let ((_e95379593_
                                                           (gx#syntax-e
                                                            _tl95369590_)))
                                                      (let ((_hd95389597_
                                                             (##car _e95379593_))
                                                            (_tl95399600_
                                                             (##cdr _e95379593_)))
                                                        (if (gx#stx-pair?
                                                             _tl95399600_)
                                                            (let ((_e95409603_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl95399600_)))
                      (let ((_hd95419607_ (##car _e95409603_))
                            (_tl95429610_ (##cdr _e95409603_)))
                        (if (gx#stx-pair/null? _hd95419607_)
                            (if (fx>= (gx#stx-length _hd95419607_) '0)
                                (let ((_g34517_
                                       (gx#syntax-split-splice
                                        _hd95419607_
                                        '0)))
                                  (begin
                                    (let ((_g34518_ (values-count _g34517_)))
                                      (if (not (fx= _g34518_ 2))
                                          (error "Context expects 2 values"
                                                 _g34518_)))
                                    (let ((_target95439613_
                                           (values-ref _g34517_ 0))
                                          (_tl95459616_
                                           (values-ref _g34517_ 1)))
                                      (if (gx#stx-null? _tl95459616_)
                                          (letrec ((_loop95469619_
                                                    (lambda (_hd95449623_
                                                             _dispatch95509626_)
                                                      (if (gx#stx-pair?
                                                           _hd95449623_)
                                                          (let ((_e95479629_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _hd95449623_)))
                    (let ((_lp-hd95489633_ (##car _e95479629_))
                          (_lp-tl95499636_ (##cdr _e95479629_)))
                      (_loop95469619_
                       _lp-tl95499636_
                       (cons _lp-hd95489633_ _dispatch95509626_))))
                  (let ((_dispatch95519639_ (reverse _dispatch95509626_)))
                    (if (gx#stx-pair? _tl95429610_)
                        (let ((_e95529643_ (gx#syntax-e _tl95429610_)))
                          (let ((_hd95539647_ (##car _e95529643_))
                                (_tl95549650_ (##cdr _e95529643_)))
                            (if (gx#stx-pair? _tl95549650_)
                                (let ((_e95559653_ (gx#syntax-e _tl95549650_)))
                                  (let ((_hd95569657_ (##car _e95559653_))
                                        (_tl95579660_ (##cdr _e95559653_)))
                                    (if (gx#stx-pair? _tl95579660_)
                                        (let ((_e95589663_
                                               (gx#syntax-e _tl95579660_)))
                                          (let ((_hd95599667_
                                                 (##car _e95589663_))
                                                (_tl95609670_
                                                 (##cdr _e95589663_)))
                                            (if (gx#stx-null? _tl95609670_)
                                                ((lambda (_L9673_
                                                          _L9675_
                                                          _L9676_
                                                          _L9677_
                                                          _L9678_
                                                          _L9679_
                                                          _L9680_)
                                                   (let ()
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'let)
                                                           (cons (cons (cons _L9679_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (cons (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '() (cons _L9676_ '())))
                                           '()))
                               (cons (cons _L9678_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'quote)
                                                       (cons _L9675_ '()))
                                                 '()))
                                     '()))
                         (cons (cons (gx#datum->syntax '#f 'if)
                                     (cons (cons (gx#datum->syntax '#f 'char?)
                                                 (cons _L9680_ '()))
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
                                             (cons _L9680_ '()))
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'ix)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##fxmodulo)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'h)
                                                         (cons _L9673_ '())))
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'q)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '##vector-ref)
                                                         (cons _L9678_
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
                             (cons _L9680_ '())))
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
                                                       (foldr (lambda (_g97179720_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g97189723_)
                        (cons _g97179720_ _g97189723_))
                      '()
                      _L9677_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       (cons (cons _L9679_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons _L9679_ '()) '()))))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L9679_ '())
                                                       '()))))
                               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd95599667_
                                                 _hd95569657_
                                                 _hd95539647_
                                                 _dispatch95519639_
                                                 _hd95389597_
                                                 _hd95359587_
                                                 _hd95329577_)
                                                (_g95229566_ _g95239570_))))
                                        (_g95229566_ _g95239570_))))
                                (_g95229566_ _g95239570_))))
                        (_g95229566_ _g95239570_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop95469619_
                                             _target95439613_
                                             '()))
                                          (_g95229566_ _g95239570_)))))
                                (_g95229566_ _g95239570_))
                            (_g95229566_ _g95239570_))))
                    (_g95229566_ _g95239570_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g95229566_
                                                     _g95239570_))))
                                            (_g95229566_ _g95239570_))))
                                    (_g95229566_ _g95239570_)))))
                        (_g95219726_
                         (list _e9508_
                               (gx#genident 'default)
                               (gx#genident 'table)
                               _dispatch9511_
                               _default9512_
                               _tab9517_
                               (vector-length _tab9517_)))))))
                 (_min-fixnum8598_
                  (lambda (_datums9501_)
                    (foldl (lambda (_lst9504_ _r9506_)
                             (foldl min _r9506_ _lst9504_))
                           ##max-fixnum
                           _datums9501_)))
                 (_max-fixnum8599_
                  (lambda (_datums9494_)
                    (foldl (lambda (_lst9497_ _r9499_)
                             (foldl max _r9499_ _lst9497_))
                           ##min-fixnum
                           _datums9494_)))
                 (_generate-fixnum-dispatch-table8600_
                  (lambda (_indexes9476_)
                    (let* ((_ixs9479_ (map car _indexes9476_))
                           (_len9482_ (fx1+ (foldl max '0 _ixs9479_)))
                           (_vec9485_ (make-vector _len9482_ '#f)))
                      (begin
                        (for-each
                         (lambda (_entry9490_ _x9492_)
                           (vector-set! _vec9485_ _x9492_ (cdr _entry9490_)))
                         _indexes9476_
                         _ixs9479_)
                        _vec9485_))))
                 (_generate-fixnum-dispatch8601_
                  (lambda (_e9210_ _datums9212_ _dispatch9213_ _default9214_)
                    (if (if (>= (_min-fixnum8598_ _datums9212_) '0)
                            (< (_max-fixnum8599_ _datums9212_) '1024)
                            '#f)
                        (let* ((_indexes9216_
                                (_datum-dispatch-index8590_ _datums9212_))
                               (_tab9219_
                                (_generate-fixnum-dispatch-table8600_
                                 _indexes9216_))
                               (_dense?9222_
                                (andmap values (vector->list _tab9219_))))
                          (let* ((_g92279271_
                                  (lambda (_g92289267_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g92289267_)))
                                 (_g92269472_
                                  (lambda (_g92289275_)
                                    (if (gx#stx-pair? _g92289275_)
                                        (let ((_e92369278_
                                               (gx#syntax-e _g92289275_)))
                                          (let ((_hd92379282_
                                                 (##car _e92369278_))
                                                (_tl92389285_
                                                 (##cdr _e92369278_)))
                                            (if (gx#stx-pair? _tl92389285_)
                                                (let ((_e92399288_
                                                       (gx#syntax-e
                                                        _tl92389285_)))
                                                  (let ((_hd92409292_
                                                         (##car _e92399288_))
                                                        (_tl92419295_
                                                         (##cdr _e92399288_)))
                                                    (if (gx#stx-pair?
                                                         _tl92419295_)
                                                        (let ((_e92429298_
                                                               (gx#syntax-e
                                                                _tl92419295_)))
                                                          (let ((_hd92439302_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e92429298_))
                        (_tl92449305_ (##cdr _e92429298_)))
                    (if (gx#stx-pair? _tl92449305_)
                        (let ((_e92459308_ (gx#syntax-e _tl92449305_)))
                          (let ((_hd92469312_ (##car _e92459308_))
                                (_tl92479315_ (##cdr _e92459308_)))
                            (if (gx#stx-pair/null? _hd92469312_)
                                (if (fx>= (gx#stx-length _hd92469312_) '0)
                                    (let ((_g34519_
                                           (gx#syntax-split-splice
                                            _hd92469312_
                                            '0)))
                                      (begin
                                        (let ((_g34520_
                                               (values-count _g34519_)))
                                          (if (not (fx= _g34520_ 2))
                                              (error "Context expects 2 values"
                                                     _g34520_)))
                                        (let ((_target92489318_
                                               (values-ref _g34519_ 0))
                                              (_tl92509321_
                                               (values-ref _g34519_ 1)))
                                          (if (gx#stx-null? _tl92509321_)
                                              (letrec ((_loop92519324_
                                                        (lambda (_hd92499328_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _dispatch92559331_)
                  (if (gx#stx-pair? _hd92499328_)
                      (let ((_e92529334_ (gx#syntax-e _hd92499328_)))
                        (let ((_lp-hd92539338_ (##car _e92529334_))
                              (_lp-tl92549341_ (##cdr _e92529334_)))
                          (_loop92519324_
                           _lp-tl92549341_
                           (cons _lp-hd92539338_ _dispatch92559331_))))
                      (let ((_dispatch92569344_ (reverse _dispatch92559331_)))
                        (if (gx#stx-pair? _tl92479315_)
                            (let ((_e92579348_ (gx#syntax-e _tl92479315_)))
                              (let ((_hd92589352_ (##car _e92579348_))
                                    (_tl92599355_ (##cdr _e92579348_)))
                                (if (gx#stx-pair? _tl92599355_)
                                    (let ((_e92609358_
                                           (gx#syntax-e _tl92599355_)))
                                      (let ((_hd92619362_ (##car _e92609358_))
                                            (_tl92629365_ (##cdr _e92609358_)))
                                        (if (gx#stx-pair? _tl92629365_)
                                            (let ((_e92639368_
                                                   (gx#syntax-e _tl92629365_)))
                                              (let ((_hd92649372_
                                                     (##car _e92639368_))
                                                    (_tl92659375_
                                                     (##cdr _e92639368_)))
                                                (if (gx#stx-null? _tl92659375_)
                                                    ((lambda (_L9378_
                                                              _L9380_
                                                              _L9381_
                                                              _L9382_
                                                              _L9383_
                                                              _L9384_
                                                              _L9385_)
                                                       (let ()
                                                         (let* ((_g94249432_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g94259428_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g94259428_)))
                        (_g94239452_
                         (lambda (_g94259436_)
                           ((lambda (_L9439_)
                              (let ()
                                (cons (gx#datum->syntax '#f 'let)
                                      (cons (cons (cons _L9384_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'lambda)
                            (cons '() (cons _L9381_ '())))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons _L9383_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _L9380_ '()))
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
                            (cons _L9385_ '()))
                      (cons (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons (gx#datum->syntax '#f 'and)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '##fx>=)
                                                          (cons _L9385_
                                                                (cons '0 '())))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '##fx<)
                        (cons _L9385_ (cons _L9378_ '())))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons (cons (gx#datum->syntax '#f 'let)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'x)
                        (cons (cons (gx#datum->syntax '#f '##vector-ref)
                                    (cons _L9383_ (cons _L9385_ '())))
                              '()))
                  (cons _L9439_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons _L9384_ '()) '()))))
                            (cons (cons _L9384_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                            _g94259436_))))
                   (_g94239452_
                    (if _dense?9222_
                        (cons (gx#datum->syntax '#f '~case-dispatch)
                              (cons (gx#datum->syntax '#f 'x)
                                    (begin
                                      '#!void
                                      (foldr (lambda (_g94559458_ _g94569461_)
                                               (cons _g94559458_ _g94569461_))
                                             '()
                                             _L9382_))))
                        (cons (gx#datum->syntax '#f 'if)
                              (cons (gx#datum->syntax '#f 'x)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 '~case-dispatch)
                                                (cons (gx#datum->syntax '#f 'x)
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g94639466_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g94649469_)
                         (cons _g94639466_ _g94649469_))
                       '()
                       _L9382_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons _L9384_ '()) '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd92649372_
                                                     _hd92619362_
                                                     _hd92589352_
                                                     _dispatch92569344_
                                                     _hd92439302_
                                                     _hd92409292_
                                                     _hd92379282_)
                                                    (_g92279271_
                                                     _g92289275_))))
                                            (_g92279271_ _g92289275_))))
                                    (_g92279271_ _g92289275_))))
                            (_g92279271_ _g92289275_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop92519324_
                                                 _target92489318_
                                                 '()))
                                              (_g92279271_ _g92289275_)))))
                                    (_g92279271_ _g92289275_))
                                (_g92279271_ _g92289275_))))
                        (_g92279271_ _g92289275_))))
                (_g92279271_ _g92289275_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g92279271_ _g92289275_))))
                                        (_g92279271_ _g92289275_)))))
                            (_g92269472_
                             (list _e9210_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _dispatch9213_
                                   _default9214_
                                   _tab9219_
                                   (vector-length _tab9219_)))))
                        (_generate-fixnum-dispatch/hash8602_
                         _e9210_
                         _datums9212_
                         _dispatch9213_
                         _default9214_))))
                 (_generate-fixnum-dispatch/hash8602_
                  (lambda (_e8988_ _datums8990_ _dispatch8991_ _default8992_)
                    (let* ((_indexes8994_
                            (_datum-dispatch-index8590_ _datums8990_))
                           (_tab8997_
                            (_generate-hash-dispatch-table8592_
                             _indexes8994_
                             values)))
                      (let* ((_g90029046_
                              (lambda (_g90039042_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g90039042_)))
                             (_g90019206_
                              (lambda (_g90039050_)
                                (if (gx#stx-pair? _g90039050_)
                                    (let ((_e90119053_
                                           (gx#syntax-e _g90039050_)))
                                      (let ((_hd90129057_ (##car _e90119053_))
                                            (_tl90139060_ (##cdr _e90119053_)))
                                        (if (gx#stx-pair? _tl90139060_)
                                            (let ((_e90149063_
                                                   (gx#syntax-e _tl90139060_)))
                                              (let ((_hd90159067_
                                                     (##car _e90149063_))
                                                    (_tl90169070_
                                                     (##cdr _e90149063_)))
                                                (if (gx#stx-pair? _tl90169070_)
                                                    (let ((_e90179073_
                                                           (gx#syntax-e
                                                            _tl90169070_)))
                                                      (let ((_hd90189077_
                                                             (##car _e90179073_))
                                                            (_tl90199080_
                                                             (##cdr _e90179073_)))
                                                        (if (gx#stx-pair?
                                                             _tl90199080_)
                                                            (let ((_e90209083_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl90199080_)))
                      (let ((_hd90219087_ (##car _e90209083_))
                            (_tl90229090_ (##cdr _e90209083_)))
                        (if (gx#stx-pair/null? _hd90219087_)
                            (if (fx>= (gx#stx-length _hd90219087_) '0)
                                (let ((_g34521_
                                       (gx#syntax-split-splice
                                        _hd90219087_
                                        '0)))
                                  (begin
                                    (let ((_g34522_ (values-count _g34521_)))
                                      (if (not (fx= _g34522_ 2))
                                          (error "Context expects 2 values"
                                                 _g34522_)))
                                    (let ((_target90239093_
                                           (values-ref _g34521_ 0))
                                          (_tl90259096_
                                           (values-ref _g34521_ 1)))
                                      (if (gx#stx-null? _tl90259096_)
                                          (letrec ((_loop90269099_
                                                    (lambda (_hd90249103_
                                                             _dispatch90309106_)
                                                      (if (gx#stx-pair?
                                                           _hd90249103_)
                                                          (let ((_e90279109_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _hd90249103_)))
                    (let ((_lp-hd90289113_ (##car _e90279109_))
                          (_lp-tl90299116_ (##cdr _e90279109_)))
                      (_loop90269099_
                       _lp-tl90299116_
                       (cons _lp-hd90289113_ _dispatch90309106_))))
                  (let ((_dispatch90319119_ (reverse _dispatch90309106_)))
                    (if (gx#stx-pair? _tl90229090_)
                        (let ((_e90329123_ (gx#syntax-e _tl90229090_)))
                          (let ((_hd90339127_ (##car _e90329123_))
                                (_tl90349130_ (##cdr _e90329123_)))
                            (if (gx#stx-pair? _tl90349130_)
                                (let ((_e90359133_ (gx#syntax-e _tl90349130_)))
                                  (let ((_hd90369137_ (##car _e90359133_))
                                        (_tl90379140_ (##cdr _e90359133_)))
                                    (if (gx#stx-pair? _tl90379140_)
                                        (let ((_e90389143_
                                               (gx#syntax-e _tl90379140_)))
                                          (let ((_hd90399147_
                                                 (##car _e90389143_))
                                                (_tl90409150_
                                                 (##cdr _e90389143_)))
                                            (if (gx#stx-null? _tl90409150_)
                                                ((lambda (_L9153_
                                                          _L9155_
                                                          _L9156_
                                                          _L9157_
                                                          _L9158_
                                                          _L9159_
                                                          _L9160_)
                                                   (let ()
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'let)
                                                           (cons (cons (cons _L9159_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (cons (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '() (cons _L9156_ '())))
                                           '()))
                               (cons (cons _L9158_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'quote)
                                                       (cons _L9155_ '()))
                                                 '()))
                                     '()))
                         (cons (cons (gx#datum->syntax '#f 'if)
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'fixnum?)
                                                 (cons _L9160_ '()))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let*)
                                                       (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'ix)
                                 (cons (cons (gx#datum->syntax '#f '##fxmodulo)
                                             (cons _L9160_ (cons _L9153_ '())))
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'q)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##vector-ref)
                                                   (cons _L9158_
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
                             (cons _L9160_ '())))
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
                                                       (foldr (lambda (_g91979200_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g91989203_)
                        (cons _g91979200_ _g91989203_))
                      '()
                      _L9157_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       (cons (cons _L9159_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons _L9159_ '()) '()))))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L9159_ '())
                                                       '()))))
                               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd90399147_
                                                 _hd90369137_
                                                 _hd90339127_
                                                 _dispatch90319119_
                                                 _hd90189077_
                                                 _hd90159067_
                                                 _hd90129057_)
                                                (_g90029046_ _g90039050_))))
                                        (_g90029046_ _g90039050_))))
                                (_g90029046_ _g90039050_))))
                        (_g90029046_ _g90039050_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop90269099_
                                             _target90239093_
                                             '()))
                                          (_g90029046_ _g90039050_)))))
                                (_g90029046_ _g90039050_))
                            (_g90029046_ _g90039050_))))
                    (_g90029046_ _g90039050_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g90029046_
                                                     _g90039050_))))
                                            (_g90029046_ _g90039050_))))
                                    (_g90029046_ _g90039050_)))))
                        (_g90019206_
                         (list _e8988_
                               (gx#genident 'default)
                               (gx#genident 'table)
                               _dispatch8991_
                               _default8992_
                               _tab8997_
                               (vector-length _tab8997_)))))))
                 (_generate-generic-dispatch8603_
                  (lambda (_e8724_ _datums8726_ _dispatch8727_ _default8728_)
                    (let ((_g34523_
                           (if (_eq-datums?8588_ _datums8726_)
                               (values eq?-hash 'eq?-hash 'eq?)
                               (values equal?-hash 'equal?-hash 'equal?))))
                      (begin
                        (let ((_g34524_ (values-count _g34523_)))
                          (if (not (fx= _g34524_ 3))
                              (error "Context expects 3 values" _g34524_)))
                        (let ((_hash-e8730_ (values-ref _g34523_ 0))
                              (_hashf8732_ (values-ref _g34523_ 1))
                              (_eqf8733_ (values-ref _g34523_ 2)))
                          (let* ((_indexes8735_
                                  (_datum-dispatch-index8590_ _datums8726_))
                                 (_tab8738_
                                  (_generate-hash-dispatch-table8592_
                                   _indexes8735_
                                   _hash-e8730_)))
                            (let* ((_g87438795_
                                    (lambda (_g87448791_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       _g87448791_)))
                                   (_g87428984_
                                    (lambda (_g87448799_)
                                      (if (gx#stx-pair? _g87448799_)
                                          (let ((_e87548802_
                                                 (gx#syntax-e _g87448799_)))
                                            (let ((_hd87558806_
                                                   (##car _e87548802_))
                                                  (_tl87568809_
                                                   (##cdr _e87548802_)))
                                              (if (gx#stx-pair? _tl87568809_)
                                                  (let ((_e87578812_
                                                         (gx#syntax-e
                                                          _tl87568809_)))
                                                    (let ((_hd87588816_
                                                           (##car _e87578812_))
                                                          (_tl87598819_
                                                           (##cdr _e87578812_)))
                                                      (if (gx#stx-pair?
                                                           _tl87598819_)
                                                          (let ((_e87608822_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl87598819_)))
                    (let ((_hd87618826_ (##car _e87608822_))
                          (_tl87628829_ (##cdr _e87608822_)))
                      (if (gx#stx-pair? _tl87628829_)
                          (let ((_e87638832_ (gx#syntax-e _tl87628829_)))
                            (let ((_hd87648836_ (##car _e87638832_))
                                  (_tl87658839_ (##cdr _e87638832_)))
                              (if (gx#stx-pair/null? _hd87648836_)
                                  (if (fx>= (gx#stx-length _hd87648836_) '0)
                                      (let ((_g34525_
                                             (gx#syntax-split-splice
                                              _hd87648836_
                                              '0)))
                                        (begin
                                          (let ((_g34526_
                                                 (values-count _g34525_)))
                                            (if (not (fx= _g34526_ 2))
                                                (error "Context expects 2 values"
                                                       _g34526_)))
                                          (let ((_target87668842_
                                                 (values-ref _g34525_ 0))
                                                (_tl87688845_
                                                 (values-ref _g34525_ 1)))
                                            (if (gx#stx-null? _tl87688845_)
                                                (letrec ((_loop87698848_
                                                          (lambda (_hd87678852_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _dispatch87738855_)
                    (if (gx#stx-pair? _hd87678852_)
                        (let ((_e87708858_ (gx#syntax-e _hd87678852_)))
                          (let ((_lp-hd87718862_ (##car _e87708858_))
                                (_lp-tl87728865_ (##cdr _e87708858_)))
                            (_loop87698848_
                             _lp-tl87728865_
                             (cons _lp-hd87718862_ _dispatch87738855_))))
                        (let ((_dispatch87748868_
                               (reverse _dispatch87738855_)))
                          (if (gx#stx-pair? _tl87658839_)
                              (let ((_e87758872_ (gx#syntax-e _tl87658839_)))
                                (let ((_hd87768876_ (##car _e87758872_))
                                      (_tl87778879_ (##cdr _e87758872_)))
                                  (if (gx#stx-pair? _tl87778879_)
                                      (let ((_e87788882_
                                             (gx#syntax-e _tl87778879_)))
                                        (let ((_hd87798886_
                                               (##car _e87788882_))
                                              (_tl87808889_
                                               (##cdr _e87788882_)))
                                          (if (gx#stx-pair? _tl87808889_)
                                              (let ((_e87818892_
                                                     (gx#syntax-e
                                                      _tl87808889_)))
                                                (let ((_hd87828896_
                                                       (##car _e87818892_))
                                                      (_tl87838899_
                                                       (##cdr _e87818892_)))
                                                  (if (gx#stx-pair?
                                                       _tl87838899_)
                                                      (let ((_e87848902_
                                                             (gx#syntax-e
                                                              _tl87838899_)))
                                                        (let ((_hd87858906_
                                                               (##car _e87848902_))
                                                              (_tl87868909_
                                                               (##cdr _e87848902_)))
                                                          (if (gx#stx-pair?
                                                               _tl87868909_)
                                                              (let ((_e87878912_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl87868909_)))
                        (let ((_hd87888916_ (##car _e87878912_))
                              (_tl87898919_ (##cdr _e87878912_)))
                          (if (gx#stx-null? _tl87898919_)
                              ((lambda (_L8922_
                                        _L8924_
                                        _L8925_
                                        _L8926_
                                        _L8927_
                                        _L8928_
                                        _L8929_
                                        _L8930_
                                        _L8931_)
                                 (let ()
                                   (cons (gx#datum->syntax '#f 'let)
                                         (cons (cons (cons _L8930_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'lambda)
                               (cons '() (cons _L8927_ '())))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons _L8929_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _L8926_ '()))
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
                                     (cons (cons _L8924_ (cons _L8931_ '()))
                                           '()))
                               (cons (cons (gx#datum->syntax '#f 'ix)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '##fxmodulo)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'h)
                                                             (cons _L8925_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     (cons (cons (gx#datum->syntax '#f 'q)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '##vector-ref)
                                                             (cons _L8929_
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
                                                       (cons (cons _L8922_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f '##car)
                                       (cons (gx#datum->syntax '#f 'q) '()))
                                 (cons _L8931_ '())))
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
                                                           (foldr (lambda (_g89758978_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g89768981_)
                            (cons _g89758978_ _g89768981_))
                          '()
                          _L8928_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))
                           (cons (cons _L8930_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L8930_ '())
                                                       '()))))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                               _hd87888916_
                               _hd87858906_
                               _hd87828896_
                               _hd87798886_
                               _hd87768876_
                               _dispatch87748868_
                               _hd87618826_
                               _hd87588816_
                               _hd87558806_)
                              (_g87438795_ _g87448799_))))
                      (_g87438795_ _g87448799_))))
              (_g87438795_ _g87448799_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g87438795_ _g87448799_))))
                                      (_g87438795_ _g87448799_))))
                              (_g87438795_ _g87448799_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop87698848_
                                                   _target87668842_
                                                   '()))
                                                (_g87438795_ _g87448799_)))))
                                      (_g87438795_ _g87448799_))
                                  (_g87438795_ _g87448799_))))
                          (_g87438795_ _g87448799_))))
                  (_g87438795_ _g87448799_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g87438795_ _g87448799_))))
                                          (_g87438795_ _g87448799_)))))
                              (_g87428984_
                               (list _e8724_
                                     (gx#genident 'default)
                                     (gx#genident 'table)
                                     _dispatch8727_
                                     _default8728_
                                     _tab8738_
                                     (vector-length _tab8738_)
                                     _hashf8732_
                                     _eqf8733_))))))))))
          (let* ((_g86058629_
                  (lambda (_g86068625_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g86068625_)))
                 (_g86048720_
                  (lambda (_g86068633_)
                    (if (gx#stx-pair? _g86068633_)
                        (let ((_e86098636_ (gx#syntax-e _g86068633_)))
                          (let ((_hd86108640_ (##car _e86098636_))
                                (_tl86118643_ (##cdr _e86098636_)))
                            (if (gx#stx-pair? _tl86118643_)
                                (let ((_e86128646_ (gx#syntax-e _tl86118643_)))
                                  (let ((_hd86138650_ (##car _e86128646_))
                                        (_tl86148653_ (##cdr _e86128646_)))
                                    (if (gx#stx-pair/null? _tl86148653_)
                                        (if (fx>= (gx#stx-length _tl86148653_)
                                                  '0)
                                            (let ((_g34527_
                                                   (gx#syntax-split-splice
                                                    _tl86148653_
                                                    '0)))
                                              (begin
                                                (let ((_g34528_
                                                       (values-count
                                                        _g34527_)))
                                                  (if (not (fx= _g34528_ 2))
                                                      (error "Context expects 2 values"
                                                             _g34528_)))
                                                (let ((_target86158656_
                                                       (values-ref _g34527_ 0))
                                                      (_tl86178659_
                                                       (values-ref
                                                        _g34527_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl86178659_)
                                                      (letrec ((_loop86188662_
                                                                (lambda (_hd86168666_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _clause86228669_)
                          (if (gx#stx-pair? _hd86168666_)
                              (let ((_e86198672_ (gx#syntax-e _hd86168666_)))
                                (let ((_lp-hd86208676_ (##car _e86198672_))
                                      (_lp-tl86218679_ (##cdr _e86198672_)))
                                  (_loop86188662_
                                   _lp-tl86218679_
                                   (cons _lp-hd86208676_ _clause86228669_))))
                              (let ((_clause86238682_
                                     (reverse _clause86228669_)))
                                ((lambda (_L8686_ _L8688_)
                                   (let ((_g34529_
                                          (_parse-clauses8581_
                                           _L8688_
                                           (begin
                                             '#!void
                                             (foldr (lambda (_g87068709_
                                                             _g87078712_)
                                                      (cons _g87068709_
                                                            _g87078712_))
                                                    '()
                                                    _L8686_)))))
                                     (begin
                                       (let ((_g34530_
                                              (values-count _g34529_)))
                                         (if (not (fx= _g34530_ 3))
                                             (error "Context expects 3 values"
                                                    _g34530_)))
                                       (let ((_datums8715_
                                              (values-ref _g34529_ 0))
                                             (_dispatch8717_
                                              (values-ref _g34529_ 1))
                                             (_default8718_
                                              (values-ref _g34529_ 2)))
                                         (if (< (_count-datums8584_
                                                 _datums8715_)
                                                '6)
                                             (_generate-simple-case8589_
                                              _L8688_
                                              _datums8715_
                                              _dispatch8717_
                                              _default8718_)
                                             (if (_symbolic-datums?8585_
                                                  _datums8715_)
                                                 (_generate-symbolic-dispatch8593_
                                                  _L8688_
                                                  _datums8715_
                                                  _dispatch8717_
                                                  _default8718_)
                                                 (if (_char-datums?8586_
                                                      _datums8715_)
                                                     (_generate-char-dispatch8596_
                                                      _L8688_
                                                      _datums8715_
                                                      _dispatch8717_
                                                      _default8718_)
                                                     (if (_fixnum-datums?8587_
                                                          _datums8715_)
                                                         (_generate-fixnum-dispatch8601_
                                                          _L8688_
                                                          _datums8715_
                                                          _dispatch8717_
                                                          _default8718_)
                                                         (_generate-generic-dispatch8603_
                                                          _L8688_
                                                          _datums8715_
                                                          _dispatch8717_
                                                          _default8718_)))))))))
                                 _clause86238682_
                                 _hd86138650_))))))
                (_loop86188662_ _target86158656_ '()))
              (_g86058629_ _g86068633_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g86058629_ _g86068633_))
                                        (_g86058629_ _g86068633_))))
                                (_g86058629_ _g86068633_))))
                        (_g86058629_ _g86068633_)))))
            (_g86048720_ _stx8578_)))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#~case-test|
      (lambda (_stx11165_)
        (let* ((_g1116811186_
                (lambda (_g1116911182_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1116911182_)))
               (_g1116711252_
                (lambda (_g1116911190_)
                  (if (gx#stx-pair? _g1116911190_)
                      (let ((_e1117211193_ (gx#syntax-e _g1116911190_)))
                        (let ((_hd1117311197_ (##car _e1117211193_))
                              (_tl1117411200_ (##cdr _e1117211193_)))
                          (if (gx#stx-pair? _tl1117411200_)
                              (let ((_e1117511203_
                                     (gx#syntax-e _tl1117411200_)))
                                (let ((_hd1117611207_ (##car _e1117511203_))
                                      (_tl1117711210_ (##cdr _e1117511203_)))
                                  (if (gx#stx-pair? _tl1117711210_)
                                      (let ((_e1117811213_
                                             (gx#syntax-e _tl1117711210_)))
                                        (let ((_hd1117911217_
                                               (##car _e1117811213_))
                                              (_tl1118011220_
                                               (##cdr _e1117811213_)))
                                          (if (gx#stx-null? _tl1118011220_)
                                              ((lambda (_L11223_ _L11225_)
                                                 (let ((_datum-e11241_
                                                        (gx#stx-e _L11225_)))
                                                   (if (let ((_$e11244_
                                                              (symbol? _datum-e11241_)))
                                                         (if _$e11244_
                                                             _$e11244_
                                                             (let ((_$e11248_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (keyword? _datum-e11241_)))
                       (if _$e11248_ _$e11248_ (immediate? _datum-e11241_)))))
               (cons (gx#datum->syntax '#f 'eq?)
                     (cons (cons (gx#datum->syntax '#f 'quote)
                                 (cons _L11225_ '()))
                           (cons _L11223_ '())))
               (if (number? _datum-e11241_)
                   (cons (gx#datum->syntax '#f 'eqv?)
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _L11225_ '()))
                               (cons _L11223_ '())))
                   (cons (gx#datum->syntax '#f 'equal?)
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _L11225_ '()))
                               (cons _L11223_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd1117911217_
                                               _hd1117611207_)
                                              (_g1116811186_ _g1116911190_))))
                                      (_g1116811186_ _g1116911190_))))
                              (_g1116811186_ _g1116911190_))))
                      (_g1116811186_ _g1116911190_)))))
          (_g1116711252_ _stx11165_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#~case-dispatch|
      (lambda (_$stx11256_)
        (let* ((_g1126011284_
                (lambda (_g1126111280_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1126111280_)))
               (_g1125911369_
                (lambda (_g1126111288_)
                  (if (gx#stx-pair? _g1126111288_)
                      (let ((_e1126411291_ (gx#syntax-e _g1126111288_)))
                        (let ((_hd1126511295_ (##car _e1126411291_))
                              (_tl1126611298_ (##cdr _e1126411291_)))
                          (if (gx#stx-pair? _tl1126611298_)
                              (let ((_e1126711301_
                                     (gx#syntax-e _tl1126611298_)))
                                (let ((_hd1126811305_ (##car _e1126711301_))
                                      (_tl1126911308_ (##cdr _e1126711301_)))
                                  (if (gx#stx-pair/null? _tl1126911308_)
                                      (if (fx>= (gx#stx-length _tl1126911308_)
                                                '0)
                                          (let ((_g34531_
                                                 (gx#syntax-split-splice
                                                  _tl1126911308_
                                                  '0)))
                                            (begin
                                              (let ((_g34532_
                                                     (values-count _g34531_)))
                                                (if (not (fx= _g34532_ 2))
                                                    (error "Context expects 2 values"
                                                           _g34532_)))
                                              (let ((_target1127011311_
                                                     (values-ref _g34531_ 0))
                                                    (_tl1127211314_
                                                     (values-ref _g34531_ 1)))
                                                (if (gx#stx-null?
                                                     _tl1127211314_)
                                                    (letrec ((_loop1127311317_
                                                              (lambda (_hd1127111321_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _K1127711324_)
                        (if (gx#stx-pair? _hd1127111321_)
                            (let ((_e1127411327_ (gx#syntax-e _hd1127111321_)))
                              (let ((_lp-hd1127511331_ (##car _e1127411327_))
                                    (_lp-tl1127611334_ (##cdr _e1127411327_)))
                                (_loop1127311317_
                                 _lp-tl1127611334_
                                 (cons _lp-hd1127511331_ _K1127711324_))))
                            (let ((_K1127811337_ (reverse _K1127711324_)))
                              ((lambda (_L11341_ _L11343_)
                                 (cons (gx#datum->syntax '#f '~case-dispatch*)
                                       (cons '0
                                             (cons _L11343_
                                                   (begin
                                                     '#!void
                                                     (foldr (lambda (_g1136011363_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g1136111366_)
                      (cons _g1136011363_ _g1136111366_))
                    '()
                    _L11341_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _K1127811337_
                               _hd1126811305_))))))
              (_loop1127311317_ _target1127011311_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1126011284_
                                                     _g1126111288_)))))
                                          (_g1126011284_ _g1126111288_))
                                      (_g1126011284_ _g1126111288_))))
                              (_g1126011284_ _g1126111288_))))
                      (_g1126011284_ _g1126111288_)))))
          (_g1125911369_ _$stx11256_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#~case-dispatch*|
      (lambda (_stx11374_)
        (let* ((_g1138111477_
                (lambda (_g1138211473_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1138211473_)))
               (_g1138011576_
                (lambda (_g1138211481_)
                  (if (gx#stx-pair? _g1138211481_)
                      (let ((_e1145411484_ (gx#syntax-e _g1138211481_)))
                        (let ((_hd1145511488_ (##car _e1145411484_))
                              (_tl1145611491_ (##cdr _e1145411484_)))
                          (if (gx#stx-pair? _tl1145611491_)
                              (let ((_e1145711494_
                                     (gx#syntax-e _tl1145611491_)))
                                (let ((_hd1145811498_ (##car _e1145711494_))
                                      (_tl1145911501_ (##cdr _e1145711494_)))
                                  (if (gx#stx-pair? _tl1145911501_)
                                      (let ((_e1146011504_
                                             (gx#syntax-e _tl1145911501_)))
                                        (let ((_hd1146111508_
                                               (##car _e1146011504_))
                                              (_tl1146211511_
                                               (##cdr _e1146011504_)))
                                          (if (gx#stx-pair/null?
                                               _tl1146211511_)
                                              (if (fx>= (gx#stx-length
                                                         _tl1146211511_)
                                                        '0)
                                                  (let ((_g34533_
                                                         (gx#syntax-split-splice
                                                          _tl1146211511_
                                                          '0)))
                                                    (begin
                                                      (let ((_g34534_
                                                             (values-count
                                                              _g34533_)))
                                                        (if (not (fx= _g34534_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g34534_)))
              (let ((_target1146311514_ (values-ref _g34533_ 0))
                    (_tl1146511517_ (values-ref _g34533_ 1)))
                (if (gx#stx-null? _tl1146511517_)
                    (letrec ((_loop1146611520_
                              (lambda (_hd1146411524_ _K1147011527_)
                                (if (gx#stx-pair? _hd1146411524_)
                                    (let ((_e1146711530_
                                           (gx#syntax-e _hd1146411524_)))
                                      (let ((_lp-hd1146811534_
                                             (##car _e1146711530_))
                                            (_lp-tl1146911537_
                                             (##cdr _e1146711530_)))
                                        (_loop1146611520_
                                         _lp-tl1146911537_
                                         (cons _lp-hd1146811534_
                                               _K1147011527_))))
                                    (let ((_K1147111540_
                                           (reverse _K1147011527_)))
                                      ((lambda (_L11544_ _L11546_ _L11547_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                '~case-dispatch-bsearch)
                                               (cons _L11547_
                                                     (cons _L11546_
                                                           (begin
                                                             '#!void
                                                             (foldr (lambda (_g1156711570_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1156811573_)
                              (cons _g1156711570_ _g1156811573_))
                            '()
                            _L11544_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _K1147111540_
                                       _hd1146111508_
                                       _hd1145811498_))))))
                      (_loop1146611520_ _target1146311514_ '()))
                    (_g1138111477_ _g1138211481_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1138111477_
                                                   _g1138211481_))
                                              (_g1138111477_ _g1138211481_))))
                                      (_g1138111477_ _g1138211481_))))
                              (_g1138111477_ _g1138211481_))))
                      (_g1138111477_ _g1138211481_))))
               (_g1137911736_
                (lambda (_g1138211580_)
                  (if (gx#stx-pair? _g1138211580_)
                      (let ((_e1143311583_ (gx#syntax-e _g1138211580_)))
                        (let ((_hd1143411587_ (##car _e1143311583_))
                              (_tl1143511590_ (##cdr _e1143311583_)))
                          (if (gx#stx-pair? _tl1143511590_)
                              (let ((_e1143611593_
                                     (gx#syntax-e _tl1143511590_)))
                                (let ((_hd1143711597_ (##car _e1143611593_))
                                      (_tl1143811600_ (##cdr _e1143611593_)))
                                  (if (gx#stx-pair? _tl1143811600_)
                                      (let ((_e1143911603_
                                             (gx#syntax-e _tl1143811600_)))
                                        (let ((_hd1144011607_
                                               (##car _e1143911603_))
                                              (_tl1144111610_
                                               (##cdr _e1143911603_)))
                                          (if (gx#stx-pair? _tl1144111610_)
                                              (let ((_e1144211613_
                                                     (gx#syntax-e
                                                      _tl1144111610_)))
                                                (let ((_hd1144311617_
                                                       (##car _e1144211613_))
                                                      (_tl1144411620_
                                                       (##cdr _e1144211613_)))
                                                  (if (gx#stx-pair?
                                                       _tl1144411620_)
                                                      (let ((_e1144511623_
                                                             (gx#syntax-e
                                                              _tl1144411620_)))
                                                        (let ((_hd1144611627_
                                                               (##car _e1144511623_))
                                                              (_tl1144711630_
                                                               (##cdr _e1144511623_)))
                                                          (if (gx#stx-pair?
                                                               _tl1144711630_)
                                                              (let ((_e1144811633_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl1144711630_)))
                        (let ((_hd1144911637_ (##car _e1144811633_))
                              (_tl1145011640_ (##cdr _e1144811633_)))
                          (if (gx#stx-null? _tl1145011640_)
                              ((lambda (_L11643_
                                        _L11645_
                                        _L11646_
                                        _L11647_
                                        _L11648_)
                                 (let* ((_g1167211687_
                                         (lambda (_g1167311683_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g1167311683_)))
                                        (_g1167111732_
                                         (lambda (_g1167311691_)
                                           (if (gx#stx-pair? _g1167311691_)
                                               (let ((_e1167611694_
                                                      (gx#syntax-e
                                                       _g1167311691_)))
                                                 (let ((_hd1167711698_
                                                        (##car _e1167611694_))
                                                       (_tl1167811701_
                                                        (##cdr _e1167611694_)))
                                                   (if (gx#stx-pair?
                                                        _tl1167811701_)
                                                       (let ((_e1167911704_
                                                              (gx#syntax-e
                                                               _tl1167811701_)))
                                                         (let ((_hd1168011708_
                                                                (##car _e1167911704_))
                                                               (_tl1168111711_
                                                                (##cdr _e1167911704_)))
                                                           (if (gx#stx-null?
                                                                _tl1168111711_)
                                                               ((lambda (_L11714_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L11716_)
                          (let ()
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons (gx#datum->syntax '#f '##fx=)
                                              (cons _L11647_
                                                    (cons _L11716_ '())))
                                        (cons _L11646_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '##fx=)
                              (cons _L11647_ (cons _L11714_ '())))
                        (cons _L11645_ (cons _L11643_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))
                        _hd1168011708_
                        _hd1167711698_)
                       (_g1167211687_ _g1167311691_))))
               (_g1167211687_ _g1167311691_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1167211687_
                                                _g1167311691_)))))
                                   (_g1167111732_
                                    (list (gx#stx-e _L11648_)
                                          (fx1+ (gx#stx-e _L11648_))))))
                               _hd1144911637_
                               _hd1144611627_
                               _hd1144311617_
                               _hd1144011607_
                               _hd1143711597_)
                              (_g1138011576_ _g1138211580_))))
                      (_g1138011576_ _g1138211580_))))
              (_g1138011576_ _g1138211580_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1138011576_ _g1138211580_))))
                                      (_g1138011576_ _g1138211580_))))
                              (_g1138011576_ _g1138211580_))))
                      (_g1138011576_ _g1138211580_))))
               (_g1137811849_
                (lambda (_g1138211740_)
                  (if (gx#stx-pair? _g1138211740_)
                      (let ((_e1141311743_ (gx#syntax-e _g1138211740_)))
                        (let ((_hd1141411747_ (##car _e1141311743_))
                              (_tl1141511750_ (##cdr _e1141311743_)))
                          (if (gx#stx-pair? _tl1141511750_)
                              (let ((_e1141611753_
                                     (gx#syntax-e _tl1141511750_)))
                                (let ((_hd1141711757_ (##car _e1141611753_))
                                      (_tl1141811760_ (##cdr _e1141611753_)))
                                  (if (gx#stx-pair? _tl1141811760_)
                                      (let ((_e1141911763_
                                             (gx#syntax-e _tl1141811760_)))
                                        (let ((_hd1142011767_
                                               (##car _e1141911763_))
                                              (_tl1142111770_
                                               (##cdr _e1141911763_)))
                                          (if (gx#stx-pair? _tl1142111770_)
                                              (let ((_e1142211773_
                                                     (gx#syntax-e
                                                      _tl1142111770_)))
                                                (let ((_hd1142311777_
                                                       (##car _e1142211773_))
                                                      (_tl1142411780_
                                                       (##cdr _e1142211773_)))
                                                  (if (gx#stx-pair?
                                                       _tl1142411780_)
                                                      (let ((_e1142511783_
                                                             (gx#syntax-e
                                                              _tl1142411780_)))
                                                        (let ((_hd1142611787_
                                                               (##car _e1142511783_))
                                                              (_tl1142711790_
                                                               (##cdr _e1142511783_)))
                                                          (if (gx#stx-null?
                                                               _tl1142711790_)
                                                              ((lambda (_L11793_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _L11795_
                                _L11796_
                                _L11797_)
                         (let* ((_g1181811826_
                                 (lambda (_g1181911822_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1181911822_)))
                                (_g1181711845_
                                 (lambda (_g1181911830_)
                                   ((lambda (_L11833_)
                                      (let ()
                                        (cons (gx#datum->syntax '#f 'if)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '##fx=)
                                                          (cons _L11796_
                                                                (cons _L11833_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _L11795_
                                                          (cons _L11793_
                                                                '()))))))
                                    _g1181911830_))))
                           (_g1181711845_ (gx#stx-e _L11797_))))
                       _hd1142611787_
                       _hd1142311777_
                       _hd1142011767_
                       _hd1141711757_)
                      (_g1137911736_ _g1138211740_))))
              (_g1137911736_ _g1138211740_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1137911736_ _g1138211740_))))
                                      (_g1137911736_ _g1138211740_))))
                              (_g1137911736_ _g1138211740_))))
                      (_g1137911736_ _g1138211740_))))
               (_g1137711917_
                (lambda (_g1138211853_)
                  (if (gx#stx-pair? _g1138211853_)
                      (let ((_e1139711856_ (gx#syntax-e _g1138211853_)))
                        (let ((_hd1139811860_ (##car _e1139711856_))
                              (_tl1139911863_ (##cdr _e1139711856_)))
                          (if (gx#stx-pair? _tl1139911863_)
                              (let ((_e1140011866_
                                     (gx#syntax-e _tl1139911863_)))
                                (let ((_hd1140111870_ (##car _e1140011866_))
                                      (_tl1140211873_ (##cdr _e1140011866_)))
                                  (if (gx#stx-pair? _tl1140211873_)
                                      (let ((_e1140311876_
                                             (gx#syntax-e _tl1140211873_)))
                                        (let ((_hd1140411880_
                                               (##car _e1140311876_))
                                              (_tl1140511883_
                                               (##cdr _e1140311876_)))
                                          (if (gx#stx-pair? _tl1140511883_)
                                              (let ((_e1140611886_
                                                     (gx#syntax-e
                                                      _tl1140511883_)))
                                                (let ((_hd1140711890_
                                                       (##car _e1140611886_))
                                                      (_tl1140811893_
                                                       (##cdr _e1140611886_)))
                                                  (if (gx#stx-null?
                                                       _tl1140811893_)
                                                      ((lambda (_L11896_
                                                                _L11898_
                                                                _L11899_)
                                                         _L11896_)
                                                       _hd1140711890_
                                                       _hd1140411880_
                                                       _hd1140111870_)
                                                      (_g1137811849_
                                                       _g1138211853_))))
                                              (_g1137811849_ _g1138211853_))))
                                      (_g1137811849_ _g1138211853_))))
                              (_g1137811849_ _g1138211853_))))
                      (_g1137811849_ _g1138211853_))))
               (_g1137611971_
                (lambda (_g1138211921_)
                  (if (gx#stx-pair? _g1138211921_)
                      (let ((_e1138511924_ (gx#syntax-e _g1138211921_)))
                        (let ((_hd1138611928_ (##car _e1138511924_))
                              (_tl1138711931_ (##cdr _e1138511924_)))
                          (if (gx#stx-pair? _tl1138711931_)
                              (let ((_e1138811934_
                                     (gx#syntax-e _tl1138711931_)))
                                (let ((_hd1138911938_ (##car _e1138811934_))
                                      (_tl1139011941_ (##cdr _e1138811934_)))
                                  (if (gx#stx-pair? _tl1139011941_)
                                      (let ((_e1139111944_
                                             (gx#syntax-e _tl1139011941_)))
                                        (let ((_hd1139211948_
                                               (##car _e1139111944_))
                                              (_tl1139311951_
                                               (##cdr _e1139111944_)))
                                          (if (gx#stx-null? _tl1139311951_)
                                              ((lambda (_L11954_ _L11956_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'quote)
                                                       (cons '#!void '())))
                                               _hd1139211948_
                                               _hd1138911938_)
                                              (_g1137711917_ _g1138211921_))))
                                      (_g1137711917_ _g1138211921_))))
                              (_g1137711917_ _g1138211921_))))
                      (_g1137711917_ _g1138211921_)))))
          (_g1137611971_ _stx11374_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#~case-dispatch-bsearch|
      (lambda (_stx11976_)
        (letrec ((_split11979_
                  (lambda (_lst12340_ _mid12342_)
                    (let _lp12344_ ((_i12347_ '0)
                                    (_rest12349_ _lst12340_)
                                    (_left12350_ '()))
                      (if (fx< _i12347_ _mid12342_)
                          (_lp12344_
                           (fx1+ _i12347_)
                           (cdr _rest12349_)
                           (cons (car _rest12349_) _left12350_))
                          (values (reverse _left12350_) _rest12349_))))))
          (let* ((_g1198212010_
                  (lambda (_g1198312006_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1198312006_)))
                 (_g1198112336_
                  (lambda (_g1198312014_)
                    (if (gx#stx-pair? _g1198312014_)
                        (let ((_e1198712017_ (gx#syntax-e _g1198312014_)))
                          (let ((_hd1198812021_ (##car _e1198712017_))
                                (_tl1198912024_ (##cdr _e1198712017_)))
                            (if (gx#stx-pair? _tl1198912024_)
                                (let ((_e1199012027_
                                       (gx#syntax-e _tl1198912024_)))
                                  (let ((_hd1199112031_ (##car _e1199012027_))
                                        (_tl1199212034_ (##cdr _e1199012027_)))
                                    (if (gx#stx-pair? _tl1199212034_)
                                        (let ((_e1199312037_
                                               (gx#syntax-e _tl1199212034_)))
                                          (let ((_hd1199412041_
                                                 (##car _e1199312037_))
                                                (_tl1199512044_
                                                 (##cdr _e1199312037_)))
                                            (if (gx#stx-pair/null?
                                                 _tl1199512044_)
                                                (if (fx>= (gx#stx-length
                                                           _tl1199512044_)
                                                          '0)
                                                    (let ((_g34535_
                                                           (gx#syntax-split-splice
                                                            _tl1199512044_
                                                            '0)))
                                                      (begin
                                                        (let ((_g34536_
                                                               (values-count
                                                                _g34535_)))
                                                          (if (not (fx= _g34536_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                2))
                      (error "Context expects 2 values" _g34536_)))
                (let ((_target1199612047_ (values-ref _g34535_ 0))
                      (_tl1199812050_ (values-ref _g34535_ 1)))
                  (if (gx#stx-null? _tl1199812050_)
                      (letrec ((_loop1199912053_
                                (lambda (_hd1199712057_ _K1200312060_)
                                  (if (gx#stx-pair? _hd1199712057_)
                                      (let ((_e1200012063_
                                             (gx#syntax-e _hd1199712057_)))
                                        (let ((_lp-hd1200112067_
                                               (##car _e1200012063_))
                                              (_lp-tl1200212070_
                                               (##cdr _e1200012063_)))
                                          (_loop1199912053_
                                           _lp-tl1200212070_
                                           (cons _lp-hd1200112067_
                                                 _K1200312060_))))
                                      (let ((_K1200412073_
                                             (reverse _K1200312060_)))
                                        ((lambda (_L12077_ _L12079_ _L12080_)
                                           (let* ((_len12110_
                                                   (length (begin
                                                             '#!void
                                                             (foldr (lambda (_g1210112104_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1210212107_)
                              (cons _g1210112104_ _g1210212107_))
                            '()
                            _L12077_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_mid12113_
                                                   (quotient _len12110_ '2))
                                                  (_g34537_
                                                   (_split11979_
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g1211512118_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1211612121_)
                       (cons _g1211512118_ _g1211612121_))
                     '()
                     _L12077_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _mid12113_)))
                                             (begin
                                               (let ((_g34538_
                                                      (values-count _g34537_)))
                                                 (if (not (fx= _g34538_ 2))
                                                     (error "Context expects 2 values"
                                                            _g34538_)))
                                               (let ((_left12124_
                                                      (values-ref _g34537_ 0))
                                                     (_right12126_
                                                      (values-ref _g34537_ 1)))
                                                 (let ()
                                                   (let* ((_g1213012171_
                                                           (lambda (_g1213112167_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g1213112167_)))
                                                          (_g1212912332_
                                                           (lambda (_g1213112175_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1213112175_)
                         (let ((_e1213612178_ (gx#syntax-e _g1213112175_)))
                           (let ((_hd1213712182_ (##car _e1213612178_))
                                 (_tl1213812185_ (##cdr _e1213612178_)))
                             (if (gx#stx-pair? _tl1213812185_)
                                 (let ((_e1213912188_
                                        (gx#syntax-e _tl1213812185_)))
                                   (let ((_hd1214012192_ (##car _e1213912188_))
                                         (_tl1214112195_
                                          (##cdr _e1213912188_)))
                                     (if (gx#stx-pair/null? _hd1214012192_)
                                         (if (fx>= (gx#stx-length
                                                    _hd1214012192_)
                                                   '0)
                                             (let ((_g34539_
                                                    (gx#syntax-split-splice
                                                     _hd1214012192_
                                                     '0)))
                                               (begin
                                                 (let ((_g34540_
                                                        (values-count
                                                         _g34539_)))
                                                   (if (not (fx= _g34540_ 2))
                                                       (error "Context expects 2 values"
                                                              _g34540_)))
                                                 (let ((_target1214212198_
                                                        (values-ref
                                                         _g34539_
                                                         0))
                                                       (_tl1214412201_
                                                        (values-ref
                                                         _g34539_
                                                         1)))
                                                   (if (gx#stx-null?
                                                        _tl1214412201_)
                                                       (letrec ((_loop1214512204_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd1214312208_ _K-left1214912211_)
                           (if (gx#stx-pair? _hd1214312208_)
                               (let ((_e1214612214_
                                      (gx#syntax-e _hd1214312208_)))
                                 (let ((_lp-hd1214712218_
                                        (##car _e1214612214_))
                                       (_lp-tl1214812221_
                                        (##cdr _e1214612214_)))
                                   (_loop1214512204_
                                    _lp-tl1214812221_
                                    (cons _lp-hd1214712218_
                                          _K-left1214912211_))))
                               (let ((_K-left1215012224_
                                      (reverse _K-left1214912211_)))
                                 (if (gx#stx-pair? _tl1214112195_)
                                     (let ((_e1215112228_
                                            (gx#syntax-e _tl1214112195_)))
                                       (let ((_hd1215212232_
                                              (##car _e1215112228_))
                                             (_tl1215312235_
                                              (##cdr _e1215112228_)))
                                         (if (gx#stx-pair/null? _hd1215212232_)
                                             (if (fx>= (gx#stx-length
                                                        _hd1215212232_)
                                                       '0)
                                                 (let ((_g34541_
                                                        (gx#syntax-split-splice
                                                         _hd1215212232_
                                                         '0)))
                                                   (begin
                                                     (let ((_g34542_
                                                            (values-count
                                                             _g34541_)))
                                                       (if (not (fx= _g34542_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g34542_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target1215412238_
                                                            (values-ref
                                                             _g34541_
                                                             0))
                                                           (_tl1215612241_
                                                            (values-ref
                                                             _g34541_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl1215612241_)
                                                           (letrec ((_loop1215712244_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd1215512248_ _K-right1216112251_)
                               (if (gx#stx-pair? _hd1215512248_)
                                   (let ((_e1215812254_
                                          (gx#syntax-e _hd1215512248_)))
                                     (let ((_lp-hd1215912258_
                                            (##car _e1215812254_))
                                           (_lp-tl1216012261_
                                            (##cdr _e1215812254_)))
                                       (_loop1215712244_
                                        _lp-tl1216012261_
                                        (cons _lp-hd1215912258_
                                              _K-right1216112251_))))
                                   (let ((_K-right1216212264_
                                          (reverse _K-right1216112251_)))
                                     (if (gx#stx-pair? _tl1215312235_)
                                         (let ((_e1216312268_
                                                (gx#syntax-e _tl1215312235_)))
                                           (let ((_hd1216412272_
                                                  (##car _e1216312268_))
                                                 (_tl1216512275_
                                                  (##cdr _e1216312268_)))
                                             (if (gx#stx-null? _tl1216512275_)
                                                 ((lambda (_L12278_
                                                           _L12280_
                                                           _L12281_
                                                           _L12282_)
                                                    (let ()
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'if)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 '##fx<)
                                (cons _L12079_ (cons _L12278_ '())))
                          (cons (cons (gx#datum->syntax '#f '~case-dispatch*)
                                      (cons _L12080_
                                            (cons _L12079_
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g1231512320_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1231612323_)
                     (cons _g1231512320_ _g1231612323_))
                   '()
                   _L12281_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             '~case-dispatch*)
                                            (cons _L12278_
                                                  (cons _L12079_
                                                        (begin
                                                          '#!void
                                                          (foldr (lambda (_g1231712326_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g1231812329_)
                           (cons _g1231712326_ _g1231812329_))
                         '()
                         _L12280_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd1216412272_
                                                  _K-right1216212264_
                                                  _K-left1215012224_
                                                  _hd1213712182_)
                                                 (_g1213012171_
                                                  _g1213112175_))))
                                         (_g1213012171_ _g1213112175_)))))))
                     (_loop1215712244_ _target1215412238_ '()))
                   (_g1213012171_ _g1213112175_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1213012171_ _g1213112175_))
                                             (_g1213012171_ _g1213112175_))))
                                     (_g1213012171_ _g1213112175_)))))))
                 (_loop1214512204_ _target1214212198_ '()))
               (_g1213012171_ _g1213112175_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1213012171_ _g1213112175_))
                                         (_g1213012171_ _g1213112175_))))
                                 (_g1213012171_ _g1213112175_))))
                         (_g1213012171_ _g1213112175_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1212912332_
                                                      (list _mid12113_
                                                            _left12124_
                                                            _right12126_
                                                            (fx+ _mid12113_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _L12080_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _K1200412073_
                                         _hd1199412041_
                                         _hd1199112031_))))))
                        (_loop1199912053_ _target1199612047_ '()))
                      (_g1198212010_ _g1198312014_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1198212010_
                                                     _g1198312014_))
                                                (_g1198212010_
                                                 _g1198312014_))))
                                        (_g1198212010_ _g1198312014_))))
                                (_g1198212010_ _g1198312014_))))
                        (_g1198212010_ _g1198312014_)))))
            (_g1198112336_ _stx11976_)))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#do|
      (lambda (_$stx12356_)
        (let* ((_g1236012431_
                (lambda (_g1236112427_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1236112427_)))
               (_g1235912720_
                (lambda (_g1236112435_)
                  (if (gx#stx-pair? _g1236112435_)
                      (let ((_e1236812438_ (gx#syntax-e _g1236112435_)))
                        (let ((_hd1236912442_ (##car _e1236812438_))
                              (_tl1237012445_ (##cdr _e1236812438_)))
                          (if (gx#stx-pair? _tl1237012445_)
                              (let ((_e1237112448_
                                     (gx#syntax-e _tl1237012445_)))
                                (let ((_hd1237212452_ (##car _e1237112448_))
                                      (_tl1237312455_ (##cdr _e1237112448_)))
                                  (if (gx#stx-pair/null? _hd1237212452_)
                                      (if (fx>= (gx#stx-length _hd1237212452_)
                                                '0)
                                          (let ((_g34543_
                                                 (gx#syntax-split-splice
                                                  _hd1237212452_
                                                  '0)))
                                            (begin
                                              (let ((_g34544_
                                                     (values-count _g34543_)))
                                                (if (not (fx= _g34544_ 2))
                                                    (error "Context expects 2 values"
                                                           _g34544_)))
                                              (let ((_target1237412458_
                                                     (values-ref _g34543_ 0))
                                                    (_tl1237612461_
                                                     (values-ref _g34543_ 1)))
                                                (if (gx#stx-null?
                                                     _tl1237612461_)
                                                    (letrec ((_loop1237712464_
                                                              (lambda (_hd1237512468_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _step1238112471_
                               _init1238212473_
                               _var1238312475_)
                        (if (gx#stx-pair? _hd1237512468_)
                            (let ((_e1237812478_ (gx#syntax-e _hd1237512468_)))
                              (let ((_lp-hd1237912482_ (##car _e1237812478_))
                                    (_lp-tl1238012485_ (##cdr _e1237812478_)))
                                (if (gx#stx-pair? _lp-hd1237912482_)
                                    (let ((_e1238712488_
                                           (gx#syntax-e _lp-hd1237912482_)))
                                      (let ((_hd1238812492_
                                             (##car _e1238712488_))
                                            (_tl1238912495_
                                             (##cdr _e1238712488_)))
                                        (if (gx#stx-pair? _tl1238912495_)
                                            (let ((_e1239012498_
                                                   (gx#syntax-e
                                                    _tl1238912495_)))
                                              (let ((_hd1239112502_
                                                     (##car _e1239012498_))
                                                    (_tl1239212505_
                                                     (##cdr _e1239012498_)))
                                                (if (gx#stx-pair/null?
                                                     _tl1239212505_)
                                                    (if (fx>= (gx#stx-length
                                                               _tl1239212505_)
                                                              '0)
                                                        (let ((_g34545_
                                                               (gx#syntax-split-splice
                                                                _tl1239212505_
                                                                '0)))
                                                          (begin
                                                            (let ((_g34546_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (values-count _g34545_)))
                      (if (not (fx= _g34546_ 2))
                          (error "Context expects 2 values" _g34546_)))
                    (let ((_target1239312508_ (values-ref _g34545_ 0))
                          (_tl1239512511_ (values-ref _g34545_ 1)))
                      (if (gx#stx-null? _tl1239512511_)
                          (letrec ((_loop1239612514_
                                    (lambda (_hd1239412518_ _step1240012521_)
                                      (if (gx#stx-pair? _hd1239412518_)
                                          (let ((_e1239712524_
                                                 (gx#syntax-e _hd1239412518_)))
                                            (let ((_lp-hd1239812528_
                                                   (##car _e1239712524_))
                                                  (_lp-tl1239912531_
                                                   (##cdr _e1239712524_)))
                                              (_loop1239612514_
                                               _lp-tl1239912531_
                                               (cons _lp-hd1239812528_
                                                     _step1240012521_))))
                                          (let ((_step1240112534_
                                                 (reverse _step1240012521_)))
                                            (_loop1237712464_
                                             _lp-tl1238012485_
                                             (cons _step1240112534_
                                                   _step1238112471_)
                                             (cons _hd1239112502_
                                                   _init1238212473_)
                                             (cons _hd1238812492_
                                                   _var1238312475_)))))))
                            (_loop1239612514_ _target1239312508_ '()))
                          (_g1236012431_ _g1236112435_)))))
                (_g1236012431_ _g1236112435_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1236012431_
                                                     _g1236112435_))))
                                            (_g1236012431_ _g1236112435_))))
                                    (_g1236012431_ _g1236112435_))))
                            (let ((_step1238412538_ (reverse _step1238112471_))
                                  (_init1238512541_ (reverse _init1238212473_))
                                  (_var1238612543_ (reverse _var1238312475_)))
                              (if (gx#stx-pair? _tl1237312455_)
                                  (let ((_e1240212546_
                                         (gx#syntax-e _tl1237312455_)))
                                    (let ((_hd1240312550_
                                           (##car _e1240212546_))
                                          (_tl1240412553_
                                           (##cdr _e1240212546_)))
                                      (if (gx#stx-pair? _hd1240312550_)
                                          (let ((_e1240512556_
                                                 (gx#syntax-e _hd1240312550_)))
                                            (let ((_hd1240612560_
                                                   (##car _e1240512556_))
                                                  (_tl1240712563_
                                                   (##cdr _e1240512556_)))
                                              (if (gx#stx-pair/null?
                                                   _tl1240712563_)
                                                  (if (fx>= (gx#stx-length
                                                             _tl1240712563_)
                                                            '0)
                                                      (let ((_g34547_
                                                             (gx#syntax-split-splice
                                                              _tl1240712563_
                                                              '0)))
                                                        (begin
                                                          (let ((_g34548_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (values-count _g34547_)))
                    (if (not (fx= _g34548_ 2))
                        (error "Context expects 2 values" _g34548_)))
                  (let ((_target1240812566_ (values-ref _g34547_ 0))
                        (_tl1241012569_ (values-ref _g34547_ 1)))
                    (if (gx#stx-null? _tl1241012569_)
                        (letrec ((_loop1241112572_
                                  (lambda (_hd1240912576_ _fini1241512579_)
                                    (if (gx#stx-pair? _hd1240912576_)
                                        (let ((_e1241212582_
                                               (gx#syntax-e _hd1240912576_)))
                                          (let ((_lp-hd1241312586_
                                                 (##car _e1241212582_))
                                                (_lp-tl1241412589_
                                                 (##cdr _e1241212582_)))
                                            (_loop1241112572_
                                             _lp-tl1241412589_
                                             (cons _lp-hd1241312586_
                                                   _fini1241512579_))))
                                        (let ((_fini1241612592_
                                               (reverse _fini1241512579_)))
                                          (if (gx#stx-pair/null?
                                               _tl1240412553_)
                                              (if (fx>= (gx#stx-length
                                                         _tl1240412553_)
                                                        '0)
                                                  (let ((_g34549_
                                                         (gx#syntax-split-splice
                                                          _tl1240412553_
                                                          '0)))
                                                    (begin
                                                      (let ((_g34550_
                                                             (values-count
                                                              _g34549_)))
                                                        (if (not (fx= _g34550_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g34550_)))
              (let ((_target1241712596_ (values-ref _g34549_ 0))
                    (_tl1241912599_ (values-ref _g34549_ 1)))
                (if (gx#stx-null? _tl1241912599_)
                    (letrec ((_loop1242012602_
                              (lambda (_hd1241812606_ _body1242412609_)
                                (if (gx#stx-pair? _hd1241812606_)
                                    (let ((_e1242112612_
                                           (gx#syntax-e _hd1241812606_)))
                                      (let ((_lp-hd1242212616_
                                             (##car _e1242112612_))
                                            (_lp-tl1242312619_
                                             (##cdr _e1242112612_)))
                                        (_loop1242012602_
                                         _lp-tl1242312619_
                                         (cons _lp-hd1242212616_
                                               _body1242412609_))))
                                    (let ((_body1242512622_
                                           (reverse _body1242412609_)))
                                      ((lambda (_L12626_
                                                _L12628_
                                                _L12629_
                                                _L12630_
                                                _L12631_
                                                _L12632_)
                                         (if (gx#stx-andmap
                                              gx#identifier?
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g1266512668_
                                                                _g1266612671_)
                                                         (cons _g1266512668_
                                                               _g1266612671_))
                                                       '()
                                                       _L12632_)))
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          '$loop)
                                                         (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-check-splice-targets _L12631_ _L12632_)
                         (foldr (lambda (_g1267312686_
                                         _g1267412689_
                                         _g1267512691_)
                                  (cons (cons _g1267412689_
                                              (cons _g1267312686_ '()))
                                        _g1267512691_))
                                '()
                                _L12631_
                                _L12632_))
                       (cons (cons (gx#datum->syntax '#f 'if)
                                   (cons _L12629_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'begin)
                                                     (cons '#!void
                                                           (begin
                                                             '#!void
                                                             (foldr (lambda (_g1267612694_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1267712697_)
                              (cons _g1267612694_ _g1267712697_))
                            '()
                            _L12628_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'begin)
                                                           (begin
                                                             '#!void
                                                             (foldr (lambda (_g1267812700_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1267912703_)
                              (cons _g1267812700_ _g1267912703_))
                            (cons (cons (gx#datum->syntax '#f '$loop)
                                        (begin
                                          (gx#syntax-check-splice-targets
                                           _L12630_
                                           _L12632_)
                                          (foldr (lambda (_g1268012706_
                                                          _g1268112709_
                                                          _g1268212711_)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'begin)
                                                               (cons _g1268112709_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (begin
                               '#!void
                               (foldr (lambda (_g1268312714_ _g1268412717_)
                                        (cons _g1268312714_ _g1268412717_))
                                      '()
                                      _g1268012706_))))
                 _g1268212711_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()
                                                 _L12630_
                                                 _L12632_)))
                                  '())
                            _L12626_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1236012431_ _g1236112435_)))
                                       _body1242512622_
                                       _fini1241612592_
                                       _hd1240612560_
                                       _step1238412538_
                                       _init1238512541_
                                       _var1238612543_))))))
                      (_loop1242012602_ _target1241712596_ '()))
                    (_g1236012431_ _g1236112435_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1236012431_
                                                   _g1236112435_))
                                              (_g1236012431_
                                               _g1236112435_)))))))
                          (_loop1241112572_ _target1240812566_ '()))
                        (_g1236012431_ _g1236112435_)))))
              (_g1236012431_ _g1236112435_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1236012431_
                                                   _g1236112435_))))
                                          (_g1236012431_ _g1236112435_))))
                                  (_g1236012431_ _g1236112435_)))))))
              (_loop1237712464_ _target1237412458_ '() '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1236012431_
                                                     _g1236112435_)))))
                                          (_g1236012431_ _g1236112435_))
                                      (_g1236012431_ _g1236112435_))))
                              (_g1236012431_ _g1236112435_))))
                      (_g1236012431_ _g1236112435_)))))
          (_g1235912720_ _$stx12356_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#do-while|
      (lambda (_$stx12728_)
        (let* ((_g1273212755_
                (lambda (_g1273312751_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1273312751_)))
               (_g1273112826_
                (lambda (_g1273312759_)
                  (if (gx#stx-pair? _g1273312759_)
                      (let ((_e1273812762_ (gx#syntax-e _g1273312759_)))
                        (let ((_hd1273912766_ (##car _e1273812762_))
                              (_tl1274012769_ (##cdr _e1273812762_)))
                          (if (gx#stx-pair? _tl1274012769_)
                              (let ((_e1274112772_
                                     (gx#syntax-e _tl1274012769_)))
                                (let ((_hd1274212776_ (##car _e1274112772_))
                                      (_tl1274312779_ (##cdr _e1274112772_)))
                                  (if (gx#stx-pair? _tl1274312779_)
                                      (let ((_e1274412782_
                                             (gx#syntax-e _tl1274312779_)))
                                        (let ((_hd1274512786_
                                               (##car _e1274412782_))
                                              (_tl1274612789_
                                               (##cdr _e1274412782_)))
                                          (if (gx#stx-pair? _hd1274512786_)
                                              (let ((_e1274712792_
                                                     (gx#syntax-e
                                                      _hd1274512786_)))
                                                (let ((_hd1274812796_
                                                       (##car _e1274712792_))
                                                      (_tl1274912799_
                                                       (##cdr _e1274712792_)))
                                                  ((lambda (_L12802_
                                                            _L12804_
                                                            _L12805_
                                                            _L12806_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'do)
                                                           (cons _L12806_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (cons (gx#datum->syntax '#f 'not)
                                           (cons _L12805_ '()))
                                     _L12804_)
                               _L12802_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _tl1274612789_
                                                   _tl1274912799_
                                                   _hd1274812796_
                                                   _hd1274212776_)))
                                              (_g1273212755_ _g1273312759_))))
                                      (_g1273212755_ _g1273312759_))))
                              (_g1273212755_ _g1273312759_))))
                      (_g1273212755_ _g1273312759_)))))
          (_g1273112826_ _$stx12728_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#begin0|
      (lambda (_$stx12830_)
        (let* ((_g1283512866_
                (lambda (_g1283612862_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1283612862_)))
               (_g1283412951_
                (lambda (_g1283612870_)
                  (if (gx#stx-pair? _g1283612870_)
                      (let ((_e1284612873_ (gx#syntax-e _g1283612870_)))
                        (let ((_hd1284712877_ (##car _e1284612873_))
                              (_tl1284812880_ (##cdr _e1284612873_)))
                          (if (gx#stx-pair? _tl1284812880_)
                              (let ((_e1284912883_
                                     (gx#syntax-e _tl1284812880_)))
                                (let ((_hd1285012887_ (##car _e1284912883_))
                                      (_tl1285112890_ (##cdr _e1284912883_)))
                                  (if (gx#stx-pair/null? _tl1285112890_)
                                      (if (fx>= (gx#stx-length _tl1285112890_)
                                                '0)
                                          (let ((_g34551_
                                                 (gx#syntax-split-splice
                                                  _tl1285112890_
                                                  '0)))
                                            (begin
                                              (let ((_g34552_
                                                     (values-count _g34551_)))
                                                (if (not (fx= _g34552_ 2))
                                                    (error "Context expects 2 values"
                                                           _g34552_)))
                                              (let ((_target1285212893_
                                                     (values-ref _g34551_ 0))
                                                    (_tl1285412896_
                                                     (values-ref _g34551_ 1)))
                                                (if (gx#stx-null?
                                                     _tl1285412896_)
                                                    (letrec ((_loop1285512899_
                                                              (lambda (_hd1285312903_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _rest1285912906_)
                        (if (gx#stx-pair? _hd1285312903_)
                            (let ((_e1285612909_ (gx#syntax-e _hd1285312903_)))
                              (let ((_lp-hd1285712913_ (##car _e1285612909_))
                                    (_lp-tl1285812916_ (##cdr _e1285612909_)))
                                (_loop1285512899_
                                 _lp-tl1285812916_
                                 (cons _lp-hd1285712913_ _rest1285912906_))))
                            (let ((_rest1286012919_
                                   (reverse _rest1285912906_)))
                              ((lambda (_L12923_ _L12925_)
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (cons (gx#datum->syntax '#f '$r)
                                                   (cons _L12925_ '()))
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '%#expression)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'begin)
                             (begin
                               '#!void
                               (foldr (lambda (_g1294212945_ _g1294312948_)
                                        (cons _g1294212945_ _g1294312948_))
                                      '()
                                      _L12923_)))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          '$r)
                                                         '())))))
                               _rest1286012919_
                               _hd1285012887_))))))
              (_loop1285512899_ _target1285212893_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1283512866_
                                                     _g1283612870_)))))
                                          (_g1283512866_ _g1283612870_))
                                      (_g1283512866_ _g1283612870_))))
                              (_g1283512866_ _g1283612870_))))
                      (_g1283512866_ _g1283612870_))))
               (_g1283312991_
                (lambda (_g1283612955_)
                  (if (gx#stx-pair? _g1283612955_)
                      (let ((_e1283812958_ (gx#syntax-e _g1283612955_)))
                        (let ((_hd1283912962_ (##car _e1283812958_))
                              (_tl1284012965_ (##cdr _e1283812958_)))
                          (if (gx#stx-pair? _tl1284012965_)
                              (let ((_e1284112968_
                                     (gx#syntax-e _tl1284012965_)))
                                (let ((_hd1284212972_ (##car _e1284112968_))
                                      (_tl1284312975_ (##cdr _e1284112968_)))
                                  (if (gx#stx-null? _tl1284312975_)
                                      ((lambda (_L12978_) _L12978_)
                                       _hd1284212972_)
                                      (_g1283412951_ _g1283612955_))))
                              (_g1283412951_ _g1283612955_))))
                      (_g1283412951_ _g1283612955_)))))
          (_g1283312991_ _$stx12830_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#rec|
      (lambda (_$stx12996_)
        (let* ((_g1300213055_
                (lambda (_g1300313051_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1300313051_)))
               (_g1300113154_
                (lambda (_g1300313059_)
                  (if (gx#stx-pair? _g1300313059_)
                      (let ((_e1303213062_ (gx#syntax-e _g1300313059_)))
                        (let ((_hd1303313066_ (##car _e1303213062_))
                              (_tl1303413069_ (##cdr _e1303213062_)))
                          (if (gx#stx-pair? _tl1303413069_)
                              (let ((_e1303513072_
                                     (gx#syntax-e _tl1303413069_)))
                                (let ((_hd1303613076_ (##car _e1303513072_))
                                      (_tl1303713079_ (##cdr _e1303513072_)))
                                  (if (gx#stx-pair? _hd1303613076_)
                                      (let ((_e1303813082_
                                             (gx#syntax-e _hd1303613076_)))
                                        (let ((_hd1303913086_
                                               (##car _e1303813082_))
                                              (_tl1304013089_
                                               (##cdr _e1303813082_)))
                                          (if (gx#stx-pair/null?
                                               _tl1303713079_)
                                              (if (fx>= (gx#stx-length
                                                         _tl1303713079_)
                                                        '0)
                                                  (let ((_g34553_
                                                         (gx#syntax-split-splice
                                                          _tl1303713079_
                                                          '0)))
                                                    (begin
                                                      (let ((_g34554_
                                                             (values-count
                                                              _g34553_)))
                                                        (if (not (fx= _g34554_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g34554_)))
              (let ((_target1304113092_ (values-ref _g34553_ 0))
                    (_tl1304313095_ (values-ref _g34553_ 1)))
                (if (gx#stx-null? _tl1304313095_)
                    (letrec ((_loop1304413098_
                              (lambda (_hd1304213102_ _body1304813105_)
                                (if (gx#stx-pair? _hd1304213102_)
                                    (let ((_e1304513108_
                                           (gx#syntax-e _hd1304213102_)))
                                      (let ((_lp-hd1304613112_
                                             (##car _e1304513108_))
                                            (_lp-tl1304713115_
                                             (##cdr _e1304513108_)))
                                        (_loop1304413098_
                                         _lp-tl1304713115_
                                         (cons _lp-hd1304613112_
                                               _body1304813105_))))
                                    (let ((_body1304913118_
                                           (reverse _body1304813105_)))
                                      ((lambda (_L13122_ _L13124_ _L13125_)
                                         (if (gx#identifier? _L13125_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'letrec)
                                                   (cons (cons (cons _L13125_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _L13124_
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g1314513148_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1314613151_)
                  (cons _g1314513148_ _g1314613151_))
                '()
                _L13122_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   '()))
                       '())
                 (cons _L13125_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1300213055_ _g1300313059_)))
                                       _body1304913118_
                                       _tl1304013089_
                                       _hd1303913086_))))))
                      (_loop1304413098_ _target1304113092_ '()))
                    (_g1300213055_ _g1300313059_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1300213055_
                                                   _g1300313059_))
                                              (_g1300213055_ _g1300313059_))))
                                      (_g1300213055_ _g1300313059_))))
                              (_g1300213055_ _g1300313059_))))
                      (_g1300213055_ _g1300313059_))))
               (_g1300013220_
                (lambda (_g1300313158_)
                  (if (gx#stx-pair? _g1300313158_)
                      (let ((_e1301713161_ (gx#syntax-e _g1300313158_)))
                        (let ((_hd1301813165_ (##car _e1301713161_))
                              (_tl1301913168_ (##cdr _e1301713161_)))
                          (if (gx#stx-pair? _tl1301913168_)
                              (let ((_e1302013171_
                                     (gx#syntax-e _tl1301913168_)))
                                (let ((_hd1302113175_ (##car _e1302013171_))
                                      (_tl1302213178_ (##cdr _e1302013171_)))
                                  (if (gx#stx-pair? _hd1302113175_)
                                      (let ((_e1302313181_
                                             (gx#syntax-e _hd1302113175_)))
                                        (let ((_hd1302413185_
                                               (##car _e1302313181_))
                                              (_tl1302513188_
                                               (##cdr _e1302313181_)))
                                          (if (gx#identifier? _hd1302413185_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<sugar>$<sugar:2>[1]#_g34555_|
                                                   _hd1302413185_)
                                                  (if (gx#stx-pair?
                                                       _tl1302213178_)
                                                      (let ((_e1302613191_
                                                             (gx#syntax-e
                                                              _tl1302213178_)))
                                                        (let ((_hd1302713195_
                                                               (##car _e1302613191_))
                                                              (_tl1302813198_
                                                               (##cdr _e1302613191_)))
                                                          (if (gx#stx-null?
                                                               _tl1302813198_)
                                                              ((lambda (_L13201_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _L13203_)
                         (if (gx#identifier-list? _L13203_)
                             (cons (gx#datum->syntax '#f 'letrec-values)
                                   (cons (cons (cons _L13203_
                                                     (cons _L13201_ '()))
                                               '())
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'values)
                                                     _L13203_)
                                               '())))
                             (_g1300113154_ _g1300313158_)))
                       _hd1302713195_
                       _tl1302513188_)
                      (_g1300113154_ _g1300313158_))))
              (_g1300113154_ _g1300313158_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1300113154_
                                                   _g1300313158_))
                                              (_g1300113154_ _g1300313158_))))
                                      (_g1300113154_ _g1300313158_))))
                              (_g1300113154_ _g1300313158_))))
                      (_g1300113154_ _g1300313158_))))
               (_g1299913274_
                (lambda (_g1300313224_)
                  (if (gx#stx-pair? _g1300313224_)
                      (let ((_e1300613227_ (gx#syntax-e _g1300313224_)))
                        (let ((_hd1300713231_ (##car _e1300613227_))
                              (_tl1300813234_ (##cdr _e1300613227_)))
                          (if (gx#stx-pair? _tl1300813234_)
                              (let ((_e1300913237_
                                     (gx#syntax-e _tl1300813234_)))
                                (let ((_hd1301013241_ (##car _e1300913237_))
                                      (_tl1301113244_ (##cdr _e1300913237_)))
                                  (if (gx#stx-pair? _tl1301113244_)
                                      (let ((_e1301213247_
                                             (gx#syntax-e _tl1301113244_)))
                                        (let ((_hd1301313251_
                                               (##car _e1301213247_))
                                              (_tl1301413254_
                                               (##cdr _e1301213247_)))
                                          (if (gx#stx-null? _tl1301413254_)
                                              ((lambda (_L13257_ _L13259_)
                                                 (if (gx#identifier? _L13259_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'letrec)
                                                           (cons (cons (cons _L13259_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (cons _L13257_ '()))
                               '())
                         (cons _L13259_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1300013220_
                                                      _g1300313224_)))
                                               _hd1301313251_
                                               _hd1301013241_)
                                              (_g1300013220_ _g1300313224_))))
                                      (_g1300013220_ _g1300313224_))))
                              (_g1300013220_ _g1300313224_))))
                      (_g1300013220_ _g1300313224_)))))
          (_g1299913274_ _$stx12996_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#alet|
      (lambda (_stx13279_)
        (letrec ((_let-head?13282_
                  (lambda (_x13829_)
                    (let* ((_g1383313844_
                            (lambda (_g1383413840_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1383413840_)))
                           (_g1383213855_
                            (lambda (_g1383413848_)
                              ((lambda () (gx#identifier? _x13829_)))))
                           (_g1383113885_
                            (lambda (_g1383413859_)
                              (if (gx#stx-pair? _g1383413859_)
                                  (let ((_e1383613862_
                                         (gx#syntax-e _g1383413859_)))
                                    (let ((_hd1383713866_
                                           (##car _e1383613862_))
                                          (_tl1383813869_
                                           (##cdr _e1383613862_)))
                                      (if (gx#identifier? _hd1383713866_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<sugar>$<sugar:2>[1]#_g34556_|
                                               _hd1383713866_)
                                              ((lambda (_L13872_)
                                                 (gx#stx-andmap
                                                  gx#identifier?
                                                  _L13872_))
                                               _tl1383813869_)
                                              (_g1383213855_ _g1383413859_))
                                          (_g1383213855_ _g1383413859_))))
                                  (_g1383213855_ _g1383413859_)))))
                      (_g1383113885_ _x13829_))))
                 (_let-head13284_
                  (lambda (_x13769_)
                    (let* ((_g1377313784_
                            (lambda (_g1377413780_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1377413780_)))
                           (_g1377213795_
                            (lambda (_g1377413788_)
                              ((lambda () (list _x13769_)))))
                           (_g1377113825_
                            (lambda (_g1377413799_)
                              (if (gx#stx-pair? _g1377413799_)
                                  (let ((_e1377613802_
                                         (gx#syntax-e _g1377413799_)))
                                    (let ((_hd1377713806_
                                           (##car _e1377613802_))
                                          (_tl1377813809_
                                           (##cdr _e1377613802_)))
                                      (if (gx#identifier? _hd1377713806_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<sugar>$<sugar:2>[1]#_g34557_|
                                               _hd1377713806_)
                                              ((lambda (_L13812_) _L13812_)
                                               _tl1377813809_)
                                              (_g1377213795_ _g1377413799_))
                                          (_g1377213795_ _g1377413799_))))
                                  (_g1377213795_ _g1377413799_)))))
                      (_g1377113825_ _x13769_)))))
          (let* ((_g1328713345_
                  (lambda (_g1328813341_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1328813341_)))
                 (_g1328613695_
                  (lambda (_g1328813349_)
                    (if (gx#stx-pair? _g1328813349_)
                        (let ((_e1330813352_ (gx#syntax-e _g1328813349_)))
                          (let ((_hd1330913356_ (##car _e1330813352_))
                                (_tl1331013359_ (##cdr _e1330813352_)))
                            (if (gx#stx-pair? _tl1331013359_)
                                (let ((_e1331113362_
                                       (gx#syntax-e _tl1331013359_)))
                                  (let ((_hd1331213366_ (##car _e1331113362_))
                                        (_tl1331313369_ (##cdr _e1331113362_)))
                                    (if (gx#stx-pair/null? _hd1331213366_)
                                        (if (fx>= (gx#stx-length
                                                   _hd1331213366_)
                                                  '0)
                                            (let ((_g34558_
                                                   (gx#syntax-split-splice
                                                    _hd1331213366_
                                                    '0)))
                                              (begin
                                                (let ((_g34559_
                                                       (values-count
                                                        _g34558_)))
                                                  (if (not (fx= _g34559_ 2))
                                                      (error "Context expects 2 values"
                                                             _g34559_)))
                                                (let ((_target1331413372_
                                                       (values-ref _g34558_ 0))
                                                      (_tl1331613375_
                                                       (values-ref
                                                        _g34558_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl1331613375_)
                                                      (letrec ((_loop1331713378_
                                                                (lambda (_hd1331513382_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _e1332113385_
                                 _hd1332213387_)
                          (if (gx#stx-pair? _hd1331513382_)
                              (let ((_e1331813390_
                                     (gx#syntax-e _hd1331513382_)))
                                (let ((_lp-hd1331913394_ (##car _e1331813390_))
                                      (_lp-tl1332013397_
                                       (##cdr _e1331813390_)))
                                  (if (gx#stx-pair? _lp-hd1331913394_)
                                      (let ((_e1332513400_
                                             (gx#syntax-e _lp-hd1331913394_)))
                                        (let ((_hd1332613404_
                                               (##car _e1332513400_))
                                              (_tl1332713407_
                                               (##cdr _e1332513400_)))
                                          (if (gx#stx-pair? _tl1332713407_)
                                              (let ((_e1332813410_
                                                     (gx#syntax-e
                                                      _tl1332713407_)))
                                                (let ((_hd1332913414_
                                                       (##car _e1332813410_))
                                                      (_tl1333013417_
                                                       (##cdr _e1332813410_)))
                                                  (if (gx#stx-null?
                                                       _tl1333013417_)
                                                      (_loop1331713378_
                                                       _lp-tl1332013397_
                                                       (cons _hd1332913414_
                                                             _e1332113385_)
                                                       (cons _hd1332613404_
                                                             _hd1332213387_))
                                                      (_g1328713345_
                                                       _g1328813349_))))
                                              (_g1328713345_ _g1328813349_))))
                                      (_g1328713345_ _g1328813349_))))
                              (let ((_e1332313420_ (reverse _e1332113385_))
                                    (_hd1332413423_ (reverse _hd1332213387_)))
                                (if (gx#stx-pair/null? _tl1331313369_)
                                    (if (fx>= (gx#stx-length _tl1331313369_)
                                              '0)
                                        (let ((_g34560_
                                               (gx#syntax-split-splice
                                                _tl1331313369_
                                                '0)))
                                          (begin
                                            (let ((_g34561_
                                                   (values-count _g34560_)))
                                              (if (not (fx= _g34561_ 2))
                                                  (error "Context expects 2 values"
                                                         _g34561_)))
                                            (let ((_target1333113426_
                                                   (values-ref _g34560_ 0))
                                                  (_tl1333313429_
                                                   (values-ref _g34560_ 1)))
                                              (if (gx#stx-null? _tl1333313429_)
                                                  (letrec ((_loop1333413432_
                                                            (lambda (_hd1333213436_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _body1333813439_)
                      (if (gx#stx-pair? _hd1333213436_)
                          (let ((_e1333513442_ (gx#syntax-e _hd1333213436_)))
                            (let ((_lp-hd1333613446_ (##car _e1333513442_))
                                  (_lp-tl1333713449_ (##cdr _e1333513442_)))
                              (_loop1333413432_
                               _lp-tl1333713449_
                               (cons _lp-hd1333613446_ _body1333813439_))))
                          (let ((_body1333913452_ (reverse _body1333813439_)))
                            ((lambda (_L13456_ _L13458_ _L13459_)
                               (if (gx#stx-andmap
                                    _let-head?13282_
                                    (begin
                                      '#!void
                                      (foldr (lambda (_g1348213485_
                                                      _g1348313488_)
                                               (cons _g1348213485_
                                                     _g1348313488_))
                                             '()
                                             _L13459_)))
                                   (let* ((_g1349113524_
                                           (lambda (_g1349213520_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1349213520_)))
                                          (_g1349013675_
                                           (lambda (_g1349213528_)
                                             (if (gx#stx-pair? _g1349213528_)
                                                 (let ((_e1349513531_
                                                        (gx#syntax-e
                                                         _g1349213528_)))
                                                   (let ((_hd1349613535_
                                                          (##car _e1349513531_))
                                                         (_tl1349713538_
                                                          (##cdr _e1349513531_)))
                                                     (if (gx#stx-pair/null?
                                                          _hd1349613535_)
                                                         (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd1349613535_)
                           '0)
                     (let ((_g34562_
                            (gx#syntax-split-splice _hd1349613535_ '0)))
                       (begin
                         (let ((_g34563_ (values-count _g34562_)))
                           (if (not (fx= _g34563_ 2))
                               (error "Context expects 2 values" _g34563_)))
                         (let ((_target1349813541_ (values-ref _g34562_ 0))
                               (_tl1350013544_ (values-ref _g34562_ 1)))
                           (if (gx#stx-null? _tl1350013544_)
                               (letrec ((_loop1350113547_
                                         (lambda (_hd1349913551_
                                                  _$e1350513554_)
                                           (if (gx#stx-pair? _hd1349913551_)
                                               (let ((_e1350213557_
                                                      (gx#syntax-e
                                                       _hd1349913551_)))
                                                 (let ((_lp-hd1350313561_
                                                        (##car _e1350213557_))
                                                       (_lp-tl1350413564_
                                                        (##cdr _e1350213557_)))
                                                   (_loop1350113547_
                                                    _lp-tl1350413564_
                                                    (cons _lp-hd1350313561_
                                                          _$e1350513554_))))
                                               (let ((_$e1350613567_
                                                      (reverse _$e1350513554_)))
                                                 (if (gx#stx-pair?
                                                      _tl1349713538_)
                                                     (let ((_e1350713571_
                                                            (gx#syntax-e
                                                             _tl1349713538_)))
                                                       (let ((_hd1350813575_
                                                              (##car _e1350713571_))
                                                             (_tl1350913578_
                                                              (##cdr _e1350713571_)))
                                                         (if (gx#stx-pair/null?
                                                              _hd1350813575_)
                                                             (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _hd1350813575_)
                               '0)
                         (let ((_g34564_
                                (gx#syntax-split-splice _hd1350813575_ '0)))
                           (begin
                             (let ((_g34565_ (values-count _g34564_)))
                               (if (not (fx= _g34565_ 2))
                                   (error "Context expects 2 values"
                                          _g34565_)))
                             (let ((_target1351013581_ (values-ref _g34564_ 0))
                                   (_tl1351213584_ (values-ref _g34564_ 1)))
                               (if (gx#stx-null? _tl1351213584_)
                                   (letrec ((_loop1351313587_
                                             (lambda (_hd1351113591_
                                                      _hd-bind1351713594_)
                                               (if (gx#stx-pair?
                                                    _hd1351113591_)
                                                   (let ((_e1351413597_
                                                          (gx#syntax-e
                                                           _hd1351113591_)))
                                                     (let ((_lp-hd1351513601_
                                                            (##car _e1351413597_))
                                                           (_lp-tl1351613604_
                                                            (##cdr _e1351413597_)))
                                                       (_loop1351313587_
                                                        _lp-tl1351613604_
                                                        (cons _lp-hd1351513601_
                                                              _hd-bind1351713594_))))
                                                   (let ((_hd-bind1351813607_
                                                          (reverse _hd-bind1351713594_)))
                                                     (if (gx#stx-null?
                                                          _tl1350913578_)
                                                         ((lambda (_L13611_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L13613_)
                    (let ()
                      (cons (gx#datum->syntax '#f 'let-values)
                            (cons (begin
                                    (gx#syntax-check-splice-targets
                                     _L13458_
                                     _L13613_)
                                    (foldr (lambda (_g1363613647_
                                                    _g1363713650_
                                                    _g1363813652_)
                                             (cons (cons (cons _g1363713650_
                                                               '())
                                                         (cons _g1363613647_
                                                               '()))
                                                   _g1363813652_))
                                           '()
                                           _L13458_
                                           _L13613_))
                                  (cons (cons (gx#datum->syntax '#f 'and)
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g1363913655_
                                                                _g1364013658_)
                                                         (cons _g1363913655_
                                                               _g1364013658_))
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'let-values)
                           (cons (begin
                                   (gx#syntax-check-splice-targets
                                    _L13613_
                                    _L13611_)
                                   (foldr (lambda (_g1364113661_
                                                   _g1364213664_
                                                   _g1364313666_)
                                            (cons (cons _g1364213664_
                                                        (cons _g1364113661_
                                                              '()))
                                                  _g1364313666_))
                                          '()
                                          _L13613_
                                          _L13611_))
                                 (begin
                                   '#!void
                                   (foldr (lambda (_g1364413669_ _g1364513672_)
                                            (cons _g1364413669_ _g1364513672_))
                                          '()
                                          _L13456_))))
                     '())
               _L13613_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                  _hd-bind1351813607_
                  _$e1350613567_)
                 (_g1349113524_ _g1349213528_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop1351313587_ _target1351013581_ '()))
                                   (_g1349113524_ _g1349213528_)))))
                         (_g1349113524_ _g1349213528_))
                     (_g1349113524_ _g1349213528_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1349113524_
                                                      _g1349213528_)))))))
                                 (_loop1350113547_ _target1349813541_ '()))
                               (_g1349113524_ _g1349213528_)))))
                     (_g1349113524_ _g1349213528_))
                 (_g1349113524_ _g1349213528_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1349113524_
                                                  _g1349213528_)))))
                                     (_g1349013675_
                                      (list (gx#gentemps
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g1367813681_
                                                               _g1367913684_)
                                                        (cons _g1367813681_
                                                              _g1367913684_))
                                                      '()
                                                      _L13459_)))
                                            (gx#stx-map
                                             _let-head13284_
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g1368613689_
                                                               _g1368713692_)
                                                        (cons _g1368613689_
                                                              _g1368713692_))
                                                      '()
                                                      _L13459_))))))
                                   (_g1328713345_ _g1328813349_)))
                             _body1333913452_
                             _e1332313420_
                             _hd1332413423_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1333413432_
                                                     _target1333113426_
                                                     '()))
                                                  (_g1328713345_
                                                   _g1328813349_)))))
                                        (_g1328713345_ _g1328813349_))
                                    (_g1328713345_ _g1328813349_)))))))
                (_loop1331713378_ _target1331413372_ '() '()))
              (_g1328713345_ _g1328813349_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1328713345_ _g1328813349_))
                                        (_g1328713345_ _g1328813349_))))
                                (_g1328713345_ _g1328813349_))))
                        (_g1328713345_ _g1328813349_))))
                 (_g1328513765_
                  (lambda (_g1328813699_)
                    (if (gx#stx-pair? _g1328813699_)
                        (let ((_e1329313702_ (gx#syntax-e _g1328813699_)))
                          (let ((_hd1329413706_ (##car _e1329313702_))
                                (_tl1329513709_ (##cdr _e1329313702_)))
                            (if (gx#stx-pair? _tl1329513709_)
                                (let ((_e1329613712_
                                       (gx#syntax-e _tl1329513709_)))
                                  (let ((_hd1329713716_ (##car _e1329613712_))
                                        (_tl1329813719_ (##cdr _e1329613712_)))
                                    (if (gx#stx-pair? _hd1329713716_)
                                        (let ((_e1329913722_
                                               (gx#syntax-e _hd1329713716_)))
                                          (let ((_hd1330013726_
                                                 (##car _e1329913722_))
                                                (_tl1330113729_
                                                 (##cdr _e1329913722_)))
                                            (if (gx#stx-pair? _tl1330113729_)
                                                (let ((_e1330213732_
                                                       (gx#syntax-e
                                                        _tl1330113729_)))
                                                  (let ((_hd1330313736_
                                                         (##car _e1330213732_))
                                                        (_tl1330413739_
                                                         (##cdr _e1330213732_)))
                                                    (if (gx#stx-null?
                                                         _tl1330413739_)
                                                        ((lambda (_L13742_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L13744_
                          _L13745_
                          _L13746_)
                   (if (_let-head?13282_ _L13745_)
                       (cons _L13746_
                             (cons (cons (cons _L13745_ (cons _L13744_ '()))
                                         '())
                                   _L13742_))
                       (_g1328613695_ _g1328813699_)))
                 _tl1329813719_
                 _hd1330313736_
                 _hd1330013726_
                 _hd1329413706_)
                (_g1328613695_ _g1328813699_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1328613695_
                                                 _g1328813699_))))
                                        (_g1328613695_ _g1328813699_))))
                                (_g1328613695_ _g1328813699_))))
                        (_g1328613695_ _g1328813699_)))))
            (_g1328513765_ _stx13279_)))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#alet*|
      (lambda (_$stx13893_)
        (let* ((_g1389813943_
                (lambda (_g1389913939_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1389913939_)))
               (_g1389714044_
                (lambda (_g1389913947_)
                  (if (gx#stx-pair? _g1389913947_)
                      (let ((_e1392013950_ (gx#syntax-e _g1389913947_)))
                        (let ((_hd1392113954_ (##car _e1392013950_))
                              (_tl1392213957_ (##cdr _e1392013950_)))
                          (if (gx#stx-pair? _tl1392213957_)
                              (let ((_e1392313960_
                                     (gx#syntax-e _tl1392213957_)))
                                (let ((_hd1392413964_ (##car _e1392313960_))
                                      (_tl1392513967_ (##cdr _e1392313960_)))
                                  (if (gx#stx-pair? _hd1392413964_)
                                      (let ((_e1392613970_
                                             (gx#syntax-e _hd1392413964_)))
                                        (let ((_hd1392713974_
                                               (##car _e1392613970_))
                                              (_tl1392813977_
                                               (##cdr _e1392613970_)))
                                          (if (gx#stx-pair/null?
                                               _tl1392513967_)
                                              (if (fx>= (gx#stx-length
                                                         _tl1392513967_)
                                                        '0)
                                                  (let ((_g34566_
                                                         (gx#syntax-split-splice
                                                          _tl1392513967_
                                                          '0)))
                                                    (begin
                                                      (let ((_g34567_
                                                             (values-count
                                                              _g34566_)))
                                                        (if (not (fx= _g34567_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g34567_)))
              (let ((_target1392913980_ (values-ref _g34566_ 0))
                    (_tl1393113983_ (values-ref _g34566_ 1)))
                (if (gx#stx-null? _tl1393113983_)
                    (letrec ((_loop1393213986_
                              (lambda (_hd1393013990_ _body1393613993_)
                                (if (gx#stx-pair? _hd1393013990_)
                                    (let ((_e1393313996_
                                           (gx#syntax-e _hd1393013990_)))
                                      (let ((_lp-hd1393414000_
                                             (##car _e1393313996_))
                                            (_lp-tl1393514003_
                                             (##cdr _e1393313996_)))
                                        (_loop1393213986_
                                         _lp-tl1393514003_
                                         (cons _lp-hd1393414000_
                                               _body1393613993_))))
                                    (let ((_body1393714006_
                                           (reverse _body1393613993_)))
                                      ((lambda (_L14010_
                                                _L14012_
                                                _L14013_
                                                _L14014_)
                                         (cons (gx#datum->syntax '#f 'alet)
                                               (cons (cons _L14013_ '())
                                                     (cons (cons _L14014_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L14012_
                               (begin
                                 '#!void
                                 (foldr (lambda (_g1403514038_ _g1403614041_)
                                          (cons _g1403514038_ _g1403614041_))
                                        '()
                                        _L14010_))))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _body1393714006_
                                       _tl1392813977_
                                       _hd1392713974_
                                       _hd1392113954_))))))
                      (_loop1393213986_ _target1392913980_ '()))
                    (_g1389813943_ _g1389913947_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1389813943_
                                                   _g1389913947_))
                                              (_g1389813943_ _g1389913947_))))
                                      (_g1389813943_ _g1389913947_))))
                              (_g1389813943_ _g1389913947_))))
                      (_g1389813943_ _g1389913947_))))
               (_g1389614126_
                (lambda (_g1389914048_)
                  (if (gx#stx-pair? _g1389914048_)
                      (let ((_e1390114051_ (gx#syntax-e _g1389914048_)))
                        (let ((_hd1390214055_ (##car _e1390114051_))
                              (_tl1390314058_ (##cdr _e1390114051_)))
                          (if (gx#stx-pair? _tl1390314058_)
                              (let ((_e1390414061_
                                     (gx#syntax-e _tl1390314058_)))
                                (let ((_hd1390514065_ (##car _e1390414061_))
                                      (_tl1390614068_ (##cdr _e1390414061_)))
                                  (if (gx#stx-null? _hd1390514065_)
                                      (if (gx#stx-pair/null? _tl1390614068_)
                                          (if (fx>= (gx#stx-length
                                                     _tl1390614068_)
                                                    '0)
                                              (let ((_g34568_
                                                     (gx#syntax-split-splice
                                                      _tl1390614068_
                                                      '0)))
                                                (begin
                                                  (let ((_g34569_
                                                         (values-count
                                                          _g34568_)))
                                                    (if (not (fx= _g34569_ 2))
                                                        (error "Context expects 2 values"
                                                               _g34569_)))
                                                  (let ((_target1390714071_
                                                         (values-ref
                                                          _g34568_
                                                          0))
                                                        (_tl1390914074_
                                                         (values-ref
                                                          _g34568_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl1390914074_)
                                                        (letrec ((_loop1391014077_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd1390814081_ _body1391414084_)
                            (if (gx#stx-pair? _hd1390814081_)
                                (let ((_e1391114087_
                                       (gx#syntax-e _hd1390814081_)))
                                  (let ((_lp-hd1391214091_
                                         (##car _e1391114087_))
                                        (_lp-tl1391314094_
                                         (##cdr _e1391114087_)))
                                    (_loop1391014077_
                                     _lp-tl1391314094_
                                     (cons _lp-hd1391214091_
                                           _body1391414084_))))
                                (let ((_body1391514097_
                                       (reverse _body1391414084_)))
                                  ((lambda (_L14101_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons '()
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g1411714120_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1411814123_)
                    (cons _g1411714120_ _g1411814123_))
                  '()
                  _L14101_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _body1391514097_))))))
                  (_loop1391014077_ _target1390714071_ '()))
                (_g1389714044_ _g1389914048_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1389714044_ _g1389914048_))
                                          (_g1389714044_ _g1389914048_))
                                      (_g1389714044_ _g1389914048_))))
                              (_g1389714044_ _g1389914048_))))
                      (_g1389714044_ _g1389914048_)))))
          (_g1389614126_ _$stx13893_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#@list|
      (lambda (_$stx14132_)
        (let* ((_g1414114198_
                (lambda (_g1414214194_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1414214194_)))
               (_g1414014227_
                (lambda (_g1414214202_)
                  (if (gx#stx-pair? _g1414214202_)
                      (let ((_e1419014205_ (gx#syntax-e _g1414214202_)))
                        (let ((_hd1419114209_ (##car _e1419014205_))
                              (_tl1419214212_ (##cdr _e1419014205_)))
                          ((lambda (_L14215_) _L14215_) _tl1419214212_)))
                      (_g1414114198_ _g1414214202_))))
               (_g1413914271_
                (lambda (_g1414214231_)
                  (if (gx#stx-pair? _g1414214231_)
                      (let ((_e1418314234_ (gx#syntax-e _g1414214231_)))
                        (let ((_hd1418414238_ (##car _e1418314234_))
                              (_tl1418514241_ (##cdr _e1418314234_)))
                          (if (gx#stx-pair? _tl1418514241_)
                              (let ((_e1418614244_
                                     (gx#syntax-e _tl1418514241_)))
                                (let ((_hd1418714248_ (##car _e1418614244_))
                                      (_tl1418814251_ (##cdr _e1418614244_)))
                                  ((lambda (_L14254_ _L14256_ _L14257_)
                                     (cons (gx#datum->syntax '#f 'cons)
                                           (cons _L14256_
                                                 (cons (cons _L14257_ _L14254_)
                                                       '()))))
                                   _tl1418814251_
                                   _hd1418714248_
                                   _hd1418414238_)))
                              (_g1414014227_ _g1414214231_))))
                      (_g1414014227_ _g1414214231_))))
               (_g1413814329_
                (lambda (_g1414214275_)
                  (if (gx#stx-pair? _g1414214275_)
                      (let ((_e1417114278_ (gx#syntax-e _g1414214275_)))
                        (let ((_hd1417214282_ (##car _e1417114278_))
                              (_tl1417314285_ (##cdr _e1417114278_)))
                          (if (gx#stx-pair? _tl1417314285_)
                              (let ((_e1417414288_
                                     (gx#syntax-e _tl1417314285_)))
                                (let ((_hd1417514292_ (##car _e1417414288_))
                                      (_tl1417614295_ (##cdr _e1417414288_)))
                                  (if (gx#stx-pair? _tl1417614295_)
                                      (let ((_e1417714298_
                                             (gx#syntax-e _tl1417614295_)))
                                        (let ((_hd1417814302_
                                               (##car _e1417714298_))
                                              (_tl1417914305_
                                               (##cdr _e1417714298_)))
                                          ((lambda (_L14308_
                                                    _L14310_
                                                    _L14311_
                                                    _L14312_)
                                             (if (gx#ellipsis? _L14310_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'foldr)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'cons)
                                                             (cons (cons _L14312_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L14308_)
                           (cons _L14311_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1413914271_
                                                  _g1414214275_)))
                                           _tl1417914305_
                                           _hd1417814302_
                                           _hd1417514292_
                                           _hd1417214282_)))
                                      (_g1413914271_ _g1414214275_))))
                              (_g1413914271_ _g1414214275_))))
                      (_g1413914271_ _g1414214275_))))
               (_g1413714383_
                (lambda (_g1414214333_)
                  (if (gx#stx-pair? _g1414214333_)
                      (let ((_e1415814336_ (gx#syntax-e _g1414214333_)))
                        (let ((_hd1415914340_ (##car _e1415814336_))
                              (_tl1416014343_ (##cdr _e1415814336_)))
                          (if (gx#stx-pair? _tl1416014343_)
                              (let ((_e1416114346_
                                     (gx#syntax-e _tl1416014343_)))
                                (let ((_hd1416214350_ (##car _e1416114346_))
                                      (_tl1416314353_ (##cdr _e1416114346_)))
                                  (if (gx#stx-pair? _tl1416314353_)
                                      (let ((_e1416414356_
                                             (gx#syntax-e _tl1416314353_)))
                                        (let ((_hd1416514360_
                                               (##car _e1416414356_))
                                              (_tl1416614363_
                                               (##cdr _e1416414356_)))
                                          (if (gx#stx-null? _tl1416614363_)
                                              ((lambda (_L14366_ _L14368_)
                                                 (if (gx#ellipsis? _L14366_)
                                                     _L14368_
                                                     (_g1413814329_
                                                      _g1414214333_)))
                                               _hd1416514360_
                                               _hd1416214350_)
                                              (_g1413814329_ _g1414214333_))))
                                      (_g1413814329_ _g1414214333_))))
                              (_g1413814329_ _g1414214333_))))
                      (_g1413814329_ _g1414214333_))))
               (_g1413614435_
                (lambda (_g1414214387_)
                  (if (gx#stx-pair? _g1414214387_)
                      (let ((_e1414714390_ (gx#syntax-e _g1414214387_)))
                        (let ((_hd1414814394_ (##car _e1414714390_))
                              (_tl1414914397_ (##cdr _e1414714390_)))
                          (if (gx#stx-pair? _tl1414914397_)
                              (let ((_e1415014400_
                                     (gx#syntax-e _tl1414914397_)))
                                (let ((_hd1415114404_ (##car _e1415014400_))
                                      (_tl1415214407_ (##cdr _e1415014400_)))
                                  (if (gx#stx-datum? _hd1415114404_)
                                      (if (equal? (gx#stx-e _hd1415114404_)
                                                  '::)
                                          (if (gx#stx-pair? _tl1415214407_)
                                              (let ((_e1415314410_
                                                     (gx#syntax-e
                                                      _tl1415214407_)))
                                                (let ((_hd1415414414_
                                                       (##car _e1415314410_))
                                                      (_tl1415514417_
                                                       (##cdr _e1415314410_)))
                                                  (if (gx#stx-null?
                                                       _tl1415514417_)
                                                      ((lambda (_L14420_)
                                                         _L14420_)
                                                       _hd1415414414_)
                                                      (_g1413714383_
                                                       _g1414214387_))))
                                              (_g1413714383_ _g1414214387_))
                                          (_g1413714383_ _g1414214387_))
                                      (_g1413714383_ _g1414214387_))))
                              (_g1413714383_ _g1414214387_))))
                      (_g1413714383_ _g1414214387_))))
               (_g1413514456_
                (lambda (_g1414214439_)
                  (if (gx#stx-pair? _g1414214439_)
                      (let ((_e1414314442_ (gx#syntax-e _g1414214439_)))
                        (let ((_hd1414414446_ (##car _e1414314442_))
                              (_tl1414514449_ (##cdr _e1414314442_)))
                          (if (gx#stx-null? _tl1414514449_)
                              ((lambda ()
                                 (cons (gx#datum->syntax '#f 'quote)
                                       (cons '() '()))))
                              (_g1413614435_ _g1414214439_))))
                      (_g1413614435_ _g1414214439_)))))
          (_g1413514456_ _$stx14132_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#quasiquote|
      (lambda (_stx14460_)
        (letrec ((_simple-quote?14463_
                  (lambda (_e15155_)
                    (let* ((_g1516315200_
                            (lambda (_g1516415196_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1516415196_)))
                           (_g1516215211_
                            (lambda (_g1516415204_) ((lambda () '#t))))
                           (_g1516115234_
                            (lambda (_g1516415215_)
                              (if (gx#stx-box? _g1516415215_)
                                  (let ((_e1519415218_
                                         (unbox (gx#syntax-e _g1516415215_))))
                                    ((lambda (_L15222_)
                                       (_simple-quote?14463_ _L15222_))
                                     _e1519415218_))
                                  (_g1516215211_ _g1516415215_))))
                           (_g1516015297_
                            (lambda (_g1516415238_)
                              (if (gx#stx-vector? _g1516415238_)
                                  (let ((_e1518315241_
                                         (vector->list
                                          (gx#syntax-e _g1516415238_))))
                                    (if (gx#stx-pair/null? _e1518315241_)
                                        (if (fx>= (gx#stx-length _e1518315241_)
                                                  '0)
                                            (let ((_g34570_
                                                   (gx#syntax-split-splice
                                                    _e1518315241_
                                                    '0)))
                                              (begin
                                                (let ((_g34571_
                                                       (values-count
                                                        _g34570_)))
                                                  (if (not (fx= _g34571_ 2))
                                                      (error "Context expects 2 values"
                                                             _g34571_)))
                                                (let ((_target1518415245_
                                                       (values-ref _g34570_ 0))
                                                      (_tl1518615248_
                                                       (values-ref
                                                        _g34570_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl1518615248_)
                                                      (letrec ((_loop1518715251_
                                                                (lambda (_hd1518515255_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _e1519115258_)
                          (if (gx#stx-pair? _hd1518515255_)
                              (let ((_e1518815261_
                                     (gx#syntax-e _hd1518515255_)))
                                (let ((_lp-hd1518915265_ (##car _e1518815261_))
                                      (_lp-tl1519015268_
                                       (##cdr _e1518815261_)))
                                  (_loop1518715251_
                                   _lp-tl1519015268_
                                   (cons _lp-hd1518915265_ _e1519115258_))))
                              (let ((_e1519215271_ (reverse _e1519115258_)))
                                ((lambda (_L15275_)
                                   (_simple-quote?14463_
                                    (begin
                                      '#!void
                                      (foldr (lambda (_g1528815291_
                                                      _g1528915294_)
                                               (cons _g1528815291_
                                                     _g1528915294_))
                                             '()
                                             _L15275_))))
                                 _e1519215271_))))))
                (_loop1518715251_ _target1518415245_ '()))
              (_g1516115234_ _g1516415238_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1516115234_ _g1516415238_))
                                        (_g1516115234_ _g1516415238_)))
                                  (_g1516115234_ _g1516415238_))))
                           (_g1515915327_
                            (lambda (_g1516415301_)
                              (if (gx#stx-pair? _g1516415301_)
                                  (let ((_e1517915304_
                                         (gx#syntax-e _g1516415301_)))
                                    (let ((_hd1518015308_
                                           (##car _e1517915304_))
                                          (_tl1518115311_
                                           (##cdr _e1517915304_)))
                                      ((lambda (_L15314_ _L15316_)
                                         (if (_simple-quote?14463_ _L15316_)
                                             (_simple-quote?14463_ _L15314_)
                                             '#f))
                                       _tl1518115311_
                                       _hd1518015308_)))
                                  (_g1516015297_ _g1516415301_))))
                           (_g1515815358_
                            (lambda (_g1516415331_)
                              (if (gx#stx-pair? _g1516415331_)
                                  (let ((_e1517115334_
                                         (gx#syntax-e _g1516415331_)))
                                    (let ((_hd1517215338_
                                           (##car _e1517115334_))
                                          (_tl1517315341_
                                           (##cdr _e1517115334_)))
                                      (if (gx#identifier? _hd1517215338_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<sugar>$<sugar:2>[1]#_g34572_|
                                               _hd1517215338_)
                                              (if (gx#stx-pair? _tl1517315341_)
                                                  (let ((_e1517415344_
                                                         (gx#syntax-e
                                                          _tl1517315341_)))
                                                    (let ((_hd1517515348_
                                                           (##car _e1517415344_))
                                                          (_tl1517615351_
                                                           (##cdr _e1517415344_)))
                                                      (if (gx#stx-null?
                                                           _tl1517615351_)
                                                          ((lambda () '#f))
                                                          (_g1515915327_
                                                           _g1516415331_))))
                                                  (_g1515915327_
                                                   _g1516415331_))
                                              (_g1515915327_ _g1516415331_))
                                          (_g1515915327_ _g1516415331_))))
                                  (_g1515915327_ _g1516415331_))))
                           (_g1515715389_
                            (lambda (_g1516415362_)
                              (if (gx#stx-pair? _g1516415362_)
                                  (let ((_e1516515365_
                                         (gx#syntax-e _g1516415362_)))
                                    (let ((_hd1516615369_
                                           (##car _e1516515365_))
                                          (_tl1516715372_
                                           (##cdr _e1516515365_)))
                                      (if (gx#identifier? _hd1516615369_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<sugar>$<sugar:2>[1]#_g34573_|
                                               _hd1516615369_)
                                              (if (gx#stx-pair? _tl1516715372_)
                                                  (let ((_e1516815375_
                                                         (gx#syntax-e
                                                          _tl1516715372_)))
                                                    (let ((_hd1516915379_
                                                           (##car _e1516815375_))
                                                          (_tl1517015382_
                                                           (##cdr _e1516815375_)))
                                                      (if (gx#stx-null?
                                                           _tl1517015382_)
                                                          ((lambda () '#f))
                                                          (_g1515815358_
                                                           _g1516415362_))))
                                                  (_g1515815358_
                                                   _g1516415362_))
                                              (_g1515815358_ _g1516415362_))
                                          (_g1515815358_ _g1516415362_))))
                                  (_g1515815358_ _g1516415362_)))))
                      (_g1515715389_ _e15155_))))
                 (_generate14465_
                  (lambda (_e14527_ _d14529_)
                    (let* ((_g1453814596_
                            (lambda (_g1453914592_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1453914592_)))
                           (_g1453714613_
                            (lambda (_g1453914600_)
                              ((lambda (_L14603_)
                                 (cons (gx#datum->syntax '#f 'quote)
                                       (cons _L14603_ '())))
                               _g1453914600_)))
                           (_g1453614665_
                            (lambda (_g1453914617_)
                              (if (gx#stx-box? _g1453914617_)
                                  (let ((_e1458914620_
                                         (unbox (gx#syntax-e _g1453914617_))))
                                    ((lambda (_L14624_)
                                       (let* ((_g1463414642_
                                               (lambda (_g1463514638_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1463514638_)))
                                              (_g1463314661_
                                               (lambda (_g1463514646_)
                                                 ((lambda (_L14649_)
                                                    (let ()
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'box)
                                                            (cons _L14649_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g1463514646_))))
                                         (_g1463314661_
                                          (_generate14465_
                                           _L14624_
                                           _d14529_))))
                                     _e1458914620_))
                                  (_g1453714613_ _g1453914617_))))
                           (_g1453514759_
                            (lambda (_g1453914669_)
                              (if (gx#stx-vector? _g1453914669_)
                                  (let ((_e1457814672_
                                         (vector->list
                                          (gx#syntax-e _g1453914669_))))
                                    (if (gx#stx-pair/null? _e1457814672_)
                                        (if (fx>= (gx#stx-length _e1457814672_)
                                                  '0)
                                            (let ((_g34574_
                                                   (gx#syntax-split-splice
                                                    _e1457814672_
                                                    '0)))
                                              (begin
                                                (let ((_g34575_
                                                       (values-count
                                                        _g34574_)))
                                                  (if (not (fx= _g34575_ 2))
                                                      (error "Context expects 2 values"
                                                             _g34575_)))
                                                (let ((_target1457914676_
                                                       (values-ref _g34574_ 0))
                                                      (_tl1458114679_
                                                       (values-ref
                                                        _g34574_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl1458114679_)
                                                      (letrec ((_loop1458214682_
                                                                (lambda (_hd1458014686_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _e1458614689_)
                          (if (gx#stx-pair? _hd1458014686_)
                              (let ((_e1458314692_
                                     (gx#syntax-e _hd1458014686_)))
                                (let ((_lp-hd1458414696_ (##car _e1458314692_))
                                      (_lp-tl1458514699_
                                       (##cdr _e1458314692_)))
                                  (_loop1458214682_
                                   _lp-tl1458514699_
                                   (cons _lp-hd1458414696_ _e1458614689_))))
                              (let ((_e1458714702_ (reverse _e1458614689_)))
                                ((lambda (_L14706_)
                                   (let* ((_g1472014728_
                                           (lambda (_g1472114724_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1472114724_)))
                                          (_g1471914747_
                                           (lambda (_g1472114732_)
                                             ((lambda (_L14735_)
                                                (let ()
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'list->vector)
                                                        (cons _L14735_ '()))))
                                              _g1472114732_))))
                                     (_g1471914747_
                                      (_generate14465_
                                       (begin
                                         '#!void
                                         (foldr (lambda (_g1475014753_
                                                         _g1475114756_)
                                                  (cons _g1475014753_
                                                        _g1475114756_))
                                                '()
                                                _L14706_))
                                       _d14529_))))
                                 _e1458714702_))))))
                (_loop1458214682_ _target1457914676_ '()))
              (_g1453614665_ _g1453914669_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1453614665_ _g1453914669_))
                                        (_g1453614665_ _g1453914669_)))
                                  (_g1453614665_ _g1453914669_))))
                           (_g1453414853_
                            (lambda (_g1453914763_)
                              (if (gx#stx-pair? _g1453914763_)
                                  (let ((_e1457414766_
                                         (gx#syntax-e _g1453914763_)))
                                    (let ((_hd1457514770_
                                           (##car _e1457414766_))
                                          (_tl1457614773_
                                           (##cdr _e1457414766_)))
                                      ((lambda (_L14776_ _L14778_)
                                         (let* ((_g1478914804_
                                                 (lambda (_g1479014800_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1479014800_)))
                                                (_g1478814849_
                                                 (lambda (_g1479014808_)
                                                   (if (gx#stx-pair?
                                                        _g1479014808_)
                                                       (let ((_e1479314811_
                                                              (gx#syntax-e
                                                               _g1479014808_)))
                                                         (let ((_hd1479414815_
                                                                (##car _e1479314811_))
                                                               (_tl1479514818_
                                                                (##cdr _e1479314811_)))
                                                           (if (gx#stx-pair?
                                                                _tl1479514818_)
                                                               (let ((_e1479614821_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl1479514818_)))
                         (let ((_hd1479714825_ (##car _e1479614821_))
                               (_tl1479814828_ (##cdr _e1479614821_)))
                           (if (gx#stx-null? _tl1479814828_)
                               ((lambda (_L14831_ _L14833_)
                                  (let ()
                                    (cons (gx#datum->syntax '#f 'cons)
                                          (cons _L14833_
                                                (cons _L14831_ '())))))
                                _hd1479714825_
                                _hd1479414815_)
                               (_g1478914804_ _g1479014808_))))
                       (_g1478914804_ _g1479014808_))))
               (_g1478914804_ _g1479014808_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g1478814849_
                                            (list (_generate14465_
                                                   _L14778_
                                                   _d14529_)
                                                  (_generate14465_
                                                   _L14776_
                                                   _d14529_)))))
                                       _tl1457614773_
                                       _hd1457514770_)))
                                  (_g1453514759_ _g1453914763_))))
                           (_g1453314938_
                            (lambda (_g1453914857_)
                              (if (gx#stx-pair? _g1453914857_)
                                  (let ((_e1456314860_
                                         (gx#syntax-e _g1453914857_)))
                                    (let ((_hd1456414864_
                                           (##car _e1456314860_))
                                          (_tl1456514867_
                                           (##cdr _e1456314860_)))
                                      (if (gx#stx-pair? _hd1456414864_)
                                          (let ((_e1456614870_
                                                 (gx#syntax-e _hd1456414864_)))
                                            (let ((_hd1456714874_
                                                   (##car _e1456614870_))
                                                  (_tl1456814877_
                                                   (##cdr _e1456614870_)))
                                              (if (gx#identifier?
                                                   _hd1456714874_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<sugar>$<sugar:2>[1]#_g34576_|
                                                       _hd1456714874_)
                                                      (if (gx#stx-pair?
                                                           _tl1456814877_)
                                                          (let ((_e1456914880_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1456814877_)))
                    (let ((_hd1457014884_ (##car _e1456914880_))
                          (_tl1457114887_ (##cdr _e1456914880_)))
                      (if (gx#stx-null? _tl1457114887_)
                          ((lambda (_L14890_ _L14892_)
                             (if (fxzero? _d14529_)
                                 (let* ((_g1490714915_
                                         (lambda (_g1490814911_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g1490814911_)))
                                        (_g1490614934_
                                         (lambda (_g1490814919_)
                                           ((lambda (_L14922_)
                                              (let ()
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'foldr)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'cons)
                                                            (cons _L14922_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L14892_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g1490814919_))))
                                   (_g1490614934_
                                    (_generate14465_ _L14890_ _d14529_)))
                                 (_g1453414853_ _g1453914857_)))
                           _tl1456514867_
                           _hd1457014884_)
                          (_g1453414853_ _g1453914857_))))
                  (_g1453414853_ _g1453914857_))
              (_g1453414853_ _g1453914857_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1453414853_
                                                   _g1453914857_))))
                                          (_g1453414853_ _g1453914857_))))
                                  (_g1453414853_ _g1453914857_))))
                           (_g1453215009_
                            (lambda (_g1453914942_)
                              (if (gx#stx-pair? _g1453914942_)
                                  (let ((_e1455514945_
                                         (gx#syntax-e _g1453914942_)))
                                    (let ((_hd1455614949_
                                           (##car _e1455514945_))
                                          (_tl1455714952_
                                           (##cdr _e1455514945_)))
                                      (if (gx#identifier? _hd1455614949_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<sugar>$<sugar:2>[1]#_g34577_|
                                               _hd1455614949_)
                                              (if (gx#stx-pair? _tl1455714952_)
                                                  (let ((_e1455814955_
                                                         (gx#syntax-e
                                                          _tl1455714952_)))
                                                    (let ((_hd1455914959_
                                                           (##car _e1455814955_))
                                                          (_tl1456014962_
                                                           (##cdr _e1455814955_)))
                                                      (if (gx#stx-null?
                                                           _tl1456014962_)
                                                          ((lambda (_L14965_)
                                                             (if (fxzero? _d14529_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'foldr)
                               (cons (gx#datum->syntax '#f 'cons)
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons '() '()))
                                           (cons _L14965_ '()))))
                         (let* ((_g1497814986_
                                 (lambda (_g1497914982_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1497914982_)))
                                (_g1497715005_
                                 (lambda (_g1497914990_)
                                   ((lambda (_L14993_)
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
                                                    (cons _L14993_ '())))))
                                    _g1497914990_))))
                           (_g1497715005_
                            (_generate14465_ _L14965_ (fx1- _d14529_))))))
                   _hd1455914959_)
                  (_g1453314938_ _g1453914942_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1453314938_
                                                   _g1453914942_))
                                              (_g1453314938_ _g1453914942_))
                                          (_g1453314938_ _g1453914942_))))
                                  (_g1453314938_ _g1453914942_))))
                           (_g1453115080_
                            (lambda (_g1453915013_)
                              (if (gx#stx-pair? _g1453915013_)
                                  (let ((_e1454815016_
                                         (gx#syntax-e _g1453915013_)))
                                    (let ((_hd1454915020_
                                           (##car _e1454815016_))
                                          (_tl1455015023_
                                           (##cdr _e1454815016_)))
                                      (if (gx#identifier? _hd1454915020_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<sugar>$<sugar:2>[1]#_g34578_|
                                               _hd1454915020_)
                                              (if (gx#stx-pair? _tl1455015023_)
                                                  (let ((_e1455115026_
                                                         (gx#syntax-e
                                                          _tl1455015023_)))
                                                    (let ((_hd1455215030_
                                                           (##car _e1455115026_))
                                                          (_tl1455315033_
                                                           (##cdr _e1455115026_)))
                                                      (if (gx#stx-null?
                                                           _tl1455315033_)
                                                          ((lambda (_L15036_)
                                                             (if (fxzero? _d14529_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L15036_
                         (let* ((_g1504915057_
                                 (lambda (_g1505015053_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1505015053_)))
                                (_g1504815076_
                                 (lambda (_g1505015061_)
                                   ((lambda (_L15064_)
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
                                                    (cons _L15064_ '())))))
                                    _g1505015061_))))
                           (_g1504815076_
                            (_generate14465_ _L15036_ (fx1- _d14529_))))))
                   _hd1455215030_)
                  (_g1453215009_ _g1453915013_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1453215009_
                                                   _g1453915013_))
                                              (_g1453215009_ _g1453915013_))
                                          (_g1453215009_ _g1453915013_))))
                                  (_g1453215009_ _g1453915013_))))
                           (_g1453015151_
                            (lambda (_g1453915084_)
                              (if (gx#stx-pair? _g1453915084_)
                                  (let ((_e1454115087_
                                         (gx#syntax-e _g1453915084_)))
                                    (let ((_hd1454215091_
                                           (##car _e1454115087_))
                                          (_tl1454315094_
                                           (##cdr _e1454115087_)))
                                      (if (gx#identifier? _hd1454215091_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<sugar>$<sugar:2>[1]#_g34579_|
                                               _hd1454215091_)
                                              (if (gx#stx-pair? _tl1454315094_)
                                                  (let ((_e1454415097_
                                                         (gx#syntax-e
                                                          _tl1454315094_)))
                                                    (let ((_hd1454515101_
                                                           (##car _e1454415097_))
                                                          (_tl1454615104_
                                                           (##cdr _e1454415097_)))
                                                      (if (gx#stx-null?
                                                           _tl1454615104_)
                                                          ((lambda (_L15107_)
                                                             (let* ((_g1512015128_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1512115124_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g1512115124_)))
                            (_g1511915147_
                             (lambda (_g1512115132_)
                               ((lambda (_L15135_)
                                  (let ()
                                    (cons (gx#datum->syntax '#f 'list)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'quote)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'quasiquote)
                                                            '()))
                                                (cons _L15135_ '())))))
                                _g1512115132_))))
                       (_g1511915147_
                        (_generate14465_ _L15107_ (fx1+ _d14529_)))))
                   _hd1454515101_)
                  (_g1453115080_ _g1453915084_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1453115080_
                                                   _g1453915084_))
                                              (_g1453115080_ _g1453915084_))
                                          (_g1453115080_ _g1453915084_))))
                                  (_g1453115080_ _g1453915084_)))))
                      (_g1453015151_ _e14527_)))))
          (let* ((_g1446714481_
                  (lambda (_g1446814477_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1446814477_)))
                 (_g1446614523_
                  (lambda (_g1446814485_)
                    (if (gx#stx-pair? _g1446814485_)
                        (let ((_e1447014488_ (gx#syntax-e _g1446814485_)))
                          (let ((_hd1447114492_ (##car _e1447014488_))
                                (_tl1447214495_ (##cdr _e1447014488_)))
                            (if (gx#stx-pair? _tl1447214495_)
                                (let ((_e1447314498_
                                       (gx#syntax-e _tl1447214495_)))
                                  (let ((_hd1447414502_ (##car _e1447314498_))
                                        (_tl1447514505_ (##cdr _e1447314498_)))
                                    (if (gx#stx-null? _tl1447514505_)
                                        ((lambda (_L14508_)
                                           (if (_simple-quote?14463_ _L14508_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _L14508_ '()))
                                               (_generate14465_ _L14508_ '0)))
                                         _hd1447414502_)
                                        (_g1446714481_ _g1446814485_))))
                                (_g1446714481_ _g1446814485_))))
                        (_g1446714481_ _g1446814485_)))))
            (_g1446614523_ _stx14460_)))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#delay|
      (lambda (_$stx15395_)
        (let* ((_g1540015421_
                (lambda (_g1540115417_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1540115417_)))
               (_g1539915462_
                (lambda (_g1540115425_)
                  (if (gx#stx-pair? _g1540115425_)
                      (let ((_e1541015428_ (gx#syntax-e _g1540115425_)))
                        (let ((_hd1541115432_ (##car _e1541015428_))
                              (_tl1541215435_ (##cdr _e1541015428_)))
                          (if (gx#stx-pair? _tl1541215435_)
                              (let ((_e1541315438_
                                     (gx#syntax-e _tl1541215435_)))
                                (let ((_hd1541415442_ (##car _e1541315438_))
                                      (_tl1541515445_ (##cdr _e1541315438_)))
                                  (if (gx#stx-null? _tl1541515445_)
                                      ((lambda (_L15448_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                'make-promise)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'lambda%)
                                                           (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L15448_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _hd1541415442_)
                                      (_g1540015421_ _g1540115425_))))
                              (_g1540015421_ _g1540115425_))))
                      (_g1540015421_ _g1540115425_))))
               (_g1539815502_
                (lambda (_g1540115466_)
                  (if (gx#stx-pair? _g1540115466_)
                      (let ((_e1540315469_ (gx#syntax-e _g1540115466_)))
                        (let ((_hd1540415473_ (##car _e1540315469_))
                              (_tl1540515476_ (##cdr _e1540315469_)))
                          (if (gx#stx-pair? _tl1540515476_)
                              (let ((_e1540615479_
                                     (gx#syntax-e _tl1540515476_)))
                                (let ((_hd1540715483_ (##car _e1540615479_))
                                      (_tl1540815486_ (##cdr _e1540615479_)))
                                  (if (gx#stx-null? _tl1540815486_)
                                      ((lambda (_L15489_)
                                         (if (gx#stx-datum? _L15489_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _L15489_ '()))
                                             (_g1539915462_ _g1540115466_)))
                                       _hd1540715483_)
                                      (_g1539915462_ _g1540115466_))))
                              (_g1539915462_ _g1540115466_))))
                      (_g1539915462_ _g1540115466_)))))
          (_g1539815502_ _$stx15395_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#cut|
      (lambda (_stx15506_)
        (letrec ((_generate15509_
                  (lambda (_rest15628_)
                    (let _lp15631_ ((_rest15634_ _rest15628_)
                                    (_hd15636_ '())
                                    (_body15637_ '()))
                      (let* ((_g1564015652_
                              (lambda (_g1564115648_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1564115648_)))
                             (_g1563915663_
                              (lambda (_g1564115656_)
                                ((lambda ()
                                   (values (reverse _hd15636_)
                                           (reverse _body15637_)
                                           '#f)))))
                             (_g1563815749_
                              (lambda (_g1564115667_)
                                (if (gx#stx-pair? _g1564115667_)
                                    (let ((_e1564415670_
                                           (gx#syntax-e _g1564115667_)))
                                      (let ((_hd1564515674_
                                             (##car _e1564415670_))
                                            (_tl1564615677_
                                             (##cdr _e1564415670_)))
                                        ((lambda (_L15680_ _L15682_)
                                           (let* ((_g1569915706_
                                                   (lambda (_g1570015702_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g1570015702_)))
                                                  (_g1569815717_
                                                   (lambda (_g1570015710_)
                                                     ((lambda ()
                                                        (_lp15631_
                                                         _L15680_
                                                         _hd15636_
                                                         (cons _L15682_
                                                               _body15637_))))))
                                                  (_g1569715731_
                                                   (lambda (_g1570015721_)
                                                     (if (gx#identifier?
                                                          _g1570015721_)
                                                         (if (gx#free-identifier=?
                                                              |gerbil/core$<sugar>$<sugar:2>[1]#_g34580_|
                                                              _g1570015721_)
                                                             ((lambda ()
                                                                (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L15680_)
                            (let ((_tail15728_ (gx#genident)))
                              (values (foldl cons _tail15728_ _hd15636_)
                                      (foldl cons
                                             (list _tail15728_)
                                             _body15637_)
                                      '#t))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _stx15506_
                             _L15682_))))
                     (_g1569815717_ _g1570015721_))
                 (_g1569815717_ _g1570015721_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1569615745_
                                                   (lambda (_g1570015735_)
                                                     (if (gx#identifier?
                                                          _g1570015735_)
                                                         (if (gx#free-identifier=?
                                                              |gerbil/core$<sugar>$<sugar:2>[1]#_g34581_|
                                                              _g1570015735_)
                                                             ((lambda ()
                                                                (let ((_arg15742_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#genident)))
                          (_lp15631_
                           _L15680_
                           (cons _arg15742_ _hd15636_)
                           (cons _arg15742_ _body15637_)))))
                     (_g1569715731_ _g1570015735_))
                 (_g1569715731_ _g1570015735_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1569615745_ _L15682_)))
                                         _tl1564615677_
                                         _hd1564515674_)))
                                    (_g1563915663_ _g1564115667_)))))
                        (_g1563815749_ _rest15634_))))))
          (let* ((_g1551215523_
                  (lambda (_g1551315519_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1551315519_)))
                 (_g1551115624_
                  (lambda (_g1551315527_)
                    (if (gx#stx-pair? _g1551315527_)
                        (let ((_e1551515530_ (gx#syntax-e _g1551315527_)))
                          (let ((_hd1551615534_ (##car _e1551515530_))
                                (_tl1551715537_ (##cdr _e1551515530_)))
                            ((lambda (_L15540_)
                               (if (if (gx#stx-list? _L15540_)
                                       (not (gx#stx-null? _L15540_))
                                       '#f)
                                   (let ((_g34582_ (_generate15509_ _L15540_)))
                                     (begin
                                       (let ((_g34583_
                                              (values-count _g34582_)))
                                         (if (not (fx= _g34583_ 3))
                                             (error "Context expects 3 values"
                                                    _g34583_)))
                                       (let ((_hd15553_
                                              (values-ref _g34582_ 0))
                                             (_body15555_
                                              (values-ref _g34582_ 1))
                                             (_tail?15556_
                                              (values-ref _g34582_ 2)))
                                         (let* ((_g1555815566_
                                                 (lambda (_g1555915562_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1555915562_)))
                                                (_g1555715620_
                                                 (lambda (_g1555915570_)
                                                   ((lambda (_L15573_)
                                                      (let ()
                                                        (let* ((_g1558615594_
                                                                (lambda (_g1558715590_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1558715590_)))
                       (_g1558515616_
                        (lambda (_g1558715598_)
                          ((lambda (_L15601_)
                             (let ()
                               (let ()
                                 (if _tail?15556_
                                     (cons (gx#datum->syntax '#f 'lambda%)
                                           (cons _L15573_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'apply)
                                                             _L15601_)
                                                       '())))
                                     (cons (gx#datum->syntax '#f 'lambda%)
                                           (cons _L15573_
                                                 (cons _L15601_ '())))))))
                           _g1558715598_))))
                  (_g1558515616_ _body15555_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1555915570_))))
                                           (_g1555715620_ _hd15553_)))))
                                   (_g1551215523_ _g1551315527_)))
                             _tl1551715537_)))
                        (_g1551215523_ _g1551315527_)))))
            (_g1551115624_ _stx15506_)))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#<>|
      (lambda (_$stx15754_)
        (let ((_g1575715764_
               (lambda (_g1575815760_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1575815760_))))
          (_g1575715764_ _$stx15754_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#<...>|
      (lambda (_$stx15768_)
        (let ((_g1577115778_
               (lambda (_g1577215774_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1577215774_))))
          (_g1577115778_ _$stx15768_))))))
