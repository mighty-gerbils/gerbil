(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g34695_|
    (gx#make-syntax-quote '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g34696_|
    (gx#make-syntax-quote 'else #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g34745_|
    (gx#make-syntax-quote 'values #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g34746_|
    (gx#make-syntax-quote 'values #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g34747_|
    (gx#make-syntax-quote 'values #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g34762_|
    (gx#make-syntax-quote
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g34763_|
    (gx#make-syntax-quote 'unquote #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g34766_|
    (gx#make-syntax-quote
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g34767_|
    (gx#make-syntax-quote
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g34768_|
    (gx#make-syntax-quote 'unquote #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g34769_|
    (gx#make-syntax-quote 'quasiquote #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g34770_|
    (gx#make-syntax-quote '<...> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g34771_|
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
                                              (let ((_g34661_
                                                     (gx#syntax-split-splice
                                                      _hd66616706_
                                                      '0)))
                                                (begin
                                                  (let ((_g34662_
                                                         (values-count
                                                          _g34661_)))
                                                    (if (not (fx= _g34662_ 2))
                                                        (error "Context expects 2 values"
                                                               _g34662_)))
                                                  (let ((_target66636712_
                                                         (values-ref
                                                          _g34661_
                                                          0))
                                                        (_tl66656715_
                                                         (values-ref
                                                          _g34661_
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
                                                  (let ((_g34663_
                                                         (gx#syntax-split-splice
                                                          _hd66736746_
                                                          '0)))
                                                    (begin
                                                      (let ((_g34664_
                                                             (values-count
                                                              _g34663_)))
                                                        (if (not (fx= _g34664_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g34664_)))
              (let ((_target66756752_ (values-ref _g34663_ 0))
                    (_tl66776755_ (values-ref _g34663_ 1)))
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
                                            (let ((_g34665_
                                                   (gx#syntax-split-splice
                                                    _g62226242_
                                                    '0)))
                                              (begin
                                                (let ((_g34666_
                                                       (values-count
                                                        _g34665_)))
                                                  (if (not (fx= _g34666_ 2))
                                                      (error "Context expects 2 values"
                                                             _g34666_)))
                                                (let ((_target62246245_
                                                       (values-ref _g34665_ 0))
                                                      (_tl62266248_
                                                       (values-ref
                                                        _g34665_
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
                                                       (let ((_g34667_
                                                              (gx#syntax-split-splice
                                                               _g62976317_
                                                               '0)))
                                                         (begin
                                                           (let ((_g34668_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (values-count _g34667_)))
                     (if (not (fx= _g34668_ 2))
                         (error "Context expects 2 values" _g34668_)))
                   (let ((_target62996320_ (values-ref _g34667_ 0))
                         (_tl63016323_ (values-ref _g34667_ 1)))
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
                                                        (let ((_g34669_
                                                               (gx#syntax-split-splice
                                                                _hd64326477_
                                                                '0)))
                                                          (begin
                                                            (let ((_g34670_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (values-count _g34669_)))
                      (if (not (fx= _g34670_ 2))
                          (error "Context expects 2 values" _g34670_)))
                    (let ((_target64346483_ (values-ref _g34669_ 0))
                          (_tl64366486_ (values-ref _g34669_ 1)))
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
                    (let ((_g34671_ (gx#syntax-split-splice _hd64446517_ '0)))
                      (begin
                        (let ((_g34672_ (values-count _g34671_)))
                          (if (not (fx= _g34672_ 2))
                              (error "Context expects 2 values" _g34672_)))
                        (let ((_target64466523_ (values-ref _g34671_ 0))
                              (_tl64486526_ (values-ref _g34671_ 1)))
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
                                                    (let ((_g34673_
                                                           (gx#syntax-split-splice
                                                            _hd60226064_
                                                            '0)))
                                                      (begin
                                                        (let ((_g34674_
                                                               (values-count
                                                                _g34673_)))
                                                          (if (not (fx= _g34674_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                2))
                      (error "Context expects 2 values" _g34674_)))
                (let ((_target60246070_ (values-ref _g34673_ 0))
                      (_tl60266073_ (values-ref _g34673_ 1)))
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
                                                        (let ((_g34675_
                                                               (gx#syntax-split-splice
                                                                _hd60346104_
                                                                '0)))
                                                          (begin
                                                            (let ((_g34676_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (values-count _g34675_)))
                      (if (not (fx= _g34676_ 2))
                          (error "Context expects 2 values" _g34676_)))
                    (let ((_target60366110_ (values-ref _g34675_ 0))
                          (_tl60386113_ (values-ref _g34675_ 1)))
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
                                                          (let ((_g34677_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_kw-lambda-split4900_ _L4973_)))
                    (begin
                      (let ((_g34678_ (values-count _g34677_)))
                        (if (not (fx= _g34678_ 3))
                            (error "Context expects 3 values" _g34678_)))
                      (let ((_key5009_ (values-ref _g34677_ 0))
                            (_kwargs5011_ (values-ref _g34677_ 1))
                            (_args5012_ (values-ref _g34677_ 2)))
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
                                           (let ((_g34679_
                                                  (_opt-lambda-split4898_
                                                   _L5186_)))
                                             (begin
                                               (let ((_g34680_
                                                      (values-count _g34679_)))
                                                 (if (not (fx= _g34680_ 3))
                                                     (error "Context expects 3 values"
                                                            _g34680_)))
                                               (let ((_pre5199_
                                                      (values-ref _g34679_ 0))
                                                     (_opt5201_
                                                      (values-ref _g34679_ 1))
                                                     (_tail5202_
                                                      (values-ref _g34679_ 2)))
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
                                                         (let ((_g34681_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g52615281_
                         '0)))
                   (begin
                     (let ((_g34682_ (values-count _g34681_)))
                       (if (not (fx= _g34682_ 2))
                           (error "Context expects 2 values" _g34682_)))
                     (let ((_target52635284_ (values-ref _g34681_ 0))
                           (_tl52655287_ (values-ref _g34681_ 1)))
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
                                                  (let ((_g34683_
                                                         (gx#syntax-split-splice
                                                          _tl80748182_
                                                          '0)))
                                                    (begin
                                                      (let ((_g34684_
                                                             (values-count
                                                              _g34683_)))
                                                        (if (not (fx= _g34684_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g34684_)))
              (let ((_target80788195_ (values-ref _g34683_ 0))
                    (_tl80808198_ (values-ref _g34683_ 1)))
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
                                          (let ((_g34685_
                                                 (gx#syntax-split-splice
                                                  _tl82748313_
                                                  '0)))
                                            (begin
                                              (let ((_g34686_
                                                     (values-count _g34685_)))
                                                (if (not (fx= _g34686_ 2))
                                                    (error "Context expects 2 values"
                                                           _g34686_)))
                                              (let ((_target82758316_
                                                     (values-ref _g34685_ 0))
                                                    (_tl82778319_
                                                     (values-ref _g34685_ 1)))
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
                                          (let ((_g34687_
                                                 (gx#syntax-split-splice
                                                  _tl84738512_
                                                  '0)))
                                            (begin
                                              (let ((_g34688_
                                                     (values-count _g34687_)))
                                                (if (not (fx= _g34688_ 2))
                                                    (error "Context expects 2 values"
                                                           _g34688_)))
                                              (let ((_target84748515_
                                                     (values-ref _g34687_ 0))
                                                    (_tl84768518_
                                                     (values-ref _g34687_ 1)))
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
                  (lambda (_e10864_ _clauses10866_)
                    (let _lp10868_ ((_rest10871_ _clauses10866_)
                                    (_datums10873_ '())
                                    (_dispatch10874_ '())
                                    (_default10875_ '#f))
                      (let* ((_g1087810890_
                              (lambda (_g1087910886_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1087910886_)))
                             (_g1087710905_
                              (lambda (_g1087910894_)
                                (if (gx#stx-null? _g1087910894_)
                                    ((lambda ()
                                       (begin
                                         (_check-duplicate-datums8583_
                                          _datums10873_)
                                         (values (reverse _datums10873_)
                                                 (reverse _dispatch10874_)
                                                 (let ((_$e10901_
                                                        _default10875_))
                                                   (if _$e10901_
                                                       _$e10901_
                                                       '#!void))))))
                                    (_g1087810890_ _g1087910894_))))
                             (_g1087611336_
                              (lambda (_g1087910909_)
                                (if (gx#stx-pair? _g1087910909_)
                                    (let ((_e1088210912_
                                           (gx#syntax-e _g1087910909_)))
                                      (let ((_hd1088310916_
                                             (##car _e1088210912_))
                                            (_tl1088410919_
                                             (##cdr _e1088210912_)))
                                        ((lambda (_L10922_ _L10924_)
                                           (let* ((_g1094111004_
                                                   (lambda (_g1094211000_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g1094211000_)))
                                                  (_g1094011127_
                                                   (lambda (_g1094211008_)
                                                     (if (gx#stx-pair?
                                                          _g1094211008_)
                                                         (let ((_e1097811011_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1094211008_)))
                   (let ((_hd1097911015_ (##car _e1097811011_))
                         (_tl1098011018_ (##cdr _e1097811011_)))
                     (if (gx#stx-pair/null? _hd1097911015_)
                         (if (fx>= (gx#stx-length _hd1097911015_) '0)
                             (let ((_g34689_
                                    (gx#syntax-split-splice
                                     _hd1097911015_
                                     '0)))
                               (begin
                                 (let ((_g34690_ (values-count _g34689_)))
                                   (if (not (fx= _g34690_ 2))
                                       (error "Context expects 2 values"
                                              _g34690_)))
                                 (let ((_target1098111021_
                                        (values-ref _g34689_ 0))
                                       (_tl1098311024_
                                        (values-ref _g34689_ 1)))
                                   (if (gx#stx-null? _tl1098311024_)
                                       (letrec ((_loop1098411027_
                                                 (lambda (_hd1098211031_
                                                          _datum1098811034_)
                                                   (if (gx#stx-pair?
                                                        _hd1098211031_)
                                                       (let ((_e1098511037_
                                                              (gx#syntax-e
                                                               _hd1098211031_)))
                                                         (let ((_lp-hd1098611041_
                                                                (##car _e1098511037_))
                                                               (_lp-tl1098711044_
                                                                (##cdr _e1098511037_)))
                                                           (_loop1098411027_
                                                            _lp-tl1098711044_
                                                            (cons _lp-hd1098611041_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _datum1098811034_))))
               (let ((_datum1098911047_ (reverse _datum1098811034_)))
                 (if (gx#stx-pair/null? _tl1098011018_)
                     (if (fx>= (gx#stx-length _tl1098011018_) '0)
                         (let ((_g34691_
                                (gx#syntax-split-splice _tl1098011018_ '0)))
                           (begin
                             (let ((_g34692_ (values-count _g34691_)))
                               (if (not (fx= _g34692_ 2))
                                   (error "Context expects 2 values"
                                          _g34692_)))
                             (let ((_target1099011051_ (values-ref _g34691_ 0))
                                   (_tl1099211054_ (values-ref _g34691_ 1)))
                               (if (gx#stx-null? _tl1099211054_)
                                   (letrec ((_loop1099311057_
                                             (lambda (_hd1099111061_
                                                      _body1099711064_)
                                               (if (gx#stx-pair?
                                                    _hd1099111061_)
                                                   (let ((_e1099411067_
                                                          (gx#syntax-e
                                                           _hd1099111061_)))
                                                     (let ((_lp-hd1099511071_
                                                            (##car _e1099411067_))
                                                           (_lp-tl1099611074_
                                                            (##cdr _e1099411067_)))
                                                       (_loop1099311057_
                                                        _lp-tl1099611074_
                                                        (cons _lp-hd1099511071_
                                                              _body1099711064_))))
                                                   (let ((_body1099811077_
                                                          (reverse _body1099711064_)))
                                                     ((lambda (_L11081_
                                                               _L11083_)
                                                        (if (null? (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#!void
                             (foldr (lambda (_g1110211105_ _g1110311108_)
                                      (cons _g1110211105_ _g1110311108_))
                                    '()
                                    _L11083_)))
                    (_lp10868_
                     _L10922_
                     _datums10873_
                     _dispatch10874_
                     _default10875_)
                    (_lp10868_
                     _L10922_
                     (cons (map gx#stx-e
                                (begin
                                  '#!void
                                  (foldr (lambda (_g1111011113_ _g1111111116_)
                                           (cons _g1111011113_ _g1111111116_))
                                         '()
                                         _L11083_)))
                           _datums10873_)
                     (cons (cons (gx#datum->syntax '#f 'begin)
                                 (begin
                                   '#!void
                                   (foldr (lambda (_g1111811121_ _g1111911124_)
                                            (cons _g1111811121_ _g1111911124_))
                                          '()
                                          _L11081_)))
                           _dispatch10874_)
                     _default10875_)))
              _body1099811077_
              _datum1098911047_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop1099311057_ _target1099011051_ '()))
                                   (_g1094111004_ _g1094211008_)))))
                         (_g1094111004_ _g1094211008_))
                     (_g1094111004_ _g1094211008_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop1098411027_
                                          _target1098111021_
                                          '()))
                                       (_g1094111004_ _g1094211008_)))))
                             (_g1094111004_ _g1094211008_))
                         (_g1094111004_ _g1094211008_))))
                 (_g1094111004_ _g1094211008_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1093911262_
                                                   (lambda (_g1094211131_)
                                                     (if (gx#stx-pair?
                                                          _g1094211131_)
                                                         (let ((_e1095811134_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1094211131_)))
                   (let ((_hd1095911138_ (##car _e1095811134_))
                         (_tl1096011141_ (##cdr _e1095811134_)))
                     (if (gx#stx-pair/null? _hd1095911138_)
                         (if (fx>= (gx#stx-length _hd1095911138_) '0)
                             (let ((_g34693_
                                    (gx#syntax-split-splice
                                     _hd1095911138_
                                     '0)))
                               (begin
                                 (let ((_g34694_ (values-count _g34693_)))
                                   (if (not (fx= _g34694_ 2))
                                       (error "Context expects 2 values"
                                              _g34694_)))
                                 (let ((_target1096111144_
                                        (values-ref _g34693_ 0))
                                       (_tl1096311147_
                                        (values-ref _g34693_ 1)))
                                   (if (gx#stx-null? _tl1096311147_)
                                       (letrec ((_loop1096411150_
                                                 (lambda (_hd1096211154_
                                                          _datum1096811157_)
                                                   (if (gx#stx-pair?
                                                        _hd1096211154_)
                                                       (let ((_e1096511160_
                                                              (gx#syntax-e
                                                               _hd1096211154_)))
                                                         (let ((_lp-hd1096611164_
                                                                (##car _e1096511160_))
                                                               (_lp-tl1096711167_
                                                                (##cdr _e1096511160_)))
                                                           (_loop1096411150_
                                                            _lp-tl1096711167_
                                                            (cons _lp-hd1096611164_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _datum1096811157_))))
               (let ((_datum1096911170_ (reverse _datum1096811157_)))
                 (if (gx#stx-pair? _tl1096011141_)
                     (let ((_e1097011174_ (gx#syntax-e _tl1096011141_)))
                       (let ((_hd1097111178_ (##car _e1097011174_))
                             (_tl1097211181_ (##cdr _e1097011174_)))
                         (if (gx#identifier? _hd1097111178_)
                             (if (gx#free-identifier=?
                                  |gerbil/core$<sugar>$<sugar:2>[1]#_g34695_|
                                  _hd1097111178_)
                                 (if (gx#stx-pair? _tl1097211181_)
                                     (let ((_e1097311184_
                                            (gx#syntax-e _tl1097211181_)))
                                       (let ((_hd1097411188_
                                              (##car _e1097311184_))
                                             (_tl1097511191_
                                              (##cdr _e1097311184_)))
                                         (if (gx#stx-null? _tl1097511191_)
                                             ((lambda (_L11194_ _L11196_)
                                                (if (null? (begin
                                                             '#!void
                                                             (foldr (lambda (_g1121411217_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1121511220_)
                              (cons _g1121411217_ _g1121511220_))
                            '()
                            _L11196_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_lp10868_
                                                     _L10922_
                                                     _datums10873_
                                                     _dispatch10874_
                                                     _default10875_)
                                                    (let* ((_g1122311231_
                                                            (lambda (_g1122411227_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g1122411227_)))
                                                           (_g1122211258_
                                                            (lambda (_g1122411235_)
                                                              ((lambda (_L11238_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (_lp10868_
                            _L10922_
                            (cons (map gx#stx-e
                                       (begin
                                         '#!void
                                         (foldr (lambda (_g1124911252_
                                                         _g1125011255_)
                                                  (cons _g1124911252_
                                                        _g1125011255_))
                                                '()
                                                _L11196_)))
                                  _datums10873_)
                            (cons (cons _L11194_ (cons _L11238_ '()))
                                  _dispatch10874_)
                            _default10875_)))
                       _g1122411235_))))
              (_g1122211258_ _e10864_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd1097411188_
                                              _datum1096911170_)
                                             (_g1094011127_ _g1094211131_))))
                                     (_g1094011127_ _g1094211131_))
                                 (_g1094011127_ _g1094211131_))
                             (_g1094011127_ _g1094211131_))))
                     (_g1094011127_ _g1094211131_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop1096411150_
                                          _target1096111144_
                                          '()))
                                       (_g1094011127_ _g1094211131_)))))
                             (_g1094011127_ _g1094211131_))
                         (_g1094011127_ _g1094211131_))))
                 (_g1094011127_ _g1094211131_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1093811332_
                                                   (lambda (_g1094211266_)
                                                     (if (gx#stx-pair?
                                                          _g1094211266_)
                                                         (let ((_e1094411269_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1094211266_)))
                   (let ((_hd1094511273_ (##car _e1094411269_))
                         (_tl1094611276_ (##cdr _e1094411269_)))
                     (if (gx#identifier? _hd1094511273_)
                         (if (gx#free-identifier=?
                              |gerbil/core$<sugar>$<sugar:2>[1]#_g34696_|
                              _hd1094511273_)
                             (if (gx#stx-pair/null? _tl1094611276_)
                                 (if (fx>= (gx#stx-length _tl1094611276_) '0)
                                     (let ((_g34697_
                                            (gx#syntax-split-splice
                                             _tl1094611276_
                                             '0)))
                                       (begin
                                         (let ((_g34698_
                                                (values-count _g34697_)))
                                           (if (not (fx= _g34698_ 2))
                                               (error "Context expects 2 values"
                                                      _g34698_)))
                                         (let ((_target1094711279_
                                                (values-ref _g34697_ 0))
                                               (_tl1094911282_
                                                (values-ref _g34697_ 1)))
                                           (if (gx#stx-null? _tl1094911282_)
                                               (letrec ((_loop1095011285_
                                                         (lambda (_hd1094811289_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _body1095411292_)
                   (if (gx#stx-pair? _hd1094811289_)
                       (let ((_e1095111295_ (gx#syntax-e _hd1094811289_)))
                         (let ((_lp-hd1095211299_ (##car _e1095111295_))
                               (_lp-tl1095311302_ (##cdr _e1095111295_)))
                           (_loop1095011285_
                            _lp-tl1095311302_
                            (cons _lp-hd1095211299_ _body1095411292_))))
                       (let ((_body1095511305_ (reverse _body1095411292_)))
                         ((lambda (_L11309_)
                            (if (gx#stx-null? _L10922_)
                                (if _default10875_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Duplicate else clause"
                                     _stx8578_
                                     _L10924_)
                                    (_lp10868_
                                     _L10922_
                                     _datums10873_
                                     _dispatch10874_
                                     (cons (gx#datum->syntax '#f 'begin)
                                           (begin
                                             '#!void
                                             (foldr (lambda (_g1132311326_
                                                             _g1132411329_)
                                                      (cons _g1132311326_
                                                            _g1132411329_))
                                                    '()
                                                    _L11309_)))))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Misplaced else clause"
                                 _stx8578_
                                 _L10924_)))
                          _body1095511305_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1095011285_
                                                  _target1094711279_
                                                  '()))
                                               (_g1093911262_
                                                _g1094211266_)))))
                                     (_g1093911262_ _g1094211266_))
                                 (_g1093911262_ _g1094211266_))
                             (_g1093911262_ _g1094211266_))
                         (_g1093911262_ _g1094211266_))))
                 (_g1093911262_ _g1094211266_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1093811332_ _L10924_)))
                                         _tl1088410919_
                                         _hd1088310916_)))
                                    (_g1087710905_ _g1087910909_)))))
                        (_g1087611336_ _rest10871_)))))
                 (_check-duplicate-datums8583_
                  (lambda (_datums10852_)
                    (let ((_ht10855_ (make-hash-table)))
                      (for-each
                       (lambda (_lst10858_)
                         (for-each
                          (lambda (_datum10861_)
                            (if (hash-get _ht10855_ _datum10861_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Duplicate datum"
                                 _stx8578_
                                 _datum10861_)
                                (hash-put! _ht10855_ _datum10861_ '#t)))
                          _lst10858_))
                       _datums10852_))))
                 (_count-datums8584_
                  (lambda (_datums10845_)
                    (foldl (lambda (_lst10848_ _r10850_)
                             (+ (length _lst10848_) _r10850_))
                           '0
                           _datums10845_)))
                 (_symbolic-datums?8585_
                  (lambda (_datums10839_)
                    (andmap (lambda (_lst10842_) (andmap symbol? _lst10842_))
                            _datums10839_)))
                 (_char-datums?8586_
                  (lambda (_datums10833_)
                    (andmap (lambda (_lst10836_) (andmap char? _lst10836_))
                            _datums10833_)))
                 (_fixnum-datums?8587_
                  (lambda (_datums10827_)
                    (andmap (lambda (_lst10830_) (andmap fixnum? _lst10830_))
                            _datums10827_)))
                 (_eq-datums?8588_
                  (lambda (_datums10810_)
                    (andmap (lambda (_lst10813_)
                              (andmap (lambda (_x10816_)
                                        (let ((_$e10819_ (symbol? _x10816_)))
                                          (if _$e10819_
                                              _$e10819_
                                              (let ((_$e10823_
                                                     (keyword? _x10816_)))
                                                (if _$e10823_
                                                    _$e10823_
                                                    (immediate? _x10816_))))))
                                      _lst10813_))
                            _datums10810_)))
                 (_generate-simple-case8589_
                  (lambda (_e10574_
                           _datums10576_
                           _dispatch10577_
                           _default10578_)
                    (let* ((_g1058010588_
                            (lambda (_g1058110584_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1058110584_)))
                           (_g1057910806_
                            (lambda (_g1058110592_)
                              ((lambda (_L10595_)
                                 (let ()
                                   (let _recur10607_ ((_datums10610_
                                                       _datums10576_)
                                                      (_dispatch10612_
                                                       _dispatch10577_))
                                     (let* ((_g1061510636_
                                             (lambda (_g1061610632_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1061610632_)))
                                            (_g1061410647_
                                             (lambda (_g1061610640_)
                                               ((lambda () _default10578_))))
                                            (_g1061310802_
                                             (lambda (_g1061610651_)
                                               (if (gx#stx-pair? _g1061610651_)
                                                   (let ((_e1061910654_
                                                          (gx#syntax-e
                                                           _g1061610651_)))
                                                     (let ((_hd1062010658_
                                                            (##car _e1061910654_))
                                                           (_tl1062110661_
                                                            (##cdr _e1061910654_)))
                                                       (if (gx#stx-pair/null?
                                                            _hd1062010658_)
                                                           (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd1062010658_)
                             '0)
                       (let ((_g34699_
                              (gx#syntax-split-splice _hd1062010658_ '0)))
                         (begin
                           (let ((_g34700_ (values-count _g34699_)))
                             (if (not (fx= _g34700_ 2))
                                 (error "Context expects 2 values" _g34700_)))
                           (let ((_target1062210664_ (values-ref _g34699_ 0))
                                 (_tl1062410667_ (values-ref _g34699_ 1)))
                             (if (gx#stx-null? _tl1062410667_)
                                 (letrec ((_loop1062510670_
                                           (lambda (_hd1062310674_
                                                    _datum1062910677_)
                                             (if (gx#stx-pair? _hd1062310674_)
                                                 (let ((_e1062610680_
                                                        (gx#syntax-e
                                                         _hd1062310674_)))
                                                   (let ((_lp-hd1062710684_
                                                          (##car _e1062610680_))
                                                         (_lp-tl1062810687_
                                                          (##cdr _e1062610680_)))
                                                     (_loop1062510670_
                                                      _lp-tl1062810687_
                                                      (cons _lp-hd1062710684_
                                                            _datum1062910677_))))
                                                 (let ((_datum1063010690_
                                                        (reverse _datum1062910677_)))
                                                   ((lambda (_L10694_ _L10696_)
                                                      (let* ((_g1071610728_
                                                              (lambda (_g1071710724_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax"
                         _g1071710724_)))
                     (_g1071510798_
                      (lambda (_g1071710732_)
                        (if (gx#stx-pair? _g1071710732_)
                            (let ((_e1072010735_ (gx#syntax-e _g1071710732_)))
                              (let ((_hd1072110739_ (##car _e1072010735_))
                                    (_tl1072210742_ (##cdr _e1072010735_)))
                                ((lambda (_L10745_ _L10747_)
                                   (let* ((_g1075910767_
                                           (lambda (_g1076010763_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1076010763_)))
                                          (_g1075810794_
                                           (lambda (_g1076010771_)
                                             ((lambda (_L10774_)
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
                              (foldr (lambda (_g1078510788_ _g1078610791_)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '~case-test)
                                                   (cons _g1078510788_
                                                         (cons _L10595_ '())))
                                             _g1078610791_))
                                     '()
                                     _L10696_)))
                      (cons _L10747_ (cons _L10774_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _g1076010771_))))
                                     (_g1075810794_
                                      (_recur10607_ _L10694_ _L10745_))))
                                 _tl1072210742_
                                 _hd1072110739_)))
                            (_g1071610728_ _g1071710732_)))))
                (_g1071510798_ _dispatch10612_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl1062110661_
                                                    _datum1063010690_))))))
                                   (_loop1062510670_ _target1062210664_ '()))
                                 (_g1061410647_ _g1061610651_)))))
                       (_g1061410647_ _g1061610651_))
                   (_g1061410647_ _g1061610651_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1061410647_
                                                    _g1061610651_)))))
                                       (_g1061310802_ _datums10610_)))))
                               _g1058110592_))))
                      (_g1057910806_ _e10574_))))
                 (_datum-dispatch-index8590_
                  (lambda (_datums10446_)
                    (let _lp10449_ ((_rest10452_ _datums10446_)
                                    (_ix10454_ '0)
                                    (_r10455_ '()))
                      (let* ((_g1045810479_
                              (lambda (_g1045910475_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1045910475_)))
                             (_g1045710490_
                              (lambda (_g1045910483_) ((lambda () _r10455_))))
                             (_g1045610570_
                              (lambda (_g1045910494_)
                                (if (gx#stx-pair? _g1045910494_)
                                    (let ((_e1046210497_
                                           (gx#syntax-e _g1045910494_)))
                                      (let ((_hd1046310501_
                                             (##car _e1046210497_))
                                            (_tl1046410504_
                                             (##cdr _e1046210497_)))
                                        (if (gx#stx-pair/null? _hd1046310501_)
                                            (if (fx>= (gx#stx-length
                                                       _hd1046310501_)
                                                      '0)
                                                (let ((_g34701_
                                                       (gx#syntax-split-splice
                                                        _hd1046310501_
                                                        '0)))
                                                  (begin
                                                    (let ((_g34702_
                                                           (values-count
                                                            _g34701_)))
                                                      (if (not (fx= _g34702_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g34702_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1046510507_
                                                           (values-ref
                                                            _g34701_
                                                            0))
                                                          (_tl1046710510_
                                                           (values-ref
                                                            _g34701_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl1046710510_)
                                                          (letrec ((_loop1046810513_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1046610517_ _datum1047210520_)
                              (if (gx#stx-pair? _hd1046610517_)
                                  (let ((_e1046910523_
                                         (gx#syntax-e _hd1046610517_)))
                                    (let ((_lp-hd1047010527_
                                           (##car _e1046910523_))
                                          (_lp-tl1047110530_
                                           (##cdr _e1046910523_)))
                                      (_loop1046810513_
                                       _lp-tl1047110530_
                                       (cons _lp-hd1047010527_
                                             _datum1047210520_))))
                                  (let ((_datum1047310533_
                                         (reverse _datum1047210520_)))
                                    ((lambda (_L10537_ _L10539_)
                                       (_lp10449_
                                        _L10537_
                                        (fx1+ _ix10454_)
                                        (foldl (lambda (_x10558_ _r10560_)
                                                 (cons (cons _x10558_
                                                             _ix10454_)
                                                       _r10560_))
                                               _r10455_
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g1056110564_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1056210567_)
                  (cons _g1056110564_ _g1056210567_))
                '()
                _L10539_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _tl1046410504_
                                     _datum1047310533_))))))
                    (_loop1046810513_ _target1046510507_ '()))
                  (_g1045710490_ _g1045910494_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1045710490_ _g1045910494_))
                                            (_g1045710490_ _g1045910494_))))
                                    (_g1045710490_ _g1045910494_)))))
                        (_g1045610570_ _rest10452_)))))
                 (_duplicate-indexes?8591_
                  (lambda (_xs10427_)
                    (let ((_ht10430_ (make-hash-table-eq)))
                      (let _lp10433_ ((_rest10436_ _xs10427_))
                        (if (pair? _rest10436_)
                            (let* ((_ix10439_ (car _rest10436_))
                                   (_$e10442_ (hash-get _ht10430_ _ix10439_)))
                              (if _$e10442_
                                  _$e10442_
                                  (begin
                                    (hash-put! _ht10430_ _ix10439_ '#t)
                                    (_lp10433_ (cdr _rest10436_)))))
                            '#f)))))
                 (_generate-hash-dispatch-table8592_
                  (lambda (_indexes10396_ _hash-e10398_)
                    (let _lp10400_ ((_len10403_
                                     (* '2 (length _indexes10396_))))
                      (let* ((_hs10409_
                              (map (lambda (_x10406_)
                                     (_hash-e10398_ (car _x10406_)))
                                   _indexes10396_))
                             (_xs10415_
                              (map (lambda (_h10412_)
                                     (fxmodulo _h10412_ _len10403_))
                                   _hs10409_)))
                        (if (_duplicate-indexes?8591_ _xs10415_)
                            (if (< _len10403_ '131072)
                                (_lp10400_ (quotient (fx* _len10403_ '3) '2))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Cannot create perfect dispatch table"
                                 _stx8578_
                                 _indexes10396_))
                            (let ((_tab10420_ (make-vector _len10403_ '#f)))
                              (begin
                                (for-each
                                 (lambda (_entry10423_ _x10425_)
                                   (vector-set!
                                    _tab10420_
                                    _x10425_
                                    _entry10423_))
                                 _indexes10396_
                                 _xs10415_)
                                _tab10420_)))))))
                 (_generate-symbolic-dispatch8593_
                  (lambda (_e10174_
                           _datums10176_
                           _dispatch10177_
                           _default10178_)
                    (let* ((_indexes10180_
                            (_datum-dispatch-index8590_ _datums10176_))
                           (_tab10183_
                            (_generate-hash-dispatch-table8592_
                             _indexes10180_
                             symbol-hash)))
                      (let* ((_g1018810232_
                              (lambda (_g1018910228_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1018910228_)))
                             (_g1018710392_
                              (lambda (_g1018910236_)
                                (if (gx#stx-pair? _g1018910236_)
                                    (let ((_e1019710239_
                                           (gx#syntax-e _g1018910236_)))
                                      (let ((_hd1019810243_
                                             (##car _e1019710239_))
                                            (_tl1019910246_
                                             (##cdr _e1019710239_)))
                                        (if (gx#stx-pair? _tl1019910246_)
                                            (let ((_e1020010249_
                                                   (gx#syntax-e
                                                    _tl1019910246_)))
                                              (let ((_hd1020110253_
                                                     (##car _e1020010249_))
                                                    (_tl1020210256_
                                                     (##cdr _e1020010249_)))
                                                (if (gx#stx-pair?
                                                     _tl1020210256_)
                                                    (let ((_e1020310259_
                                                           (gx#syntax-e
                                                            _tl1020210256_)))
                                                      (let ((_hd1020410263_
                                                             (##car _e1020310259_))
                                                            (_tl1020510266_
                                                             (##cdr _e1020310259_)))
                                                        (if (gx#stx-pair?
                                                             _tl1020510266_)
                                                            (let ((_e1020610269_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl1020510266_)))
                      (let ((_hd1020710273_ (##car _e1020610269_))
                            (_tl1020810276_ (##cdr _e1020610269_)))
                        (if (gx#stx-pair/null? _hd1020710273_)
                            (if (fx>= (gx#stx-length _hd1020710273_) '0)
                                (let ((_g34703_
                                       (gx#syntax-split-splice
                                        _hd1020710273_
                                        '0)))
                                  (begin
                                    (let ((_g34704_ (values-count _g34703_)))
                                      (if (not (fx= _g34704_ 2))
                                          (error "Context expects 2 values"
                                                 _g34704_)))
                                    (let ((_target1020910279_
                                           (values-ref _g34703_ 0))
                                          (_tl1021110282_
                                           (values-ref _g34703_ 1)))
                                      (if (gx#stx-null? _tl1021110282_)
                                          (letrec ((_loop1021210285_
                                                    (lambda (_hd1021010289_
                                                             _dispatch1021610292_)
                                                      (if (gx#stx-pair?
                                                           _hd1021010289_)
                                                          (let ((_e1021310295_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _hd1021010289_)))
                    (let ((_lp-hd1021410299_ (##car _e1021310295_))
                          (_lp-tl1021510302_ (##cdr _e1021310295_)))
                      (_loop1021210285_
                       _lp-tl1021510302_
                       (cons _lp-hd1021410299_ _dispatch1021610292_))))
                  (let ((_dispatch1021710305_ (reverse _dispatch1021610292_)))
                    (if (gx#stx-pair? _tl1020810276_)
                        (let ((_e1021810309_ (gx#syntax-e _tl1020810276_)))
                          (let ((_hd1021910313_ (##car _e1021810309_))
                                (_tl1022010316_ (##cdr _e1021810309_)))
                            (if (gx#stx-pair? _tl1022010316_)
                                (let ((_e1022110319_
                                       (gx#syntax-e _tl1022010316_)))
                                  (let ((_hd1022210323_ (##car _e1022110319_))
                                        (_tl1022310326_ (##cdr _e1022110319_)))
                                    (if (gx#stx-pair? _tl1022310326_)
                                        (let ((_e1022410329_
                                               (gx#syntax-e _tl1022310326_)))
                                          (let ((_hd1022510333_
                                                 (##car _e1022410329_))
                                                (_tl1022610336_
                                                 (##cdr _e1022410329_)))
                                            (if (gx#stx-null? _tl1022610336_)
                                                ((lambda (_L10339_
                                                          _L10341_
                                                          _L10342_
                                                          _L10343_
                                                          _L10344_
                                                          _L10345_
                                                          _L10346_)
                                                   (let ()
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'let)
                                                           (cons (cons (cons _L10345_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (cons (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons _L10342_ '())))
                                           '()))
                               (cons (cons _L10344_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'quote)
                                                       (cons _L10341_ '()))
                                                 '()))
                                     '()))
                         (cons (cons (gx#datum->syntax '#f 'if)
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'symbol?)
                                                 (cons _L10346_ '()))
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
                                             (cons _L10346_ '()))
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'ix)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##fxmodulo)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'h)
                                                         (cons _L10339_ '())))
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'q)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '##vector-ref)
                                                         (cons _L10344_
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
                             (cons _L10346_ '())))
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
                                                       (foldr (lambda (_g1038310386_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1038410389_)
                        (cons _g1038310386_ _g1038410389_))
                      '()
                      _L10343_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       (cons (cons _L10345_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons _L10345_ '()) '()))))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L10345_ '())
                                                       '()))))
                               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1022510333_
                                                 _hd1022210323_
                                                 _hd1021910313_
                                                 _dispatch1021710305_
                                                 _hd1020410263_
                                                 _hd1020110253_
                                                 _hd1019810243_)
                                                (_g1018810232_
                                                 _g1018910236_))))
                                        (_g1018810232_ _g1018910236_))))
                                (_g1018810232_ _g1018910236_))))
                        (_g1018810232_ _g1018910236_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1021210285_
                                             _target1020910279_
                                             '()))
                                          (_g1018810232_ _g1018910236_)))))
                                (_g1018810232_ _g1018910236_))
                            (_g1018810232_ _g1018910236_))))
                    (_g1018810232_ _g1018910236_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1018810232_
                                                     _g1018910236_))))
                                            (_g1018810232_ _g1018910236_))))
                                    (_g1018810232_ _g1018910236_)))))
                        (_g1018710392_
                         (list _e10174_
                               (gx#genident 'default)
                               (gx#genident 'table)
                               _dispatch10177_
                               _default10178_
                               _tab10183_
                               (vector-length _tab10183_)))))))
                 (_max-char8594_
                  (lambda (_datums10163_)
                    (foldl (lambda (_lst10166_ _r10168_)
                             (foldl (lambda (_char10170_ _r10172_)
                                      (max (char->integer _char10170_)
                                           _r10172_))
                                    _r10168_
                                    _lst10166_))
                           '0
                           _datums10163_)))
                 (_generate-char-dispatch-table8595_
                  (lambda (_indexes10142_)
                    (let* ((_ixs10148_
                            (map (lambda (_x10145_)
                                   (char->integer (car _x10145_)))
                                 _indexes10142_))
                           (_len10151_ (fx1+ (foldl max '0 _ixs10148_)))
                           (_vec10154_ (make-vector _len10151_ '#f)))
                      (begin
                        (for-each
                         (lambda (_entry10159_ _x10161_)
                           (vector-set!
                            _vec10154_
                            _x10161_
                            (cdr _entry10159_)))
                         _indexes10142_
                         _ixs10148_)
                        _vec10154_))))
                 (_simple-char-range?8596_
                  (lambda (_tab10118_)
                    (let ((_end10121_ (vector-length _tab10118_)))
                      (let _lp10124_ ((_i10127_ '0))
                        (let ((_ix10130_ (vector-ref _tab10118_ _i10127_)))
                          (if _ix10130_
                              (let _lp210133_ ((_i10136_ (fx1+ _i10127_)))
                                (if (fx< _i10136_ _end10121_)
                                    (let ((_ix*10139_
                                           (vector-ref _tab10118_ _i10136_)))
                                      (if (eq? _ix10130_ _ix*10139_)
                                          (_lp210133_ (fx1+ _i10136_))
                                          '#f))
                                    '#t))
                              (_lp10124_ (fx1+ _i10127_))))))))
                 (_char-range-start8597_
                  (lambda (_tab10109_)
                    (let _lp10112_ ((_i10115_ '0))
                      (if (vector-ref _tab10109_ _i10115_)
                          _i10115_
                          (_lp10112_ (fx1+ _i10115_))))))
                 (_generate-char-dispatch8598_
                  (lambda (_e9732_ _datums9734_ _dispatch9735_ _default9736_)
                    (if (< (_max-char8594_ _datums9734_) '128)
                        (let* ((_indexes9738_
                                (_datum-dispatch-index8590_ _datums9734_))
                               (_tab9741_
                                (_generate-char-dispatch-table8595_
                                 _indexes9738_)))
                          (if (_simple-char-range?8596_ _tab9741_)
                              (let ((_start9746_
                                     (_char-range-start8597_ _tab9741_))
                                    (_end9748_ (vector-length _tab9741_)))
                                (let* ((_g97509784_
                                        (lambda (_g97519780_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g97519780_)))
                                       (_g97499901_
                                        (lambda (_g97519788_)
                                          (if (gx#stx-pair? _g97519788_)
                                              (let ((_e97589791_
                                                     (gx#syntax-e
                                                      _g97519788_)))
                                                (let ((_hd97599795_
                                                       (##car _e97589791_))
                                                      (_tl97609798_
                                                       (##cdr _e97589791_)))
                                                  (if (gx#stx-pair?
                                                       _tl97609798_)
                                                      (let ((_e97619801_
                                                             (gx#syntax-e
                                                              _tl97609798_)))
                                                        (let ((_hd97629805_
                                                               (##car _e97619801_))
                                                              (_tl97639808_
                                                               (##cdr _e97619801_)))
                                                          (if (gx#stx-pair?
                                                               _tl97639808_)
                                                              (let ((_e97649811_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl97639808_)))
                        (let ((_hd97659815_ (##car _e97649811_))
                              (_tl97669818_ (##cdr _e97649811_)))
                          (if (gx#stx-pair? _hd97659815_)
                              (let ((_e97679821_ (gx#syntax-e _hd97659815_)))
                                (let ((_hd97689825_ (##car _e97679821_))
                                      (_tl97699828_ (##cdr _e97679821_)))
                                  (if (gx#stx-null? _tl97699828_)
                                      (if (gx#stx-pair? _tl97669818_)
                                          (let ((_e97709831_
                                                 (gx#syntax-e _tl97669818_)))
                                            (let ((_hd97719835_
                                                   (##car _e97709831_))
                                                  (_tl97729838_
                                                   (##cdr _e97709831_)))
                                              (if (gx#stx-pair? _tl97729838_)
                                                  (let ((_e97739841_
                                                         (gx#syntax-e
                                                          _tl97729838_)))
                                                    (let ((_hd97749845_
                                                           (##car _e97739841_))
                                                          (_tl97759848_
                                                           (##cdr _e97739841_)))
                                                      (if (gx#stx-pair?
                                                           _tl97759848_)
                                                          (let ((_e97769851_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl97759848_)))
                    (let ((_hd97779855_ (##car _e97769851_))
                          (_tl97789858_ (##cdr _e97769851_)))
                      (if (gx#stx-null? _tl97789858_)
                          ((lambda (_L9861_
                                    _L9863_
                                    _L9864_
                                    _L9865_
                                    _L9866_
                                    _L9867_)
                             (let ()
                               (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons _L9866_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _L9864_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'if)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'char?)
                           (cons _L9867_ '()))
                     (cons (cons (gx#datum->syntax '#f 'let)
                                 (cons (cons (gx#datum->syntax '#f 'ix)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '##char->integer)
                                                         (cons _L9867_ '()))
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
                                         (cons _L9863_ '())))
                             (cons (cons (gx#datum->syntax '#f '##fx<)
                                         (cons (gx#datum->syntax '#f 'ix)
                                               (cons _L9861_ '())))
                                   '())))
                 (cons _L9865_ (cons (cons _L9866_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))
                           (cons (cons _L9866_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                           _hd97779855_
                           _hd97749845_
                           _hd97719835_
                           _hd97689825_
                           _hd97629805_
                           _hd97599795_)
                          (_g97509784_ _g97519788_))))
                  (_g97509784_ _g97519788_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g97509784_ _g97519788_))))
                                          (_g97509784_ _g97519788_))
                                      (_g97509784_ _g97519788_))))
                              (_g97509784_ _g97519788_))))
                      (_g97509784_ _g97519788_))))
              (_g97509784_ _g97519788_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g97509784_ _g97519788_)))))
                                  (_g97499901_
                                   (list _e9732_
                                         (gx#genident 'default)
                                         _dispatch9735_
                                         _default9736_
                                         _start9746_
                                         _end9748_))))
                              (let* ((_g99059949_
                                      (lambda (_g99069945_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g99069945_)))
                                     (_g990410105_
                                      (lambda (_g99069953_)
                                        (if (gx#stx-pair? _g99069953_)
                                            (let ((_e99149956_
                                                   (gx#syntax-e _g99069953_)))
                                              (let ((_hd99159960_
                                                     (##car _e99149956_))
                                                    (_tl99169963_
                                                     (##cdr _e99149956_)))
                                                (if (gx#stx-pair? _tl99169963_)
                                                    (let ((_e99179966_
                                                           (gx#syntax-e
                                                            _tl99169963_)))
                                                      (let ((_hd99189970_
                                                             (##car _e99179966_))
                                                            (_tl99199973_
                                                             (##cdr _e99179966_)))
                                                        (if (gx#stx-pair?
                                                             _tl99199973_)
                                                            (let ((_e99209976_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl99199973_)))
                      (let ((_hd99219980_ (##car _e99209976_))
                            (_tl99229983_ (##cdr _e99209976_)))
                        (if (gx#stx-pair? _tl99229983_)
                            (let ((_e99239986_ (gx#syntax-e _tl99229983_)))
                              (let ((_hd99249990_ (##car _e99239986_))
                                    (_tl99259993_ (##cdr _e99239986_)))
                                (if (gx#stx-pair/null? _hd99249990_)
                                    (if (fx>= (gx#stx-length _hd99249990_) '0)
                                        (let ((_g34705_
                                               (gx#syntax-split-splice
                                                _hd99249990_
                                                '0)))
                                          (begin
                                            (let ((_g34706_
                                                   (values-count _g34705_)))
                                              (if (not (fx= _g34706_ 2))
                                                  (error "Context expects 2 values"
                                                         _g34706_)))
                                            (let ((_target99269996_
                                                   (values-ref _g34705_ 0))
                                                  (_tl99289999_
                                                   (values-ref _g34705_ 1)))
                                              (if (gx#stx-null? _tl99289999_)
                                                  (letrec ((_loop992910002_
                                                            (lambda (_hd992710006_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _dispatch993310009_)
                      (if (gx#stx-pair? _hd992710006_)
                          (let ((_e993010012_ (gx#syntax-e _hd992710006_)))
                            (let ((_lp-hd993110016_ (##car _e993010012_))
                                  (_lp-tl993210019_ (##cdr _e993010012_)))
                              (_loop992910002_
                               _lp-tl993210019_
                               (cons _lp-hd993110016_ _dispatch993310009_))))
                          (let ((_dispatch993410022_
                                 (reverse _dispatch993310009_)))
                            (if (gx#stx-pair? _tl99259993_)
                                (let ((_e993510026_
                                       (gx#syntax-e _tl99259993_)))
                                  (let ((_hd993610030_ (##car _e993510026_))
                                        (_tl993710033_ (##cdr _e993510026_)))
                                    (if (gx#stx-pair? _tl993710033_)
                                        (let ((_e993810036_
                                               (gx#syntax-e _tl993710033_)))
                                          (let ((_hd993910040_
                                                 (##car _e993810036_))
                                                (_tl994010043_
                                                 (##cdr _e993810036_)))
                                            (if (gx#stx-pair? _tl994010043_)
                                                (let ((_e994110046_
                                                       (gx#syntax-e
                                                        _tl994010043_)))
                                                  (let ((_hd994210050_
                                                         (##car _e994110046_))
                                                        (_tl994310053_
                                                         (##cdr _e994110046_)))
                                                    (if (gx#stx-null?
                                                         _tl994310053_)
                                                        ((lambda (_L10056_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L10058_
                          _L10059_
                          _L10060_
                          _L10061_
                          _L10062_
                          _L10063_)
                   (let ()
                     (cons (gx#datum->syntax '#f 'let)
                           (cons (cons (cons _L10062_
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'lambda)
                                                         (cons '()
                                                               (cons _L10059_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                       (cons (cons _L10061_
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'quote)
                                                               (cons _L10058_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'if)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'char?)
                                                         (cons _L10063_ '()))
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
                                               (cons _L10063_ '()))
                                         '()))
                             (cons (cons (gx#datum->syntax '#f 'if)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fx<)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'ix)
                                                           (cons _L10056_
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
                                           (cons _L10061_
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
                                                               (foldr (lambda (_g1009610099_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1009710102_)
                                (cons _g1009610099_ _g1009710102_))
                              '()
                              _L10060_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L10062_ '())
                                                       '()))))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons _L10062_ '())
                                                           '()))))
                                   '())))
                 (cons (cons _L10062_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))))
                 _hd994210050_
                 _hd993910040_
                 _hd993610030_
                 _dispatch993410022_
                 _hd99219980_
                 _hd99189970_
                 _hd99159960_)
                (_g99059949_ _g99069953_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g99059949_ _g99069953_))))
                                        (_g99059949_ _g99069953_))))
                                (_g99059949_ _g99069953_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop992910002_
                                                     _target99269996_
                                                     '()))
                                                  (_g99059949_ _g99069953_)))))
                                        (_g99059949_ _g99069953_))
                                    (_g99059949_ _g99069953_))))
                            (_g99059949_ _g99069953_))))
                    (_g99059949_ _g99069953_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g99059949_
                                                     _g99069953_))))
                                            (_g99059949_ _g99069953_)))))
                                (_g990410105_
                                 (list _e9732_
                                       (gx#genident 'default)
                                       (gx#genident 'table)
                                       _dispatch9735_
                                       _default9736_
                                       _tab9741_
                                       (vector-length _tab9741_))))))
                        (_generate-char-dispatch/hash8599_
                         _e9732_
                         _datums9734_
                         _dispatch9735_
                         _default9736_))))
                 (_generate-char-dispatch/hash8599_
                  (lambda (_e9510_ _datums9512_ _dispatch9513_ _default9514_)
                    (let* ((_indexes9516_
                            (_datum-dispatch-index8590_ _datums9512_))
                           (_tab9519_
                            (_generate-hash-dispatch-table8592_
                             _indexes9516_
                             char->integer)))
                      (let* ((_g95249568_
                              (lambda (_g95259564_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g95259564_)))
                             (_g95239728_
                              (lambda (_g95259572_)
                                (if (gx#stx-pair? _g95259572_)
                                    (let ((_e95339575_
                                           (gx#syntax-e _g95259572_)))
                                      (let ((_hd95349579_ (##car _e95339575_))
                                            (_tl95359582_ (##cdr _e95339575_)))
                                        (if (gx#stx-pair? _tl95359582_)
                                            (let ((_e95369585_
                                                   (gx#syntax-e _tl95359582_)))
                                              (let ((_hd95379589_
                                                     (##car _e95369585_))
                                                    (_tl95389592_
                                                     (##cdr _e95369585_)))
                                                (if (gx#stx-pair? _tl95389592_)
                                                    (let ((_e95399595_
                                                           (gx#syntax-e
                                                            _tl95389592_)))
                                                      (let ((_hd95409599_
                                                             (##car _e95399595_))
                                                            (_tl95419602_
                                                             (##cdr _e95399595_)))
                                                        (if (gx#stx-pair?
                                                             _tl95419602_)
                                                            (let ((_e95429605_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl95419602_)))
                      (let ((_hd95439609_ (##car _e95429605_))
                            (_tl95449612_ (##cdr _e95429605_)))
                        (if (gx#stx-pair/null? _hd95439609_)
                            (if (fx>= (gx#stx-length _hd95439609_) '0)
                                (let ((_g34707_
                                       (gx#syntax-split-splice
                                        _hd95439609_
                                        '0)))
                                  (begin
                                    (let ((_g34708_ (values-count _g34707_)))
                                      (if (not (fx= _g34708_ 2))
                                          (error "Context expects 2 values"
                                                 _g34708_)))
                                    (let ((_target95459615_
                                           (values-ref _g34707_ 0))
                                          (_tl95479618_
                                           (values-ref _g34707_ 1)))
                                      (if (gx#stx-null? _tl95479618_)
                                          (letrec ((_loop95489621_
                                                    (lambda (_hd95469625_
                                                             _dispatch95529628_)
                                                      (if (gx#stx-pair?
                                                           _hd95469625_)
                                                          (let ((_e95499631_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _hd95469625_)))
                    (let ((_lp-hd95509635_ (##car _e95499631_))
                          (_lp-tl95519638_ (##cdr _e95499631_)))
                      (_loop95489621_
                       _lp-tl95519638_
                       (cons _lp-hd95509635_ _dispatch95529628_))))
                  (let ((_dispatch95539641_ (reverse _dispatch95529628_)))
                    (if (gx#stx-pair? _tl95449612_)
                        (let ((_e95549645_ (gx#syntax-e _tl95449612_)))
                          (let ((_hd95559649_ (##car _e95549645_))
                                (_tl95569652_ (##cdr _e95549645_)))
                            (if (gx#stx-pair? _tl95569652_)
                                (let ((_e95579655_ (gx#syntax-e _tl95569652_)))
                                  (let ((_hd95589659_ (##car _e95579655_))
                                        (_tl95599662_ (##cdr _e95579655_)))
                                    (if (gx#stx-pair? _tl95599662_)
                                        (let ((_e95609665_
                                               (gx#syntax-e _tl95599662_)))
                                          (let ((_hd95619669_
                                                 (##car _e95609665_))
                                                (_tl95629672_
                                                 (##cdr _e95609665_)))
                                            (if (gx#stx-null? _tl95629672_)
                                                ((lambda (_L9675_
                                                          _L9677_
                                                          _L9678_
                                                          _L9679_
                                                          _L9680_
                                                          _L9681_
                                                          _L9682_)
                                                   (let ()
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'let)
                                                           (cons (cons (cons _L9681_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (cons (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '() (cons _L9678_ '())))
                                           '()))
                               (cons (cons _L9680_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'quote)
                                                       (cons _L9677_ '()))
                                                 '()))
                                     '()))
                         (cons (cons (gx#datum->syntax '#f 'if)
                                     (cons (cons (gx#datum->syntax '#f 'char?)
                                                 (cons _L9682_ '()))
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
                                             (cons _L9682_ '()))
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'ix)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##fxmodulo)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'h)
                                                         (cons _L9675_ '())))
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'q)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '##vector-ref)
                                                         (cons _L9680_
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
                             (cons _L9682_ '())))
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
                                                       (foldr (lambda (_g97199722_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g97209725_)
                        (cons _g97199722_ _g97209725_))
                      '()
                      _L9679_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       (cons (cons _L9681_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons _L9681_ '()) '()))))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L9681_ '())
                                                       '()))))
                               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd95619669_
                                                 _hd95589659_
                                                 _hd95559649_
                                                 _dispatch95539641_
                                                 _hd95409599_
                                                 _hd95379589_
                                                 _hd95349579_)
                                                (_g95249568_ _g95259572_))))
                                        (_g95249568_ _g95259572_))))
                                (_g95249568_ _g95259572_))))
                        (_g95249568_ _g95259572_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop95489621_
                                             _target95459615_
                                             '()))
                                          (_g95249568_ _g95259572_)))))
                                (_g95249568_ _g95259572_))
                            (_g95249568_ _g95259572_))))
                    (_g95249568_ _g95259572_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g95249568_
                                                     _g95259572_))))
                                            (_g95249568_ _g95259572_))))
                                    (_g95249568_ _g95259572_)))))
                        (_g95239728_
                         (list _e9510_
                               (gx#genident 'default)
                               (gx#genident 'table)
                               _dispatch9513_
                               _default9514_
                               _tab9519_
                               (vector-length _tab9519_)))))))
                 (_min-fixnum8600_
                  (lambda (_datums9503_)
                    (foldl (lambda (_lst9506_ _r9508_)
                             (foldl min _r9508_ _lst9506_))
                           ##max-fixnum
                           _datums9503_)))
                 (_max-fixnum8601_
                  (lambda (_datums9496_)
                    (foldl (lambda (_lst9499_ _r9501_)
                             (foldl max _r9501_ _lst9499_))
                           ##min-fixnum
                           _datums9496_)))
                 (_generate-fixnum-dispatch-table8602_
                  (lambda (_indexes9478_)
                    (let* ((_ixs9481_ (map car _indexes9478_))
                           (_len9484_ (fx1+ (foldl max '0 _ixs9481_)))
                           (_vec9487_ (make-vector _len9484_ '#f)))
                      (begin
                        (for-each
                         (lambda (_entry9492_ _x9494_)
                           (vector-set! _vec9487_ _x9494_ (cdr _entry9492_)))
                         _indexes9478_
                         _ixs9481_)
                        _vec9487_))))
                 (_generate-fixnum-dispatch8603_
                  (lambda (_e9212_ _datums9214_ _dispatch9215_ _default9216_)
                    (if (if (>= (_min-fixnum8600_ _datums9214_) '0)
                            (< (_max-fixnum8601_ _datums9214_) '1024)
                            '#f)
                        (let* ((_indexes9218_
                                (_datum-dispatch-index8590_ _datums9214_))
                               (_tab9221_
                                (_generate-fixnum-dispatch-table8602_
                                 _indexes9218_))
                               (_dense?9224_
                                (andmap values (vector->list _tab9221_))))
                          (let* ((_g92299273_
                                  (lambda (_g92309269_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g92309269_)))
                                 (_g92289474_
                                  (lambda (_g92309277_)
                                    (if (gx#stx-pair? _g92309277_)
                                        (let ((_e92389280_
                                               (gx#syntax-e _g92309277_)))
                                          (let ((_hd92399284_
                                                 (##car _e92389280_))
                                                (_tl92409287_
                                                 (##cdr _e92389280_)))
                                            (if (gx#stx-pair? _tl92409287_)
                                                (let ((_e92419290_
                                                       (gx#syntax-e
                                                        _tl92409287_)))
                                                  (let ((_hd92429294_
                                                         (##car _e92419290_))
                                                        (_tl92439297_
                                                         (##cdr _e92419290_)))
                                                    (if (gx#stx-pair?
                                                         _tl92439297_)
                                                        (let ((_e92449300_
                                                               (gx#syntax-e
                                                                _tl92439297_)))
                                                          (let ((_hd92459304_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e92449300_))
                        (_tl92469307_ (##cdr _e92449300_)))
                    (if (gx#stx-pair? _tl92469307_)
                        (let ((_e92479310_ (gx#syntax-e _tl92469307_)))
                          (let ((_hd92489314_ (##car _e92479310_))
                                (_tl92499317_ (##cdr _e92479310_)))
                            (if (gx#stx-pair/null? _hd92489314_)
                                (if (fx>= (gx#stx-length _hd92489314_) '0)
                                    (let ((_g34709_
                                           (gx#syntax-split-splice
                                            _hd92489314_
                                            '0)))
                                      (begin
                                        (let ((_g34710_
                                               (values-count _g34709_)))
                                          (if (not (fx= _g34710_ 2))
                                              (error "Context expects 2 values"
                                                     _g34710_)))
                                        (let ((_target92509320_
                                               (values-ref _g34709_ 0))
                                              (_tl92529323_
                                               (values-ref _g34709_ 1)))
                                          (if (gx#stx-null? _tl92529323_)
                                              (letrec ((_loop92539326_
                                                        (lambda (_hd92519330_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _dispatch92579333_)
                  (if (gx#stx-pair? _hd92519330_)
                      (let ((_e92549336_ (gx#syntax-e _hd92519330_)))
                        (let ((_lp-hd92559340_ (##car _e92549336_))
                              (_lp-tl92569343_ (##cdr _e92549336_)))
                          (_loop92539326_
                           _lp-tl92569343_
                           (cons _lp-hd92559340_ _dispatch92579333_))))
                      (let ((_dispatch92589346_ (reverse _dispatch92579333_)))
                        (if (gx#stx-pair? _tl92499317_)
                            (let ((_e92599350_ (gx#syntax-e _tl92499317_)))
                              (let ((_hd92609354_ (##car _e92599350_))
                                    (_tl92619357_ (##cdr _e92599350_)))
                                (if (gx#stx-pair? _tl92619357_)
                                    (let ((_e92629360_
                                           (gx#syntax-e _tl92619357_)))
                                      (let ((_hd92639364_ (##car _e92629360_))
                                            (_tl92649367_ (##cdr _e92629360_)))
                                        (if (gx#stx-pair? _tl92649367_)
                                            (let ((_e92659370_
                                                   (gx#syntax-e _tl92649367_)))
                                              (let ((_hd92669374_
                                                     (##car _e92659370_))
                                                    (_tl92679377_
                                                     (##cdr _e92659370_)))
                                                (if (gx#stx-null? _tl92679377_)
                                                    ((lambda (_L9380_
                                                              _L9382_
                                                              _L9383_
                                                              _L9384_
                                                              _L9385_
                                                              _L9386_
                                                              _L9387_)
                                                       (let ()
                                                         (let* ((_g94269434_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g94279430_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g94279430_)))
                        (_g94259454_
                         (lambda (_g94279438_)
                           ((lambda (_L9441_)
                              (let ()
                                (cons (gx#datum->syntax '#f 'let)
                                      (cons (cons (cons _L9386_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'lambda)
                            (cons '() (cons _L9383_ '())))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons _L9385_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _L9382_ '()))
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
                            (cons _L9387_ '()))
                      (cons (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons (gx#datum->syntax '#f 'and)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '##fx>=)
                                                          (cons _L9387_
                                                                (cons '0 '())))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '##fx<)
                        (cons _L9387_ (cons _L9380_ '())))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons (cons (gx#datum->syntax '#f 'let)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'x)
                        (cons (cons (gx#datum->syntax '#f '##vector-ref)
                                    (cons _L9385_ (cons _L9387_ '())))
                              '()))
                  (cons _L9441_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons _L9386_ '()) '()))))
                            (cons (cons _L9386_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                            _g94279438_))))
                   (_g94259454_
                    (if _dense?9224_
                        (cons (gx#datum->syntax '#f '~case-dispatch)
                              (cons (gx#datum->syntax '#f 'x)
                                    (begin
                                      '#!void
                                      (foldr (lambda (_g94579460_ _g94589463_)
                                               (cons _g94579460_ _g94589463_))
                                             '()
                                             _L9384_))))
                        (cons (gx#datum->syntax '#f 'if)
                              (cons (gx#datum->syntax '#f 'x)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 '~case-dispatch)
                                                (cons (gx#datum->syntax '#f 'x)
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g94659468_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g94669471_)
                         (cons _g94659468_ _g94669471_))
                       '()
                       _L9384_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons _L9386_ '()) '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd92669374_
                                                     _hd92639364_
                                                     _hd92609354_
                                                     _dispatch92589346_
                                                     _hd92459304_
                                                     _hd92429294_
                                                     _hd92399284_)
                                                    (_g92299273_
                                                     _g92309277_))))
                                            (_g92299273_ _g92309277_))))
                                    (_g92299273_ _g92309277_))))
                            (_g92299273_ _g92309277_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop92539326_
                                                 _target92509320_
                                                 '()))
                                              (_g92299273_ _g92309277_)))))
                                    (_g92299273_ _g92309277_))
                                (_g92299273_ _g92309277_))))
                        (_g92299273_ _g92309277_))))
                (_g92299273_ _g92309277_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g92299273_ _g92309277_))))
                                        (_g92299273_ _g92309277_)))))
                            (_g92289474_
                             (list _e9212_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _dispatch9215_
                                   _default9216_
                                   _tab9221_
                                   (vector-length _tab9221_)))))
                        (_generate-fixnum-dispatch/hash8604_
                         _e9212_
                         _datums9214_
                         _dispatch9215_
                         _default9216_))))
                 (_generate-fixnum-dispatch/hash8604_
                  (lambda (_e8990_ _datums8992_ _dispatch8993_ _default8994_)
                    (let* ((_indexes8996_
                            (_datum-dispatch-index8590_ _datums8992_))
                           (_tab8999_
                            (_generate-hash-dispatch-table8592_
                             _indexes8996_
                             values)))
                      (let* ((_g90049048_
                              (lambda (_g90059044_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g90059044_)))
                             (_g90039208_
                              (lambda (_g90059052_)
                                (if (gx#stx-pair? _g90059052_)
                                    (let ((_e90139055_
                                           (gx#syntax-e _g90059052_)))
                                      (let ((_hd90149059_ (##car _e90139055_))
                                            (_tl90159062_ (##cdr _e90139055_)))
                                        (if (gx#stx-pair? _tl90159062_)
                                            (let ((_e90169065_
                                                   (gx#syntax-e _tl90159062_)))
                                              (let ((_hd90179069_
                                                     (##car _e90169065_))
                                                    (_tl90189072_
                                                     (##cdr _e90169065_)))
                                                (if (gx#stx-pair? _tl90189072_)
                                                    (let ((_e90199075_
                                                           (gx#syntax-e
                                                            _tl90189072_)))
                                                      (let ((_hd90209079_
                                                             (##car _e90199075_))
                                                            (_tl90219082_
                                                             (##cdr _e90199075_)))
                                                        (if (gx#stx-pair?
                                                             _tl90219082_)
                                                            (let ((_e90229085_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl90219082_)))
                      (let ((_hd90239089_ (##car _e90229085_))
                            (_tl90249092_ (##cdr _e90229085_)))
                        (if (gx#stx-pair/null? _hd90239089_)
                            (if (fx>= (gx#stx-length _hd90239089_) '0)
                                (let ((_g34711_
                                       (gx#syntax-split-splice
                                        _hd90239089_
                                        '0)))
                                  (begin
                                    (let ((_g34712_ (values-count _g34711_)))
                                      (if (not (fx= _g34712_ 2))
                                          (error "Context expects 2 values"
                                                 _g34712_)))
                                    (let ((_target90259095_
                                           (values-ref _g34711_ 0))
                                          (_tl90279098_
                                           (values-ref _g34711_ 1)))
                                      (if (gx#stx-null? _tl90279098_)
                                          (letrec ((_loop90289101_
                                                    (lambda (_hd90269105_
                                                             _dispatch90329108_)
                                                      (if (gx#stx-pair?
                                                           _hd90269105_)
                                                          (let ((_e90299111_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _hd90269105_)))
                    (let ((_lp-hd90309115_ (##car _e90299111_))
                          (_lp-tl90319118_ (##cdr _e90299111_)))
                      (_loop90289101_
                       _lp-tl90319118_
                       (cons _lp-hd90309115_ _dispatch90329108_))))
                  (let ((_dispatch90339121_ (reverse _dispatch90329108_)))
                    (if (gx#stx-pair? _tl90249092_)
                        (let ((_e90349125_ (gx#syntax-e _tl90249092_)))
                          (let ((_hd90359129_ (##car _e90349125_))
                                (_tl90369132_ (##cdr _e90349125_)))
                            (if (gx#stx-pair? _tl90369132_)
                                (let ((_e90379135_ (gx#syntax-e _tl90369132_)))
                                  (let ((_hd90389139_ (##car _e90379135_))
                                        (_tl90399142_ (##cdr _e90379135_)))
                                    (if (gx#stx-pair? _tl90399142_)
                                        (let ((_e90409145_
                                               (gx#syntax-e _tl90399142_)))
                                          (let ((_hd90419149_
                                                 (##car _e90409145_))
                                                (_tl90429152_
                                                 (##cdr _e90409145_)))
                                            (if (gx#stx-null? _tl90429152_)
                                                ((lambda (_L9155_
                                                          _L9157_
                                                          _L9158_
                                                          _L9159_
                                                          _L9160_
                                                          _L9161_
                                                          _L9162_)
                                                   (let ()
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'let)
                                                           (cons (cons (cons _L9161_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (cons (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '() (cons _L9158_ '())))
                                           '()))
                               (cons (cons _L9160_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'quote)
                                                       (cons _L9157_ '()))
                                                 '()))
                                     '()))
                         (cons (cons (gx#datum->syntax '#f 'if)
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'fixnum?)
                                                 (cons _L9162_ '()))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let*)
                                                       (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'ix)
                                 (cons (cons (gx#datum->syntax '#f '##fxmodulo)
                                             (cons _L9162_ (cons _L9155_ '())))
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'q)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##vector-ref)
                                                   (cons _L9160_
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
                             (cons _L9162_ '())))
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
                                                       (foldr (lambda (_g91999202_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g92009205_)
                        (cons _g91999202_ _g92009205_))
                      '()
                      _L9159_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       (cons (cons _L9161_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons _L9161_ '()) '()))))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L9161_ '())
                                                       '()))))
                               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd90419149_
                                                 _hd90389139_
                                                 _hd90359129_
                                                 _dispatch90339121_
                                                 _hd90209079_
                                                 _hd90179069_
                                                 _hd90149059_)
                                                (_g90049048_ _g90059052_))))
                                        (_g90049048_ _g90059052_))))
                                (_g90049048_ _g90059052_))))
                        (_g90049048_ _g90059052_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop90289101_
                                             _target90259095_
                                             '()))
                                          (_g90049048_ _g90059052_)))))
                                (_g90049048_ _g90059052_))
                            (_g90049048_ _g90059052_))))
                    (_g90049048_ _g90059052_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g90049048_
                                                     _g90059052_))))
                                            (_g90049048_ _g90059052_))))
                                    (_g90049048_ _g90059052_)))))
                        (_g90039208_
                         (list _e8990_
                               (gx#genident 'default)
                               (gx#genident 'table)
                               _dispatch8993_
                               _default8994_
                               _tab8999_
                               (vector-length _tab8999_)))))))
                 (_generate-generic-dispatch8605_
                  (lambda (_e8726_ _datums8728_ _dispatch8729_ _default8730_)
                    (let ((_g34713_
                           (if (_eq-datums?8588_ _datums8728_)
                               (values eq?-hash 'eq?-hash 'eq?)
                               (values equal?-hash 'equal?-hash 'equal?))))
                      (begin
                        (let ((_g34714_ (values-count _g34713_)))
                          (if (not (fx= _g34714_ 3))
                              (error "Context expects 3 values" _g34714_)))
                        (let ((_hash-e8732_ (values-ref _g34713_ 0))
                              (_hashf8734_ (values-ref _g34713_ 1))
                              (_eqf8735_ (values-ref _g34713_ 2)))
                          (let* ((_indexes8737_
                                  (_datum-dispatch-index8590_ _datums8728_))
                                 (_tab8740_
                                  (_generate-hash-dispatch-table8592_
                                   _indexes8737_
                                   _hash-e8732_)))
                            (let* ((_g87458797_
                                    (lambda (_g87468793_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       _g87468793_)))
                                   (_g87448986_
                                    (lambda (_g87468801_)
                                      (if (gx#stx-pair? _g87468801_)
                                          (let ((_e87568804_
                                                 (gx#syntax-e _g87468801_)))
                                            (let ((_hd87578808_
                                                   (##car _e87568804_))
                                                  (_tl87588811_
                                                   (##cdr _e87568804_)))
                                              (if (gx#stx-pair? _tl87588811_)
                                                  (let ((_e87598814_
                                                         (gx#syntax-e
                                                          _tl87588811_)))
                                                    (let ((_hd87608818_
                                                           (##car _e87598814_))
                                                          (_tl87618821_
                                                           (##cdr _e87598814_)))
                                                      (if (gx#stx-pair?
                                                           _tl87618821_)
                                                          (let ((_e87628824_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl87618821_)))
                    (let ((_hd87638828_ (##car _e87628824_))
                          (_tl87648831_ (##cdr _e87628824_)))
                      (if (gx#stx-pair? _tl87648831_)
                          (let ((_e87658834_ (gx#syntax-e _tl87648831_)))
                            (let ((_hd87668838_ (##car _e87658834_))
                                  (_tl87678841_ (##cdr _e87658834_)))
                              (if (gx#stx-pair/null? _hd87668838_)
                                  (if (fx>= (gx#stx-length _hd87668838_) '0)
                                      (let ((_g34715_
                                             (gx#syntax-split-splice
                                              _hd87668838_
                                              '0)))
                                        (begin
                                          (let ((_g34716_
                                                 (values-count _g34715_)))
                                            (if (not (fx= _g34716_ 2))
                                                (error "Context expects 2 values"
                                                       _g34716_)))
                                          (let ((_target87688844_
                                                 (values-ref _g34715_ 0))
                                                (_tl87708847_
                                                 (values-ref _g34715_ 1)))
                                            (if (gx#stx-null? _tl87708847_)
                                                (letrec ((_loop87718850_
                                                          (lambda (_hd87698854_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _dispatch87758857_)
                    (if (gx#stx-pair? _hd87698854_)
                        (let ((_e87728860_ (gx#syntax-e _hd87698854_)))
                          (let ((_lp-hd87738864_ (##car _e87728860_))
                                (_lp-tl87748867_ (##cdr _e87728860_)))
                            (_loop87718850_
                             _lp-tl87748867_
                             (cons _lp-hd87738864_ _dispatch87758857_))))
                        (let ((_dispatch87768870_
                               (reverse _dispatch87758857_)))
                          (if (gx#stx-pair? _tl87678841_)
                              (let ((_e87778874_ (gx#syntax-e _tl87678841_)))
                                (let ((_hd87788878_ (##car _e87778874_))
                                      (_tl87798881_ (##cdr _e87778874_)))
                                  (if (gx#stx-pair? _tl87798881_)
                                      (let ((_e87808884_
                                             (gx#syntax-e _tl87798881_)))
                                        (let ((_hd87818888_
                                               (##car _e87808884_))
                                              (_tl87828891_
                                               (##cdr _e87808884_)))
                                          (if (gx#stx-pair? _tl87828891_)
                                              (let ((_e87838894_
                                                     (gx#syntax-e
                                                      _tl87828891_)))
                                                (let ((_hd87848898_
                                                       (##car _e87838894_))
                                                      (_tl87858901_
                                                       (##cdr _e87838894_)))
                                                  (if (gx#stx-pair?
                                                       _tl87858901_)
                                                      (let ((_e87868904_
                                                             (gx#syntax-e
                                                              _tl87858901_)))
                                                        (let ((_hd87878908_
                                                               (##car _e87868904_))
                                                              (_tl87888911_
                                                               (##cdr _e87868904_)))
                                                          (if (gx#stx-pair?
                                                               _tl87888911_)
                                                              (let ((_e87898914_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl87888911_)))
                        (let ((_hd87908918_ (##car _e87898914_))
                              (_tl87918921_ (##cdr _e87898914_)))
                          (if (gx#stx-null? _tl87918921_)
                              ((lambda (_L8924_
                                        _L8926_
                                        _L8927_
                                        _L8928_
                                        _L8929_
                                        _L8930_
                                        _L8931_
                                        _L8932_
                                        _L8933_)
                                 (let ()
                                   (cons (gx#datum->syntax '#f 'let)
                                         (cons (cons (cons _L8932_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'lambda)
                               (cons '() (cons _L8929_ '())))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons _L8931_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _L8928_ '()))
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
                                     (cons (cons _L8926_ (cons _L8933_ '()))
                                           '()))
                               (cons (cons (gx#datum->syntax '#f 'ix)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '##fxmodulo)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'h)
                                                             (cons _L8927_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     (cons (cons (gx#datum->syntax '#f 'q)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '##vector-ref)
                                                             (cons _L8931_
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
                                                       (cons (cons _L8924_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f '##car)
                                       (cons (gx#datum->syntax '#f 'q) '()))
                                 (cons _L8933_ '())))
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
                                                           (foldr (lambda (_g89778980_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g89788983_)
                            (cons _g89778980_ _g89788983_))
                          '()
                          _L8930_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))
                           (cons (cons _L8932_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L8932_ '())
                                                       '()))))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                               _hd87908918_
                               _hd87878908_
                               _hd87848898_
                               _hd87818888_
                               _hd87788878_
                               _dispatch87768870_
                               _hd87638828_
                               _hd87608818_
                               _hd87578808_)
                              (_g87458797_ _g87468801_))))
                      (_g87458797_ _g87468801_))))
              (_g87458797_ _g87468801_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g87458797_ _g87468801_))))
                                      (_g87458797_ _g87468801_))))
                              (_g87458797_ _g87468801_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop87718850_
                                                   _target87688844_
                                                   '()))
                                                (_g87458797_ _g87468801_)))))
                                      (_g87458797_ _g87468801_))
                                  (_g87458797_ _g87468801_))))
                          (_g87458797_ _g87468801_))))
                  (_g87458797_ _g87468801_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g87458797_ _g87468801_))))
                                          (_g87458797_ _g87468801_)))))
                              (_g87448986_
                               (list _e8726_
                                     (gx#genident 'default)
                                     (gx#genident 'table)
                                     _dispatch8729_
                                     _default8730_
                                     _tab8740_
                                     (vector-length _tab8740_)
                                     _hashf8734_
                                     _eqf8735_))))))))))
          (let* ((_g86078631_
                  (lambda (_g86088627_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g86088627_)))
                 (_g86068722_
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
                                            (let ((_g34717_
                                                   (gx#syntax-split-splice
                                                    _tl86168655_
                                                    '0)))
                                              (begin
                                                (let ((_g34718_
                                                       (values-count
                                                        _g34717_)))
                                                  (if (not (fx= _g34718_ 2))
                                                      (error "Context expects 2 values"
                                                             _g34718_)))
                                                (let ((_target86178658_
                                                       (values-ref _g34717_ 0))
                                                      (_tl86198661_
                                                       (values-ref
                                                        _g34717_
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
                                   (let ((_g34719_
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
                                       (let ((_g34720_
                                              (values-count _g34719_)))
                                         (if (not (fx= _g34720_ 3))
                                             (error "Context expects 3 values"
                                                    _g34720_)))
                                       (let ((_datums8717_
                                              (values-ref _g34719_ 0))
                                             (_dispatch8719_
                                              (values-ref _g34719_ 1))
                                             (_default8720_
                                              (values-ref _g34719_ 2)))
                                         (if (< (_count-datums8584_
                                                 _datums8717_)
                                                '6)
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
                                                         (_generate-generic-dispatch8605_
                                                          _L8690_
                                                          _datums8717_
                                                          _dispatch8719_
                                                          _default8720_)))))))))
                                 _clause86258684_
                                 _hd86158652_))))))
                (_loop86208664_ _target86178658_ '()))
              (_g86078631_ _g86088635_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g86078631_ _g86088635_))
                                        (_g86078631_ _g86088635_))))
                                (_g86078631_ _g86088635_))))
                        (_g86078631_ _g86088635_)))))
            (_g86068722_ _stx8578_)))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#~case-test|
      (lambda (_stx11355_)
        (let* ((_g1135811376_
                (lambda (_g1135911372_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1135911372_)))
               (_g1135711442_
                (lambda (_g1135911380_)
                  (if (gx#stx-pair? _g1135911380_)
                      (let ((_e1136211383_ (gx#syntax-e _g1135911380_)))
                        (let ((_hd1136311387_ (##car _e1136211383_))
                              (_tl1136411390_ (##cdr _e1136211383_)))
                          (if (gx#stx-pair? _tl1136411390_)
                              (let ((_e1136511393_
                                     (gx#syntax-e _tl1136411390_)))
                                (let ((_hd1136611397_ (##car _e1136511393_))
                                      (_tl1136711400_ (##cdr _e1136511393_)))
                                  (if (gx#stx-pair? _tl1136711400_)
                                      (let ((_e1136811403_
                                             (gx#syntax-e _tl1136711400_)))
                                        (let ((_hd1136911407_
                                               (##car _e1136811403_))
                                              (_tl1137011410_
                                               (##cdr _e1136811403_)))
                                          (if (gx#stx-null? _tl1137011410_)
                                              ((lambda (_L11413_ _L11415_)
                                                 (let ((_datum-e11431_
                                                        (gx#stx-e _L11415_)))
                                                   (if (let ((_$e11434_
                                                              (symbol? _datum-e11431_)))
                                                         (if _$e11434_
                                                             _$e11434_
                                                             (let ((_$e11438_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (keyword? _datum-e11431_)))
                       (if _$e11438_ _$e11438_ (immediate? _datum-e11431_)))))
               (cons (gx#datum->syntax '#f 'eq?)
                     (cons (cons (gx#datum->syntax '#f 'quote)
                                 (cons _L11415_ '()))
                           (cons _L11413_ '())))
               (if (number? _datum-e11431_)
                   (cons (gx#datum->syntax '#f 'eqv?)
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _L11415_ '()))
                               (cons _L11413_ '())))
                   (cons (gx#datum->syntax '#f 'equal?)
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _L11415_ '()))
                               (cons _L11413_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd1136911407_
                                               _hd1136611397_)
                                              (_g1135811376_ _g1135911380_))))
                                      (_g1135811376_ _g1135911380_))))
                              (_g1135811376_ _g1135911380_))))
                      (_g1135811376_ _g1135911380_)))))
          (_g1135711442_ _stx11355_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#~case-dispatch|
      (lambda (_$stx11446_)
        (let* ((_g1145011474_
                (lambda (_g1145111470_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1145111470_)))
               (_g1144911559_
                (lambda (_g1145111478_)
                  (if (gx#stx-pair? _g1145111478_)
                      (let ((_e1145411481_ (gx#syntax-e _g1145111478_)))
                        (let ((_hd1145511485_ (##car _e1145411481_))
                              (_tl1145611488_ (##cdr _e1145411481_)))
                          (if (gx#stx-pair? _tl1145611488_)
                              (let ((_e1145711491_
                                     (gx#syntax-e _tl1145611488_)))
                                (let ((_hd1145811495_ (##car _e1145711491_))
                                      (_tl1145911498_ (##cdr _e1145711491_)))
                                  (if (gx#stx-pair/null? _tl1145911498_)
                                      (if (fx>= (gx#stx-length _tl1145911498_)
                                                '0)
                                          (let ((_g34721_
                                                 (gx#syntax-split-splice
                                                  _tl1145911498_
                                                  '0)))
                                            (begin
                                              (let ((_g34722_
                                                     (values-count _g34721_)))
                                                (if (not (fx= _g34722_ 2))
                                                    (error "Context expects 2 values"
                                                           _g34722_)))
                                              (let ((_target1146011501_
                                                     (values-ref _g34721_ 0))
                                                    (_tl1146211504_
                                                     (values-ref _g34721_ 1)))
                                                (if (gx#stx-null?
                                                     _tl1146211504_)
                                                    (letrec ((_loop1146311507_
                                                              (lambda (_hd1146111511_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _K1146711514_)
                        (if (gx#stx-pair? _hd1146111511_)
                            (let ((_e1146411517_ (gx#syntax-e _hd1146111511_)))
                              (let ((_lp-hd1146511521_ (##car _e1146411517_))
                                    (_lp-tl1146611524_ (##cdr _e1146411517_)))
                                (_loop1146311507_
                                 _lp-tl1146611524_
                                 (cons _lp-hd1146511521_ _K1146711514_))))
                            (let ((_K1146811527_ (reverse _K1146711514_)))
                              ((lambda (_L11531_ _L11533_)
                                 (cons (gx#datum->syntax '#f '~case-dispatch*)
                                       (cons '0
                                             (cons _L11533_
                                                   (begin
                                                     '#!void
                                                     (foldr (lambda (_g1155011553_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g1155111556_)
                      (cons _g1155011553_ _g1155111556_))
                    '()
                    _L11531_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _K1146811527_
                               _hd1145811495_))))))
              (_loop1146311507_ _target1146011501_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1145011474_
                                                     _g1145111478_)))))
                                          (_g1145011474_ _g1145111478_))
                                      (_g1145011474_ _g1145111478_))))
                              (_g1145011474_ _g1145111478_))))
                      (_g1145011474_ _g1145111478_)))))
          (_g1144911559_ _$stx11446_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#~case-dispatch*|
      (lambda (_stx11564_)
        (let* ((_g1157111667_
                (lambda (_g1157211663_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1157211663_)))
               (_g1157011766_
                (lambda (_g1157211671_)
                  (if (gx#stx-pair? _g1157211671_)
                      (let ((_e1164411674_ (gx#syntax-e _g1157211671_)))
                        (let ((_hd1164511678_ (##car _e1164411674_))
                              (_tl1164611681_ (##cdr _e1164411674_)))
                          (if (gx#stx-pair? _tl1164611681_)
                              (let ((_e1164711684_
                                     (gx#syntax-e _tl1164611681_)))
                                (let ((_hd1164811688_ (##car _e1164711684_))
                                      (_tl1164911691_ (##cdr _e1164711684_)))
                                  (if (gx#stx-pair? _tl1164911691_)
                                      (let ((_e1165011694_
                                             (gx#syntax-e _tl1164911691_)))
                                        (let ((_hd1165111698_
                                               (##car _e1165011694_))
                                              (_tl1165211701_
                                               (##cdr _e1165011694_)))
                                          (if (gx#stx-pair/null?
                                               _tl1165211701_)
                                              (if (fx>= (gx#stx-length
                                                         _tl1165211701_)
                                                        '0)
                                                  (let ((_g34723_
                                                         (gx#syntax-split-splice
                                                          _tl1165211701_
                                                          '0)))
                                                    (begin
                                                      (let ((_g34724_
                                                             (values-count
                                                              _g34723_)))
                                                        (if (not (fx= _g34724_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g34724_)))
              (let ((_target1165311704_ (values-ref _g34723_ 0))
                    (_tl1165511707_ (values-ref _g34723_ 1)))
                (if (gx#stx-null? _tl1165511707_)
                    (letrec ((_loop1165611710_
                              (lambda (_hd1165411714_ _K1166011717_)
                                (if (gx#stx-pair? _hd1165411714_)
                                    (let ((_e1165711720_
                                           (gx#syntax-e _hd1165411714_)))
                                      (let ((_lp-hd1165811724_
                                             (##car _e1165711720_))
                                            (_lp-tl1165911727_
                                             (##cdr _e1165711720_)))
                                        (_loop1165611710_
                                         _lp-tl1165911727_
                                         (cons _lp-hd1165811724_
                                               _K1166011717_))))
                                    (let ((_K1166111730_
                                           (reverse _K1166011717_)))
                                      ((lambda (_L11734_ _L11736_ _L11737_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                '~case-dispatch-bsearch)
                                               (cons _L11737_
                                                     (cons _L11736_
                                                           (begin
                                                             '#!void
                                                             (foldr (lambda (_g1175711760_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1175811763_)
                              (cons _g1175711760_ _g1175811763_))
                            '()
                            _L11734_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _K1166111730_
                                       _hd1165111698_
                                       _hd1164811688_))))))
                      (_loop1165611710_ _target1165311704_ '()))
                    (_g1157111667_ _g1157211671_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1157111667_
                                                   _g1157211671_))
                                              (_g1157111667_ _g1157211671_))))
                                      (_g1157111667_ _g1157211671_))))
                              (_g1157111667_ _g1157211671_))))
                      (_g1157111667_ _g1157211671_))))
               (_g1156911926_
                (lambda (_g1157211770_)
                  (if (gx#stx-pair? _g1157211770_)
                      (let ((_e1162311773_ (gx#syntax-e _g1157211770_)))
                        (let ((_hd1162411777_ (##car _e1162311773_))
                              (_tl1162511780_ (##cdr _e1162311773_)))
                          (if (gx#stx-pair? _tl1162511780_)
                              (let ((_e1162611783_
                                     (gx#syntax-e _tl1162511780_)))
                                (let ((_hd1162711787_ (##car _e1162611783_))
                                      (_tl1162811790_ (##cdr _e1162611783_)))
                                  (if (gx#stx-pair? _tl1162811790_)
                                      (let ((_e1162911793_
                                             (gx#syntax-e _tl1162811790_)))
                                        (let ((_hd1163011797_
                                               (##car _e1162911793_))
                                              (_tl1163111800_
                                               (##cdr _e1162911793_)))
                                          (if (gx#stx-pair? _tl1163111800_)
                                              (let ((_e1163211803_
                                                     (gx#syntax-e
                                                      _tl1163111800_)))
                                                (let ((_hd1163311807_
                                                       (##car _e1163211803_))
                                                      (_tl1163411810_
                                                       (##cdr _e1163211803_)))
                                                  (if (gx#stx-pair?
                                                       _tl1163411810_)
                                                      (let ((_e1163511813_
                                                             (gx#syntax-e
                                                              _tl1163411810_)))
                                                        (let ((_hd1163611817_
                                                               (##car _e1163511813_))
                                                              (_tl1163711820_
                                                               (##cdr _e1163511813_)))
                                                          (if (gx#stx-pair?
                                                               _tl1163711820_)
                                                              (let ((_e1163811823_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl1163711820_)))
                        (let ((_hd1163911827_ (##car _e1163811823_))
                              (_tl1164011830_ (##cdr _e1163811823_)))
                          (if (gx#stx-null? _tl1164011830_)
                              ((lambda (_L11833_
                                        _L11835_
                                        _L11836_
                                        _L11837_
                                        _L11838_)
                                 (let* ((_g1186211877_
                                         (lambda (_g1186311873_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g1186311873_)))
                                        (_g1186111922_
                                         (lambda (_g1186311881_)
                                           (if (gx#stx-pair? _g1186311881_)
                                               (let ((_e1186611884_
                                                      (gx#syntax-e
                                                       _g1186311881_)))
                                                 (let ((_hd1186711888_
                                                        (##car _e1186611884_))
                                                       (_tl1186811891_
                                                        (##cdr _e1186611884_)))
                                                   (if (gx#stx-pair?
                                                        _tl1186811891_)
                                                       (let ((_e1186911894_
                                                              (gx#syntax-e
                                                               _tl1186811891_)))
                                                         (let ((_hd1187011898_
                                                                (##car _e1186911894_))
                                                               (_tl1187111901_
                                                                (##cdr _e1186911894_)))
                                                           (if (gx#stx-null?
                                                                _tl1187111901_)
                                                               ((lambda (_L11904_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L11906_)
                          (let ()
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons (gx#datum->syntax '#f '##fx=)
                                              (cons _L11837_
                                                    (cons _L11906_ '())))
                                        (cons _L11836_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '##fx=)
                              (cons _L11837_ (cons _L11904_ '())))
                        (cons _L11835_ (cons _L11833_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))
                        _hd1187011898_
                        _hd1186711888_)
                       (_g1186211877_ _g1186311881_))))
               (_g1186211877_ _g1186311881_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1186211877_
                                                _g1186311881_)))))
                                   (_g1186111922_
                                    (list (gx#stx-e _L11838_)
                                          (fx1+ (gx#stx-e _L11838_))))))
                               _hd1163911827_
                               _hd1163611817_
                               _hd1163311807_
                               _hd1163011797_
                               _hd1162711787_)
                              (_g1157011766_ _g1157211770_))))
                      (_g1157011766_ _g1157211770_))))
              (_g1157011766_ _g1157211770_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1157011766_ _g1157211770_))))
                                      (_g1157011766_ _g1157211770_))))
                              (_g1157011766_ _g1157211770_))))
                      (_g1157011766_ _g1157211770_))))
               (_g1156812039_
                (lambda (_g1157211930_)
                  (if (gx#stx-pair? _g1157211930_)
                      (let ((_e1160311933_ (gx#syntax-e _g1157211930_)))
                        (let ((_hd1160411937_ (##car _e1160311933_))
                              (_tl1160511940_ (##cdr _e1160311933_)))
                          (if (gx#stx-pair? _tl1160511940_)
                              (let ((_e1160611943_
                                     (gx#syntax-e _tl1160511940_)))
                                (let ((_hd1160711947_ (##car _e1160611943_))
                                      (_tl1160811950_ (##cdr _e1160611943_)))
                                  (if (gx#stx-pair? _tl1160811950_)
                                      (let ((_e1160911953_
                                             (gx#syntax-e _tl1160811950_)))
                                        (let ((_hd1161011957_
                                               (##car _e1160911953_))
                                              (_tl1161111960_
                                               (##cdr _e1160911953_)))
                                          (if (gx#stx-pair? _tl1161111960_)
                                              (let ((_e1161211963_
                                                     (gx#syntax-e
                                                      _tl1161111960_)))
                                                (let ((_hd1161311967_
                                                       (##car _e1161211963_))
                                                      (_tl1161411970_
                                                       (##cdr _e1161211963_)))
                                                  (if (gx#stx-pair?
                                                       _tl1161411970_)
                                                      (let ((_e1161511973_
                                                             (gx#syntax-e
                                                              _tl1161411970_)))
                                                        (let ((_hd1161611977_
                                                               (##car _e1161511973_))
                                                              (_tl1161711980_
                                                               (##cdr _e1161511973_)))
                                                          (if (gx#stx-null?
                                                               _tl1161711980_)
                                                              ((lambda (_L11983_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _L11985_
                                _L11986_
                                _L11987_)
                         (let* ((_g1200812016_
                                 (lambda (_g1200912012_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1200912012_)))
                                (_g1200712035_
                                 (lambda (_g1200912020_)
                                   ((lambda (_L12023_)
                                      (let ()
                                        (cons (gx#datum->syntax '#f 'if)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '##fx=)
                                                          (cons _L11986_
                                                                (cons _L12023_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _L11985_
                                                          (cons _L11983_
                                                                '()))))))
                                    _g1200912020_))))
                           (_g1200712035_ (gx#stx-e _L11987_))))
                       _hd1161611977_
                       _hd1161311967_
                       _hd1161011957_
                       _hd1160711947_)
                      (_g1156911926_ _g1157211930_))))
              (_g1156911926_ _g1157211930_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1156911926_ _g1157211930_))))
                                      (_g1156911926_ _g1157211930_))))
                              (_g1156911926_ _g1157211930_))))
                      (_g1156911926_ _g1157211930_))))
               (_g1156712107_
                (lambda (_g1157212043_)
                  (if (gx#stx-pair? _g1157212043_)
                      (let ((_e1158712046_ (gx#syntax-e _g1157212043_)))
                        (let ((_hd1158812050_ (##car _e1158712046_))
                              (_tl1158912053_ (##cdr _e1158712046_)))
                          (if (gx#stx-pair? _tl1158912053_)
                              (let ((_e1159012056_
                                     (gx#syntax-e _tl1158912053_)))
                                (let ((_hd1159112060_ (##car _e1159012056_))
                                      (_tl1159212063_ (##cdr _e1159012056_)))
                                  (if (gx#stx-pair? _tl1159212063_)
                                      (let ((_e1159312066_
                                             (gx#syntax-e _tl1159212063_)))
                                        (let ((_hd1159412070_
                                               (##car _e1159312066_))
                                              (_tl1159512073_
                                               (##cdr _e1159312066_)))
                                          (if (gx#stx-pair? _tl1159512073_)
                                              (let ((_e1159612076_
                                                     (gx#syntax-e
                                                      _tl1159512073_)))
                                                (let ((_hd1159712080_
                                                       (##car _e1159612076_))
                                                      (_tl1159812083_
                                                       (##cdr _e1159612076_)))
                                                  (if (gx#stx-null?
                                                       _tl1159812083_)
                                                      ((lambda (_L12086_
                                                                _L12088_
                                                                _L12089_)
                                                         _L12086_)
                                                       _hd1159712080_
                                                       _hd1159412070_
                                                       _hd1159112060_)
                                                      (_g1156812039_
                                                       _g1157212043_))))
                                              (_g1156812039_ _g1157212043_))))
                                      (_g1156812039_ _g1157212043_))))
                              (_g1156812039_ _g1157212043_))))
                      (_g1156812039_ _g1157212043_))))
               (_g1156612161_
                (lambda (_g1157212111_)
                  (if (gx#stx-pair? _g1157212111_)
                      (let ((_e1157512114_ (gx#syntax-e _g1157212111_)))
                        (let ((_hd1157612118_ (##car _e1157512114_))
                              (_tl1157712121_ (##cdr _e1157512114_)))
                          (if (gx#stx-pair? _tl1157712121_)
                              (let ((_e1157812124_
                                     (gx#syntax-e _tl1157712121_)))
                                (let ((_hd1157912128_ (##car _e1157812124_))
                                      (_tl1158012131_ (##cdr _e1157812124_)))
                                  (if (gx#stx-pair? _tl1158012131_)
                                      (let ((_e1158112134_
                                             (gx#syntax-e _tl1158012131_)))
                                        (let ((_hd1158212138_
                                               (##car _e1158112134_))
                                              (_tl1158312141_
                                               (##cdr _e1158112134_)))
                                          (if (gx#stx-null? _tl1158312141_)
                                              ((lambda (_L12144_ _L12146_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'quote)
                                                       (cons '#!void '())))
                                               _hd1158212138_
                                               _hd1157912128_)
                                              (_g1156712107_ _g1157212111_))))
                                      (_g1156712107_ _g1157212111_))))
                              (_g1156712107_ _g1157212111_))))
                      (_g1156712107_ _g1157212111_)))))
          (_g1156612161_ _stx11564_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#~case-dispatch-bsearch|
      (lambda (_stx12166_)
        (letrec ((_split12169_
                  (lambda (_lst12530_ _mid12532_)
                    (let _lp12534_ ((_i12537_ '0)
                                    (_rest12539_ _lst12530_)
                                    (_left12540_ '()))
                      (if (fx< _i12537_ _mid12532_)
                          (_lp12534_
                           (fx1+ _i12537_)
                           (cdr _rest12539_)
                           (cons (car _rest12539_) _left12540_))
                          (values (reverse _left12540_) _rest12539_))))))
          (let* ((_g1217212200_
                  (lambda (_g1217312196_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1217312196_)))
                 (_g1217112526_
                  (lambda (_g1217312204_)
                    (if (gx#stx-pair? _g1217312204_)
                        (let ((_e1217712207_ (gx#syntax-e _g1217312204_)))
                          (let ((_hd1217812211_ (##car _e1217712207_))
                                (_tl1217912214_ (##cdr _e1217712207_)))
                            (if (gx#stx-pair? _tl1217912214_)
                                (let ((_e1218012217_
                                       (gx#syntax-e _tl1217912214_)))
                                  (let ((_hd1218112221_ (##car _e1218012217_))
                                        (_tl1218212224_ (##cdr _e1218012217_)))
                                    (if (gx#stx-pair? _tl1218212224_)
                                        (let ((_e1218312227_
                                               (gx#syntax-e _tl1218212224_)))
                                          (let ((_hd1218412231_
                                                 (##car _e1218312227_))
                                                (_tl1218512234_
                                                 (##cdr _e1218312227_)))
                                            (if (gx#stx-pair/null?
                                                 _tl1218512234_)
                                                (if (fx>= (gx#stx-length
                                                           _tl1218512234_)
                                                          '0)
                                                    (let ((_g34725_
                                                           (gx#syntax-split-splice
                                                            _tl1218512234_
                                                            '0)))
                                                      (begin
                                                        (let ((_g34726_
                                                               (values-count
                                                                _g34725_)))
                                                          (if (not (fx= _g34726_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                2))
                      (error "Context expects 2 values" _g34726_)))
                (let ((_target1218612237_ (values-ref _g34725_ 0))
                      (_tl1218812240_ (values-ref _g34725_ 1)))
                  (if (gx#stx-null? _tl1218812240_)
                      (letrec ((_loop1218912243_
                                (lambda (_hd1218712247_ _K1219312250_)
                                  (if (gx#stx-pair? _hd1218712247_)
                                      (let ((_e1219012253_
                                             (gx#syntax-e _hd1218712247_)))
                                        (let ((_lp-hd1219112257_
                                               (##car _e1219012253_))
                                              (_lp-tl1219212260_
                                               (##cdr _e1219012253_)))
                                          (_loop1218912243_
                                           _lp-tl1219212260_
                                           (cons _lp-hd1219112257_
                                                 _K1219312250_))))
                                      (let ((_K1219412263_
                                             (reverse _K1219312250_)))
                                        ((lambda (_L12267_ _L12269_ _L12270_)
                                           (let* ((_len12300_
                                                   (length (begin
                                                             '#!void
                                                             (foldr (lambda (_g1229112294_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1229212297_)
                              (cons _g1229112294_ _g1229212297_))
                            '()
                            _L12267_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_mid12303_
                                                   (quotient _len12300_ '2))
                                                  (_g34727_
                                                   (_split12169_
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g1230512308_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1230612311_)
                       (cons _g1230512308_ _g1230612311_))
                     '()
                     _L12267_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _mid12303_)))
                                             (begin
                                               (let ((_g34728_
                                                      (values-count _g34727_)))
                                                 (if (not (fx= _g34728_ 2))
                                                     (error "Context expects 2 values"
                                                            _g34728_)))
                                               (let ((_left12314_
                                                      (values-ref _g34727_ 0))
                                                     (_right12316_
                                                      (values-ref _g34727_ 1)))
                                                 (let ()
                                                   (let* ((_g1232012361_
                                                           (lambda (_g1232112357_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g1232112357_)))
                                                          (_g1231912522_
                                                           (lambda (_g1232112365_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1232112365_)
                         (let ((_e1232612368_ (gx#syntax-e _g1232112365_)))
                           (let ((_hd1232712372_ (##car _e1232612368_))
                                 (_tl1232812375_ (##cdr _e1232612368_)))
                             (if (gx#stx-pair? _tl1232812375_)
                                 (let ((_e1232912378_
                                        (gx#syntax-e _tl1232812375_)))
                                   (let ((_hd1233012382_ (##car _e1232912378_))
                                         (_tl1233112385_
                                          (##cdr _e1232912378_)))
                                     (if (gx#stx-pair/null? _hd1233012382_)
                                         (if (fx>= (gx#stx-length
                                                    _hd1233012382_)
                                                   '0)
                                             (let ((_g34729_
                                                    (gx#syntax-split-splice
                                                     _hd1233012382_
                                                     '0)))
                                               (begin
                                                 (let ((_g34730_
                                                        (values-count
                                                         _g34729_)))
                                                   (if (not (fx= _g34730_ 2))
                                                       (error "Context expects 2 values"
                                                              _g34730_)))
                                                 (let ((_target1233212388_
                                                        (values-ref
                                                         _g34729_
                                                         0))
                                                       (_tl1233412391_
                                                        (values-ref
                                                         _g34729_
                                                         1)))
                                                   (if (gx#stx-null?
                                                        _tl1233412391_)
                                                       (letrec ((_loop1233512394_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd1233312398_ _K-left1233912401_)
                           (if (gx#stx-pair? _hd1233312398_)
                               (let ((_e1233612404_
                                      (gx#syntax-e _hd1233312398_)))
                                 (let ((_lp-hd1233712408_
                                        (##car _e1233612404_))
                                       (_lp-tl1233812411_
                                        (##cdr _e1233612404_)))
                                   (_loop1233512394_
                                    _lp-tl1233812411_
                                    (cons _lp-hd1233712408_
                                          _K-left1233912401_))))
                               (let ((_K-left1234012414_
                                      (reverse _K-left1233912401_)))
                                 (if (gx#stx-pair? _tl1233112385_)
                                     (let ((_e1234112418_
                                            (gx#syntax-e _tl1233112385_)))
                                       (let ((_hd1234212422_
                                              (##car _e1234112418_))
                                             (_tl1234312425_
                                              (##cdr _e1234112418_)))
                                         (if (gx#stx-pair/null? _hd1234212422_)
                                             (if (fx>= (gx#stx-length
                                                        _hd1234212422_)
                                                       '0)
                                                 (let ((_g34731_
                                                        (gx#syntax-split-splice
                                                         _hd1234212422_
                                                         '0)))
                                                   (begin
                                                     (let ((_g34732_
                                                            (values-count
                                                             _g34731_)))
                                                       (if (not (fx= _g34732_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g34732_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target1234412428_
                                                            (values-ref
                                                             _g34731_
                                                             0))
                                                           (_tl1234612431_
                                                            (values-ref
                                                             _g34731_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl1234612431_)
                                                           (letrec ((_loop1234712434_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd1234512438_ _K-right1235112441_)
                               (if (gx#stx-pair? _hd1234512438_)
                                   (let ((_e1234812444_
                                          (gx#syntax-e _hd1234512438_)))
                                     (let ((_lp-hd1234912448_
                                            (##car _e1234812444_))
                                           (_lp-tl1235012451_
                                            (##cdr _e1234812444_)))
                                       (_loop1234712434_
                                        _lp-tl1235012451_
                                        (cons _lp-hd1234912448_
                                              _K-right1235112441_))))
                                   (let ((_K-right1235212454_
                                          (reverse _K-right1235112441_)))
                                     (if (gx#stx-pair? _tl1234312425_)
                                         (let ((_e1235312458_
                                                (gx#syntax-e _tl1234312425_)))
                                           (let ((_hd1235412462_
                                                  (##car _e1235312458_))
                                                 (_tl1235512465_
                                                  (##cdr _e1235312458_)))
                                             (if (gx#stx-null? _tl1235512465_)
                                                 ((lambda (_L12468_
                                                           _L12470_
                                                           _L12471_
                                                           _L12472_)
                                                    (let ()
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'if)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 '##fx<)
                                (cons _L12269_ (cons _L12468_ '())))
                          (cons (cons (gx#datum->syntax '#f '~case-dispatch*)
                                      (cons _L12270_
                                            (cons _L12269_
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g1250512510_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1250612513_)
                     (cons _g1250512510_ _g1250612513_))
                   '()
                   _L12471_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             '~case-dispatch*)
                                            (cons _L12468_
                                                  (cons _L12269_
                                                        (begin
                                                          '#!void
                                                          (foldr (lambda (_g1250712516_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g1250812519_)
                           (cons _g1250712516_ _g1250812519_))
                         '()
                         _L12470_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd1235412462_
                                                  _K-right1235212454_
                                                  _K-left1234012414_
                                                  _hd1232712372_)
                                                 (_g1232012361_
                                                  _g1232112365_))))
                                         (_g1232012361_ _g1232112365_)))))))
                     (_loop1234712434_ _target1234412428_ '()))
                   (_g1232012361_ _g1232112365_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1232012361_ _g1232112365_))
                                             (_g1232012361_ _g1232112365_))))
                                     (_g1232012361_ _g1232112365_)))))))
                 (_loop1233512394_ _target1233212388_ '()))
               (_g1232012361_ _g1232112365_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1232012361_ _g1232112365_))
                                         (_g1232012361_ _g1232112365_))))
                                 (_g1232012361_ _g1232112365_))))
                         (_g1232012361_ _g1232112365_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1231912522_
                                                      (list _mid12303_
                                                            _left12314_
                                                            _right12316_
                                                            (fx+ _mid12303_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _L12270_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _K1219412263_
                                         _hd1218412231_
                                         _hd1218112221_))))))
                        (_loop1218912243_ _target1218612237_ '()))
                      (_g1217212200_ _g1217312204_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1217212200_
                                                     _g1217312204_))
                                                (_g1217212200_
                                                 _g1217312204_))))
                                        (_g1217212200_ _g1217312204_))))
                                (_g1217212200_ _g1217312204_))))
                        (_g1217212200_ _g1217312204_)))))
            (_g1217112526_ _stx12166_)))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#do|
      (lambda (_$stx12546_)
        (let* ((_g1255012621_
                (lambda (_g1255112617_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1255112617_)))
               (_g1254912910_
                (lambda (_g1255112625_)
                  (if (gx#stx-pair? _g1255112625_)
                      (let ((_e1255812628_ (gx#syntax-e _g1255112625_)))
                        (let ((_hd1255912632_ (##car _e1255812628_))
                              (_tl1256012635_ (##cdr _e1255812628_)))
                          (if (gx#stx-pair? _tl1256012635_)
                              (let ((_e1256112638_
                                     (gx#syntax-e _tl1256012635_)))
                                (let ((_hd1256212642_ (##car _e1256112638_))
                                      (_tl1256312645_ (##cdr _e1256112638_)))
                                  (if (gx#stx-pair/null? _hd1256212642_)
                                      (if (fx>= (gx#stx-length _hd1256212642_)
                                                '0)
                                          (let ((_g34733_
                                                 (gx#syntax-split-splice
                                                  _hd1256212642_
                                                  '0)))
                                            (begin
                                              (let ((_g34734_
                                                     (values-count _g34733_)))
                                                (if (not (fx= _g34734_ 2))
                                                    (error "Context expects 2 values"
                                                           _g34734_)))
                                              (let ((_target1256412648_
                                                     (values-ref _g34733_ 0))
                                                    (_tl1256612651_
                                                     (values-ref _g34733_ 1)))
                                                (if (gx#stx-null?
                                                     _tl1256612651_)
                                                    (letrec ((_loop1256712654_
                                                              (lambda (_hd1256512658_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _step1257112661_
                               _init1257212663_
                               _var1257312665_)
                        (if (gx#stx-pair? _hd1256512658_)
                            (let ((_e1256812668_ (gx#syntax-e _hd1256512658_)))
                              (let ((_lp-hd1256912672_ (##car _e1256812668_))
                                    (_lp-tl1257012675_ (##cdr _e1256812668_)))
                                (if (gx#stx-pair? _lp-hd1256912672_)
                                    (let ((_e1257712678_
                                           (gx#syntax-e _lp-hd1256912672_)))
                                      (let ((_hd1257812682_
                                             (##car _e1257712678_))
                                            (_tl1257912685_
                                             (##cdr _e1257712678_)))
                                        (if (gx#stx-pair? _tl1257912685_)
                                            (let ((_e1258012688_
                                                   (gx#syntax-e
                                                    _tl1257912685_)))
                                              (let ((_hd1258112692_
                                                     (##car _e1258012688_))
                                                    (_tl1258212695_
                                                     (##cdr _e1258012688_)))
                                                (if (gx#stx-pair/null?
                                                     _tl1258212695_)
                                                    (if (fx>= (gx#stx-length
                                                               _tl1258212695_)
                                                              '0)
                                                        (let ((_g34735_
                                                               (gx#syntax-split-splice
                                                                _tl1258212695_
                                                                '0)))
                                                          (begin
                                                            (let ((_g34736_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (values-count _g34735_)))
                      (if (not (fx= _g34736_ 2))
                          (error "Context expects 2 values" _g34736_)))
                    (let ((_target1258312698_ (values-ref _g34735_ 0))
                          (_tl1258512701_ (values-ref _g34735_ 1)))
                      (if (gx#stx-null? _tl1258512701_)
                          (letrec ((_loop1258612704_
                                    (lambda (_hd1258412708_ _step1259012711_)
                                      (if (gx#stx-pair? _hd1258412708_)
                                          (let ((_e1258712714_
                                                 (gx#syntax-e _hd1258412708_)))
                                            (let ((_lp-hd1258812718_
                                                   (##car _e1258712714_))
                                                  (_lp-tl1258912721_
                                                   (##cdr _e1258712714_)))
                                              (_loop1258612704_
                                               _lp-tl1258912721_
                                               (cons _lp-hd1258812718_
                                                     _step1259012711_))))
                                          (let ((_step1259112724_
                                                 (reverse _step1259012711_)))
                                            (_loop1256712654_
                                             _lp-tl1257012675_
                                             (cons _step1259112724_
                                                   _step1257112661_)
                                             (cons _hd1258112692_
                                                   _init1257212663_)
                                             (cons _hd1257812682_
                                                   _var1257312665_)))))))
                            (_loop1258612704_ _target1258312698_ '()))
                          (_g1255012621_ _g1255112625_)))))
                (_g1255012621_ _g1255112625_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1255012621_
                                                     _g1255112625_))))
                                            (_g1255012621_ _g1255112625_))))
                                    (_g1255012621_ _g1255112625_))))
                            (let ((_step1257412728_ (reverse _step1257112661_))
                                  (_init1257512731_ (reverse _init1257212663_))
                                  (_var1257612733_ (reverse _var1257312665_)))
                              (if (gx#stx-pair? _tl1256312645_)
                                  (let ((_e1259212736_
                                         (gx#syntax-e _tl1256312645_)))
                                    (let ((_hd1259312740_
                                           (##car _e1259212736_))
                                          (_tl1259412743_
                                           (##cdr _e1259212736_)))
                                      (if (gx#stx-pair? _hd1259312740_)
                                          (let ((_e1259512746_
                                                 (gx#syntax-e _hd1259312740_)))
                                            (let ((_hd1259612750_
                                                   (##car _e1259512746_))
                                                  (_tl1259712753_
                                                   (##cdr _e1259512746_)))
                                              (if (gx#stx-pair/null?
                                                   _tl1259712753_)
                                                  (if (fx>= (gx#stx-length
                                                             _tl1259712753_)
                                                            '0)
                                                      (let ((_g34737_
                                                             (gx#syntax-split-splice
                                                              _tl1259712753_
                                                              '0)))
                                                        (begin
                                                          (let ((_g34738_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (values-count _g34737_)))
                    (if (not (fx= _g34738_ 2))
                        (error "Context expects 2 values" _g34738_)))
                  (let ((_target1259812756_ (values-ref _g34737_ 0))
                        (_tl1260012759_ (values-ref _g34737_ 1)))
                    (if (gx#stx-null? _tl1260012759_)
                        (letrec ((_loop1260112762_
                                  (lambda (_hd1259912766_ _fini1260512769_)
                                    (if (gx#stx-pair? _hd1259912766_)
                                        (let ((_e1260212772_
                                               (gx#syntax-e _hd1259912766_)))
                                          (let ((_lp-hd1260312776_
                                                 (##car _e1260212772_))
                                                (_lp-tl1260412779_
                                                 (##cdr _e1260212772_)))
                                            (_loop1260112762_
                                             _lp-tl1260412779_
                                             (cons _lp-hd1260312776_
                                                   _fini1260512769_))))
                                        (let ((_fini1260612782_
                                               (reverse _fini1260512769_)))
                                          (if (gx#stx-pair/null?
                                               _tl1259412743_)
                                              (if (fx>= (gx#stx-length
                                                         _tl1259412743_)
                                                        '0)
                                                  (let ((_g34739_
                                                         (gx#syntax-split-splice
                                                          _tl1259412743_
                                                          '0)))
                                                    (begin
                                                      (let ((_g34740_
                                                             (values-count
                                                              _g34739_)))
                                                        (if (not (fx= _g34740_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g34740_)))
              (let ((_target1260712786_ (values-ref _g34739_ 0))
                    (_tl1260912789_ (values-ref _g34739_ 1)))
                (if (gx#stx-null? _tl1260912789_)
                    (letrec ((_loop1261012792_
                              (lambda (_hd1260812796_ _body1261412799_)
                                (if (gx#stx-pair? _hd1260812796_)
                                    (let ((_e1261112802_
                                           (gx#syntax-e _hd1260812796_)))
                                      (let ((_lp-hd1261212806_
                                             (##car _e1261112802_))
                                            (_lp-tl1261312809_
                                             (##cdr _e1261112802_)))
                                        (_loop1261012792_
                                         _lp-tl1261312809_
                                         (cons _lp-hd1261212806_
                                               _body1261412799_))))
                                    (let ((_body1261512812_
                                           (reverse _body1261412799_)))
                                      ((lambda (_L12816_
                                                _L12818_
                                                _L12819_
                                                _L12820_
                                                _L12821_
                                                _L12822_)
                                         (if (gx#stx-andmap
                                              gx#identifier?
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g1285512858_
                                                                _g1285612861_)
                                                         (cons _g1285512858_
                                                               _g1285612861_))
                                                       '()
                                                       _L12822_)))
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          '$loop)
                                                         (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-check-splice-targets _L12821_ _L12822_)
                         (foldr (lambda (_g1286312876_
                                         _g1286412879_
                                         _g1286512881_)
                                  (cons (cons _g1286412879_
                                              (cons _g1286312876_ '()))
                                        _g1286512881_))
                                '()
                                _L12821_
                                _L12822_))
                       (cons (cons (gx#datum->syntax '#f 'if)
                                   (cons _L12819_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'begin)
                                                     (cons '#!void
                                                           (begin
                                                             '#!void
                                                             (foldr (lambda (_g1286612884_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1286712887_)
                              (cons _g1286612884_ _g1286712887_))
                            '()
                            _L12818_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'begin)
                                                           (begin
                                                             '#!void
                                                             (foldr (lambda (_g1286812890_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1286912893_)
                              (cons _g1286812890_ _g1286912893_))
                            (cons (cons (gx#datum->syntax '#f '$loop)
                                        (begin
                                          (gx#syntax-check-splice-targets
                                           _L12820_
                                           _L12822_)
                                          (foldr (lambda (_g1287012896_
                                                          _g1287112899_
                                                          _g1287212901_)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'begin)
                                                               (cons _g1287112899_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (begin
                               '#!void
                               (foldr (lambda (_g1287312904_ _g1287412907_)
                                        (cons _g1287312904_ _g1287412907_))
                                      '()
                                      _g1287012896_))))
                 _g1287212901_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()
                                                 _L12820_
                                                 _L12822_)))
                                  '())
                            _L12816_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1255012621_ _g1255112625_)))
                                       _body1261512812_
                                       _fini1260612782_
                                       _hd1259612750_
                                       _step1257412728_
                                       _init1257512731_
                                       _var1257612733_))))))
                      (_loop1261012792_ _target1260712786_ '()))
                    (_g1255012621_ _g1255112625_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1255012621_
                                                   _g1255112625_))
                                              (_g1255012621_
                                               _g1255112625_)))))))
                          (_loop1260112762_ _target1259812756_ '()))
                        (_g1255012621_ _g1255112625_)))))
              (_g1255012621_ _g1255112625_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1255012621_
                                                   _g1255112625_))))
                                          (_g1255012621_ _g1255112625_))))
                                  (_g1255012621_ _g1255112625_)))))))
              (_loop1256712654_ _target1256412648_ '() '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1255012621_
                                                     _g1255112625_)))))
                                          (_g1255012621_ _g1255112625_))
                                      (_g1255012621_ _g1255112625_))))
                              (_g1255012621_ _g1255112625_))))
                      (_g1255012621_ _g1255112625_)))))
          (_g1254912910_ _$stx12546_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#do-while|
      (lambda (_$stx12918_)
        (let* ((_g1292212945_
                (lambda (_g1292312941_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1292312941_)))
               (_g1292113016_
                (lambda (_g1292312949_)
                  (if (gx#stx-pair? _g1292312949_)
                      (let ((_e1292812952_ (gx#syntax-e _g1292312949_)))
                        (let ((_hd1292912956_ (##car _e1292812952_))
                              (_tl1293012959_ (##cdr _e1292812952_)))
                          (if (gx#stx-pair? _tl1293012959_)
                              (let ((_e1293112962_
                                     (gx#syntax-e _tl1293012959_)))
                                (let ((_hd1293212966_ (##car _e1293112962_))
                                      (_tl1293312969_ (##cdr _e1293112962_)))
                                  (if (gx#stx-pair? _tl1293312969_)
                                      (let ((_e1293412972_
                                             (gx#syntax-e _tl1293312969_)))
                                        (let ((_hd1293512976_
                                               (##car _e1293412972_))
                                              (_tl1293612979_
                                               (##cdr _e1293412972_)))
                                          (if (gx#stx-pair? _hd1293512976_)
                                              (let ((_e1293712982_
                                                     (gx#syntax-e
                                                      _hd1293512976_)))
                                                (let ((_hd1293812986_
                                                       (##car _e1293712982_))
                                                      (_tl1293912989_
                                                       (##cdr _e1293712982_)))
                                                  ((lambda (_L12992_
                                                            _L12994_
                                                            _L12995_
                                                            _L12996_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'do)
                                                           (cons _L12996_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (cons (gx#datum->syntax '#f 'not)
                                           (cons _L12995_ '()))
                                     _L12994_)
                               _L12992_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _tl1293612979_
                                                   _tl1293912989_
                                                   _hd1293812986_
                                                   _hd1293212966_)))
                                              (_g1292212945_ _g1292312949_))))
                                      (_g1292212945_ _g1292312949_))))
                              (_g1292212945_ _g1292312949_))))
                      (_g1292212945_ _g1292312949_)))))
          (_g1292113016_ _$stx12918_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#begin0|
      (lambda (_$stx13020_)
        (let* ((_g1302513056_
                (lambda (_g1302613052_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1302613052_)))
               (_g1302413141_
                (lambda (_g1302613060_)
                  (if (gx#stx-pair? _g1302613060_)
                      (let ((_e1303613063_ (gx#syntax-e _g1302613060_)))
                        (let ((_hd1303713067_ (##car _e1303613063_))
                              (_tl1303813070_ (##cdr _e1303613063_)))
                          (if (gx#stx-pair? _tl1303813070_)
                              (let ((_e1303913073_
                                     (gx#syntax-e _tl1303813070_)))
                                (let ((_hd1304013077_ (##car _e1303913073_))
                                      (_tl1304113080_ (##cdr _e1303913073_)))
                                  (if (gx#stx-pair/null? _tl1304113080_)
                                      (if (fx>= (gx#stx-length _tl1304113080_)
                                                '0)
                                          (let ((_g34741_
                                                 (gx#syntax-split-splice
                                                  _tl1304113080_
                                                  '0)))
                                            (begin
                                              (let ((_g34742_
                                                     (values-count _g34741_)))
                                                (if (not (fx= _g34742_ 2))
                                                    (error "Context expects 2 values"
                                                           _g34742_)))
                                              (let ((_target1304213083_
                                                     (values-ref _g34741_ 0))
                                                    (_tl1304413086_
                                                     (values-ref _g34741_ 1)))
                                                (if (gx#stx-null?
                                                     _tl1304413086_)
                                                    (letrec ((_loop1304513089_
                                                              (lambda (_hd1304313093_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _rest1304913096_)
                        (if (gx#stx-pair? _hd1304313093_)
                            (let ((_e1304613099_ (gx#syntax-e _hd1304313093_)))
                              (let ((_lp-hd1304713103_ (##car _e1304613099_))
                                    (_lp-tl1304813106_ (##cdr _e1304613099_)))
                                (_loop1304513089_
                                 _lp-tl1304813106_
                                 (cons _lp-hd1304713103_ _rest1304913096_))))
                            (let ((_rest1305013109_
                                   (reverse _rest1304913096_)))
                              ((lambda (_L13113_ _L13115_)
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (cons (gx#datum->syntax '#f '$r)
                                                   (cons _L13115_ '()))
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '%#expression)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'begin)
                             (begin
                               '#!void
                               (foldr (lambda (_g1313213135_ _g1313313138_)
                                        (cons _g1313213135_ _g1313313138_))
                                      '()
                                      _L13113_)))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          '$r)
                                                         '())))))
                               _rest1305013109_
                               _hd1304013077_))))))
              (_loop1304513089_ _target1304213083_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1302513056_
                                                     _g1302613060_)))))
                                          (_g1302513056_ _g1302613060_))
                                      (_g1302513056_ _g1302613060_))))
                              (_g1302513056_ _g1302613060_))))
                      (_g1302513056_ _g1302613060_))))
               (_g1302313181_
                (lambda (_g1302613145_)
                  (if (gx#stx-pair? _g1302613145_)
                      (let ((_e1302813148_ (gx#syntax-e _g1302613145_)))
                        (let ((_hd1302913152_ (##car _e1302813148_))
                              (_tl1303013155_ (##cdr _e1302813148_)))
                          (if (gx#stx-pair? _tl1303013155_)
                              (let ((_e1303113158_
                                     (gx#syntax-e _tl1303013155_)))
                                (let ((_hd1303213162_ (##car _e1303113158_))
                                      (_tl1303313165_ (##cdr _e1303113158_)))
                                  (if (gx#stx-null? _tl1303313165_)
                                      ((lambda (_L13168_) _L13168_)
                                       _hd1303213162_)
                                      (_g1302413141_ _g1302613145_))))
                              (_g1302413141_ _g1302613145_))))
                      (_g1302413141_ _g1302613145_)))))
          (_g1302313181_ _$stx13020_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#rec|
      (lambda (_$stx13186_)
        (let* ((_g1319213245_
                (lambda (_g1319313241_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1319313241_)))
               (_g1319113344_
                (lambda (_g1319313249_)
                  (if (gx#stx-pair? _g1319313249_)
                      (let ((_e1322213252_ (gx#syntax-e _g1319313249_)))
                        (let ((_hd1322313256_ (##car _e1322213252_))
                              (_tl1322413259_ (##cdr _e1322213252_)))
                          (if (gx#stx-pair? _tl1322413259_)
                              (let ((_e1322513262_
                                     (gx#syntax-e _tl1322413259_)))
                                (let ((_hd1322613266_ (##car _e1322513262_))
                                      (_tl1322713269_ (##cdr _e1322513262_)))
                                  (if (gx#stx-pair? _hd1322613266_)
                                      (let ((_e1322813272_
                                             (gx#syntax-e _hd1322613266_)))
                                        (let ((_hd1322913276_
                                               (##car _e1322813272_))
                                              (_tl1323013279_
                                               (##cdr _e1322813272_)))
                                          (if (gx#stx-pair/null?
                                               _tl1322713269_)
                                              (if (fx>= (gx#stx-length
                                                         _tl1322713269_)
                                                        '0)
                                                  (let ((_g34743_
                                                         (gx#syntax-split-splice
                                                          _tl1322713269_
                                                          '0)))
                                                    (begin
                                                      (let ((_g34744_
                                                             (values-count
                                                              _g34743_)))
                                                        (if (not (fx= _g34744_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g34744_)))
              (let ((_target1323113282_ (values-ref _g34743_ 0))
                    (_tl1323313285_ (values-ref _g34743_ 1)))
                (if (gx#stx-null? _tl1323313285_)
                    (letrec ((_loop1323413288_
                              (lambda (_hd1323213292_ _body1323813295_)
                                (if (gx#stx-pair? _hd1323213292_)
                                    (let ((_e1323513298_
                                           (gx#syntax-e _hd1323213292_)))
                                      (let ((_lp-hd1323613302_
                                             (##car _e1323513298_))
                                            (_lp-tl1323713305_
                                             (##cdr _e1323513298_)))
                                        (_loop1323413288_
                                         _lp-tl1323713305_
                                         (cons _lp-hd1323613302_
                                               _body1323813295_))))
                                    (let ((_body1323913308_
                                           (reverse _body1323813295_)))
                                      ((lambda (_L13312_ _L13314_ _L13315_)
                                         (if (gx#identifier? _L13315_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'letrec)
                                                   (cons (cons (cons _L13315_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _L13314_
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g1333513338_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1333613341_)
                  (cons _g1333513338_ _g1333613341_))
                '()
                _L13312_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   '()))
                       '())
                 (cons _L13315_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1319213245_ _g1319313249_)))
                                       _body1323913308_
                                       _tl1323013279_
                                       _hd1322913276_))))))
                      (_loop1323413288_ _target1323113282_ '()))
                    (_g1319213245_ _g1319313249_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1319213245_
                                                   _g1319313249_))
                                              (_g1319213245_ _g1319313249_))))
                                      (_g1319213245_ _g1319313249_))))
                              (_g1319213245_ _g1319313249_))))
                      (_g1319213245_ _g1319313249_))))
               (_g1319013410_
                (lambda (_g1319313348_)
                  (if (gx#stx-pair? _g1319313348_)
                      (let ((_e1320713351_ (gx#syntax-e _g1319313348_)))
                        (let ((_hd1320813355_ (##car _e1320713351_))
                              (_tl1320913358_ (##cdr _e1320713351_)))
                          (if (gx#stx-pair? _tl1320913358_)
                              (let ((_e1321013361_
                                     (gx#syntax-e _tl1320913358_)))
                                (let ((_hd1321113365_ (##car _e1321013361_))
                                      (_tl1321213368_ (##cdr _e1321013361_)))
                                  (if (gx#stx-pair? _hd1321113365_)
                                      (let ((_e1321313371_
                                             (gx#syntax-e _hd1321113365_)))
                                        (let ((_hd1321413375_
                                               (##car _e1321313371_))
                                              (_tl1321513378_
                                               (##cdr _e1321313371_)))
                                          (if (gx#identifier? _hd1321413375_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<sugar>$<sugar:2>[1]#_g34745_|
                                                   _hd1321413375_)
                                                  (if (gx#stx-pair?
                                                       _tl1321213368_)
                                                      (let ((_e1321613381_
                                                             (gx#syntax-e
                                                              _tl1321213368_)))
                                                        (let ((_hd1321713385_
                                                               (##car _e1321613381_))
                                                              (_tl1321813388_
                                                               (##cdr _e1321613381_)))
                                                          (if (gx#stx-null?
                                                               _tl1321813388_)
                                                              ((lambda (_L13391_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _L13393_)
                         (if (gx#identifier-list? _L13393_)
                             (cons (gx#datum->syntax '#f 'letrec-values)
                                   (cons (cons (cons _L13393_
                                                     (cons _L13391_ '()))
                                               '())
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'values)
                                                     _L13393_)
                                               '())))
                             (_g1319113344_ _g1319313348_)))
                       _hd1321713385_
                       _tl1321513378_)
                      (_g1319113344_ _g1319313348_))))
              (_g1319113344_ _g1319313348_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1319113344_
                                                   _g1319313348_))
                                              (_g1319113344_ _g1319313348_))))
                                      (_g1319113344_ _g1319313348_))))
                              (_g1319113344_ _g1319313348_))))
                      (_g1319113344_ _g1319313348_))))
               (_g1318913464_
                (lambda (_g1319313414_)
                  (if (gx#stx-pair? _g1319313414_)
                      (let ((_e1319613417_ (gx#syntax-e _g1319313414_)))
                        (let ((_hd1319713421_ (##car _e1319613417_))
                              (_tl1319813424_ (##cdr _e1319613417_)))
                          (if (gx#stx-pair? _tl1319813424_)
                              (let ((_e1319913427_
                                     (gx#syntax-e _tl1319813424_)))
                                (let ((_hd1320013431_ (##car _e1319913427_))
                                      (_tl1320113434_ (##cdr _e1319913427_)))
                                  (if (gx#stx-pair? _tl1320113434_)
                                      (let ((_e1320213437_
                                             (gx#syntax-e _tl1320113434_)))
                                        (let ((_hd1320313441_
                                               (##car _e1320213437_))
                                              (_tl1320413444_
                                               (##cdr _e1320213437_)))
                                          (if (gx#stx-null? _tl1320413444_)
                                              ((lambda (_L13447_ _L13449_)
                                                 (if (gx#identifier? _L13449_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'letrec)
                                                           (cons (cons (cons _L13449_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (cons _L13447_ '()))
                               '())
                         (cons _L13449_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1319013410_
                                                      _g1319313414_)))
                                               _hd1320313441_
                                               _hd1320013431_)
                                              (_g1319013410_ _g1319313414_))))
                                      (_g1319013410_ _g1319313414_))))
                              (_g1319013410_ _g1319313414_))))
                      (_g1319013410_ _g1319313414_)))))
          (_g1318913464_ _$stx13186_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#alet|
      (lambda (_stx13469_)
        (letrec ((_let-head?13472_
                  (lambda (_x14019_)
                    (let* ((_g1402314034_
                            (lambda (_g1402414030_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1402414030_)))
                           (_g1402214045_
                            (lambda (_g1402414038_)
                              ((lambda () (gx#identifier? _x14019_)))))
                           (_g1402114075_
                            (lambda (_g1402414049_)
                              (if (gx#stx-pair? _g1402414049_)
                                  (let ((_e1402614052_
                                         (gx#syntax-e _g1402414049_)))
                                    (let ((_hd1402714056_
                                           (##car _e1402614052_))
                                          (_tl1402814059_
                                           (##cdr _e1402614052_)))
                                      (if (gx#identifier? _hd1402714056_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<sugar>$<sugar:2>[1]#_g34746_|
                                               _hd1402714056_)
                                              ((lambda (_L14062_)
                                                 (gx#stx-andmap
                                                  gx#identifier?
                                                  _L14062_))
                                               _tl1402814059_)
                                              (_g1402214045_ _g1402414049_))
                                          (_g1402214045_ _g1402414049_))))
                                  (_g1402214045_ _g1402414049_)))))
                      (_g1402114075_ _x14019_))))
                 (_let-head13474_
                  (lambda (_x13959_)
                    (let* ((_g1396313974_
                            (lambda (_g1396413970_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1396413970_)))
                           (_g1396213985_
                            (lambda (_g1396413978_)
                              ((lambda () (list _x13959_)))))
                           (_g1396114015_
                            (lambda (_g1396413989_)
                              (if (gx#stx-pair? _g1396413989_)
                                  (let ((_e1396613992_
                                         (gx#syntax-e _g1396413989_)))
                                    (let ((_hd1396713996_
                                           (##car _e1396613992_))
                                          (_tl1396813999_
                                           (##cdr _e1396613992_)))
                                      (if (gx#identifier? _hd1396713996_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<sugar>$<sugar:2>[1]#_g34747_|
                                               _hd1396713996_)
                                              ((lambda (_L14002_) _L14002_)
                                               _tl1396813999_)
                                              (_g1396213985_ _g1396413989_))
                                          (_g1396213985_ _g1396413989_))))
                                  (_g1396213985_ _g1396413989_)))))
                      (_g1396114015_ _x13959_)))))
          (let* ((_g1347713535_
                  (lambda (_g1347813531_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1347813531_)))
                 (_g1347613885_
                  (lambda (_g1347813539_)
                    (if (gx#stx-pair? _g1347813539_)
                        (let ((_e1349813542_ (gx#syntax-e _g1347813539_)))
                          (let ((_hd1349913546_ (##car _e1349813542_))
                                (_tl1350013549_ (##cdr _e1349813542_)))
                            (if (gx#stx-pair? _tl1350013549_)
                                (let ((_e1350113552_
                                       (gx#syntax-e _tl1350013549_)))
                                  (let ((_hd1350213556_ (##car _e1350113552_))
                                        (_tl1350313559_ (##cdr _e1350113552_)))
                                    (if (gx#stx-pair/null? _hd1350213556_)
                                        (if (fx>= (gx#stx-length
                                                   _hd1350213556_)
                                                  '0)
                                            (let ((_g34748_
                                                   (gx#syntax-split-splice
                                                    _hd1350213556_
                                                    '0)))
                                              (begin
                                                (let ((_g34749_
                                                       (values-count
                                                        _g34748_)))
                                                  (if (not (fx= _g34749_ 2))
                                                      (error "Context expects 2 values"
                                                             _g34749_)))
                                                (let ((_target1350413562_
                                                       (values-ref _g34748_ 0))
                                                      (_tl1350613565_
                                                       (values-ref
                                                        _g34748_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl1350613565_)
                                                      (letrec ((_loop1350713568_
                                                                (lambda (_hd1350513572_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _e1351113575_
                                 _hd1351213577_)
                          (if (gx#stx-pair? _hd1350513572_)
                              (let ((_e1350813580_
                                     (gx#syntax-e _hd1350513572_)))
                                (let ((_lp-hd1350913584_ (##car _e1350813580_))
                                      (_lp-tl1351013587_
                                       (##cdr _e1350813580_)))
                                  (if (gx#stx-pair? _lp-hd1350913584_)
                                      (let ((_e1351513590_
                                             (gx#syntax-e _lp-hd1350913584_)))
                                        (let ((_hd1351613594_
                                               (##car _e1351513590_))
                                              (_tl1351713597_
                                               (##cdr _e1351513590_)))
                                          (if (gx#stx-pair? _tl1351713597_)
                                              (let ((_e1351813600_
                                                     (gx#syntax-e
                                                      _tl1351713597_)))
                                                (let ((_hd1351913604_
                                                       (##car _e1351813600_))
                                                      (_tl1352013607_
                                                       (##cdr _e1351813600_)))
                                                  (if (gx#stx-null?
                                                       _tl1352013607_)
                                                      (_loop1350713568_
                                                       _lp-tl1351013587_
                                                       (cons _hd1351913604_
                                                             _e1351113575_)
                                                       (cons _hd1351613594_
                                                             _hd1351213577_))
                                                      (_g1347713535_
                                                       _g1347813539_))))
                                              (_g1347713535_ _g1347813539_))))
                                      (_g1347713535_ _g1347813539_))))
                              (let ((_e1351313610_ (reverse _e1351113575_))
                                    (_hd1351413613_ (reverse _hd1351213577_)))
                                (if (gx#stx-pair/null? _tl1350313559_)
                                    (if (fx>= (gx#stx-length _tl1350313559_)
                                              '0)
                                        (let ((_g34750_
                                               (gx#syntax-split-splice
                                                _tl1350313559_
                                                '0)))
                                          (begin
                                            (let ((_g34751_
                                                   (values-count _g34750_)))
                                              (if (not (fx= _g34751_ 2))
                                                  (error "Context expects 2 values"
                                                         _g34751_)))
                                            (let ((_target1352113616_
                                                   (values-ref _g34750_ 0))
                                                  (_tl1352313619_
                                                   (values-ref _g34750_ 1)))
                                              (if (gx#stx-null? _tl1352313619_)
                                                  (letrec ((_loop1352413622_
                                                            (lambda (_hd1352213626_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _body1352813629_)
                      (if (gx#stx-pair? _hd1352213626_)
                          (let ((_e1352513632_ (gx#syntax-e _hd1352213626_)))
                            (let ((_lp-hd1352613636_ (##car _e1352513632_))
                                  (_lp-tl1352713639_ (##cdr _e1352513632_)))
                              (_loop1352413622_
                               _lp-tl1352713639_
                               (cons _lp-hd1352613636_ _body1352813629_))))
                          (let ((_body1352913642_ (reverse _body1352813629_)))
                            ((lambda (_L13646_ _L13648_ _L13649_)
                               (if (gx#stx-andmap
                                    _let-head?13472_
                                    (begin
                                      '#!void
                                      (foldr (lambda (_g1367213675_
                                                      _g1367313678_)
                                               (cons _g1367213675_
                                                     _g1367313678_))
                                             '()
                                             _L13649_)))
                                   (let* ((_g1368113714_
                                           (lambda (_g1368213710_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1368213710_)))
                                          (_g1368013865_
                                           (lambda (_g1368213718_)
                                             (if (gx#stx-pair? _g1368213718_)
                                                 (let ((_e1368513721_
                                                        (gx#syntax-e
                                                         _g1368213718_)))
                                                   (let ((_hd1368613725_
                                                          (##car _e1368513721_))
                                                         (_tl1368713728_
                                                          (##cdr _e1368513721_)))
                                                     (if (gx#stx-pair/null?
                                                          _hd1368613725_)
                                                         (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd1368613725_)
                           '0)
                     (let ((_g34752_
                            (gx#syntax-split-splice _hd1368613725_ '0)))
                       (begin
                         (let ((_g34753_ (values-count _g34752_)))
                           (if (not (fx= _g34753_ 2))
                               (error "Context expects 2 values" _g34753_)))
                         (let ((_target1368813731_ (values-ref _g34752_ 0))
                               (_tl1369013734_ (values-ref _g34752_ 1)))
                           (if (gx#stx-null? _tl1369013734_)
                               (letrec ((_loop1369113737_
                                         (lambda (_hd1368913741_
                                                  _$e1369513744_)
                                           (if (gx#stx-pair? _hd1368913741_)
                                               (let ((_e1369213747_
                                                      (gx#syntax-e
                                                       _hd1368913741_)))
                                                 (let ((_lp-hd1369313751_
                                                        (##car _e1369213747_))
                                                       (_lp-tl1369413754_
                                                        (##cdr _e1369213747_)))
                                                   (_loop1369113737_
                                                    _lp-tl1369413754_
                                                    (cons _lp-hd1369313751_
                                                          _$e1369513744_))))
                                               (let ((_$e1369613757_
                                                      (reverse _$e1369513744_)))
                                                 (if (gx#stx-pair?
                                                      _tl1368713728_)
                                                     (let ((_e1369713761_
                                                            (gx#syntax-e
                                                             _tl1368713728_)))
                                                       (let ((_hd1369813765_
                                                              (##car _e1369713761_))
                                                             (_tl1369913768_
                                                              (##cdr _e1369713761_)))
                                                         (if (gx#stx-pair/null?
                                                              _hd1369813765_)
                                                             (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _hd1369813765_)
                               '0)
                         (let ((_g34754_
                                (gx#syntax-split-splice _hd1369813765_ '0)))
                           (begin
                             (let ((_g34755_ (values-count _g34754_)))
                               (if (not (fx= _g34755_ 2))
                                   (error "Context expects 2 values"
                                          _g34755_)))
                             (let ((_target1370013771_ (values-ref _g34754_ 0))
                                   (_tl1370213774_ (values-ref _g34754_ 1)))
                               (if (gx#stx-null? _tl1370213774_)
                                   (letrec ((_loop1370313777_
                                             (lambda (_hd1370113781_
                                                      _hd-bind1370713784_)
                                               (if (gx#stx-pair?
                                                    _hd1370113781_)
                                                   (let ((_e1370413787_
                                                          (gx#syntax-e
                                                           _hd1370113781_)))
                                                     (let ((_lp-hd1370513791_
                                                            (##car _e1370413787_))
                                                           (_lp-tl1370613794_
                                                            (##cdr _e1370413787_)))
                                                       (_loop1370313777_
                                                        _lp-tl1370613794_
                                                        (cons _lp-hd1370513791_
                                                              _hd-bind1370713784_))))
                                                   (let ((_hd-bind1370813797_
                                                          (reverse _hd-bind1370713784_)))
                                                     (if (gx#stx-null?
                                                          _tl1369913768_)
                                                         ((lambda (_L13801_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L13803_)
                    (let ()
                      (cons (gx#datum->syntax '#f 'let-values)
                            (cons (begin
                                    (gx#syntax-check-splice-targets
                                     _L13648_
                                     _L13803_)
                                    (foldr (lambda (_g1382613837_
                                                    _g1382713840_
                                                    _g1382813842_)
                                             (cons (cons (cons _g1382713840_
                                                               '())
                                                         (cons _g1382613837_
                                                               '()))
                                                   _g1382813842_))
                                           '()
                                           _L13648_
                                           _L13803_))
                                  (cons (cons (gx#datum->syntax '#f 'and)
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g1382913845_
                                                                _g1383013848_)
                                                         (cons _g1382913845_
                                                               _g1383013848_))
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'let-values)
                           (cons (begin
                                   (gx#syntax-check-splice-targets
                                    _L13803_
                                    _L13801_)
                                   (foldr (lambda (_g1383113851_
                                                   _g1383213854_
                                                   _g1383313856_)
                                            (cons (cons _g1383213854_
                                                        (cons _g1383113851_
                                                              '()))
                                                  _g1383313856_))
                                          '()
                                          _L13803_
                                          _L13801_))
                                 (begin
                                   '#!void
                                   (foldr (lambda (_g1383413859_ _g1383513862_)
                                            (cons _g1383413859_ _g1383513862_))
                                          '()
                                          _L13646_))))
                     '())
               _L13803_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                  _hd-bind1370813797_
                  _$e1369613757_)
                 (_g1368113714_ _g1368213718_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop1370313777_ _target1370013771_ '()))
                                   (_g1368113714_ _g1368213718_)))))
                         (_g1368113714_ _g1368213718_))
                     (_g1368113714_ _g1368213718_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1368113714_
                                                      _g1368213718_)))))))
                                 (_loop1369113737_ _target1368813731_ '()))
                               (_g1368113714_ _g1368213718_)))))
                     (_g1368113714_ _g1368213718_))
                 (_g1368113714_ _g1368213718_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1368113714_
                                                  _g1368213718_)))))
                                     (_g1368013865_
                                      (list (gx#gentemps
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g1386813871_
                                                               _g1386913874_)
                                                        (cons _g1386813871_
                                                              _g1386913874_))
                                                      '()
                                                      _L13649_)))
                                            (gx#stx-map
                                             _let-head13474_
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g1387613879_
                                                               _g1387713882_)
                                                        (cons _g1387613879_
                                                              _g1387713882_))
                                                      '()
                                                      _L13649_))))))
                                   (_g1347713535_ _g1347813539_)))
                             _body1352913642_
                             _e1351313610_
                             _hd1351413613_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1352413622_
                                                     _target1352113616_
                                                     '()))
                                                  (_g1347713535_
                                                   _g1347813539_)))))
                                        (_g1347713535_ _g1347813539_))
                                    (_g1347713535_ _g1347813539_)))))))
                (_loop1350713568_ _target1350413562_ '() '()))
              (_g1347713535_ _g1347813539_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1347713535_ _g1347813539_))
                                        (_g1347713535_ _g1347813539_))))
                                (_g1347713535_ _g1347813539_))))
                        (_g1347713535_ _g1347813539_))))
                 (_g1347513955_
                  (lambda (_g1347813889_)
                    (if (gx#stx-pair? _g1347813889_)
                        (let ((_e1348313892_ (gx#syntax-e _g1347813889_)))
                          (let ((_hd1348413896_ (##car _e1348313892_))
                                (_tl1348513899_ (##cdr _e1348313892_)))
                            (if (gx#stx-pair? _tl1348513899_)
                                (let ((_e1348613902_
                                       (gx#syntax-e _tl1348513899_)))
                                  (let ((_hd1348713906_ (##car _e1348613902_))
                                        (_tl1348813909_ (##cdr _e1348613902_)))
                                    (if (gx#stx-pair? _hd1348713906_)
                                        (let ((_e1348913912_
                                               (gx#syntax-e _hd1348713906_)))
                                          (let ((_hd1349013916_
                                                 (##car _e1348913912_))
                                                (_tl1349113919_
                                                 (##cdr _e1348913912_)))
                                            (if (gx#stx-pair? _tl1349113919_)
                                                (let ((_e1349213922_
                                                       (gx#syntax-e
                                                        _tl1349113919_)))
                                                  (let ((_hd1349313926_
                                                         (##car _e1349213922_))
                                                        (_tl1349413929_
                                                         (##cdr _e1349213922_)))
                                                    (if (gx#stx-null?
                                                         _tl1349413929_)
                                                        ((lambda (_L13932_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L13934_
                          _L13935_
                          _L13936_)
                   (if (_let-head?13472_ _L13935_)
                       (cons _L13936_
                             (cons (cons (cons _L13935_ (cons _L13934_ '()))
                                         '())
                                   _L13932_))
                       (_g1347613885_ _g1347813889_)))
                 _tl1348813909_
                 _hd1349313926_
                 _hd1349013916_
                 _hd1348413896_)
                (_g1347613885_ _g1347813889_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1347613885_
                                                 _g1347813889_))))
                                        (_g1347613885_ _g1347813889_))))
                                (_g1347613885_ _g1347813889_))))
                        (_g1347613885_ _g1347813889_)))))
            (_g1347513955_ _stx13469_)))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#alet*|
      (lambda (_$stx14083_)
        (let* ((_g1408814133_
                (lambda (_g1408914129_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1408914129_)))
               (_g1408714234_
                (lambda (_g1408914137_)
                  (if (gx#stx-pair? _g1408914137_)
                      (let ((_e1411014140_ (gx#syntax-e _g1408914137_)))
                        (let ((_hd1411114144_ (##car _e1411014140_))
                              (_tl1411214147_ (##cdr _e1411014140_)))
                          (if (gx#stx-pair? _tl1411214147_)
                              (let ((_e1411314150_
                                     (gx#syntax-e _tl1411214147_)))
                                (let ((_hd1411414154_ (##car _e1411314150_))
                                      (_tl1411514157_ (##cdr _e1411314150_)))
                                  (if (gx#stx-pair? _hd1411414154_)
                                      (let ((_e1411614160_
                                             (gx#syntax-e _hd1411414154_)))
                                        (let ((_hd1411714164_
                                               (##car _e1411614160_))
                                              (_tl1411814167_
                                               (##cdr _e1411614160_)))
                                          (if (gx#stx-pair/null?
                                               _tl1411514157_)
                                              (if (fx>= (gx#stx-length
                                                         _tl1411514157_)
                                                        '0)
                                                  (let ((_g34756_
                                                         (gx#syntax-split-splice
                                                          _tl1411514157_
                                                          '0)))
                                                    (begin
                                                      (let ((_g34757_
                                                             (values-count
                                                              _g34756_)))
                                                        (if (not (fx= _g34757_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g34757_)))
              (let ((_target1411914170_ (values-ref _g34756_ 0))
                    (_tl1412114173_ (values-ref _g34756_ 1)))
                (if (gx#stx-null? _tl1412114173_)
                    (letrec ((_loop1412214176_
                              (lambda (_hd1412014180_ _body1412614183_)
                                (if (gx#stx-pair? _hd1412014180_)
                                    (let ((_e1412314186_
                                           (gx#syntax-e _hd1412014180_)))
                                      (let ((_lp-hd1412414190_
                                             (##car _e1412314186_))
                                            (_lp-tl1412514193_
                                             (##cdr _e1412314186_)))
                                        (_loop1412214176_
                                         _lp-tl1412514193_
                                         (cons _lp-hd1412414190_
                                               _body1412614183_))))
                                    (let ((_body1412714196_
                                           (reverse _body1412614183_)))
                                      ((lambda (_L14200_
                                                _L14202_
                                                _L14203_
                                                _L14204_)
                                         (cons (gx#datum->syntax '#f 'alet)
                                               (cons (cons _L14203_ '())
                                                     (cons (cons _L14204_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L14202_
                               (begin
                                 '#!void
                                 (foldr (lambda (_g1422514228_ _g1422614231_)
                                          (cons _g1422514228_ _g1422614231_))
                                        '()
                                        _L14200_))))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _body1412714196_
                                       _tl1411814167_
                                       _hd1411714164_
                                       _hd1411114144_))))))
                      (_loop1412214176_ _target1411914170_ '()))
                    (_g1408814133_ _g1408914137_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1408814133_
                                                   _g1408914137_))
                                              (_g1408814133_ _g1408914137_))))
                                      (_g1408814133_ _g1408914137_))))
                              (_g1408814133_ _g1408914137_))))
                      (_g1408814133_ _g1408914137_))))
               (_g1408614316_
                (lambda (_g1408914238_)
                  (if (gx#stx-pair? _g1408914238_)
                      (let ((_e1409114241_ (gx#syntax-e _g1408914238_)))
                        (let ((_hd1409214245_ (##car _e1409114241_))
                              (_tl1409314248_ (##cdr _e1409114241_)))
                          (if (gx#stx-pair? _tl1409314248_)
                              (let ((_e1409414251_
                                     (gx#syntax-e _tl1409314248_)))
                                (let ((_hd1409514255_ (##car _e1409414251_))
                                      (_tl1409614258_ (##cdr _e1409414251_)))
                                  (if (gx#stx-null? _hd1409514255_)
                                      (if (gx#stx-pair/null? _tl1409614258_)
                                          (if (fx>= (gx#stx-length
                                                     _tl1409614258_)
                                                    '0)
                                              (let ((_g34758_
                                                     (gx#syntax-split-splice
                                                      _tl1409614258_
                                                      '0)))
                                                (begin
                                                  (let ((_g34759_
                                                         (values-count
                                                          _g34758_)))
                                                    (if (not (fx= _g34759_ 2))
                                                        (error "Context expects 2 values"
                                                               _g34759_)))
                                                  (let ((_target1409714261_
                                                         (values-ref
                                                          _g34758_
                                                          0))
                                                        (_tl1409914264_
                                                         (values-ref
                                                          _g34758_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl1409914264_)
                                                        (letrec ((_loop1410014267_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd1409814271_ _body1410414274_)
                            (if (gx#stx-pair? _hd1409814271_)
                                (let ((_e1410114277_
                                       (gx#syntax-e _hd1409814271_)))
                                  (let ((_lp-hd1410214281_
                                         (##car _e1410114277_))
                                        (_lp-tl1410314284_
                                         (##cdr _e1410114277_)))
                                    (_loop1410014267_
                                     _lp-tl1410314284_
                                     (cons _lp-hd1410214281_
                                           _body1410414274_))))
                                (let ((_body1410514287_
                                       (reverse _body1410414274_)))
                                  ((lambda (_L14291_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons '()
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g1430714310_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1430814313_)
                    (cons _g1430714310_ _g1430814313_))
                  '()
                  _L14291_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _body1410514287_))))))
                  (_loop1410014267_ _target1409714261_ '()))
                (_g1408714234_ _g1408914238_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1408714234_ _g1408914238_))
                                          (_g1408714234_ _g1408914238_))
                                      (_g1408714234_ _g1408914238_))))
                              (_g1408714234_ _g1408914238_))))
                      (_g1408714234_ _g1408914238_)))))
          (_g1408614316_ _$stx14083_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#@list|
      (lambda (_$stx14322_)
        (let* ((_g1433114388_
                (lambda (_g1433214384_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1433214384_)))
               (_g1433014417_
                (lambda (_g1433214392_)
                  (if (gx#stx-pair? _g1433214392_)
                      (let ((_e1438014395_ (gx#syntax-e _g1433214392_)))
                        (let ((_hd1438114399_ (##car _e1438014395_))
                              (_tl1438214402_ (##cdr _e1438014395_)))
                          ((lambda (_L14405_) _L14405_) _tl1438214402_)))
                      (_g1433114388_ _g1433214392_))))
               (_g1432914461_
                (lambda (_g1433214421_)
                  (if (gx#stx-pair? _g1433214421_)
                      (let ((_e1437314424_ (gx#syntax-e _g1433214421_)))
                        (let ((_hd1437414428_ (##car _e1437314424_))
                              (_tl1437514431_ (##cdr _e1437314424_)))
                          (if (gx#stx-pair? _tl1437514431_)
                              (let ((_e1437614434_
                                     (gx#syntax-e _tl1437514431_)))
                                (let ((_hd1437714438_ (##car _e1437614434_))
                                      (_tl1437814441_ (##cdr _e1437614434_)))
                                  ((lambda (_L14444_ _L14446_ _L14447_)
                                     (cons (gx#datum->syntax '#f 'cons)
                                           (cons _L14446_
                                                 (cons (cons _L14447_ _L14444_)
                                                       '()))))
                                   _tl1437814441_
                                   _hd1437714438_
                                   _hd1437414428_)))
                              (_g1433014417_ _g1433214421_))))
                      (_g1433014417_ _g1433214421_))))
               (_g1432814519_
                (lambda (_g1433214465_)
                  (if (gx#stx-pair? _g1433214465_)
                      (let ((_e1436114468_ (gx#syntax-e _g1433214465_)))
                        (let ((_hd1436214472_ (##car _e1436114468_))
                              (_tl1436314475_ (##cdr _e1436114468_)))
                          (if (gx#stx-pair? _tl1436314475_)
                              (let ((_e1436414478_
                                     (gx#syntax-e _tl1436314475_)))
                                (let ((_hd1436514482_ (##car _e1436414478_))
                                      (_tl1436614485_ (##cdr _e1436414478_)))
                                  (if (gx#stx-pair? _tl1436614485_)
                                      (let ((_e1436714488_
                                             (gx#syntax-e _tl1436614485_)))
                                        (let ((_hd1436814492_
                                               (##car _e1436714488_))
                                              (_tl1436914495_
                                               (##cdr _e1436714488_)))
                                          ((lambda (_L14498_
                                                    _L14500_
                                                    _L14501_
                                                    _L14502_)
                                             (if (gx#ellipsis? _L14500_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'foldr)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'cons)
                                                             (cons (cons _L14502_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L14498_)
                           (cons _L14501_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1432914461_
                                                  _g1433214465_)))
                                           _tl1436914495_
                                           _hd1436814492_
                                           _hd1436514482_
                                           _hd1436214472_)))
                                      (_g1432914461_ _g1433214465_))))
                              (_g1432914461_ _g1433214465_))))
                      (_g1432914461_ _g1433214465_))))
               (_g1432714573_
                (lambda (_g1433214523_)
                  (if (gx#stx-pair? _g1433214523_)
                      (let ((_e1434814526_ (gx#syntax-e _g1433214523_)))
                        (let ((_hd1434914530_ (##car _e1434814526_))
                              (_tl1435014533_ (##cdr _e1434814526_)))
                          (if (gx#stx-pair? _tl1435014533_)
                              (let ((_e1435114536_
                                     (gx#syntax-e _tl1435014533_)))
                                (let ((_hd1435214540_ (##car _e1435114536_))
                                      (_tl1435314543_ (##cdr _e1435114536_)))
                                  (if (gx#stx-pair? _tl1435314543_)
                                      (let ((_e1435414546_
                                             (gx#syntax-e _tl1435314543_)))
                                        (let ((_hd1435514550_
                                               (##car _e1435414546_))
                                              (_tl1435614553_
                                               (##cdr _e1435414546_)))
                                          (if (gx#stx-null? _tl1435614553_)
                                              ((lambda (_L14556_ _L14558_)
                                                 (if (gx#ellipsis? _L14556_)
                                                     _L14558_
                                                     (_g1432814519_
                                                      _g1433214523_)))
                                               _hd1435514550_
                                               _hd1435214540_)
                                              (_g1432814519_ _g1433214523_))))
                                      (_g1432814519_ _g1433214523_))))
                              (_g1432814519_ _g1433214523_))))
                      (_g1432814519_ _g1433214523_))))
               (_g1432614625_
                (lambda (_g1433214577_)
                  (if (gx#stx-pair? _g1433214577_)
                      (let ((_e1433714580_ (gx#syntax-e _g1433214577_)))
                        (let ((_hd1433814584_ (##car _e1433714580_))
                              (_tl1433914587_ (##cdr _e1433714580_)))
                          (if (gx#stx-pair? _tl1433914587_)
                              (let ((_e1434014590_
                                     (gx#syntax-e _tl1433914587_)))
                                (let ((_hd1434114594_ (##car _e1434014590_))
                                      (_tl1434214597_ (##cdr _e1434014590_)))
                                  (if (gx#stx-datum? _hd1434114594_)
                                      (if (equal? (gx#stx-e _hd1434114594_)
                                                  '::)
                                          (if (gx#stx-pair? _tl1434214597_)
                                              (let ((_e1434314600_
                                                     (gx#syntax-e
                                                      _tl1434214597_)))
                                                (let ((_hd1434414604_
                                                       (##car _e1434314600_))
                                                      (_tl1434514607_
                                                       (##cdr _e1434314600_)))
                                                  (if (gx#stx-null?
                                                       _tl1434514607_)
                                                      ((lambda (_L14610_)
                                                         _L14610_)
                                                       _hd1434414604_)
                                                      (_g1432714573_
                                                       _g1433214577_))))
                                              (_g1432714573_ _g1433214577_))
                                          (_g1432714573_ _g1433214577_))
                                      (_g1432714573_ _g1433214577_))))
                              (_g1432714573_ _g1433214577_))))
                      (_g1432714573_ _g1433214577_))))
               (_g1432514646_
                (lambda (_g1433214629_)
                  (if (gx#stx-pair? _g1433214629_)
                      (let ((_e1433314632_ (gx#syntax-e _g1433214629_)))
                        (let ((_hd1433414636_ (##car _e1433314632_))
                              (_tl1433514639_ (##cdr _e1433314632_)))
                          (if (gx#stx-null? _tl1433514639_)
                              ((lambda ()
                                 (cons (gx#datum->syntax '#f 'quote)
                                       (cons '() '()))))
                              (_g1432614625_ _g1433214629_))))
                      (_g1432614625_ _g1433214629_)))))
          (_g1432514646_ _$stx14322_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#quasiquote|
      (lambda (_stx14650_)
        (letrec ((_simple-quote?14653_
                  (lambda (_e15345_)
                    (let* ((_g1535315390_
                            (lambda (_g1535415386_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1535415386_)))
                           (_g1535215401_
                            (lambda (_g1535415394_) ((lambda () '#t))))
                           (_g1535115424_
                            (lambda (_g1535415405_)
                              (if (gx#stx-box? _g1535415405_)
                                  (let ((_e1538415408_
                                         (unbox (gx#syntax-e _g1535415405_))))
                                    ((lambda (_L15412_)
                                       (_simple-quote?14653_ _L15412_))
                                     _e1538415408_))
                                  (_g1535215401_ _g1535415405_))))
                           (_g1535015487_
                            (lambda (_g1535415428_)
                              (if (gx#stx-vector? _g1535415428_)
                                  (let ((_e1537315431_
                                         (vector->list
                                          (gx#syntax-e _g1535415428_))))
                                    (if (gx#stx-pair/null? _e1537315431_)
                                        (if (fx>= (gx#stx-length _e1537315431_)
                                                  '0)
                                            (let ((_g34760_
                                                   (gx#syntax-split-splice
                                                    _e1537315431_
                                                    '0)))
                                              (begin
                                                (let ((_g34761_
                                                       (values-count
                                                        _g34760_)))
                                                  (if (not (fx= _g34761_ 2))
                                                      (error "Context expects 2 values"
                                                             _g34761_)))
                                                (let ((_target1537415435_
                                                       (values-ref _g34760_ 0))
                                                      (_tl1537615438_
                                                       (values-ref
                                                        _g34760_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl1537615438_)
                                                      (letrec ((_loop1537715441_
                                                                (lambda (_hd1537515445_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _e1538115448_)
                          (if (gx#stx-pair? _hd1537515445_)
                              (let ((_e1537815451_
                                     (gx#syntax-e _hd1537515445_)))
                                (let ((_lp-hd1537915455_ (##car _e1537815451_))
                                      (_lp-tl1538015458_
                                       (##cdr _e1537815451_)))
                                  (_loop1537715441_
                                   _lp-tl1538015458_
                                   (cons _lp-hd1537915455_ _e1538115448_))))
                              (let ((_e1538215461_ (reverse _e1538115448_)))
                                ((lambda (_L15465_)
                                   (_simple-quote?14653_
                                    (begin
                                      '#!void
                                      (foldr (lambda (_g1547815481_
                                                      _g1547915484_)
                                               (cons _g1547815481_
                                                     _g1547915484_))
                                             '()
                                             _L15465_))))
                                 _e1538215461_))))))
                (_loop1537715441_ _target1537415435_ '()))
              (_g1535115424_ _g1535415428_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1535115424_ _g1535415428_))
                                        (_g1535115424_ _g1535415428_)))
                                  (_g1535115424_ _g1535415428_))))
                           (_g1534915517_
                            (lambda (_g1535415491_)
                              (if (gx#stx-pair? _g1535415491_)
                                  (let ((_e1536915494_
                                         (gx#syntax-e _g1535415491_)))
                                    (let ((_hd1537015498_
                                           (##car _e1536915494_))
                                          (_tl1537115501_
                                           (##cdr _e1536915494_)))
                                      ((lambda (_L15504_ _L15506_)
                                         (if (_simple-quote?14653_ _L15506_)
                                             (_simple-quote?14653_ _L15504_)
                                             '#f))
                                       _tl1537115501_
                                       _hd1537015498_)))
                                  (_g1535015487_ _g1535415491_))))
                           (_g1534815548_
                            (lambda (_g1535415521_)
                              (if (gx#stx-pair? _g1535415521_)
                                  (let ((_e1536115524_
                                         (gx#syntax-e _g1535415521_)))
                                    (let ((_hd1536215528_
                                           (##car _e1536115524_))
                                          (_tl1536315531_
                                           (##cdr _e1536115524_)))
                                      (if (gx#identifier? _hd1536215528_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<sugar>$<sugar:2>[1]#_g34762_|
                                               _hd1536215528_)
                                              (if (gx#stx-pair? _tl1536315531_)
                                                  (let ((_e1536415534_
                                                         (gx#syntax-e
                                                          _tl1536315531_)))
                                                    (let ((_hd1536515538_
                                                           (##car _e1536415534_))
                                                          (_tl1536615541_
                                                           (##cdr _e1536415534_)))
                                                      (if (gx#stx-null?
                                                           _tl1536615541_)
                                                          ((lambda () '#f))
                                                          (_g1534915517_
                                                           _g1535415521_))))
                                                  (_g1534915517_
                                                   _g1535415521_))
                                              (_g1534915517_ _g1535415521_))
                                          (_g1534915517_ _g1535415521_))))
                                  (_g1534915517_ _g1535415521_))))
                           (_g1534715579_
                            (lambda (_g1535415552_)
                              (if (gx#stx-pair? _g1535415552_)
                                  (let ((_e1535515555_
                                         (gx#syntax-e _g1535415552_)))
                                    (let ((_hd1535615559_
                                           (##car _e1535515555_))
                                          (_tl1535715562_
                                           (##cdr _e1535515555_)))
                                      (if (gx#identifier? _hd1535615559_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<sugar>$<sugar:2>[1]#_g34763_|
                                               _hd1535615559_)
                                              (if (gx#stx-pair? _tl1535715562_)
                                                  (let ((_e1535815565_
                                                         (gx#syntax-e
                                                          _tl1535715562_)))
                                                    (let ((_hd1535915569_
                                                           (##car _e1535815565_))
                                                          (_tl1536015572_
                                                           (##cdr _e1535815565_)))
                                                      (if (gx#stx-null?
                                                           _tl1536015572_)
                                                          ((lambda () '#f))
                                                          (_g1534815548_
                                                           _g1535415552_))))
                                                  (_g1534815548_
                                                   _g1535415552_))
                                              (_g1534815548_ _g1535415552_))
                                          (_g1534815548_ _g1535415552_))))
                                  (_g1534815548_ _g1535415552_)))))
                      (_g1534715579_ _e15345_))))
                 (_generate14655_
                  (lambda (_e14717_ _d14719_)
                    (let* ((_g1472814786_
                            (lambda (_g1472914782_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1472914782_)))
                           (_g1472714803_
                            (lambda (_g1472914790_)
                              ((lambda (_L14793_)
                                 (cons (gx#datum->syntax '#f 'quote)
                                       (cons _L14793_ '())))
                               _g1472914790_)))
                           (_g1472614855_
                            (lambda (_g1472914807_)
                              (if (gx#stx-box? _g1472914807_)
                                  (let ((_e1477914810_
                                         (unbox (gx#syntax-e _g1472914807_))))
                                    ((lambda (_L14814_)
                                       (let* ((_g1482414832_
                                               (lambda (_g1482514828_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1482514828_)))
                                              (_g1482314851_
                                               (lambda (_g1482514836_)
                                                 ((lambda (_L14839_)
                                                    (let ()
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'box)
                                                            (cons _L14839_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g1482514836_))))
                                         (_g1482314851_
                                          (_generate14655_
                                           _L14814_
                                           _d14719_))))
                                     _e1477914810_))
                                  (_g1472714803_ _g1472914807_))))
                           (_g1472514949_
                            (lambda (_g1472914859_)
                              (if (gx#stx-vector? _g1472914859_)
                                  (let ((_e1476814862_
                                         (vector->list
                                          (gx#syntax-e _g1472914859_))))
                                    (if (gx#stx-pair/null? _e1476814862_)
                                        (if (fx>= (gx#stx-length _e1476814862_)
                                                  '0)
                                            (let ((_g34764_
                                                   (gx#syntax-split-splice
                                                    _e1476814862_
                                                    '0)))
                                              (begin
                                                (let ((_g34765_
                                                       (values-count
                                                        _g34764_)))
                                                  (if (not (fx= _g34765_ 2))
                                                      (error "Context expects 2 values"
                                                             _g34765_)))
                                                (let ((_target1476914866_
                                                       (values-ref _g34764_ 0))
                                                      (_tl1477114869_
                                                       (values-ref
                                                        _g34764_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl1477114869_)
                                                      (letrec ((_loop1477214872_
                                                                (lambda (_hd1477014876_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _e1477614879_)
                          (if (gx#stx-pair? _hd1477014876_)
                              (let ((_e1477314882_
                                     (gx#syntax-e _hd1477014876_)))
                                (let ((_lp-hd1477414886_ (##car _e1477314882_))
                                      (_lp-tl1477514889_
                                       (##cdr _e1477314882_)))
                                  (_loop1477214872_
                                   _lp-tl1477514889_
                                   (cons _lp-hd1477414886_ _e1477614879_))))
                              (let ((_e1477714892_ (reverse _e1477614879_)))
                                ((lambda (_L14896_)
                                   (let* ((_g1491014918_
                                           (lambda (_g1491114914_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1491114914_)))
                                          (_g1490914937_
                                           (lambda (_g1491114922_)
                                             ((lambda (_L14925_)
                                                (let ()
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'list->vector)
                                                        (cons _L14925_ '()))))
                                              _g1491114922_))))
                                     (_g1490914937_
                                      (_generate14655_
                                       (begin
                                         '#!void
                                         (foldr (lambda (_g1494014943_
                                                         _g1494114946_)
                                                  (cons _g1494014943_
                                                        _g1494114946_))
                                                '()
                                                _L14896_))
                                       _d14719_))))
                                 _e1477714892_))))))
                (_loop1477214872_ _target1476914866_ '()))
              (_g1472614855_ _g1472914859_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1472614855_ _g1472914859_))
                                        (_g1472614855_ _g1472914859_)))
                                  (_g1472614855_ _g1472914859_))))
                           (_g1472415043_
                            (lambda (_g1472914953_)
                              (if (gx#stx-pair? _g1472914953_)
                                  (let ((_e1476414956_
                                         (gx#syntax-e _g1472914953_)))
                                    (let ((_hd1476514960_
                                           (##car _e1476414956_))
                                          (_tl1476614963_
                                           (##cdr _e1476414956_)))
                                      ((lambda (_L14966_ _L14968_)
                                         (let* ((_g1497914994_
                                                 (lambda (_g1498014990_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1498014990_)))
                                                (_g1497815039_
                                                 (lambda (_g1498014998_)
                                                   (if (gx#stx-pair?
                                                        _g1498014998_)
                                                       (let ((_e1498315001_
                                                              (gx#syntax-e
                                                               _g1498014998_)))
                                                         (let ((_hd1498415005_
                                                                (##car _e1498315001_))
                                                               (_tl1498515008_
                                                                (##cdr _e1498315001_)))
                                                           (if (gx#stx-pair?
                                                                _tl1498515008_)
                                                               (let ((_e1498615011_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl1498515008_)))
                         (let ((_hd1498715015_ (##car _e1498615011_))
                               (_tl1498815018_ (##cdr _e1498615011_)))
                           (if (gx#stx-null? _tl1498815018_)
                               ((lambda (_L15021_ _L15023_)
                                  (let ()
                                    (cons (gx#datum->syntax '#f 'cons)
                                          (cons _L15023_
                                                (cons _L15021_ '())))))
                                _hd1498715015_
                                _hd1498415005_)
                               (_g1497914994_ _g1498014998_))))
                       (_g1497914994_ _g1498014998_))))
               (_g1497914994_ _g1498014998_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g1497815039_
                                            (list (_generate14655_
                                                   _L14968_
                                                   _d14719_)
                                                  (_generate14655_
                                                   _L14966_
                                                   _d14719_)))))
                                       _tl1476614963_
                                       _hd1476514960_)))
                                  (_g1472514949_ _g1472914953_))))
                           (_g1472315128_
                            (lambda (_g1472915047_)
                              (if (gx#stx-pair? _g1472915047_)
                                  (let ((_e1475315050_
                                         (gx#syntax-e _g1472915047_)))
                                    (let ((_hd1475415054_
                                           (##car _e1475315050_))
                                          (_tl1475515057_
                                           (##cdr _e1475315050_)))
                                      (if (gx#stx-pair? _hd1475415054_)
                                          (let ((_e1475615060_
                                                 (gx#syntax-e _hd1475415054_)))
                                            (let ((_hd1475715064_
                                                   (##car _e1475615060_))
                                                  (_tl1475815067_
                                                   (##cdr _e1475615060_)))
                                              (if (gx#identifier?
                                                   _hd1475715064_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<sugar>$<sugar:2>[1]#_g34766_|
                                                       _hd1475715064_)
                                                      (if (gx#stx-pair?
                                                           _tl1475815067_)
                                                          (let ((_e1475915070_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1475815067_)))
                    (let ((_hd1476015074_ (##car _e1475915070_))
                          (_tl1476115077_ (##cdr _e1475915070_)))
                      (if (gx#stx-null? _tl1476115077_)
                          ((lambda (_L15080_ _L15082_)
                             (if (fxzero? _d14719_)
                                 (let* ((_g1509715105_
                                         (lambda (_g1509815101_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g1509815101_)))
                                        (_g1509615124_
                                         (lambda (_g1509815109_)
                                           ((lambda (_L15112_)
                                              (let ()
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'foldr)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'cons)
                                                            (cons _L15112_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L15082_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g1509815109_))))
                                   (_g1509615124_
                                    (_generate14655_ _L15080_ _d14719_)))
                                 (_g1472415043_ _g1472915047_)))
                           _tl1475515057_
                           _hd1476015074_)
                          (_g1472415043_ _g1472915047_))))
                  (_g1472415043_ _g1472915047_))
              (_g1472415043_ _g1472915047_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1472415043_
                                                   _g1472915047_))))
                                          (_g1472415043_ _g1472915047_))))
                                  (_g1472415043_ _g1472915047_))))
                           (_g1472215199_
                            (lambda (_g1472915132_)
                              (if (gx#stx-pair? _g1472915132_)
                                  (let ((_e1474515135_
                                         (gx#syntax-e _g1472915132_)))
                                    (let ((_hd1474615139_
                                           (##car _e1474515135_))
                                          (_tl1474715142_
                                           (##cdr _e1474515135_)))
                                      (if (gx#identifier? _hd1474615139_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<sugar>$<sugar:2>[1]#_g34767_|
                                               _hd1474615139_)
                                              (if (gx#stx-pair? _tl1474715142_)
                                                  (let ((_e1474815145_
                                                         (gx#syntax-e
                                                          _tl1474715142_)))
                                                    (let ((_hd1474915149_
                                                           (##car _e1474815145_))
                                                          (_tl1475015152_
                                                           (##cdr _e1474815145_)))
                                                      (if (gx#stx-null?
                                                           _tl1475015152_)
                                                          ((lambda (_L15155_)
                                                             (if (fxzero? _d14719_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'foldr)
                               (cons (gx#datum->syntax '#f 'cons)
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons '() '()))
                                           (cons _L15155_ '()))))
                         (let* ((_g1516815176_
                                 (lambda (_g1516915172_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1516915172_)))
                                (_g1516715195_
                                 (lambda (_g1516915180_)
                                   ((lambda (_L15183_)
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
                                                    (cons _L15183_ '())))))
                                    _g1516915180_))))
                           (_g1516715195_
                            (_generate14655_ _L15155_ (fx1- _d14719_))))))
                   _hd1474915149_)
                  (_g1472315128_ _g1472915132_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1472315128_
                                                   _g1472915132_))
                                              (_g1472315128_ _g1472915132_))
                                          (_g1472315128_ _g1472915132_))))
                                  (_g1472315128_ _g1472915132_))))
                           (_g1472115270_
                            (lambda (_g1472915203_)
                              (if (gx#stx-pair? _g1472915203_)
                                  (let ((_e1473815206_
                                         (gx#syntax-e _g1472915203_)))
                                    (let ((_hd1473915210_
                                           (##car _e1473815206_))
                                          (_tl1474015213_
                                           (##cdr _e1473815206_)))
                                      (if (gx#identifier? _hd1473915210_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<sugar>$<sugar:2>[1]#_g34768_|
                                               _hd1473915210_)
                                              (if (gx#stx-pair? _tl1474015213_)
                                                  (let ((_e1474115216_
                                                         (gx#syntax-e
                                                          _tl1474015213_)))
                                                    (let ((_hd1474215220_
                                                           (##car _e1474115216_))
                                                          (_tl1474315223_
                                                           (##cdr _e1474115216_)))
                                                      (if (gx#stx-null?
                                                           _tl1474315223_)
                                                          ((lambda (_L15226_)
                                                             (if (fxzero? _d14719_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L15226_
                         (let* ((_g1523915247_
                                 (lambda (_g1524015243_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1524015243_)))
                                (_g1523815266_
                                 (lambda (_g1524015251_)
                                   ((lambda (_L15254_)
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
                                                    (cons _L15254_ '())))))
                                    _g1524015251_))))
                           (_g1523815266_
                            (_generate14655_ _L15226_ (fx1- _d14719_))))))
                   _hd1474215220_)
                  (_g1472215199_ _g1472915203_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1472215199_
                                                   _g1472915203_))
                                              (_g1472215199_ _g1472915203_))
                                          (_g1472215199_ _g1472915203_))))
                                  (_g1472215199_ _g1472915203_))))
                           (_g1472015341_
                            (lambda (_g1472915274_)
                              (if (gx#stx-pair? _g1472915274_)
                                  (let ((_e1473115277_
                                         (gx#syntax-e _g1472915274_)))
                                    (let ((_hd1473215281_
                                           (##car _e1473115277_))
                                          (_tl1473315284_
                                           (##cdr _e1473115277_)))
                                      (if (gx#identifier? _hd1473215281_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<sugar>$<sugar:2>[1]#_g34769_|
                                               _hd1473215281_)
                                              (if (gx#stx-pair? _tl1473315284_)
                                                  (let ((_e1473415287_
                                                         (gx#syntax-e
                                                          _tl1473315284_)))
                                                    (let ((_hd1473515291_
                                                           (##car _e1473415287_))
                                                          (_tl1473615294_
                                                           (##cdr _e1473415287_)))
                                                      (if (gx#stx-null?
                                                           _tl1473615294_)
                                                          ((lambda (_L15297_)
                                                             (let* ((_g1531015318_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1531115314_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g1531115314_)))
                            (_g1530915337_
                             (lambda (_g1531115322_)
                               ((lambda (_L15325_)
                                  (let ()
                                    (cons (gx#datum->syntax '#f 'list)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'quote)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'quasiquote)
                                                            '()))
                                                (cons _L15325_ '())))))
                                _g1531115322_))))
                       (_g1530915337_
                        (_generate14655_ _L15297_ (fx1+ _d14719_)))))
                   _hd1473515291_)
                  (_g1472115270_ _g1472915274_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1472115270_
                                                   _g1472915274_))
                                              (_g1472115270_ _g1472915274_))
                                          (_g1472115270_ _g1472915274_))))
                                  (_g1472115270_ _g1472915274_)))))
                      (_g1472015341_ _e14717_)))))
          (let* ((_g1465714671_
                  (lambda (_g1465814667_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1465814667_)))
                 (_g1465614713_
                  (lambda (_g1465814675_)
                    (if (gx#stx-pair? _g1465814675_)
                        (let ((_e1466014678_ (gx#syntax-e _g1465814675_)))
                          (let ((_hd1466114682_ (##car _e1466014678_))
                                (_tl1466214685_ (##cdr _e1466014678_)))
                            (if (gx#stx-pair? _tl1466214685_)
                                (let ((_e1466314688_
                                       (gx#syntax-e _tl1466214685_)))
                                  (let ((_hd1466414692_ (##car _e1466314688_))
                                        (_tl1466514695_ (##cdr _e1466314688_)))
                                    (if (gx#stx-null? _tl1466514695_)
                                        ((lambda (_L14698_)
                                           (if (_simple-quote?14653_ _L14698_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _L14698_ '()))
                                               (_generate14655_ _L14698_ '0)))
                                         _hd1466414692_)
                                        (_g1465714671_ _g1465814675_))))
                                (_g1465714671_ _g1465814675_))))
                        (_g1465714671_ _g1465814675_)))))
            (_g1465614713_ _stx14650_)))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#delay|
      (lambda (_$stx15585_)
        (let* ((_g1559015611_
                (lambda (_g1559115607_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1559115607_)))
               (_g1558915652_
                (lambda (_g1559115615_)
                  (if (gx#stx-pair? _g1559115615_)
                      (let ((_e1560015618_ (gx#syntax-e _g1559115615_)))
                        (let ((_hd1560115622_ (##car _e1560015618_))
                              (_tl1560215625_ (##cdr _e1560015618_)))
                          (if (gx#stx-pair? _tl1560215625_)
                              (let ((_e1560315628_
                                     (gx#syntax-e _tl1560215625_)))
                                (let ((_hd1560415632_ (##car _e1560315628_))
                                      (_tl1560515635_ (##cdr _e1560315628_)))
                                  (if (gx#stx-null? _tl1560515635_)
                                      ((lambda (_L15638_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                'make-promise)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'lambda%)
                                                           (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L15638_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _hd1560415632_)
                                      (_g1559015611_ _g1559115615_))))
                              (_g1559015611_ _g1559115615_))))
                      (_g1559015611_ _g1559115615_))))
               (_g1558815692_
                (lambda (_g1559115656_)
                  (if (gx#stx-pair? _g1559115656_)
                      (let ((_e1559315659_ (gx#syntax-e _g1559115656_)))
                        (let ((_hd1559415663_ (##car _e1559315659_))
                              (_tl1559515666_ (##cdr _e1559315659_)))
                          (if (gx#stx-pair? _tl1559515666_)
                              (let ((_e1559615669_
                                     (gx#syntax-e _tl1559515666_)))
                                (let ((_hd1559715673_ (##car _e1559615669_))
                                      (_tl1559815676_ (##cdr _e1559615669_)))
                                  (if (gx#stx-null? _tl1559815676_)
                                      ((lambda (_L15679_)
                                         (if (gx#stx-datum? _L15679_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _L15679_ '()))
                                             (_g1558915652_ _g1559115656_)))
                                       _hd1559715673_)
                                      (_g1558915652_ _g1559115656_))))
                              (_g1558915652_ _g1559115656_))))
                      (_g1558915652_ _g1559115656_)))))
          (_g1558815692_ _$stx15585_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#cut|
      (lambda (_stx15696_)
        (letrec ((_generate15699_
                  (lambda (_rest15818_)
                    (let _lp15821_ ((_rest15824_ _rest15818_)
                                    (_hd15826_ '())
                                    (_body15827_ '()))
                      (let* ((_g1583015842_
                              (lambda (_g1583115838_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1583115838_)))
                             (_g1582915853_
                              (lambda (_g1583115846_)
                                ((lambda ()
                                   (values (reverse _hd15826_)
                                           (reverse _body15827_)
                                           '#f)))))
                             (_g1582815939_
                              (lambda (_g1583115857_)
                                (if (gx#stx-pair? _g1583115857_)
                                    (let ((_e1583415860_
                                           (gx#syntax-e _g1583115857_)))
                                      (let ((_hd1583515864_
                                             (##car _e1583415860_))
                                            (_tl1583615867_
                                             (##cdr _e1583415860_)))
                                        ((lambda (_L15870_ _L15872_)
                                           (let* ((_g1588915896_
                                                   (lambda (_g1589015892_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g1589015892_)))
                                                  (_g1588815907_
                                                   (lambda (_g1589015900_)
                                                     ((lambda ()
                                                        (_lp15821_
                                                         _L15870_
                                                         _hd15826_
                                                         (cons _L15872_
                                                               _body15827_))))))
                                                  (_g1588715921_
                                                   (lambda (_g1589015911_)
                                                     (if (gx#identifier?
                                                          _g1589015911_)
                                                         (if (gx#free-identifier=?
                                                              |gerbil/core$<sugar>$<sugar:2>[1]#_g34770_|
                                                              _g1589015911_)
                                                             ((lambda ()
                                                                (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L15870_)
                            (let ((_tail15918_ (gx#genident)))
                              (values (foldl cons _tail15918_ _hd15826_)
                                      (foldl cons
                                             (list _tail15918_)
                                             _body15827_)
                                      '#t))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _stx15696_
                             _L15872_))))
                     (_g1588815907_ _g1589015911_))
                 (_g1588815907_ _g1589015911_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1588615935_
                                                   (lambda (_g1589015925_)
                                                     (if (gx#identifier?
                                                          _g1589015925_)
                                                         (if (gx#free-identifier=?
                                                              |gerbil/core$<sugar>$<sugar:2>[1]#_g34771_|
                                                              _g1589015925_)
                                                             ((lambda ()
                                                                (let ((_arg15932_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#genident)))
                          (_lp15821_
                           _L15870_
                           (cons _arg15932_ _hd15826_)
                           (cons _arg15932_ _body15827_)))))
                     (_g1588715921_ _g1589015925_))
                 (_g1588715921_ _g1589015925_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1588615935_ _L15872_)))
                                         _tl1583615867_
                                         _hd1583515864_)))
                                    (_g1582915853_ _g1583115857_)))))
                        (_g1582815939_ _rest15824_))))))
          (let* ((_g1570215713_
                  (lambda (_g1570315709_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1570315709_)))
                 (_g1570115814_
                  (lambda (_g1570315717_)
                    (if (gx#stx-pair? _g1570315717_)
                        (let ((_e1570515720_ (gx#syntax-e _g1570315717_)))
                          (let ((_hd1570615724_ (##car _e1570515720_))
                                (_tl1570715727_ (##cdr _e1570515720_)))
                            ((lambda (_L15730_)
                               (if (if (gx#stx-list? _L15730_)
                                       (not (gx#stx-null? _L15730_))
                                       '#f)
                                   (let ((_g34772_ (_generate15699_ _L15730_)))
                                     (begin
                                       (let ((_g34773_
                                              (values-count _g34772_)))
                                         (if (not (fx= _g34773_ 3))
                                             (error "Context expects 3 values"
                                                    _g34773_)))
                                       (let ((_hd15743_
                                              (values-ref _g34772_ 0))
                                             (_body15745_
                                              (values-ref _g34772_ 1))
                                             (_tail?15746_
                                              (values-ref _g34772_ 2)))
                                         (let* ((_g1574815756_
                                                 (lambda (_g1574915752_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1574915752_)))
                                                (_g1574715810_
                                                 (lambda (_g1574915760_)
                                                   ((lambda (_L15763_)
                                                      (let ()
                                                        (let* ((_g1577615784_
                                                                (lambda (_g1577715780_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1577715780_)))
                       (_g1577515806_
                        (lambda (_g1577715788_)
                          ((lambda (_L15791_)
                             (let ()
                               (let ()
                                 (if _tail?15746_
                                     (cons (gx#datum->syntax '#f 'lambda%)
                                           (cons _L15763_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'apply)
                                                             _L15791_)
                                                       '())))
                                     (cons (gx#datum->syntax '#f 'lambda%)
                                           (cons _L15763_
                                                 (cons _L15791_ '())))))))
                           _g1577715788_))))
                  (_g1577515806_ _body15745_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1574915760_))))
                                           (_g1574715810_ _hd15743_)))))
                                   (_g1570215713_ _g1570315717_)))
                             _tl1570715727_)))
                        (_g1570215713_ _g1570315717_)))))
            (_g1570115814_ _stx15696_)))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#<>|
      (lambda (_$stx15944_)
        (let ((_g1594715954_
               (lambda (_g1594815950_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1594815950_))))
          (_g1594715954_ _$stx15944_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#<...>|
      (lambda (_$stx15958_)
        (let ((_g1596115968_
               (lambda (_g1596215964_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1596215964_))))
          (_g1596115968_ _$stx15958_))))))
