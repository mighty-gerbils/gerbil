(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g35459_|
    (gx#make-syntax-quote '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g35460_|
    (gx#make-syntax-quote 'else #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g35508_|
    (gx#make-syntax-quote 'values #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g35509_|
    (gx#make-syntax-quote 'values #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g35510_|
    (gx#make-syntax-quote 'values #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g35525_|
    (gx#make-syntax-quote
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g35526_|
    (gx#make-syntax-quote 'unquote #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g35529_|
    (gx#make-syntax-quote
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g35530_|
    (gx#make-syntax-quote
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g35531_|
    (gx#make-syntax-quote 'unquote #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g35532_|
    (gx#make-syntax-quote 'quasiquote #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g35533_|
    (gx#make-syntax-quote '<...> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g35534_|
    (gx#make-syntax-quote '<> #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#lambda|
      (lambda (_stx4926_)
        (letrec ((_simple-lambda?4929_
                  (lambda (_hd8314_) (gx#stx-andmap gx#identifier? _hd8314_)))
                 (_opt-lambda?4931_
                  (lambda (_hd8166_)
                    (let _lp8169_ ((_rest8172_ _hd8166_) (_opt?8174_ '#f))
                      (let* ((_g81778189_
                              (lambda (_g81788185_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g81788185_)))
                             (_g81768204_
                              (lambda (_g81788193_)
                                ((lambda ()
                                   (if _opt?8174_
                                       (let ((_$e8200_
                                              (gx#stx-null? _rest8172_)))
                                         (if _$e8200_
                                             _$e8200_
                                             (gx#identifier? _rest8172_)))
                                       '#f)))))
                             (_g81758310_
                              (lambda (_g81788208_)
                                (if (gx#stx-pair? _g81788208_)
                                    (let ((_e81818211_
                                           (gx#syntax-e _g81788208_)))
                                      (let ((_hd81828215_ (##car _e81818211_))
                                            (_tl81838218_ (##cdr _e81818211_)))
                                        ((lambda (_L8221_ _L8223_)
                                           (let* ((_g82398253_
                                                   (lambda (_g82408249_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g82408249_)))
                                                  (_g82388264_
                                                   (lambda (_g82408257_)
                                                     ((lambda ()
                                                        (if (gx#identifier?
                                                             _L8223_)
                                                            (if (not _opt?8174_)
                                                                (_lp8169_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L8221_
                         '#f)
                        '#f)
                    '#f)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g82378306_
                                                   (lambda (_g82408268_)
                                                     (if (gx#stx-pair?
                                                          _g82408268_)
                                                         (let ((_e82428271_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g82408268_)))
                   (let ((_hd82438275_ (##car _e82428271_))
                         (_tl82448278_ (##cdr _e82428271_)))
                     (if (gx#stx-pair? _tl82448278_)
                         (let ((_e82458281_ (gx#syntax-e _tl82448278_)))
                           (let ((_hd82468285_ (##car _e82458281_))
                                 (_tl82478288_ (##cdr _e82458281_)))
                             (if (gx#stx-null? _tl82478288_)
                                 ((lambda (_L8291_)
                                    (if (gx#identifier? _L8291_)
                                        (_lp8169_ _L8221_ '#t)
                                        (_g82388264_ _g82408268_)))
                                  _hd82438275_)
                                 (_g82388264_ _g82408268_))))
                         (_g82388264_ _g82408268_))))
                 (_g82388264_ _g82408268_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g82378306_ _L8223_)))
                                         _tl81838218_
                                         _hd81828215_)))
                                    (_g81768204_ _g81788208_)))))
                        (_g81758310_ _rest8172_)))))
                 (_opt-lambda-split4932_
                  (lambda (_hd8018_)
                    (let _lp8021_ ((_rest8024_ _hd8018_)
                                   (_pre8026_ '())
                                   (_opt8027_ '()))
                      (let* ((_g80308042_
                              (lambda (_g80318038_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g80318038_)))
                             (_g80298053_
                              (lambda (_g80318046_)
                                ((lambda ()
                                   (values (reverse _pre8026_)
                                           (reverse _opt8027_)
                                           (if (gx#identifier? _rest8024_)
                                               (_generate-bind4935_ _rest8024_)
                                               _rest8024_))))))
                             (_g80288162_
                              (lambda (_g80318057_)
                                (if (gx#stx-pair? _g80318057_)
                                    (let ((_e80348060_
                                           (gx#syntax-e _g80318057_)))
                                      (let ((_hd80358064_ (##car _e80348060_))
                                            (_tl80368067_ (##cdr _e80348060_)))
                                        ((lambda (_L8070_ _L8072_)
                                           (let* ((_g80888103_
                                                   (lambda (_g80898099_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g80898099_)))
                                                  (_g80878114_
                                                   (lambda (_g80898107_)
                                                     ((lambda ()
                                                        (_lp8021_
                                                         _L8070_
                                                         (cons (_generate-bind4935_
                                                                _L8072_)
                                                               _pre8026_)
                                                         _opt8027_)))))
                                                  (_g80868158_
                                                   (lambda (_g80898118_)
                                                     (if (gx#stx-pair?
                                                          _g80898118_)
                                                         (let ((_e80928121_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g80898118_)))
                   (let ((_hd80938125_ (##car _e80928121_))
                         (_tl80948128_ (##cdr _e80928121_)))
                     (if (gx#stx-pair? _tl80948128_)
                         (let ((_e80958131_ (gx#syntax-e _tl80948128_)))
                           (let ((_hd80968135_ (##car _e80958131_))
                                 (_tl80978138_ (##cdr _e80958131_)))
                             (if (gx#stx-null? _tl80978138_)
                                 ((lambda (_L8141_ _L8143_)
                                    (_lp8021_
                                     _L8070_
                                     _pre8026_
                                     (cons (cons (_generate-bind4935_ _L8143_)
                                                 _L8141_)
                                           _opt8027_)))
                                  _hd80968135_
                                  _hd80938125_)
                                 (_g80878114_ _g80898118_))))
                         (_g80878114_ _g80898118_))))
                 (_g80878114_ _g80898118_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g80868158_ _L8072_)))
                                         _tl80368067_
                                         _hd80358064_)))
                                    (_g80298053_ _g80318057_)))))
                        (_g80288162_ _rest8024_)))))
                 (_kw-lambda?4933_
                  (lambda (_hd7692_)
                    (let _lp7695_ ((_rest7698_ _hd7692_)
                                   (_opt?7700_ '#f)
                                   (_key?7701_ '#f))
                      (let* ((_g77067735_
                              (lambda (_g77077731_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g77077731_)))
                             (_g77057750_
                              (lambda (_g77077739_)
                                ((lambda ()
                                   (if _key?7701_
                                       (let ((_$e7746_
                                              (gx#stx-null? _rest7698_)))
                                         (if _$e7746_
                                             _$e7746_
                                             (gx#identifier? _rest7698_)))
                                       '#f)))))
                             (_g77047856_
                              (lambda (_g77077754_)
                                (if (gx#stx-pair? _g77077754_)
                                    (let ((_e77277757_
                                           (gx#syntax-e _g77077754_)))
                                      (let ((_hd77287761_ (##car _e77277757_))
                                            (_tl77297764_ (##cdr _e77277757_)))
                                        ((lambda (_L7767_ _L7769_)
                                           (let* ((_g77857799_
                                                   (lambda (_g77867795_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g77867795_)))
                                                  (_g77847810_
                                                   (lambda (_g77867803_)
                                                     ((lambda ()
                                                        (if (gx#identifier?
                                                             _L7769_)
                                                            (if (not _opt?7700_)
                                                                (_lp7695_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L7767_
                         '#f
                         _key?7701_)
                        '#f)
                    '#f)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g77837852_
                                                   (lambda (_g77867814_)
                                                     (if (gx#stx-pair?
                                                          _g77867814_)
                                                         (let ((_e77887817_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g77867814_)))
                   (let ((_hd77897821_ (##car _e77887817_))
                         (_tl77907824_ (##cdr _e77887817_)))
                     (if (gx#stx-pair? _tl77907824_)
                         (let ((_e77917827_ (gx#syntax-e _tl77907824_)))
                           (let ((_hd77927831_ (##car _e77917827_))
                                 (_tl77937834_ (##cdr _e77917827_)))
                             (if (gx#stx-null? _tl77937834_)
                                 ((lambda (_L7837_)
                                    (if (gx#identifier? _L7837_)
                                        (_lp7695_ _L7767_ '#t _key?7701_)
                                        '#f))
                                  _hd77897821_)
                                 (_g77847810_ _g77867814_))))
                         (_g77847810_ _g77867814_))))
                 (_g77847810_ _g77867814_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g77837852_ _L7769_)))
                                         _tl77297764_
                                         _hd77287761_)))
                                    (_g77057750_ _g77077754_))))
                             (_g77037898_
                              (lambda (_g77077860_)
                                (if (gx#stx-pair? _g77077860_)
                                    (let ((_e77197863_
                                           (gx#syntax-e _g77077860_)))
                                      (let ((_hd77207867_ (##car _e77197863_))
                                            (_tl77217870_ (##cdr _e77197863_)))
                                        (if (gx#stx-datum? _hd77207867_)
                                            (if (equal? (gx#stx-e _hd77207867_)
                                                        '#!key)
                                                (if (gx#stx-pair? _tl77217870_)
                                                    (let ((_e77227873_
                                                           (gx#syntax-e
                                                            _tl77217870_)))
                                                      (let ((_hd77237877_
                                                             (##car _e77227873_))
                                                            (_tl77247880_
                                                             (##cdr _e77227873_)))
                                                        ((lambda (_L7883_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L7885_)
                   (if (gx#identifier? _L7885_)
                       (_lp7695_ _L7883_ _opt?7700_ '#t)
                       '#f))
                 _tl77247880_
                 _hd77237877_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g77047856_ _g77077860_))
                                                (_g77047856_ _g77077860_))
                                            (_g77047856_ _g77077860_))))
                                    (_g77047856_ _g77077860_))))
                             (_g77028014_
                              (lambda (_g77077902_)
                                (if (gx#stx-pair? _g77077902_)
                                    (let ((_e77117905_
                                           (gx#syntax-e _g77077902_)))
                                      (let ((_hd77127909_ (##car _e77117905_))
                                            (_tl77137912_ (##cdr _e77117905_)))
                                        (if (gx#stx-pair? _tl77137912_)
                                            (let ((_e77147915_
                                                   (gx#syntax-e _tl77137912_)))
                                              (let ((_hd77157919_
                                                     (##car _e77147915_))
                                                    (_tl77167922_
                                                     (##cdr _e77147915_)))
                                                ((lambda (_L7925_
                                                          _L7927_
                                                          _L7928_)
                                                   (if (gx#stx-keyword?
                                                        _L7928_)
                                                       (let* ((_g79437957_
                                                               (lambda (_g79447953_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g79447953_)))
                      (_g79427968_
                       (lambda (_g79447961_)
                         ((lambda ()
                            (if (gx#identifier? _L7927_)
                                (_lp7695_ _L7925_ _opt?7700_ '#t)
                                '#f)))))
                      (_g79418010_
                       (lambda (_g79447972_)
                         (if (gx#stx-pair? _g79447972_)
                             (let ((_e79467975_ (gx#syntax-e _g79447972_)))
                               (let ((_hd79477979_ (##car _e79467975_))
                                     (_tl79487982_ (##cdr _e79467975_)))
                                 (if (gx#stx-pair? _tl79487982_)
                                     (let ((_e79497985_
                                            (gx#syntax-e _tl79487982_)))
                                       (let ((_hd79507989_ (##car _e79497985_))
                                             (_tl79517992_
                                              (##cdr _e79497985_)))
                                         (if (gx#stx-null? _tl79517992_)
                                             ((lambda (_L7995_)
                                                (if (gx#identifier? _L7995_)
                                                    (_lp7695_
                                                     _L7925_
                                                     _opt?7700_
                                                     '#t)
                                                    '#f))
                                              _hd79477979_)
                                             (_g79427968_ _g79447972_))))
                                     (_g79427968_ _g79447972_))))
                             (_g79427968_ _g79447972_)))))
                 (_g79418010_ _L7927_))
               (_g77037898_ _g77077902_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _tl77167922_
                                                 _hd77157919_
                                                 _hd77127909_)))
                                            (_g77037898_ _g77077902_))))
                                    (_g77037898_ _g77077902_)))))
                        (_g77028014_ _rest7698_)))))
                 (_kw-lambda-split4934_
                  (lambda (_hd7431_)
                    (let _lp7434_ ((_rest7437_ _hd7431_)
                                   (_kwvar7439_ '#f)
                                   (_kwargs7440_ '())
                                   (_args7441_ '()))
                      (let* ((_g74467475_
                              (lambda (_g74477471_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g74477471_)))
                             (_g74457486_
                              (lambda (_g74477479_)
                                ((lambda ()
                                   (values _kwvar7439_
                                           (reverse _kwargs7440_)
                                           (foldl cons
                                                  _rest7437_
                                                  _args7441_))))))
                             (_g74447520_
                              (lambda (_g74477490_)
                                (if (gx#stx-pair? _g74477490_)
                                    (let ((_e74677493_
                                           (gx#syntax-e _g74477490_)))
                                      (let ((_hd74687497_ (##car _e74677493_))
                                            (_tl74697500_ (##cdr _e74677493_)))
                                        ((lambda (_L7503_ _L7505_)
                                           (_lp7434_
                                            _L7503_
                                            _kwvar7439_
                                            _kwargs7440_
                                            (cons _L7505_ _args7441_)))
                                         _tl74697500_
                                         _hd74687497_)))
                                    (_g74457486_ _g74477490_))))
                             (_g74437562_
                              (lambda (_g74477524_)
                                (if (gx#stx-pair? _g74477524_)
                                    (let ((_e74597527_
                                           (gx#syntax-e _g74477524_)))
                                      (let ((_hd74607531_ (##car _e74597527_))
                                            (_tl74617534_ (##cdr _e74597527_)))
                                        (if (gx#stx-datum? _hd74607531_)
                                            (if (equal? (gx#stx-e _hd74607531_)
                                                        '#!key)
                                                (if (gx#stx-pair? _tl74617534_)
                                                    (let ((_e74627537_
                                                           (gx#syntax-e
                                                            _tl74617534_)))
                                                      (let ((_hd74637541_
                                                             (##car _e74627537_))
                                                            (_tl74647544_
                                                             (##cdr _e74627537_)))
                                                        ((lambda (_L7547_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L7549_)
                   (if _kwvar7439_
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; duplicate #!key argument"
                        _stx4926_
                        _hd7431_
                        _L7549_)
                       (_lp7434_
                        _L7547_
                        (_generate-bind4935_ _L7549_)
                        _kwargs7440_
                        _args7441_)))
                 _tl74647544_
                 _hd74637541_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g74447520_ _g74477524_))
                                                (_g74447520_ _g74477524_))
                                            (_g74447520_ _g74477524_))))
                                    (_g74447520_ _g74477524_))))
                             (_g74427688_
                              (lambda (_g74477566_)
                                (if (gx#stx-pair? _g74477566_)
                                    (let ((_e74517569_
                                           (gx#syntax-e _g74477566_)))
                                      (let ((_hd74527573_ (##car _e74517569_))
                                            (_tl74537576_ (##cdr _e74517569_)))
                                        (if (gx#stx-pair? _tl74537576_)
                                            (let ((_e74547579_
                                                   (gx#syntax-e _tl74537576_)))
                                              (let ((_hd74557583_
                                                     (##car _e74547579_))
                                                    (_tl74567586_
                                                     (##cdr _e74547579_)))
                                                ((lambda (_L7589_
                                                          _L7591_
                                                          _L7592_)
                                                   (if (gx#stx-keyword?
                                                        _L7592_)
                                                       (let ((_key7606_
                                                              (gx#stx-e
                                                               _L7592_)))
                                                         (if (find (lambda (_kwarg7609_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (eq? _key7606_ (car _kwarg7609_)))
                           _kwargs7440_)
                     (gx#raise-syntax-error
                      '#f
                      '"Bad syntax; duplicate keyword argument"
                      _stx4926_
                      _hd7431_
                      _key7606_)
                     (let* ((_g76137628_
                             (lambda (_g76147624_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g76147624_)))
                            (_g76127639_
                             (lambda (_g76147632_)
                               ((lambda ()
                                  (_lp7434_
                                   _L7589_
                                   _kwvar7439_
                                   (cons (list _key7606_
                                               (_generate-bind4935_ _L7591_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'error)
                                                     (cons '"Missing required keyword argument"
                                                           (cons _L7592_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _kwargs7440_)
                                   _args7441_)))))
                            (_g76117684_
                             (lambda (_g76147643_)
                               (if (gx#stx-pair? _g76147643_)
                                   (let ((_e76177646_
                                          (gx#syntax-e _g76147643_)))
                                     (let ((_hd76187650_ (##car _e76177646_))
                                           (_tl76197653_ (##cdr _e76177646_)))
                                       (if (gx#stx-pair? _tl76197653_)
                                           (let ((_e76207656_
                                                  (gx#syntax-e _tl76197653_)))
                                             (let ((_hd76217660_
                                                    (##car _e76207656_))
                                                   (_tl76227663_
                                                    (##cdr _e76207656_)))
                                               (if (gx#stx-null? _tl76227663_)
                                                   ((lambda (_L7666_ _L7668_)
                                                      (_lp7434_
                                                       _L7589_
                                                       _kwvar7439_
                                                       (cons (list _key7606_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_generate-bind4935_ _L7668_)
                           _L7666_)
                     _kwargs7440_)
               _args7441_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd76217660_
                                                    _hd76187650_)
                                                   (_g76127639_ _g76147643_))))
                                           (_g76127639_ _g76147643_))))
                                   (_g76127639_ _g76147643_)))))
                       (_g76117684_ _L7591_))))
               (_g74437562_ _g74477566_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _tl74567586_
                                                 _hd74557583_
                                                 _hd74527573_)))
                                            (_g74437562_ _g74477566_))))
                                    (_g74437562_ _g74477566_)))))
                        (_g74427688_ _rest7437_)))))
                 (_generate-bind4935_
                  (lambda (_e7428_)
                    (if (gx#underscore? _e7428_)
                        (gx#genident _e7428_)
                        _e7428_)))
                 (_check-duplicate-bindings4936_
                  (lambda (_hd7125_)
                    (letrec ((_cons-id7128_
                              (lambda (_id7424_ _ids7426_)
                                (if (gx#underscore? _id7424_)
                                    _ids7426_
                                    (cons _id7424_ _ids7426_)))))
                      (let _lp7131_ ((_rest7134_ _hd7125_) (_ids7136_ '()))
                        (let* ((_g71397151_
                                (lambda (_g71407147_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g71407147_)))
                               (_g71387162_
                                (lambda (_g71407155_)
                                  ((lambda ()
                                     (gx#check-duplicate-identifiers
                                      (if (gx#stx-null? _rest7134_)
                                          _ids7136_
                                          (_cons-id7128_ _rest7134_ _ids7136_))
                                      _stx4926_)))))
                               (_g71377420_
                                (lambda (_g71407166_)
                                  (if (gx#stx-pair? _g71407166_)
                                      (let ((_e71437169_
                                             (gx#syntax-e _g71407166_)))
                                        (let ((_hd71447173_
                                               (##car _e71437169_))
                                              (_tl71457176_
                                               (##cdr _e71437169_)))
                                          ((lambda (_L7179_ _L7181_)
                                             (if (gx#identifier? _L7181_)
                                                 (_lp7131_
                                                  _L7179_
                                                  (_cons-id7128_
                                                   _L7181_
                                                   _ids7136_))
                                                 (if (gx#stx-pair? _L7181_)
                                                     (let* ((_g71977211_
                                                             (lambda (_g71987207_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g71987207_)))
                                                            (_g71967252_
                                                             (lambda (_g71987215_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g71987215_)
                           (let ((_e72007218_ (gx#syntax-e _g71987215_)))
                             (let ((_hd72017222_ (##car _e72007218_))
                                   (_tl72027225_ (##cdr _e72007218_)))
                               (if (gx#stx-pair? _tl72027225_)
                                   (let ((_e72037228_
                                          (gx#syntax-e _tl72027225_)))
                                     (let ((_hd72047232_ (##car _e72037228_))
                                           (_tl72057235_ (##cdr _e72037228_)))
                                       (if (gx#stx-null? _tl72057235_)
                                           ((lambda (_L7238_)
                                              (_lp7131_
                                               _L7179_
                                               (_cons-id7128_
                                                _L7238_
                                                _ids7136_)))
                                            _hd72017222_)
                                           (_g71977211_ _g71987215_))))
                                   (_g71977211_ _g71987215_))))
                           (_g71977211_ _g71987215_)))))
               (_g71967252_ _L7181_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-keyword?
                                                          _L7181_)
                                                         (let* ((_g72567268_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g72577264_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g72577264_)))
                        (_g72557370_
                         (lambda (_g72577272_)
                           (if (gx#stx-pair? _g72577272_)
                               (let ((_e72607275_ (gx#syntax-e _g72577272_)))
                                 (let ((_hd72617279_ (##car _e72607275_))
                                       (_tl72627282_ (##cdr _e72607275_)))
                                   ((lambda (_L7285_ _L7287_)
                                      (let* ((_g72997313_
                                              (lambda (_g73007309_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _g73007309_)))
                                             (_g72987324_
                                              (lambda (_g73007317_)
                                                ((lambda ()
                                                   (_lp7131_
                                                    _L7285_
                                                    (_cons-id7128_
                                                     _L7287_
                                                     _ids7136_))))))
                                             (_g72977366_
                                              (lambda (_g73007328_)
                                                (if (gx#stx-pair? _g73007328_)
                                                    (let ((_e73027331_
                                                           (gx#syntax-e
                                                            _g73007328_)))
                                                      (let ((_hd73037335_
                                                             (##car _e73027331_))
                                                            (_tl73047338_
                                                             (##cdr _e73027331_)))
                                                        (if (gx#stx-pair?
                                                             _tl73047338_)
                                                            (let ((_e73057341_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl73047338_)))
                      (let ((_hd73067345_ (##car _e73057341_))
                            (_tl73077348_ (##cdr _e73057341_)))
                        (if (gx#stx-null? _tl73077348_)
                            ((lambda (_L7351_)
                               (_lp7131_
                                _L7285_
                                (_cons-id7128_ _L7351_ _ids7136_)))
                             _hd73037335_)
                            (_g72987324_ _g73007328_))))
                    (_g72987324_ _g73007328_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g72987324_
                                                     _g73007328_)))))
                                        (_g72977366_ _L7287_)))
                                    _tl72627282_
                                    _hd72617279_)))
                               (_g72567268_ _g72577272_)))))
                   (_g72557370_ _L7179_))
                 (if (eq? (gx#stx-e _L7181_) '#!key)
                     (let* ((_g73747386_
                             (lambda (_g73757382_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g73757382_)))
                            (_g73737416_
                             (lambda (_g73757390_)
                               (if (gx#stx-pair? _g73757390_)
                                   (let ((_e73787393_
                                          (gx#syntax-e _g73757390_)))
                                     (let ((_hd73797397_ (##car _e73787393_))
                                           (_tl73807400_ (##cdr _e73787393_)))
                                       ((lambda (_L7403_ _L7405_)
                                          (_lp7131_
                                           _L7403_
                                           (_cons-id7128_ _L7405_ _ids7136_)))
                                        _tl73807400_
                                        _hd73797397_)))
                                   (_g73747386_ _g73757390_)))))
                       (_g73737416_ _L7179_))
                     (error '"BUG: check-duplicate-bindings"
                            _stx4926_
                            _rest7134_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _tl71457176_
                                           _hd71447173_)))
                                      (_g71387162_ _g71407166_)))))
                          (_g71377420_ _rest7134_))))))
                 (_generate-opt-primary4937_
                  (lambda (_pre6917_ _opt6919_ _tail6920_ _body6921_)
                    (let* ((_g69236964_
                            (lambda (_g69246960_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g69246960_)))
                           (_g69227121_
                            (lambda (_g69246968_)
                              (if (gx#stx-pair? _g69246968_)
                                  (let ((_e69296971_
                                         (gx#syntax-e _g69246968_)))
                                    (let ((_hd69306975_ (##car _e69296971_))
                                          (_tl69316978_ (##cdr _e69296971_)))
                                      (if (gx#stx-pair/null? _hd69306975_)
                                          (if (fx>= (gx#stx-length
                                                     _hd69306975_)
                                                    '0)
                                              (let ((_g35421_
                                                     (gx#syntax-split-splice
                                                      _hd69306975_
                                                      '0)))
                                                (begin
                                                  (let ((_g35422_
                                                         (if (##values?
                                                              _g35421_)
                                                             (##vector-length
                                                              _g35421_)
                                                             1)))
                                                    (if (not (##fx= _g35422_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                (error "Context expects 2 values" _g35422_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target69326981_
                                                         (##vector-ref
                                                          _g35421_
                                                          0))
                                                        (_tl69346984_
                                                         (##vector-ref
                                                          _g35421_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl69346984_)
                                                        (letrec ((_loop69356987_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd69336991_ _pre69396994_)
                            (if (gx#stx-pair? _hd69336991_)
                                (let ((_e69366997_ (gx#syntax-e _hd69336991_)))
                                  (let ((_lp-hd69377001_ (##car _e69366997_))
                                        (_lp-tl69387004_ (##cdr _e69366997_)))
                                    (_loop69356987_
                                     _lp-tl69387004_
                                     (cons _lp-hd69377001_ _pre69396994_))))
                                (let ((_pre69407007_ (reverse _pre69396994_)))
                                  (if (gx#stx-pair? _tl69316978_)
                                      (let ((_e69417011_
                                             (gx#syntax-e _tl69316978_)))
                                        (let ((_hd69427015_
                                               (##car _e69417011_))
                                              (_tl69437018_
                                               (##cdr _e69417011_)))
                                          (if (gx#stx-pair/null? _hd69427015_)
                                              (if (fx>= (gx#stx-length
                                                         _hd69427015_)
                                                        '0)
                                                  (let ((_g35423_
                                                         (gx#syntax-split-splice
                                                          _hd69427015_
                                                          '0)))
                                                    (begin
                                                      (let ((_g35424_
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g35423_)
                         (##vector-length _g35423_)
                         1)))
                (if (not (##fx= _g35424_ 2))
                    (error "Context expects 2 values" _g35424_)))
              (let ((_target69447021_ (##vector-ref _g35423_ 0))
                    (_tl69467024_ (##vector-ref _g35423_ 1)))
                (if (gx#stx-null? _tl69467024_)
                    (letrec ((_loop69477027_
                              (lambda (_hd69457031_ _opt69517034_)
                                (if (gx#stx-pair? _hd69457031_)
                                    (let ((_e69487037_
                                           (gx#syntax-e _hd69457031_)))
                                      (let ((_lp-hd69497041_
                                             (##car _e69487037_))
                                            (_lp-tl69507044_
                                             (##cdr _e69487037_)))
                                        (_loop69477027_
                                         _lp-tl69507044_
                                         (cons _lp-hd69497041_
                                               _opt69517034_))))
                                    (let ((_opt69527047_
                                           (reverse _opt69517034_)))
                                      (if (gx#stx-pair? _tl69437018_)
                                          (let ((_e69537051_
                                                 (gx#syntax-e _tl69437018_)))
                                            (let ((_hd69547055_
                                                   (##car _e69537051_))
                                                  (_tl69557058_
                                                   (##cdr _e69537051_)))
                                              (if (gx#stx-pair? _tl69557058_)
                                                  (let ((_e69567061_
                                                         (gx#syntax-e
                                                          _tl69557058_)))
                                                    (let ((_hd69577065_
                                                           (##car _e69567061_))
                                                          (_tl69587068_
                                                           (##cdr _e69567061_)))
                                                      (if (gx#stx-null?
                                                           _tl69587068_)
                                                          ((lambda (_L7071_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L7073_
                            _L7074_
                            _L7075_)
                     (let ()
                       (cons (gx#datum->syntax '#f 'lambda%)
                             (cons (begin
                                     '#!void
                                     (foldr (lambda (_g71047109_ _g71057112_)
                                              (cons _g71047109_ _g71057112_))
                                            (begin
                                              '#!void
                                              (foldr (lambda (_g71067115_
                                                              _g71077118_)
                                                       (cons _g71067115_
                                                             _g71077118_))
                                                     _L7073_
                                                     _L7074_))
                                            _L7075_))
                                   _L7071_))))
                   _hd69577065_
                   _hd69547055_
                   _opt69527047_
                   _pre69407007_)
                  (_g69236964_ _g69246968_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g69236964_ _g69246968_))))
                                          (_g69236964_ _g69246968_)))))))
                      (_loop69477027_ _target69447021_ '()))
                    (_g69236964_ _g69246968_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g69236964_ _g69246968_))
                                              (_g69236964_ _g69246968_))))
                                      (_g69236964_ _g69246968_)))))))
                  (_loop69356987_ _target69326981_ '()))
                (_g69236964_ _g69246968_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g69236964_ _g69246968_))
                                          (_g69236964_ _g69246968_))))
                                  (_g69236964_ _g69246968_)))))
                      (_g69227121_
                       (list _pre6917_
                             (map car _opt6919_)
                             _tail6920_
                             _body6921_)))))
                 (_generate-opt-dispatch4938_
                  (lambda (_primary6911_ _pre6913_ _opt6914_ _tail6915_)
                    (cons (list _pre6913_
                                (_generate-opt-clause4940_
                                 _primary6911_
                                 _pre6913_
                                 _opt6914_))
                          (_generate-opt-dispatch*4939_
                           _primary6911_
                           _pre6913_
                           _opt6914_
                           _tail6915_))))
                 (_generate-opt-dispatch*4939_
                  (lambda (_primary6468_ _pre6470_ _opt6471_ _tail6472_)
                    (let _recur6474_ ((_opt-rest6477_ _opt6471_)
                                      (_right6479_ '()))
                      (if (pair? _opt-rest6477_)
                          (let* ((_hd6481_ (caar _opt-rest6477_))
                                 (_rest6484_ (cdr _opt-rest6477_))
                                 (_right*6487_ (cons _hd6481_ _right6479_))
                                 (_g64906507_
                                  (lambda (_g64916503_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g64916503_)))
                                 (_g64896690_
                                  (lambda (_g64916511_)
                                    (if (gx#stx-pair/null? _g64916511_)
                                        (if (fx>= (gx#stx-length _g64916511_)
                                                  '0)
                                            (let ((_g35425_
                                                   (gx#syntax-split-splice
                                                    _g64916511_
                                                    '0)))
                                              (begin
                                                (let ((_g35426_
                                                       (if (##values? _g35425_)
                                                           (##vector-length
                                                            _g35425_)
                                                           1)))
                                                  (if (not (##fx= _g35426_ 2))
                                                      (error "Context expects 2 values"
                                                             _g35426_)))
                                                (let ((_target64936514_
                                                       (##vector-ref
                                                        _g35425_
                                                        0))
                                                      (_tl64956517_
                                                       (##vector-ref
                                                        _g35425_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl64956517_)
                                                      (letrec ((_loop64966520_
                                                                (lambda (_hd64946524_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _pre-bind65006527_)
                          (if (gx#stx-pair? _hd64946524_)
                              (let ((_e64976530_ (gx#syntax-e _hd64946524_)))
                                (let ((_lp-hd64986534_ (##car _e64976530_))
                                      (_lp-tl64996537_ (##cdr _e64976530_)))
                                  (_loop64966520_
                                   _lp-tl64996537_
                                   (cons _lp-hd64986534_ _pre-bind65006527_))))
                              (let ((_pre-bind65016540_
                                     (reverse _pre-bind65006527_)))
                                ((lambda (_L6544_)
                                   (let ()
                                     (let* ((_g65656582_
                                             (lambda (_g65666578_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g65666578_)))
                                            (_g65646686_
                                             (lambda (_g65666586_)
                                               (if (gx#stx-pair/null?
                                                    _g65666586_)
                                                   (if (fx>= (gx#stx-length
                                                              _g65666586_)
                                                             '0)
                                                       (let ((_g35427_
                                                              (gx#syntax-split-splice
                                                               _g65666586_
                                                               '0)))
                                                         (begin
                                                           (let ((_g35428_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (##values? _g35427_)
                              (##vector-length _g35427_)
                              1)))
                     (if (not (##fx= _g35428_ 2))
                         (error "Context expects 2 values" _g35428_)))
                   (let ((_target65686589_ (##vector-ref _g35427_ 0))
                         (_tl65706592_ (##vector-ref _g35427_ 1)))
                     (if (gx#stx-null? _tl65706592_)
                         (letrec ((_loop65716595_
                                   (lambda (_hd65696599_ _opt-bind65756602_)
                                     (if (gx#stx-pair? _hd65696599_)
                                         (let ((_e65726605_
                                                (gx#syntax-e _hd65696599_)))
                                           (let ((_lp-hd65736609_
                                                  (##car _e65726605_))
                                                 (_lp-tl65746612_
                                                  (##cdr _e65726605_)))
                                             (_loop65716595_
                                              _lp-tl65746612_
                                              (cons _lp-hd65736609_
                                                    _opt-bind65756602_))))
                                         (let ((_opt-bind65766615_
                                                (reverse _opt-bind65756602_)))
                                           ((lambda (_L6619_)
                                              (let ()
                                                (let* ((_g66366644_
                                                        (lambda (_g66376640_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g66376640_)))
                                                       (_g66356682_
                                                        (lambda (_g66376648_)
                                                          ((lambda (_L6651_)
                                                             (let ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (list (begin
                                       '#!void
                                       (foldr (lambda (_g66656670_ _g66666673_)
                                                (cons _g66656670_ _g66666673_))
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g66676676_
                                                                _g66686679_)
                                                         (cons _g66676676_
                                                               _g66686679_))
                                                       (cons _L6651_ '())
                                                       _L6619_))
                                              _L6544_))
                                     (_generate-opt-clause4940_
                                      _primary6468_
                                      (foldr cons
                                             (reverse _right*6487_)
                                             _pre6470_)
                                      _rest6484_))
                               (_recur6474_ _rest6484_ _right*6487_)))))
                   _g66376648_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g66356682_ _hd6481_))))
                                            _opt-bind65766615_))))))
                           (_loop65716595_ _target65686589_ '()))
                         (_g65656582_ _g65666586_)))))
               (_g65656582_ _g65666586_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g65656582_
                                                    _g65666586_)))))
                                       (_g65646686_ (reverse _right6479_)))))
                                 _pre-bind65016540_))))))
                (_loop64966520_ _target64936514_ '()))
              (_g64906507_ _g64916511_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g64906507_ _g64916511_))
                                        (_g64906507_ _g64916511_)))))
                            (_g64896690_ _pre6470_))
                          (if (gx#stx-null? _tail6472_)
                              '()
                              (let* ((_g66946735_
                                      (lambda (_g66956731_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g66956731_)))
                                     (_g66936907_
                                      (lambda (_g66956739_)
                                        (if (gx#stx-pair? _g66956739_)
                                            (let ((_e67006742_
                                                   (gx#syntax-e _g66956739_)))
                                              (let ((_hd67016746_
                                                     (##car _e67006742_))
                                                    (_tl67026749_
                                                     (##cdr _e67006742_)))
                                                (if (gx#stx-pair/null?
                                                     _hd67016746_)
                                                    (if (fx>= (gx#stx-length
                                                               _hd67016746_)
                                                              '0)
                                                        (let ((_g35429_
                                                               (gx#syntax-split-splice
                                                                _hd67016746_
                                                                '0)))
                                                          (begin
                                                            (let ((_g35430_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if (##values? _g35429_)
                               (##vector-length _g35429_)
                               1)))
                      (if (not (##fx= _g35430_ 2))
                          (error "Context expects 2 values" _g35430_)))
                    (let ((_target67036752_ (##vector-ref _g35429_ 0))
                          (_tl67056755_ (##vector-ref _g35429_ 1)))
                      (if (gx#stx-null? _tl67056755_)
                          (letrec ((_loop67066758_
                                    (lambda (_hd67046762_ _pre67106765_)
                                      (if (gx#stx-pair? _hd67046762_)
                                          (let ((_e67076768_
                                                 (gx#syntax-e _hd67046762_)))
                                            (let ((_lp-hd67086772_
                                                   (##car _e67076768_))
                                                  (_lp-tl67096775_
                                                   (##cdr _e67076768_)))
                                              (_loop67066758_
                                               _lp-tl67096775_
                                               (cons _lp-hd67086772_
                                                     _pre67106765_))))
                                          (let ((_pre67116778_
                                                 (reverse _pre67106765_)))
                                            (if (gx#stx-pair? _tl67026749_)
                                                (let ((_e67126782_
                                                       (gx#syntax-e
                                                        _tl67026749_)))
                                                  (let ((_hd67136786_
                                                         (##car _e67126782_))
                                                        (_tl67146789_
                                                         (##cdr _e67126782_)))
                                                    (if (gx#stx-pair/null?
                                                         _hd67136786_)
                                                        (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd67136786_)
                          '0)
                    (let ((_g35431_ (gx#syntax-split-splice _hd67136786_ '0)))
                      (begin
                        (let ((_g35432_
                               (if (##values? _g35431_)
                                   (##vector-length _g35431_)
                                   1)))
                          (if (not (##fx= _g35432_ 2))
                              (error "Context expects 2 values" _g35432_)))
                        (let ((_target67156792_ (##vector-ref _g35431_ 0))
                              (_tl67176795_ (##vector-ref _g35431_ 1)))
                          (if (gx#stx-null? _tl67176795_)
                              (letrec ((_loop67186798_
                                        (lambda (_hd67166802_ _opt67226805_)
                                          (if (gx#stx-pair? _hd67166802_)
                                              (let ((_e67196808_
                                                     (gx#syntax-e
                                                      _hd67166802_)))
                                                (let ((_lp-hd67206812_
                                                       (##car _e67196808_))
                                                      (_lp-tl67216815_
                                                       (##cdr _e67196808_)))
                                                  (_loop67186798_
                                                   _lp-tl67216815_
                                                   (cons _lp-hd67206812_
                                                         _opt67226805_))))
                                              (let ((_opt67236818_
                                                     (reverse _opt67226805_)))
                                                (if (gx#stx-pair? _tl67146789_)
                                                    (let ((_e67246822_
                                                           (gx#syntax-e
                                                            _tl67146789_)))
                                                      (let ((_hd67256826_
                                                             (##car _e67246822_))
                                                            (_tl67266829_
                                                             (##cdr _e67246822_)))
                                                        (if (gx#stx-pair?
                                                             _tl67266829_)
                                                            (let ((_e67276832_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl67266829_)))
                      (let ((_hd67286836_ (##car _e67276832_))
                            (_tl67296839_ (##cdr _e67276832_)))
                        (if (gx#stx-null? _tl67296839_)
                            ((lambda (_L6842_ _L6844_ _L6845_ _L6846_)
                               (let ()
                                 (list (list (begin
                                               '#!void
                                               (foldr (lambda (_g68746879_
                                                               _g68756882_)
                                                        (cons _g68746879_
                                                              _g68756882_))
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g68766885_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g68776888_)
                         (cons _g68766885_ _g68776888_))
                       _L6844_
                       _L6845_))
              _L6846_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (gx#stx-wrap-source
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'apply)
                                                    (cons _L6842_
                                                          (begin
                                                            '#!void
                                                            (foldr (lambda (_g68906895_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g68916898_)
                             (cons _g68906895_ _g68916898_))
                           (begin
                             '#!void
                             (foldr (lambda (_g68926901_ _g68936904_)
                                      (cons _g68926901_ _g68936904_))
                                    (cons _L6844_ '())
                                    _L6845_))
                           _L6846_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx4926_))))))
                             _hd67286836_
                             _hd67256826_
                             _opt67236818_
                             _pre67116778_)
                            (_g66946735_ _g66956739_))))
                    (_g66946735_ _g66956739_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g66946735_
                                                     _g66956739_)))))))
                                (_loop67186798_ _target67156792_ '()))
                              (_g66946735_ _g66956739_)))))
                    (_g66946735_ _g66956739_))
                (_g66946735_ _g66956739_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g66946735_ _g66956739_)))))))
                            (_loop67066758_ _target67036752_ '()))
                          (_g66946735_ _g66956739_)))))
                (_g66946735_ _g66956739_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g66946735_
                                                     _g66956739_))))
                                            (_g66946735_ _g66956739_)))))
                                (_g66936907_
                                 (list _pre6470_
                                       (reverse _right6479_)
                                       _tail6472_
                                       _primary6468_))))))))
                 (_generate-opt-clause4940_
                  (lambda (_primary6166_ _pre6168_ _opt6169_)
                    (let _recur6171_ ((_opt-rest6174_ _opt6169_)
                                      (_right6176_ '()))
                      (if (pair? _opt-rest6174_)
                          (let* ((_hd6178_ (car _opt-rest6174_))
                                 (_rest6181_ (cdr _opt-rest6174_))
                                 (_g61846192_
                                  (lambda (_g61856188_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g61856188_)))
                                 (_g61836281_
                                  (lambda (_g61856196_)
                                    ((lambda (_L6199_)
                                       (let ()
                                         (let* ((_g62156223_
                                                 (lambda (_g62166219_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g62166219_)))
                                                (_g62146277_
                                                 (lambda (_g62166227_)
                                                   ((lambda (_L6230_)
                                                      (let ()
                                                        (let* ((_g62436251_
                                                                (lambda (_g62446247_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g62446247_)))
                       (_g62426273_
                        (lambda (_g62446255_)
                          ((lambda (_L6258_)
                             (let ()
                               (let ()
                                 (cons (gx#datum->syntax '#f 'let-values)
                                       (cons (cons (cons (cons _L6199_ '())
                                                         (cons _L6230_ '()))
                                                   '())
                                             (cons _L6258_ '()))))))
                           _g62446255_))))
                  (_g62426273_
                   (_recur6171_ _rest6181_ (cons _L6199_ _right6176_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g62166227_))))
                                           (_g62146277_ (cdr _hd6178_)))))
                                     _g61856196_))))
                            (_g61836281_ (car _hd6178_)))
                          (let* ((_g62856322_
                                  (lambda (_g62866318_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g62866318_)))
                                 (_g62846464_
                                  (lambda (_g62866326_)
                                    (if (gx#stx-pair? _g62866326_)
                                        (let ((_e62906329_
                                               (gx#syntax-e _g62866326_)))
                                          (let ((_hd62916333_
                                                 (##car _e62906329_))
                                                (_tl62926336_
                                                 (##cdr _e62906329_)))
                                            (if (gx#stx-pair/null?
                                                 _hd62916333_)
                                                (if (fx>= (gx#stx-length
                                                           _hd62916333_)
                                                          '0)
                                                    (let ((_g35433_
                                                           (gx#syntax-split-splice
                                                            _hd62916333_
                                                            '0)))
                                                      (begin
                                                        (let ((_g35434_
                                                               (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g35433_)
                           (##vector-length _g35433_)
                           1)))
                  (if (not (##fx= _g35434_ 2))
                      (error "Context expects 2 values" _g35434_)))
                (let ((_target62936339_ (##vector-ref _g35433_ 0))
                      (_tl62956342_ (##vector-ref _g35433_ 1)))
                  (if (gx#stx-null? _tl62956342_)
                      (letrec ((_loop62966345_
                                (lambda (_hd62946349_ _pre63006352_)
                                  (if (gx#stx-pair? _hd62946349_)
                                      (let ((_e62976355_
                                             (gx#syntax-e _hd62946349_)))
                                        (let ((_lp-hd62986359_
                                               (##car _e62976355_))
                                              (_lp-tl62996362_
                                               (##cdr _e62976355_)))
                                          (_loop62966345_
                                           _lp-tl62996362_
                                           (cons _lp-hd62986359_
                                                 _pre63006352_))))
                                      (let ((_pre63016365_
                                             (reverse _pre63006352_)))
                                        (if (gx#stx-pair? _tl62926336_)
                                            (let ((_e63026369_
                                                   (gx#syntax-e _tl62926336_)))
                                              (let ((_hd63036373_
                                                     (##car _e63026369_))
                                                    (_tl63046376_
                                                     (##cdr _e63026369_)))
                                                (if (gx#stx-pair/null?
                                                     _hd63036373_)
                                                    (if (fx>= (gx#stx-length
                                                               _hd63036373_)
                                                              '0)
                                                        (let ((_g35435_
                                                               (gx#syntax-split-splice
                                                                _hd63036373_
                                                                '0)))
                                                          (begin
                                                            (let ((_g35436_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if (##values? _g35435_)
                               (##vector-length _g35435_)
                               1)))
                      (if (not (##fx= _g35436_ 2))
                          (error "Context expects 2 values" _g35436_)))
                    (let ((_target63056379_ (##vector-ref _g35435_ 0))
                          (_tl63076382_ (##vector-ref _g35435_ 1)))
                      (if (gx#stx-null? _tl63076382_)
                          (letrec ((_loop63086385_
                                    (lambda (_hd63066389_ _opt63126392_)
                                      (if (gx#stx-pair? _hd63066389_)
                                          (let ((_e63096395_
                                                 (gx#syntax-e _hd63066389_)))
                                            (let ((_lp-hd63106399_
                                                   (##car _e63096395_))
                                                  (_lp-tl63116402_
                                                   (##cdr _e63096395_)))
                                              (_loop63086385_
                                               _lp-tl63116402_
                                               (cons _lp-hd63106399_
                                                     _opt63126392_))))
                                          (let ((_opt63136405_
                                                 (reverse _opt63126392_)))
                                            (if (gx#stx-pair? _tl63046376_)
                                                (let ((_e63146409_
                                                       (gx#syntax-e
                                                        _tl63046376_)))
                                                  (let ((_hd63156413_
                                                         (##car _e63146409_))
                                                        (_tl63166416_
                                                         (##cdr _e63146409_)))
                                                    (if (gx#stx-null?
                                                         _tl63166416_)
                                                        ((lambda (_L6419_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L6421_
                          _L6422_)
                   (let ()
                     (gx#stx-wrap-source
                      (cons _L6419_
                            (begin
                              '#!void
                              (foldr (lambda (_g64476452_ _g64486455_)
                                       (cons _g64476452_ _g64486455_))
                                     (begin
                                       '#!void
                                       (foldr (lambda (_g64496458_ _g64506461_)
                                                (cons _g64496458_ _g64506461_))
                                              '()
                                              _L6421_))
                                     _L6422_)))
                      (gx#stx-source _stx4926_))))
                 _hd63156413_
                 _opt63136405_
                 _pre63016365_)
                (_g62856322_ _g62866326_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g62856322_ _g62866326_)))))))
                            (_loop63086385_ _target63056379_ '()))
                          (_g62856322_ _g62866326_)))))
                (_g62856322_ _g62866326_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g62856322_
                                                     _g62866326_))))
                                            (_g62856322_ _g62866326_)))))))
                        (_loop62966345_ _target62936339_ '()))
                      (_g62856322_ _g62866326_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g62856322_ _g62866326_))
                                                (_g62856322_ _g62866326_))))
                                        (_g62856322_ _g62866326_)))))
                            (_g62846464_
                             (list _pre6168_
                                   (reverse _right6176_)
                                   _primary6166_)))))))
                 (_generate-kw-primary4941_
                  (lambda (_key5542_ _kwargs5544_ _args5545_ _body5546_)
                    (letrec ((_make-body5548_
                              (lambda (_kwargs6035_ _kwvals6037_)
                                (if (pair? _kwargs6035_)
                                    (let* ((_kwarg6039_ (car _kwargs6035_))
                                           (_var6042_ (cadr _kwarg6039_))
                                           (_default6045_ (caddr _kwarg6039_))
                                           (_kwval6048_ (car _kwvals6037_))
                                           (_rest-kwargs6051_
                                            (cdr _kwargs6035_))
                                           (_rest-kwvals6054_
                                            (cdr _kwvals6037_)))
                                      (let* ((_g60596082_
                                              (lambda (_g60606078_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _g60606078_)))
                                             (_g60586162_
                                              (lambda (_g60606086_)
                                                (if (gx#stx-pair? _g60606086_)
                                                    (let ((_e60656089_
                                                           (gx#syntax-e
                                                            _g60606086_)))
                                                      (let ((_hd60666093_
                                                             (##car _e60656089_))
                                                            (_tl60676096_
                                                             (##cdr _e60656089_)))
                                                        (if (gx#stx-pair?
                                                             _tl60676096_)
                                                            (let ((_e60686099_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl60676096_)))
                      (let ((_hd60696103_ (##car _e60686099_))
                            (_tl60706106_ (##cdr _e60686099_)))
                        (if (gx#stx-pair? _tl60706106_)
                            (let ((_e60716109_ (gx#syntax-e _tl60706106_)))
                              (let ((_hd60726113_ (##car _e60716109_))
                                    (_tl60736116_ (##cdr _e60716109_)))
                                (if (gx#stx-pair? _tl60736116_)
                                    (let ((_e60746119_
                                           (gx#syntax-e _tl60736116_)))
                                      (let ((_hd60756123_ (##car _e60746119_))
                                            (_tl60766126_ (##cdr _e60746119_)))
                                        (if (gx#stx-null? _tl60766126_)
                                            ((lambda (_L6129_
                                                      _L6131_
                                                      _L6132_
                                                      _L6133_)
                                               (let ()
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'let-values)
                                                       (cons (cons (cons (cons _L6133_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (cons (gx#datum->syntax '#f 'if)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'eq?)
                                                         (cons _L6132_
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'absent-value)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _L6131_
                                                         (cons _L6132_ '()))))
                                       '()))
                           '())
                     (cons _L6129_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd60756123_
                                             _hd60726113_
                                             _hd60696103_
                                             _hd60666093_)
                                            (_g60596082_ _g60606086_))))
                                    (_g60596082_ _g60606086_))))
                            (_g60596082_ _g60606086_))))
                    (_g60596082_ _g60606086_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g60596082_
                                                     _g60606086_)))))
                                        (_g60586162_
                                         (list _var6042_
                                               _kwval6048_
                                               _default6045_
                                               (_make-body5548_
                                                _rest-kwargs6051_
                                                _rest-kwvals6054_)))))
                                    (cons 'begin _body5546_))))
                             (_make-main5550_
                              (lambda ()
                                (let* ((_g58435851_
                                        (lambda (_g58445847_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g58445847_)))
                                       (_g58426027_
                                        (lambda (_g58445855_)
                                          ((lambda (_L5858_)
                                             (let ()
                                               (let* ((_g58705887_
                                                       (lambda (_g58715883_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g58715883_)))
                                                      (_g58696023_
                                                       (lambda (_g58715891_)
                                                         (if (gx#stx-pair/null?
                                                              _g58715891_)
                                                             (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g58715891_)
                               '0)
                         (let ((_g35437_
                                (gx#syntax-split-splice _g58715891_ '0)))
                           (begin
                             (let ((_g35438_
                                    (if (##values? _g35437_)
                                        (##vector-length _g35437_)
                                        1)))
                               (if (not (##fx= _g35438_ 2))
                                   (error "Context expects 2 values"
                                          _g35438_)))
                             (let ((_target58735894_ (##vector-ref _g35437_ 0))
                                   (_tl58755897_ (##vector-ref _g35437_ 1)))
                               (if (gx#stx-null? _tl58755897_)
                                   (letrec ((_loop58765900_
                                             (lambda (_hd58745904_
                                                      _kwval58805907_)
                                               (if (gx#stx-pair? _hd58745904_)
                                                   (let ((_e58775910_
                                                          (gx#syntax-e
                                                           _hd58745904_)))
                                                     (let ((_lp-hd58785914_
                                                            (##car _e58775910_))
                                                           (_lp-tl58795917_
                                                            (##cdr _e58775910_)))
                                                       (_loop58765900_
                                                        _lp-tl58795917_
                                                        (cons _lp-hd58785914_
                                                              _kwval58805907_))))
                                                   (let ((_kwval58815920_
                                                          (reverse _kwval58805907_)))
                                                     ((lambda (_L5924_)
                                                        (let ()
                                                          (let* ((_g59415949_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g59425945_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g59425945_)))
                         (_g59406019_
                          (lambda (_g59425953_)
                            ((lambda (_L5956_)
                               (let ()
                                 (let* ((_g59695977_
                                         (lambda (_g59705973_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g59705973_)))
                                        (_g59686007_
                                         (lambda (_g59705981_)
                                           ((lambda (_L5984_)
                                              (let ()
                                                (let ()
                                                  (gx#stx-wrap-source
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'lambda)
                                                         (cons (cons _L5858_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (begin
                               '#!void
                               (foldr (lambda (_g59986001_ _g59996004_)
                                        (cons _g59986001_ _g59996004_))
                                      _L5956_
                                      _L5924_)))
                       (cons _L5984_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source
                                                    _stx4926_)))))
                                            _g59705981_))))
                                   (_g59686007_
                                    (_make-body5548_
                                     _kwargs5544_
                                     (begin
                                       '#!void
                                       (foldr (lambda (_g60106013_ _g60116016_)
                                                (cons _g60106013_ _g60116016_))
                                              '()
                                              _L5924_)))))))
                             _g59425953_))))
                    (_g59406019_ _args5545_))))
              _kwval58815920_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop58765900_ _target58735894_ '()))
                                   (_g58705887_ _g58715891_)))))
                         (_g58705887_ _g58715891_))
                     (_g58705887_ _g58715891_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g58696023_
                                                  (gx#gentemps
                                                   (map cadr _kwargs5544_))))))
                                           _g58445855_))))
                                  (_g58426027_
                                   (let ((_$e6031_ _key5542_))
                                     (if _$e6031_ _$e6031_ '_))))))
                             (_make-dispatch5551_
                              (lambda (_main5651_)
                                (let* ((_g56545662_
                                        (lambda (_g56555658_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g56555658_)))
                                       (_g56535833_
                                        (lambda (_g56555666_)
                                          ((lambda (_L5669_)
                                             (let ()
                                               (let* ((_g56815698_
                                                       (lambda (_g56825694_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g56825694_)))
                                                      (_g56805794_
                                                       (lambda (_g56825702_)
                                                         (if (gx#stx-pair/null?
                                                              _g56825702_)
                                                             (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g56825702_)
                               '0)
                         (let ((_g35439_
                                (gx#syntax-split-splice _g56825702_ '0)))
                           (begin
                             (let ((_g35440_
                                    (if (##values? _g35439_)
                                        (##vector-length _g35439_)
                                        1)))
                               (if (not (##fx= _g35440_ 2))
                                   (error "Context expects 2 values"
                                          _g35440_)))
                             (let ((_target56845705_ (##vector-ref _g35439_ 0))
                                   (_tl56865708_ (##vector-ref _g35439_ 1)))
                               (if (gx#stx-null? _tl56865708_)
                                   (letrec ((_loop56875711_
                                             (lambda (_hd56855715_
                                                      _get-kw56915718_)
                                               (if (gx#stx-pair? _hd56855715_)
                                                   (let ((_e56885721_
                                                          (gx#syntax-e
                                                           _hd56855715_)))
                                                     (let ((_lp-hd56895725_
                                                            (##car _e56885721_))
                                                           (_lp-tl56905728_
                                                            (##cdr _e56885721_)))
                                                       (_loop56875711_
                                                        _lp-tl56905728_
                                                        (cons _lp-hd56895725_
                                                              _get-kw56915718_))))
                                                   (let ((_get-kw56925731_
                                                          (reverse _get-kw56915718_)))
                                                     ((lambda (_L5735_)
                                                        (let ()
                                                          (let* ((_g57525760_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g57535756_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g57535756_)))
                         (_g57515790_
                          (lambda (_g57535764_)
                            ((lambda (_L5767_)
                               (let ()
                                 (let ()
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'lambda)
                                          (cons (cons _L5669_
                                                      (gx#datum->syntax
                                                       '#f
                                                       'args))
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'apply)
                                                            (cons _L5767_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L5669_
                                (begin
                                  '#!void
                                  (foldr (lambda (_g57815784_ _g57825787_)
                                           (cons _g57815784_ _g57825787_))
                                         (cons (gx#datum->syntax '#f 'args)
                                               '())
                                         _L5735_)))))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (gx#stx-source _stx4926_)))))
                             _g57535764_))))
                    (_g57515790_ _main5651_))))
              _get-kw56925731_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop56875711_ _target56845705_ '()))
                                   (_g56815698_ _g56825702_)))))
                         (_g56815698_ _g56825702_))
                     (_g56815698_ _g56825702_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g56805794_
                                                  (map (lambda (_kwarg5798_)
                                                         (let* ((_g58015809_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g58025805_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g58025805_)))
                        (_g58005829_
                         (lambda (_g58025813_)
                           ((lambda (_L5816_)
                              (let ()
                                (cons (gx#datum->syntax '#f 'hash-ref)
                                      (cons _L5669_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'quote)
                                                        (cons _L5816_ '()))
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'absent-value)
                                                        '()))))))
                            _g58025813_))))
                   (_g58005829_ (car _kwarg5798_))))
               _kwargs5544_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _g56555666_))))
                                  (_g56535833_
                                   (let ((_$e5837_ _key5542_))
                                     (if _$e5837_
                                         _$e5837_
                                         (gx#genident 'keys))))))))
                      (let* ((_g55535561_
                              (lambda (_g55545557_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g55545557_)))
                             (_g55525647_
                              (lambda (_g55545565_)
                                ((lambda (_L5568_)
                                   (let ()
                                     (let* ((_g55815589_
                                             (lambda (_g55825585_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g55825585_)))
                                            (_g55805643_
                                             (lambda (_g55825593_)
                                               ((lambda (_L5596_)
                                                  (let ()
                                                    (let* ((_g56095617_
                                                            (lambda (_g56105613_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g56105613_)))
                                                           (_g56085639_
                                                            (lambda (_g56105621_)
                                                              ((lambda (_L5624_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ()
                             (cons (gx#datum->syntax '#f 'let-values)
                                   (cons (cons (cons (cons _L5568_ '())
                                                     (cons _L5624_ '()))
                                               '())
                                         (cons _L5596_ '()))))))
                       _g56105621_))))
              (_g56085639_ (_make-main5550_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g55825593_))))
                                       (_g55805643_
                                        (_make-dispatch5551_ _L5568_)))))
                                 _g55545565_))))
                        (_g55525647_ (gx#genident 'kw-lambda-main))))))
                 (_generate-kw-dispatch4942_
                  (lambda (_primary5455_ _kwargs5457_ _strict?5458_)
                    (let* ((_g54605479_
                            (lambda (_g54615475_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g54615475_)))
                           (_g54595538_
                            (lambda (_g54615483_)
                              (if (gx#stx-pair? _g54615483_)
                                  (let ((_e54655486_
                                         (gx#syntax-e _g54615483_)))
                                    (let ((_hd54665490_ (##car _e54655486_))
                                          (_tl54675493_ (##cdr _e54655486_)))
                                      (if (gx#stx-pair? _tl54675493_)
                                          (let ((_e54685496_
                                                 (gx#syntax-e _tl54675493_)))
                                            (let ((_hd54695500_
                                                   (##car _e54685496_))
                                                  (_tl54705503_
                                                   (##cdr _e54685496_)))
                                              (if (gx#stx-pair? _tl54705503_)
                                                  (let ((_e54715506_
                                                         (gx#syntax-e
                                                          _tl54705503_)))
                                                    (let ((_hd54725510_
                                                           (##car _e54715506_))
                                                          (_tl54735513_
                                                           (##cdr _e54715506_)))
                                                      (if (gx#stx-null?
                                                           _tl54735513_)
                                                          ((lambda (_L5516_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L5518_
                            _L5519_)
                     (let ()
                       (cons (gx#datum->syntax '#f 'lambda%)
                             (cons _L5516_
                                   (cons (cons (gx#datum->syntax '#f 'apply)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'keyword-dispatch)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _L5519_ '()))
                   (cons _L5518_ (cons _L5516_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))))
                   _hd54725510_
                   _hd54695500_
                   _hd54665490_)
                  (_g54605479_ _g54615483_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g54605479_ _g54615483_))))
                                          (_g54605479_ _g54615483_))))
                                  (_g54605479_ _g54615483_)))))
                      (_g54595538_
                       (list (if _strict?5458_
                                 (_generate-kw-table4943_
                                  (map car _kwargs5457_))
                                 '#f)
                             _primary5455_
                             (gx#genident 'args))))))
                 (_generate-kw-table4943_
                  (lambda (_kws5429_)
                    (let _rehash5432_ ((_pht5435_
                                        (make-vector (length _kws5429_) '#f)))
                      (let _lp5438_ ((_rest5441_ _kws5429_))
                        (if (pair? _rest5441_)
                            (let* ((_key5444_ (car _rest5441_))
                                   (_rest5447_ (cdr _rest5441_))
                                   (_pos5450_
                                    (fxmodulo
                                     (keyword-hash _key5444_)
                                     (vector-length _pht5435_))))
                              (if (vector-ref _pht5435_ _pos5450_)
                                  (if (fx< (vector-length _pht5435_) '8192)
                                      (_rehash5432_
                                       (make-vector
                                        (quotient
                                         (fx* '3 (vector-length _pht5435_))
                                         '2)
                                        '#f))
                                      (error '"Unresolvable keyword collision"
                                             _kws5429_))
                                  (begin
                                    (vector-set! _pht5435_ _pos5450_ _key5444_)
                                    (_lp5438_ _rest5447_))))
                            _pht5435_))))))
          (let* ((_g49474978_
                  (lambda (_g49484974_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g49484974_)))
                 (_g49465155_
                  (lambda (_g49484982_)
                    (if (gx#stx-pair? _g49484982_)
                        (let ((_e49674985_ (gx#syntax-e _g49484982_)))
                          (let ((_hd49684989_ (##car _e49674985_))
                                (_tl49694992_ (##cdr _e49674985_)))
                            (if (gx#stx-pair? _tl49694992_)
                                (let ((_e49704995_ (gx#syntax-e _tl49694992_)))
                                  (let ((_hd49714999_ (##car _e49704995_))
                                        (_tl49725002_ (##cdr _e49704995_)))
                                    ((lambda (_L5005_ _L5007_)
                                       (if (_kw-lambda?4933_ _L5007_)
                                           (let* ((_g50235030_
                                                   (lambda (_g50245026_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g50245026_)))
                                                  (_g50225151_
                                                   (lambda (_g50245034_)
                                                     ((lambda ()
                                                        (let ()
                                                          (let ((_g35441_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_kw-lambda-split4934_ _L5007_)))
                    (begin
                      (let ((_g35442_
                             (if (##values? _g35441_)
                                 (##vector-length _g35441_)
                                 1)))
                        (if (not (##fx= _g35442_ 3))
                            (error "Context expects 3 values" _g35442_)))
                      (let ((_key5043_ (##vector-ref _g35441_ 0))
                            (_kwargs5045_ (##vector-ref _g35441_ 1))
                            (_args5046_ (##vector-ref _g35441_ 2)))
                        (let* ((_g50485056_
                                (lambda (_g50495052_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g50495052_)))
                               (_g50475147_
                                (lambda (_g50495060_)
                                  ((lambda (_L5063_)
                                     (let ()
                                       (let* ((_g50815089_
                                               (lambda (_g50825085_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g50825085_)))
                                              (_g50805143_
                                               (lambda (_g50825093_)
                                                 ((lambda (_L5096_)
                                                    (let ()
                                                      (let* ((_g51095117_
                                                              (lambda (_g51105113_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax"
                         _g51105113_)))
                     (_g51085139_
                      (lambda (_g51105121_)
                        ((lambda (_L5124_)
                           (let ()
                             (let ()
                               (cons (gx#datum->syntax '#f 'let-values)
                                     (cons (cons (cons (cons _L5063_ '())
                                                       (cons _L5096_ '()))
                                                 '())
                                           (cons _L5124_ '()))))))
                         _g51105121_))))
                (_g51085139_
                 (gx#stx-wrap-source
                  (_generate-kw-dispatch4942_
                   _L5063_
                   _kwargs5045_
                   (not _key5043_))
                  (gx#stx-source _stx4926_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g50825093_))))
                                         (_g50805143_
                                          (gx#stx-wrap-source
                                           (_generate-kw-primary4941_
                                            _key5043_
                                            _kwargs5045_
                                            _args5046_
                                            _L5005_)
                                           (gx#stx-source _stx4926_))))))
                                   _g50495060_))))
                          (_g50475147_ (gx#genident 'kw-lambda))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g50225151_
                                              (_check-duplicate-bindings4936_
                                               _L5007_)))
                                           (_g49474978_ _g49484982_)))
                                     _tl49725002_
                                     _hd49714999_)))
                                (_g49474978_ _g49484982_))))
                        (_g49474978_ _g49484982_))))
                 (_g49455383_
                  (lambda (_g49485159_)
                    (if (gx#stx-pair? _g49485159_)
                        (let ((_e49595162_ (gx#syntax-e _g49485159_)))
                          (let ((_hd49605166_ (##car _e49595162_))
                                (_tl49615169_ (##cdr _e49595162_)))
                            (if (gx#stx-pair? _tl49615169_)
                                (let ((_e49625172_ (gx#syntax-e _tl49615169_)))
                                  (let ((_hd49635176_ (##car _e49625172_))
                                        (_tl49645179_ (##cdr _e49625172_)))
                                    ((lambda (_L5182_ _L5184_)
                                       (if (_opt-lambda?4931_ _L5184_)
                                           (let ((_g35443_
                                                  (_opt-lambda-split4932_
                                                   _L5184_)))
                                             (begin
                                               (let ((_g35444_
                                                      (if (##values? _g35443_)
                                                          (##vector-length
                                                           _g35443_)
                                                          1)))
                                                 (if (not (##fx= _g35444_ 3))
                                                     (error "Context expects 3 values"
                                                            _g35444_)))
                                               (let ((_pre5197_
                                                      (##vector-ref
                                                       _g35443_
                                                       0))
                                                     (_opt5199_
                                                      (##vector-ref
                                                       _g35443_
                                                       1))
                                                     (_tail5200_
                                                      (##vector-ref
                                                       _g35443_
                                                       2)))
                                                 (let* ((_g52025210_
                                                         (lambda (_g52035206_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g52035206_)))
                                                        (_g52015379_
                                                         (lambda (_g52035214_)
                                                           ((lambda (_L5217_)
                                                              (let ()
                                                                (let* ((_g52305238_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_g52315234_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g52315234_)))
                               (_g52295375_
                                (lambda (_g52315242_)
                                  ((lambda (_L5245_)
                                     (let ()
                                       (let* ((_g52585275_
                                               (lambda (_g52595271_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g52595271_)))
                                              (_g52575371_
                                               (lambda (_g52595279_)
                                                 (if (gx#stx-pair/null?
                                                      _g52595279_)
                                                     (if (fx>= (gx#stx-length
                                                                _g52595279_)
                                                               '0)
                                                         (let ((_g35445_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g52595279_
                         '0)))
                   (begin
                     (let ((_g35446_
                            (if (##values? _g35445_)
                                (##vector-length _g35445_)
                                1)))
                       (if (not (##fx= _g35446_ 2))
                           (error "Context expects 2 values" _g35446_)))
                     (let ((_target52615282_ (##vector-ref _g35445_ 0))
                           (_tl52635285_ (##vector-ref _g35445_ 1)))
                       (if (gx#stx-null? _tl52635285_)
                           (letrec ((_loop52645288_
                                     (lambda (_hd52625292_ _clause52685295_)
                                       (if (gx#stx-pair? _hd52625292_)
                                           (let ((_e52655298_
                                                  (gx#syntax-e _hd52625292_)))
                                             (let ((_lp-hd52665302_
                                                    (##car _e52655298_))
                                                   (_lp-tl52675305_
                                                    (##cdr _e52655298_)))
                                               (_loop52645288_
                                                _lp-tl52675305_
                                                (cons _lp-hd52665302_
                                                      _clause52685295_))))
                                           (let ((_clause52695308_
                                                  (reverse _clause52685295_)))
                                             ((lambda (_L5312_)
                                                (let ()
                                                  (let* ((_g53295337_
                                                          (lambda (_g53305333_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g53305333_)))
                                                         (_g53285359_
                                                          (lambda (_g53305341_)
                                                            ((lambda (_L5344_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (cons (gx#datum->syntax '#f 'let-values)
                                 (cons (cons (cons (cons _L5217_ '())
                                                   (cons _L5245_ '()))
                                             '())
                                       (cons _L5344_ '()))))))
                     _g53305341_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g53285359_
                                                     (gx#stx-wrap-source
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'case-lambda)
                                                            (begin
                                                              '#!void
                                                              (foldr (lambda (_g53625365_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g53635368_)
                               (cons _g53625365_ _g53635368_))
                             '()
                             _L5312_)))
              (gx#stx-source _stx4926_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _clause52695308_))))))
                             (_loop52645288_ _target52615282_ '()))
                           (_g52585275_ _g52595279_)))))
                 (_g52585275_ _g52595279_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g52585275_
                                                      _g52595279_)))))
                                         (_g52575371_
                                          (_generate-opt-dispatch4938_
                                           _L5217_
                                           _pre5197_
                                           _opt5199_
                                           _tail5200_)))))
                                   _g52315242_))))
                          (_g52295375_
                           (gx#stx-wrap-source
                            (_generate-opt-primary4937_
                             _pre5197_
                             _opt5199_
                             _tail5200_
                             _L5182_)
                            (gx#stx-source _stx4926_))))))
                    _g52035214_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g52015379_
                                                    (gx#genident
                                                     'opt-lambda))))))
                                           (_g49465155_ _g49485159_)))
                                     _tl49645179_
                                     _hd49635176_)))
                                (_g49465155_ _g49485159_))))
                        (_g49465155_ _g49485159_))))
                 (_g49445425_
                  (lambda (_g49485387_)
                    (if (gx#stx-pair? _g49485387_)
                        (let ((_e49515390_ (gx#syntax-e _g49485387_)))
                          (let ((_hd49525394_ (##car _e49515390_))
                                (_tl49535397_ (##cdr _e49515390_)))
                            (if (gx#stx-pair? _tl49535397_)
                                (let ((_e49545400_ (gx#syntax-e _tl49535397_)))
                                  (let ((_hd49555404_ (##car _e49545400_))
                                        (_tl49565407_ (##cdr _e49545400_)))
                                    ((lambda (_L5410_ _L5412_)
                                       (if (_simple-lambda?4929_ _L5412_)
                                           (cons (gx#datum->syntax
                                                  '#f
                                                  'lambda%)
                                                 (cons _L5412_ _L5410_))
                                           (_g49455383_ _g49485387_)))
                                     _tl49565407_
                                     _hd49555404_)))
                                (_g49455383_ _g49485387_))))
                        (_g49455383_ _g49485387_)))))
            (_g49445425_ _stx4926_)))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#def|
      (lambda (_$stx8330_)
        (let* ((_g83358374_
                (lambda (_g83368370_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g83368370_)))
               (_g83348429_
                (lambda (_g83368378_)
                  (if (gx#stx-pair? _g83368378_)
                      (let ((_e83608381_ (gx#syntax-e _g83368378_)))
                        (let ((_hd83618385_ (##car _e83608381_))
                              (_tl83628388_ (##cdr _e83608381_)))
                          (if (gx#stx-pair? _tl83628388_)
                              (let ((_e83638391_ (gx#syntax-e _tl83628388_)))
                                (let ((_hd83648395_ (##car _e83638391_))
                                      (_tl83658398_ (##cdr _e83638391_)))
                                  (if (gx#stx-pair? _tl83658398_)
                                      (let ((_e83668401_
                                             (gx#syntax-e _tl83658398_)))
                                        (let ((_hd83678405_
                                               (##car _e83668401_))
                                              (_tl83688408_
                                               (##cdr _e83668401_)))
                                          (if (gx#stx-null? _tl83688408_)
                                              ((lambda (_L8411_ _L8413_)
                                                 (if (gx#identifier? _L8413_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'define-values)
                                                           (cons (cons _L8413_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '())
                         (cons _L8411_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g83358374_
                                                      _g83368378_)))
                                               _hd83678405_
                                               _hd83648395_)
                                              (_g83358374_ _g83368378_))))
                                      (_g83358374_ _g83368378_))))
                              (_g83358374_ _g83368378_))))
                      (_g83358374_ _g83368378_))))
               (_g83338527_
                (lambda (_g83368433_)
                  (if (gx#stx-pair? _g83368433_)
                      (let ((_e83408436_ (gx#syntax-e _g83368433_)))
                        (let ((_hd83418440_ (##car _e83408436_))
                              (_tl83428443_ (##cdr _e83408436_)))
                          (if (gx#stx-pair? _tl83428443_)
                              (let ((_e83438446_ (gx#syntax-e _tl83428443_)))
                                (let ((_hd83448450_ (##car _e83438446_))
                                      (_tl83458453_ (##cdr _e83438446_)))
                                  (if (gx#stx-pair? _hd83448450_)
                                      (let ((_e83468456_
                                             (gx#syntax-e _hd83448450_)))
                                        (let ((_hd83478460_
                                               (##car _e83468456_))
                                              (_tl83488463_
                                               (##cdr _e83468456_)))
                                          (if (gx#stx-pair/null? _tl83458453_)
                                              (if (fx>= (gx#stx-length
                                                         _tl83458453_)
                                                        '0)
                                                  (let ((_g35447_
                                                         (gx#syntax-split-splice
                                                          _tl83458453_
                                                          '0)))
                                                    (begin
                                                      (let ((_g35448_
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g35447_)
                         (##vector-length _g35447_)
                         1)))
                (if (not (##fx= _g35448_ 2))
                    (error "Context expects 2 values" _g35448_)))
              (let ((_target83498466_ (##vector-ref _g35447_ 0))
                    (_tl83518469_ (##vector-ref _g35447_ 1)))
                (if (gx#stx-null? _tl83518469_)
                    (letrec ((_loop83528472_
                              (lambda (_hd83508476_ _body83568479_)
                                (if (gx#stx-pair? _hd83508476_)
                                    (let ((_e83538482_
                                           (gx#syntax-e _hd83508476_)))
                                      (let ((_lp-hd83548486_
                                             (##car _e83538482_))
                                            (_lp-tl83558489_
                                             (##cdr _e83538482_)))
                                        (_loop83528472_
                                         _lp-tl83558489_
                                         (cons _lp-hd83548486_
                                               _body83568479_))))
                                    (let ((_body83578492_
                                           (reverse _body83568479_)))
                                      ((lambda (_L8496_ _L8498_ _L8499_)
                                         (if (gx#identifier? _L8499_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'define-values)
                                                   (cons (cons _L8499_ '())
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'lambda)
                             (cons _L8498_
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g85188521_ _g85198524_)
                                              (cons _g85188521_ _g85198524_))
                                            '()
                                            _L8496_))))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g83348429_ _g83368433_)))
                                       _body83578492_
                                       _tl83488463_
                                       _hd83478460_))))))
                      (_loop83528472_ _target83498466_ '()))
                    (_g83348429_ _g83368433_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g83348429_ _g83368433_))
                                              (_g83348429_ _g83368433_))))
                                      (_g83348429_ _g83368433_))))
                              (_g83348429_ _g83368433_))))
                      (_g83348429_ _g83368433_)))))
          (_g83338527_ _$stx8330_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#def*|
      (lambda (_$stx8532_)
        (let* ((_g85368560_
                (lambda (_g85378556_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g85378556_)))
               (_g85358645_
                (lambda (_g85378564_)
                  (if (gx#stx-pair? _g85378564_)
                      (let ((_e85408567_ (gx#syntax-e _g85378564_)))
                        (let ((_hd85418571_ (##car _e85408567_))
                              (_tl85428574_ (##cdr _e85408567_)))
                          (if (gx#stx-pair? _tl85428574_)
                              (let ((_e85438577_ (gx#syntax-e _tl85428574_)))
                                (let ((_hd85448581_ (##car _e85438577_))
                                      (_tl85458584_ (##cdr _e85438577_)))
                                  (if (gx#stx-pair/null? _tl85458584_)
                                      (if (fx>= (gx#stx-length _tl85458584_)
                                                '0)
                                          (let ((_g35449_
                                                 (gx#syntax-split-splice
                                                  _tl85458584_
                                                  '0)))
                                            (begin
                                              (let ((_g35450_
                                                     (if (##values? _g35449_)
                                                         (##vector-length
                                                          _g35449_)
                                                         1)))
                                                (if (not (##fx= _g35450_ 2))
                                                    (error "Context expects 2 values"
                                                           _g35450_)))
                                              (let ((_target85468587_
                                                     (##vector-ref _g35449_ 0))
                                                    (_tl85488590_
                                                     (##vector-ref
                                                      _g35449_
                                                      1)))
                                                (if (gx#stx-null? _tl85488590_)
                                                    (letrec ((_loop85498593_
                                                              (lambda (_hd85478597_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _clauses85538600_)
                        (if (gx#stx-pair? _hd85478597_)
                            (let ((_e85508603_ (gx#syntax-e _hd85478597_)))
                              (let ((_lp-hd85518607_ (##car _e85508603_))
                                    (_lp-tl85528610_ (##cdr _e85508603_)))
                                (_loop85498593_
                                 _lp-tl85528610_
                                 (cons _lp-hd85518607_ _clauses85538600_))))
                            (let ((_clauses85548613_
                                   (reverse _clauses85538600_)))
                              ((lambda (_L8617_ _L8619_)
                                 (if (gx#identifier? _L8619_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'define-values)
                                           (cons (cons _L8619_ '())
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'case-lambda)
                                                             (begin
                                                               '#!void
                                                               (foldr (lambda (_g86368639_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g86378642_)
                                (cons _g86368639_ _g86378642_))
                              '()
                              _L8617_)))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_g85368560_ _g85378564_)))
                               _clauses85548613_
                               _hd85448581_))))))
              (_loop85498593_ _target85468587_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g85368560_
                                                     _g85378564_)))))
                                          (_g85368560_ _g85378564_))
                                      (_g85368560_ _g85378564_))))
                              (_g85368560_ _g85378564_))))
                      (_g85368560_ _g85378564_)))))
          (_g85358645_ _$stx8532_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#defvalues|
      (lambda (_$stx8650_)
        (let* ((_g86548672_
                (lambda (_g86558668_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g86558668_)))
               (_g86538727_
                (lambda (_g86558676_)
                  (if (gx#stx-pair? _g86558676_)
                      (let ((_e86588679_ (gx#syntax-e _g86558676_)))
                        (let ((_hd86598683_ (##car _e86588679_))
                              (_tl86608686_ (##cdr _e86588679_)))
                          (if (gx#stx-pair? _tl86608686_)
                              (let ((_e86618689_ (gx#syntax-e _tl86608686_)))
                                (let ((_hd86628693_ (##car _e86618689_))
                                      (_tl86638696_ (##cdr _e86618689_)))
                                  (if (gx#stx-pair? _tl86638696_)
                                      (let ((_e86648699_
                                             (gx#syntax-e _tl86638696_)))
                                        (let ((_hd86658703_
                                               (##car _e86648699_))
                                              (_tl86668706_
                                               (##cdr _e86648699_)))
                                          (if (gx#stx-null? _tl86668706_)
                                              ((lambda (_L8709_ _L8711_)
                                                 (if (gx#identifier-list?
                                                      _L8711_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'define-values)
                                                           (cons _L8711_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L8709_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g86548672_
                                                      _g86558676_)))
                                               _hd86658703_
                                               _hd86628693_)
                                              (_g86548672_ _g86558676_))))
                                      (_g86548672_ _g86558676_))))
                              (_g86548672_ _g86558676_))))
                      (_g86548672_ _g86558676_)))))
          (_g86538727_ _$stx8650_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#case|
      (lambda (_$stx8731_)
        (let* ((_g87358759_
                (lambda (_g87368755_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g87368755_)))
               (_g87348844_
                (lambda (_g87368763_)
                  (if (gx#stx-pair? _g87368763_)
                      (let ((_e87398766_ (gx#syntax-e _g87368763_)))
                        (let ((_hd87408770_ (##car _e87398766_))
                              (_tl87418773_ (##cdr _e87398766_)))
                          (if (gx#stx-pair? _tl87418773_)
                              (let ((_e87428776_ (gx#syntax-e _tl87418773_)))
                                (let ((_hd87438780_ (##car _e87428776_))
                                      (_tl87448783_ (##cdr _e87428776_)))
                                  (if (gx#stx-pair/null? _tl87448783_)
                                      (if (fx>= (gx#stx-length _tl87448783_)
                                                '0)
                                          (let ((_g35451_
                                                 (gx#syntax-split-splice
                                                  _tl87448783_
                                                  '0)))
                                            (begin
                                              (let ((_g35452_
                                                     (if (##values? _g35451_)
                                                         (##vector-length
                                                          _g35451_)
                                                         1)))
                                                (if (not (##fx= _g35452_ 2))
                                                    (error "Context expects 2 values"
                                                           _g35452_)))
                                              (let ((_target87458786_
                                                     (##vector-ref _g35451_ 0))
                                                    (_tl87478789_
                                                     (##vector-ref
                                                      _g35451_
                                                      1)))
                                                (if (gx#stx-null? _tl87478789_)
                                                    (letrec ((_loop87488792_
                                                              (lambda (_hd87468796_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _clause87528799_)
                        (if (gx#stx-pair? _hd87468796_)
                            (let ((_e87498802_ (gx#syntax-e _hd87468796_)))
                              (let ((_lp-hd87508806_ (##car _e87498802_))
                                    (_lp-tl87518809_ (##cdr _e87498802_)))
                                (_loop87488792_
                                 _lp-tl87518809_
                                 (cons _lp-hd87508806_ _clause87528799_))))
                            (let ((_clause87538812_
                                   (reverse _clause87528799_)))
                              ((lambda (_L8816_ _L8818_)
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (cons (gx#datum->syntax '#f '$e)
                                                   (cons _L8818_ '()))
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '~case)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                '$e)
                                                               (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#!void
                         (foldr (lambda (_g88358838_ _g88368841_)
                                  (cons _g88358838_ _g88368841_))
                                '()
                                _L8816_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                               _clause87538812_
                               _hd87438780_))))))
              (_loop87488792_ _target87458786_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g87358759_
                                                     _g87368763_)))))
                                          (_g87358759_ _g87368763_))
                                      (_g87358759_ _g87368763_))))
                              (_g87358759_ _g87368763_))))
                      (_g87358759_ _g87368763_)))))
          (_g87348844_ _$stx8731_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#~case|
      (lambda (_stx8849_)
        (letrec ((_parse-clauses8852_
                  (lambda (_e11315_ _clauses11317_)
                    (let _lp11319_ ((_rest11322_ _clauses11317_)
                                    (_datums11324_ '())
                                    (_dispatch11325_ '())
                                    (_default11326_ '#f))
                      (let* ((_g1132911341_
                              (lambda (_g1133011337_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1133011337_)))
                             (_g1132811356_
                              (lambda (_g1133011345_)
                                (if (gx#stx-null? _g1133011345_)
                                    ((lambda ()
                                       (begin
                                         (_check-duplicate-datums8854_
                                          _datums11324_)
                                         (values (reverse _datums11324_)
                                                 (reverse _dispatch11325_)
                                                 (let ((_$e11352_
                                                        _default11326_))
                                                   (if _$e11352_
                                                       _$e11352_
                                                       '#!void))))))
                                    (_g1132911341_ _g1133011345_))))
                             (_g1132711787_
                              (lambda (_g1133011360_)
                                (if (gx#stx-pair? _g1133011360_)
                                    (let ((_e1133311363_
                                           (gx#syntax-e _g1133011360_)))
                                      (let ((_hd1133411367_
                                             (##car _e1133311363_))
                                            (_tl1133511370_
                                             (##cdr _e1133311363_)))
                                        ((lambda (_L11373_ _L11375_)
                                           (let* ((_g1139211455_
                                                   (lambda (_g1139311451_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g1139311451_)))
                                                  (_g1139111578_
                                                   (lambda (_g1139311459_)
                                                     (if (gx#stx-pair?
                                                          _g1139311459_)
                                                         (let ((_e1142911462_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1139311459_)))
                   (let ((_hd1143011466_ (##car _e1142911462_))
                         (_tl1143111469_ (##cdr _e1142911462_)))
                     (if (gx#stx-pair/null? _hd1143011466_)
                         (if (fx>= (gx#stx-length _hd1143011466_) '0)
                             (let ((_g35453_
                                    (gx#syntax-split-splice
                                     _hd1143011466_
                                     '0)))
                               (begin
                                 (let ((_g35454_
                                        (if (##values? _g35453_)
                                            (##vector-length _g35453_)
                                            1)))
                                   (if (not (##fx= _g35454_ 2))
                                       (error "Context expects 2 values"
                                              _g35454_)))
                                 (let ((_target1143211472_
                                        (##vector-ref _g35453_ 0))
                                       (_tl1143411475_
                                        (##vector-ref _g35453_ 1)))
                                   (if (gx#stx-null? _tl1143411475_)
                                       (letrec ((_loop1143511478_
                                                 (lambda (_hd1143311482_
                                                          _datum1143911485_)
                                                   (if (gx#stx-pair?
                                                        _hd1143311482_)
                                                       (let ((_e1143611488_
                                                              (gx#syntax-e
                                                               _hd1143311482_)))
                                                         (let ((_lp-hd1143711492_
                                                                (##car _e1143611488_))
                                                               (_lp-tl1143811495_
                                                                (##cdr _e1143611488_)))
                                                           (_loop1143511478_
                                                            _lp-tl1143811495_
                                                            (cons _lp-hd1143711492_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _datum1143911485_))))
               (let ((_datum1144011498_ (reverse _datum1143911485_)))
                 (if (gx#stx-pair/null? _tl1143111469_)
                     (if (fx>= (gx#stx-length _tl1143111469_) '0)
                         (let ((_g35455_
                                (gx#syntax-split-splice _tl1143111469_ '0)))
                           (begin
                             (let ((_g35456_
                                    (if (##values? _g35455_)
                                        (##vector-length _g35455_)
                                        1)))
                               (if (not (##fx= _g35456_ 2))
                                   (error "Context expects 2 values"
                                          _g35456_)))
                             (let ((_target1144111502_
                                    (##vector-ref _g35455_ 0))
                                   (_tl1144311505_ (##vector-ref _g35455_ 1)))
                               (if (gx#stx-null? _tl1144311505_)
                                   (letrec ((_loop1144411508_
                                             (lambda (_hd1144211512_
                                                      _body1144811515_)
                                               (if (gx#stx-pair?
                                                    _hd1144211512_)
                                                   (let ((_e1144511518_
                                                          (gx#syntax-e
                                                           _hd1144211512_)))
                                                     (let ((_lp-hd1144611522_
                                                            (##car _e1144511518_))
                                                           (_lp-tl1144711525_
                                                            (##cdr _e1144511518_)))
                                                       (_loop1144411508_
                                                        _lp-tl1144711525_
                                                        (cons _lp-hd1144611522_
                                                              _body1144811515_))))
                                                   (let ((_body1144911528_
                                                          (reverse _body1144811515_)))
                                                     ((lambda (_L11532_
                                                               _L11534_)
                                                        (if (null? (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#!void
                             (foldr (lambda (_g1155311556_ _g1155411559_)
                                      (cons _g1155311556_ _g1155411559_))
                                    '()
                                    _L11534_)))
                    (_lp11319_
                     _L11373_
                     _datums11324_
                     _dispatch11325_
                     _default11326_)
                    (_lp11319_
                     _L11373_
                     (cons (map gx#stx-e
                                (begin
                                  '#!void
                                  (foldr (lambda (_g1156111564_ _g1156211567_)
                                           (cons _g1156111564_ _g1156211567_))
                                         '()
                                         _L11534_)))
                           _datums11324_)
                     (cons (cons (gx#datum->syntax '#f 'begin)
                                 (begin
                                   '#!void
                                   (foldr (lambda (_g1156911572_ _g1157011575_)
                                            (cons _g1156911572_ _g1157011575_))
                                          '()
                                          _L11532_)))
                           _dispatch11325_)
                     _default11326_)))
              _body1144911528_
              _datum1144011498_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop1144411508_ _target1144111502_ '()))
                                   (_g1139211455_ _g1139311459_)))))
                         (_g1139211455_ _g1139311459_))
                     (_g1139211455_ _g1139311459_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop1143511478_
                                          _target1143211472_
                                          '()))
                                       (_g1139211455_ _g1139311459_)))))
                             (_g1139211455_ _g1139311459_))
                         (_g1139211455_ _g1139311459_))))
                 (_g1139211455_ _g1139311459_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1139011713_
                                                   (lambda (_g1139311582_)
                                                     (if (gx#stx-pair?
                                                          _g1139311582_)
                                                         (let ((_e1140911585_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1139311582_)))
                   (let ((_hd1141011589_ (##car _e1140911585_))
                         (_tl1141111592_ (##cdr _e1140911585_)))
                     (if (gx#stx-pair/null? _hd1141011589_)
                         (if (fx>= (gx#stx-length _hd1141011589_) '0)
                             (let ((_g35457_
                                    (gx#syntax-split-splice
                                     _hd1141011589_
                                     '0)))
                               (begin
                                 (let ((_g35458_
                                        (if (##values? _g35457_)
                                            (##vector-length _g35457_)
                                            1)))
                                   (if (not (##fx= _g35458_ 2))
                                       (error "Context expects 2 values"
                                              _g35458_)))
                                 (let ((_target1141211595_
                                        (##vector-ref _g35457_ 0))
                                       (_tl1141411598_
                                        (##vector-ref _g35457_ 1)))
                                   (if (gx#stx-null? _tl1141411598_)
                                       (letrec ((_loop1141511601_
                                                 (lambda (_hd1141311605_
                                                          _datum1141911608_)
                                                   (if (gx#stx-pair?
                                                        _hd1141311605_)
                                                       (let ((_e1141611611_
                                                              (gx#syntax-e
                                                               _hd1141311605_)))
                                                         (let ((_lp-hd1141711615_
                                                                (##car _e1141611611_))
                                                               (_lp-tl1141811618_
                                                                (##cdr _e1141611611_)))
                                                           (_loop1141511601_
                                                            _lp-tl1141811618_
                                                            (cons _lp-hd1141711615_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _datum1141911608_))))
               (let ((_datum1142011621_ (reverse _datum1141911608_)))
                 (if (gx#stx-pair? _tl1141111592_)
                     (let ((_e1142111625_ (gx#syntax-e _tl1141111592_)))
                       (let ((_hd1142211629_ (##car _e1142111625_))
                             (_tl1142311632_ (##cdr _e1142111625_)))
                         (if (gx#identifier? _hd1142211629_)
                             (if (gx#free-identifier=?
                                  |gerbil/core$<sugar>$<sugar:2>[1]#_g35459_|
                                  _hd1142211629_)
                                 (if (gx#stx-pair? _tl1142311632_)
                                     (let ((_e1142411635_
                                            (gx#syntax-e _tl1142311632_)))
                                       (let ((_hd1142511639_
                                              (##car _e1142411635_))
                                             (_tl1142611642_
                                              (##cdr _e1142411635_)))
                                         (if (gx#stx-null? _tl1142611642_)
                                             ((lambda (_L11645_ _L11647_)
                                                (if (null? (begin
                                                             '#!void
                                                             (foldr (lambda (_g1166511668_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1166611671_)
                              (cons _g1166511668_ _g1166611671_))
                            '()
                            _L11647_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_lp11319_
                                                     _L11373_
                                                     _datums11324_
                                                     _dispatch11325_
                                                     _default11326_)
                                                    (let* ((_g1167411682_
                                                            (lambda (_g1167511678_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g1167511678_)))
                                                           (_g1167311709_
                                                            (lambda (_g1167511686_)
                                                              ((lambda (_L11689_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (_lp11319_
                            _L11373_
                            (cons (map gx#stx-e
                                       (begin
                                         '#!void
                                         (foldr (lambda (_g1170011703_
                                                         _g1170111706_)
                                                  (cons _g1170011703_
                                                        _g1170111706_))
                                                '()
                                                _L11647_)))
                                  _datums11324_)
                            (cons (cons _L11645_ (cons _L11689_ '()))
                                  _dispatch11325_)
                            _default11326_)))
                       _g1167511686_))))
              (_g1167311709_ _e11315_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd1142511639_
                                              _datum1142011621_)
                                             (_g1139111578_ _g1139311582_))))
                                     (_g1139111578_ _g1139311582_))
                                 (_g1139111578_ _g1139311582_))
                             (_g1139111578_ _g1139311582_))))
                     (_g1139111578_ _g1139311582_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop1141511601_
                                          _target1141211595_
                                          '()))
                                       (_g1139111578_ _g1139311582_)))))
                             (_g1139111578_ _g1139311582_))
                         (_g1139111578_ _g1139311582_))))
                 (_g1139111578_ _g1139311582_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1138911783_
                                                   (lambda (_g1139311717_)
                                                     (if (gx#stx-pair?
                                                          _g1139311717_)
                                                         (let ((_e1139511720_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1139311717_)))
                   (let ((_hd1139611724_ (##car _e1139511720_))
                         (_tl1139711727_ (##cdr _e1139511720_)))
                     (if (gx#identifier? _hd1139611724_)
                         (if (gx#free-identifier=?
                              |gerbil/core$<sugar>$<sugar:2>[1]#_g35460_|
                              _hd1139611724_)
                             (if (gx#stx-pair/null? _tl1139711727_)
                                 (if (fx>= (gx#stx-length _tl1139711727_) '0)
                                     (let ((_g35461_
                                            (gx#syntax-split-splice
                                             _tl1139711727_
                                             '0)))
                                       (begin
                                         (let ((_g35462_
                                                (if (##values? _g35461_)
                                                    (##vector-length _g35461_)
                                                    1)))
                                           (if (not (##fx= _g35462_ 2))
                                               (error "Context expects 2 values"
                                                      _g35462_)))
                                         (let ((_target1139811730_
                                                (##vector-ref _g35461_ 0))
                                               (_tl1140011733_
                                                (##vector-ref _g35461_ 1)))
                                           (if (gx#stx-null? _tl1140011733_)
                                               (letrec ((_loop1140111736_
                                                         (lambda (_hd1139911740_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _body1140511743_)
                   (if (gx#stx-pair? _hd1139911740_)
                       (let ((_e1140211746_ (gx#syntax-e _hd1139911740_)))
                         (let ((_lp-hd1140311750_ (##car _e1140211746_))
                               (_lp-tl1140411753_ (##cdr _e1140211746_)))
                           (_loop1140111736_
                            _lp-tl1140411753_
                            (cons _lp-hd1140311750_ _body1140511743_))))
                       (let ((_body1140611756_ (reverse _body1140511743_)))
                         ((lambda (_L11760_)
                            (if (gx#stx-null? _L11373_)
                                (if _default11326_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Duplicate else clause"
                                     _stx8849_
                                     _L11375_)
                                    (_lp11319_
                                     _L11373_
                                     _datums11324_
                                     _dispatch11325_
                                     (cons (gx#datum->syntax '#f 'begin)
                                           (begin
                                             '#!void
                                             (foldr (lambda (_g1177411777_
                                                             _g1177511780_)
                                                      (cons _g1177411777_
                                                            _g1177511780_))
                                                    '()
                                                    _L11760_)))))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Misplaced else clause"
                                 _stx8849_
                                 _L11375_)))
                          _body1140611756_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1140111736_
                                                  _target1139811730_
                                                  '()))
                                               (_g1139011713_
                                                _g1139311717_)))))
                                     (_g1139011713_ _g1139311717_))
                                 (_g1139011713_ _g1139311717_))
                             (_g1139011713_ _g1139311717_))
                         (_g1139011713_ _g1139311717_))))
                 (_g1139011713_ _g1139311717_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1138911783_ _L11375_)))
                                         _tl1133511370_
                                         _hd1133411367_)))
                                    (_g1132811356_ _g1133011360_)))))
                        (_g1132711787_ _rest11322_)))))
                 (_check-duplicate-datums8854_
                  (lambda (_datums11303_)
                    (let ((_ht11306_ (make-hash-table)))
                      (for-each
                       (lambda (_lst11309_)
                         (for-each
                          (lambda (_datum11312_)
                            (if (hash-get _ht11306_ _datum11312_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Duplicate datum"
                                 _stx8849_
                                 _datum11312_)
                                (hash-put! _ht11306_ _datum11312_ '#t)))
                          _lst11309_))
                       _datums11303_))))
                 (_count-datums8855_
                  (lambda (_datums11296_)
                    (foldl (lambda (_lst11299_ _r11301_)
                             (+ (length _lst11299_) _r11301_))
                           '0
                           _datums11296_)))
                 (_symbolic-datums?8856_
                  (lambda (_datums11290_)
                    (andmap (lambda (_lst11293_) (andmap symbol? _lst11293_))
                            _datums11290_)))
                 (_char-datums?8857_
                  (lambda (_datums11284_)
                    (andmap (lambda (_lst11287_) (andmap char? _lst11287_))
                            _datums11284_)))
                 (_fixnum-datums?8858_
                  (lambda (_datums11278_)
                    (andmap (lambda (_lst11281_) (andmap fixnum? _lst11281_))
                            _datums11278_)))
                 (_eq-datums?8859_
                  (lambda (_datums11261_)
                    (andmap (lambda (_lst11264_)
                              (andmap (lambda (_x11267_)
                                        (let ((_$e11270_ (symbol? _x11267_)))
                                          (if _$e11270_
                                              _$e11270_
                                              (let ((_$e11274_
                                                     (keyword? _x11267_)))
                                                (if _$e11274_
                                                    _$e11274_
                                                    (immediate? _x11267_))))))
                                      _lst11264_))
                            _datums11261_)))
                 (_generate-simple-case8860_
                  (lambda (_e11025_
                           _datums11027_
                           _dispatch11028_
                           _default11029_)
                    (let* ((_g1103111039_
                            (lambda (_g1103211035_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1103211035_)))
                           (_g1103011257_
                            (lambda (_g1103211043_)
                              ((lambda (_L11046_)
                                 (let ()
                                   (let _recur11058_ ((_datums11061_
                                                       _datums11027_)
                                                      (_dispatch11063_
                                                       _dispatch11028_))
                                     (let* ((_g1106611087_
                                             (lambda (_g1106711083_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1106711083_)))
                                            (_g1106511098_
                                             (lambda (_g1106711091_)
                                               ((lambda () _default11029_))))
                                            (_g1106411253_
                                             (lambda (_g1106711102_)
                                               (if (gx#stx-pair? _g1106711102_)
                                                   (let ((_e1107011105_
                                                          (gx#syntax-e
                                                           _g1106711102_)))
                                                     (let ((_hd1107111109_
                                                            (##car _e1107011105_))
                                                           (_tl1107211112_
                                                            (##cdr _e1107011105_)))
                                                       (if (gx#stx-pair/null?
                                                            _hd1107111109_)
                                                           (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd1107111109_)
                             '0)
                       (let ((_g35463_
                              (gx#syntax-split-splice _hd1107111109_ '0)))
                         (begin
                           (let ((_g35464_
                                  (if (##values? _g35463_)
                                      (##vector-length _g35463_)
                                      1)))
                             (if (not (##fx= _g35464_ 2))
                                 (error "Context expects 2 values" _g35464_)))
                           (let ((_target1107311115_ (##vector-ref _g35463_ 0))
                                 (_tl1107511118_ (##vector-ref _g35463_ 1)))
                             (if (gx#stx-null? _tl1107511118_)
                                 (letrec ((_loop1107611121_
                                           (lambda (_hd1107411125_
                                                    _datum1108011128_)
                                             (if (gx#stx-pair? _hd1107411125_)
                                                 (let ((_e1107711131_
                                                        (gx#syntax-e
                                                         _hd1107411125_)))
                                                   (let ((_lp-hd1107811135_
                                                          (##car _e1107711131_))
                                                         (_lp-tl1107911138_
                                                          (##cdr _e1107711131_)))
                                                     (_loop1107611121_
                                                      _lp-tl1107911138_
                                                      (cons _lp-hd1107811135_
                                                            _datum1108011128_))))
                                                 (let ((_datum1108111141_
                                                        (reverse _datum1108011128_)))
                                                   ((lambda (_L11145_ _L11147_)
                                                      (let* ((_g1116711179_
                                                              (lambda (_g1116811175_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax"
                         _g1116811175_)))
                     (_g1116611249_
                      (lambda (_g1116811183_)
                        (if (gx#stx-pair? _g1116811183_)
                            (let ((_e1117111186_ (gx#syntax-e _g1116811183_)))
                              (let ((_hd1117211190_ (##car _e1117111186_))
                                    (_tl1117311193_ (##cdr _e1117111186_)))
                                ((lambda (_L11196_ _L11198_)
                                   (let* ((_g1121011218_
                                           (lambda (_g1121111214_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1121111214_)))
                                          (_g1120911245_
                                           (lambda (_g1121111222_)
                                             ((lambda (_L11225_)
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
                              (foldr (lambda (_g1123611239_ _g1123711242_)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '~case-test)
                                                   (cons _g1123611239_
                                                         (cons _L11046_ '())))
                                             _g1123711242_))
                                     '()
                                     _L11147_)))
                      (cons _L11198_ (cons _L11225_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _g1121111222_))))
                                     (_g1120911245_
                                      (_recur11058_ _L11145_ _L11196_))))
                                 _tl1117311193_
                                 _hd1117211190_)))
                            (_g1116711179_ _g1116811183_)))))
                (_g1116611249_ _dispatch11063_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl1107211112_
                                                    _datum1108111141_))))))
                                   (_loop1107611121_ _target1107311115_ '()))
                                 (_g1106511098_ _g1106711102_)))))
                       (_g1106511098_ _g1106711102_))
                   (_g1106511098_ _g1106711102_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1106511098_
                                                    _g1106711102_)))))
                                       (_g1106411253_ _datums11061_)))))
                               _g1103211043_))))
                      (_g1103011257_ _e11025_))))
                 (_datum-dispatch-index8861_
                  (lambda (_datums10897_)
                    (let _lp10900_ ((_rest10903_ _datums10897_)
                                    (_ix10905_ '0)
                                    (_r10906_ '()))
                      (let* ((_g1090910930_
                              (lambda (_g1091010926_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1091010926_)))
                             (_g1090810941_
                              (lambda (_g1091010934_) ((lambda () _r10906_))))
                             (_g1090711021_
                              (lambda (_g1091010945_)
                                (if (gx#stx-pair? _g1091010945_)
                                    (let ((_e1091310948_
                                           (gx#syntax-e _g1091010945_)))
                                      (let ((_hd1091410952_
                                             (##car _e1091310948_))
                                            (_tl1091510955_
                                             (##cdr _e1091310948_)))
                                        (if (gx#stx-pair/null? _hd1091410952_)
                                            (if (fx>= (gx#stx-length
                                                       _hd1091410952_)
                                                      '0)
                                                (let ((_g35465_
                                                       (gx#syntax-split-splice
                                                        _hd1091410952_
                                                        '0)))
                                                  (begin
                                                    (let ((_g35466_
                                                           (if (##values?
                                                                _g35465_)
                                                               (##vector-length
                                                                _g35465_)
                                                               1)))
                                                      (if (not (##fx= _g35466_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                  (error "Context expects 2 values" _g35466_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1091610958_
                                                           (##vector-ref
                                                            _g35465_
                                                            0))
                                                          (_tl1091810961_
                                                           (##vector-ref
                                                            _g35465_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl1091810961_)
                                                          (letrec ((_loop1091910964_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1091710968_ _datum1092310971_)
                              (if (gx#stx-pair? _hd1091710968_)
                                  (let ((_e1092010974_
                                         (gx#syntax-e _hd1091710968_)))
                                    (let ((_lp-hd1092110978_
                                           (##car _e1092010974_))
                                          (_lp-tl1092210981_
                                           (##cdr _e1092010974_)))
                                      (_loop1091910964_
                                       _lp-tl1092210981_
                                       (cons _lp-hd1092110978_
                                             _datum1092310971_))))
                                  (let ((_datum1092410984_
                                         (reverse _datum1092310971_)))
                                    ((lambda (_L10988_ _L10990_)
                                       (_lp10900_
                                        _L10988_
                                        (fx1+ _ix10905_)
                                        (foldl (lambda (_x11009_ _r11011_)
                                                 (cons (cons _x11009_
                                                             _ix10905_)
                                                       _r11011_))
                                               _r10906_
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g1101211015_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1101311018_)
                  (cons _g1101211015_ _g1101311018_))
                '()
                _L10990_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _tl1091510955_
                                     _datum1092410984_))))))
                    (_loop1091910964_ _target1091610958_ '()))
                  (_g1090810941_ _g1091010945_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1090810941_ _g1091010945_))
                                            (_g1090810941_ _g1091010945_))))
                                    (_g1090810941_ _g1091010945_)))))
                        (_g1090711021_ _rest10903_)))))
                 (_duplicate-indexes?8862_
                  (lambda (_xs10878_)
                    (let ((_ht10881_ (make-hash-table-eq)))
                      (let _lp10884_ ((_rest10887_ _xs10878_))
                        (if (pair? _rest10887_)
                            (let* ((_ix10890_ (car _rest10887_))
                                   (_$e10893_ (hash-get _ht10881_ _ix10890_)))
                              (if _$e10893_
                                  _$e10893_
                                  (begin
                                    (hash-put! _ht10881_ _ix10890_ '#t)
                                    (_lp10884_ (cdr _rest10887_)))))
                            '#f)))))
                 (_generate-hash-dispatch-table8863_
                  (lambda (_indexes10847_ _hash-e10849_)
                    (let _lp10851_ ((_len10854_
                                     (* '2 (length _indexes10847_))))
                      (let* ((_hs10860_
                              (map (lambda (_x10857_)
                                     (_hash-e10849_ (car _x10857_)))
                                   _indexes10847_))
                             (_xs10866_
                              (map (lambda (_h10863_)
                                     (fxmodulo _h10863_ _len10854_))
                                   _hs10860_)))
                        (if (_duplicate-indexes?8862_ _xs10866_)
                            (if (< _len10854_ '131072)
                                (_lp10851_ (quotient (fx* _len10854_ '3) '2))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Cannot create perfect dispatch table"
                                 _stx8849_
                                 _indexes10847_))
                            (let ((_tab10871_ (make-vector _len10854_ '#f)))
                              (begin
                                (for-each
                                 (lambda (_entry10874_ _x10876_)
                                   (vector-set!
                                    _tab10871_
                                    _x10876_
                                    _entry10874_))
                                 _indexes10847_
                                 _xs10866_)
                                _tab10871_)))))))
                 (_generate-symbolic-dispatch8864_
                  (lambda (_e10450_
                           _datums10452_
                           _dispatch10453_
                           _default10454_)
                    (let* ((_indexes10456_
                            (_datum-dispatch-index8861_ _datums10452_))
                           (_tab10459_
                            (_generate-hash-dispatch-table8863_
                             _indexes10456_
                             symbol-hash)))
                      (if (= (length _dispatch10453_) '1)
                          (let* ((_tab10467_
                                  (vector-map
                                   (lambda (_x10464_)
                                     (if _x10464_ (car _x10464_) '#f))
                                   _tab10459_))
                                 (_g1047010508_
                                  (lambda (_g1047110504_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g1047110504_)))
                                 (_g1046910639_
                                  (lambda (_g1047110512_)
                                    (if (gx#stx-pair? _g1047110512_)
                                        (let ((_e1047910515_
                                               (gx#syntax-e _g1047110512_)))
                                          (let ((_hd1048010519_
                                                 (##car _e1047910515_))
                                                (_tl1048110522_
                                                 (##cdr _e1047910515_)))
                                            (if (gx#stx-pair? _tl1048110522_)
                                                (let ((_e1048210525_
                                                       (gx#syntax-e
                                                        _tl1048110522_)))
                                                  (let ((_hd1048310529_
                                                         (##car _e1048210525_))
                                                        (_tl1048410532_
                                                         (##cdr _e1048210525_)))
                                                    (if (gx#stx-pair?
                                                         _tl1048410532_)
                                                        (let ((_e1048510535_
                                                               (gx#syntax-e
                                                                _tl1048410532_)))
                                                          (let ((_hd1048610539_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1048510535_))
                        (_tl1048710542_ (##cdr _e1048510535_)))
                    (if (gx#stx-pair? _tl1048710542_)
                        (let ((_e1048810545_ (gx#syntax-e _tl1048710542_)))
                          (let ((_hd1048910549_ (##car _e1048810545_))
                                (_tl1049010552_ (##cdr _e1048810545_)))
                            (if (gx#stx-pair? _hd1048910549_)
                                (let ((_e1049110555_
                                       (gx#syntax-e _hd1048910549_)))
                                  (let ((_hd1049210559_ (##car _e1049110555_))
                                        (_tl1049310562_ (##cdr _e1049110555_)))
                                    (if (gx#stx-null? _tl1049310562_)
                                        (if (gx#stx-pair? _tl1049010552_)
                                            (let ((_e1049410565_
                                                   (gx#syntax-e
                                                    _tl1049010552_)))
                                              (let ((_hd1049510569_
                                                     (##car _e1049410565_))
                                                    (_tl1049610572_
                                                     (##cdr _e1049410565_)))
                                                (if (gx#stx-pair?
                                                     _tl1049610572_)
                                                    (let ((_e1049710575_
                                                           (gx#syntax-e
                                                            _tl1049610572_)))
                                                      (let ((_hd1049810579_
                                                             (##car _e1049710575_))
                                                            (_tl1049910582_
                                                             (##cdr _e1049710575_)))
                                                        (if (gx#stx-pair?
                                                             _tl1049910582_)
                                                            (let ((_e1050010585_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl1049910582_)))
                      (let ((_hd1050110589_ (##car _e1050010585_))
                            (_tl1050210592_ (##cdr _e1050010585_)))
                        (if (gx#stx-null? _tl1050210592_)
                            ((lambda (_L10595_
                                      _L10597_
                                      _L10598_
                                      _L10599_
                                      _L10600_
                                      _L10601_
                                      _L10602_)
                               (let ()
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (cons (cons _L10601_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'lambda)
                             (cons '() (cons _L10598_ '())))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons _L10600_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'quote)
                                   (cons _L10597_ '()))
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
                             (cons _L10602_ '()))
                       (cons (cons (gx#datum->syntax '#f 'let*)
                                   (cons (cons (cons (gx#datum->syntax '#f 'h)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##symbol-hash)
                         (cons _L10602_ '()))
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
                                     (cons _L10595_ '())))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'q)
                         (cons (cons (gx#datum->syntax '#f '##vector-ref)
                                     (cons _L10600_
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
                         (cons (gx#datum->syntax '#f 'q) (cons _L10602_ '())))
                   (cons _L10599_ (cons (cons _L10601_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))
                             (cons (cons _L10601_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))))
                             _hd1050110589_
                             _hd1049810579_
                             _hd1049510569_
                             _hd1049210559_
                             _hd1048610539_
                             _hd1048310529_
                             _hd1048010519_)
                            (_g1047010508_ _g1047110512_))))
                    (_g1047010508_ _g1047110512_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1047010508_
                                                     _g1047110512_))))
                                            (_g1047010508_ _g1047110512_))
                                        (_g1047010508_ _g1047110512_))))
                                (_g1047010508_ _g1047110512_))))
                        (_g1047010508_ _g1047110512_))))
                (_g1047010508_ _g1047110512_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1047010508_
                                                 _g1047110512_))))
                                        (_g1047010508_ _g1047110512_)))))
                            (_g1046910639_
                             (list _e10450_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _dispatch10453_
                                   _default10454_
                                   _tab10467_
                                   (vector-length _tab10467_))))
                          (let* ((_g1064310687_
                                  (lambda (_g1064410683_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g1064410683_)))
                                 (_g1064210843_
                                  (lambda (_g1064410691_)
                                    (if (gx#stx-pair? _g1064410691_)
                                        (let ((_e1065210694_
                                               (gx#syntax-e _g1064410691_)))
                                          (let ((_hd1065310698_
                                                 (##car _e1065210694_))
                                                (_tl1065410701_
                                                 (##cdr _e1065210694_)))
                                            (if (gx#stx-pair? _tl1065410701_)
                                                (let ((_e1065510704_
                                                       (gx#syntax-e
                                                        _tl1065410701_)))
                                                  (let ((_hd1065610708_
                                                         (##car _e1065510704_))
                                                        (_tl1065710711_
                                                         (##cdr _e1065510704_)))
                                                    (if (gx#stx-pair?
                                                         _tl1065710711_)
                                                        (let ((_e1065810714_
                                                               (gx#syntax-e
                                                                _tl1065710711_)))
                                                          (let ((_hd1065910718_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1065810714_))
                        (_tl1066010721_ (##cdr _e1065810714_)))
                    (if (gx#stx-pair? _tl1066010721_)
                        (let ((_e1066110724_ (gx#syntax-e _tl1066010721_)))
                          (let ((_hd1066210728_ (##car _e1066110724_))
                                (_tl1066310731_ (##cdr _e1066110724_)))
                            (if (gx#stx-pair/null? _hd1066210728_)
                                (if (fx>= (gx#stx-length _hd1066210728_) '0)
                                    (let ((_g35467_
                                           (gx#syntax-split-splice
                                            _hd1066210728_
                                            '0)))
                                      (begin
                                        (let ((_g35468_
                                               (if (##values? _g35467_)
                                                   (##vector-length _g35467_)
                                                   1)))
                                          (if (not (##fx= _g35468_ 2))
                                              (error "Context expects 2 values"
                                                     _g35468_)))
                                        (let ((_target1066410734_
                                               (##vector-ref _g35467_ 0))
                                              (_tl1066610737_
                                               (##vector-ref _g35467_ 1)))
                                          (if (gx#stx-null? _tl1066610737_)
                                              (letrec ((_loop1066710740_
                                                        (lambda (_hd1066510744_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _dispatch1067110747_)
                  (if (gx#stx-pair? _hd1066510744_)
                      (let ((_e1066810750_ (gx#syntax-e _hd1066510744_)))
                        (let ((_lp-hd1066910754_ (##car _e1066810750_))
                              (_lp-tl1067010757_ (##cdr _e1066810750_)))
                          (_loop1066710740_
                           _lp-tl1067010757_
                           (cons _lp-hd1066910754_ _dispatch1067110747_))))
                      (let ((_dispatch1067210760_
                             (reverse _dispatch1067110747_)))
                        (if (gx#stx-pair? _tl1066310731_)
                            (let ((_e1067310764_ (gx#syntax-e _tl1066310731_)))
                              (let ((_hd1067410768_ (##car _e1067310764_))
                                    (_tl1067510771_ (##cdr _e1067310764_)))
                                (if (gx#stx-pair? _tl1067510771_)
                                    (let ((_e1067610774_
                                           (gx#syntax-e _tl1067510771_)))
                                      (let ((_hd1067710778_
                                             (##car _e1067610774_))
                                            (_tl1067810781_
                                             (##cdr _e1067610774_)))
                                        (if (gx#stx-pair? _tl1067810781_)
                                            (let ((_e1067910784_
                                                   (gx#syntax-e
                                                    _tl1067810781_)))
                                              (let ((_hd1068010788_
                                                     (##car _e1067910784_))
                                                    (_tl1068110791_
                                                     (##cdr _e1067910784_)))
                                                (if (gx#stx-null?
                                                     _tl1068110791_)
                                                    ((lambda (_L10794_
                                                              _L10796_
                                                              _L10797_
                                                              _L10798_
                                                              _L10799_
                                                              _L10800_
                                                              _L10801_)
                                                       (let ()
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'let)
                                                               (cons (cons (cons _L10800_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons '()
                                                           (cons _L10797_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (cons (cons _L10799_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote)
                                                           (cons _L10796_ '()))
                                                     '()))
                                         '()))
                             (cons (cons (gx#datum->syntax '#f 'if)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'symbol?)
                                                     (cons _L10801_ '()))
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
                                                 (cons _L10801_ '()))
                                           '()))
                               (cons (cons (gx#datum->syntax '#f 'ix)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '##fxmodulo)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'h)
                                                             (cons _L10794_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     (cons (cons (gx#datum->syntax '#f 'q)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '##vector-ref)
                                                             (cons _L10799_
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
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'eq?)
                           (cons (cons (gx#datum->syntax '#f '##car)
                                       (cons (gx#datum->syntax '#f 'q) '()))
                                 (cons _L10801_ '())))
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
                                                           (foldr (lambda (_g1083410837_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g1083510840_)
                            (cons _g1083410837_ _g1083510840_))
                          '()
                          _L10798_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))
                           (cons (cons _L10800_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L10800_ '())
                                                       '()))))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons _L10800_ '())
                                                           '()))))
                                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd1068010788_
                                                     _hd1067710778_
                                                     _hd1067410768_
                                                     _dispatch1067210760_
                                                     _hd1065910718_
                                                     _hd1065610708_
                                                     _hd1065310698_)
                                                    (_g1064310687_
                                                     _g1064410691_))))
                                            (_g1064310687_ _g1064410691_))))
                                    (_g1064310687_ _g1064410691_))))
                            (_g1064310687_ _g1064410691_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop1066710740_
                                                 _target1066410734_
                                                 '()))
                                              (_g1064310687_ _g1064410691_)))))
                                    (_g1064310687_ _g1064410691_))
                                (_g1064310687_ _g1064410691_))))
                        (_g1064310687_ _g1064410691_))))
                (_g1064310687_ _g1064410691_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1064310687_
                                                 _g1064410691_))))
                                        (_g1064310687_ _g1064410691_)))))
                            (_g1064210843_
                             (list _e10450_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _dispatch10453_
                                   _default10454_
                                   _tab10459_
                                   (vector-length _tab10459_))))))))
                 (_max-char8865_
                  (lambda (_datums10439_)
                    (foldl (lambda (_lst10442_ _r10444_)
                             (foldl (lambda (_char10446_ _r10448_)
                                      (max (char->integer _char10446_)
                                           _r10448_))
                                    _r10444_
                                    _lst10442_))
                           '0
                           _datums10439_)))
                 (_generate-char-dispatch-table8866_
                  (lambda (_indexes10418_)
                    (let* ((_ixs10424_
                            (map (lambda (_x10421_)
                                   (char->integer (car _x10421_)))
                                 _indexes10418_))
                           (_len10427_ (fx1+ (foldl max '0 _ixs10424_)))
                           (_vec10430_ (make-vector _len10427_ '#f)))
                      (begin
                        (for-each
                         (lambda (_entry10435_ _x10437_)
                           (vector-set!
                            _vec10430_
                            _x10437_
                            (cdr _entry10435_)))
                         _indexes10418_
                         _ixs10424_)
                        _vec10430_))))
                 (_simple-char-range?8867_
                  (lambda (_tab10394_)
                    (let ((_end10397_ (vector-length _tab10394_)))
                      (let _lp10400_ ((_i10403_ '0))
                        (let ((_ix10406_ (vector-ref _tab10394_ _i10403_)))
                          (if _ix10406_
                              (let _lp210409_ ((_i10412_ (fx1+ _i10403_)))
                                (if (fx< _i10412_ _end10397_)
                                    (let ((_ix*10415_
                                           (vector-ref _tab10394_ _i10412_)))
                                      (if (eq? _ix10406_ _ix*10415_)
                                          (_lp210409_ (fx1+ _i10412_))
                                          '#f))
                                    '#t))
                              (_lp10400_ (fx1+ _i10403_))))))))
                 (_char-range-start8868_
                  (lambda (_tab10385_)
                    (let _lp10388_ ((_i10391_ '0))
                      (if (vector-ref _tab10385_ _i10391_)
                          _i10391_
                          (_lp10388_ (fx1+ _i10391_))))))
                 (_generate-char-dispatch8869_
                  (lambda (_e10008_
                           _datums10010_
                           _dispatch10011_
                           _default10012_)
                    (if (< (_max-char8865_ _datums10010_) '128)
                        (let* ((_indexes10014_
                                (_datum-dispatch-index8861_ _datums10010_))
                               (_tab10017_
                                (_generate-char-dispatch-table8866_
                                 _indexes10014_)))
                          (if (_simple-char-range?8867_ _tab10017_)
                              (let ((_start10022_
                                     (_char-range-start8868_ _tab10017_))
                                    (_end10024_ (vector-length _tab10017_)))
                                (let* ((_g1002610060_
                                        (lambda (_g1002710056_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g1002710056_)))
                                       (_g1002510177_
                                        (lambda (_g1002710064_)
                                          (if (gx#stx-pair? _g1002710064_)
                                              (let ((_e1003410067_
                                                     (gx#syntax-e
                                                      _g1002710064_)))
                                                (let ((_hd1003510071_
                                                       (##car _e1003410067_))
                                                      (_tl1003610074_
                                                       (##cdr _e1003410067_)))
                                                  (if (gx#stx-pair?
                                                       _tl1003610074_)
                                                      (let ((_e1003710077_
                                                             (gx#syntax-e
                                                              _tl1003610074_)))
                                                        (let ((_hd1003810081_
                                                               (##car _e1003710077_))
                                                              (_tl1003910084_
                                                               (##cdr _e1003710077_)))
                                                          (if (gx#stx-pair?
                                                               _tl1003910084_)
                                                              (let ((_e1004010087_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl1003910084_)))
                        (let ((_hd1004110091_ (##car _e1004010087_))
                              (_tl1004210094_ (##cdr _e1004010087_)))
                          (if (gx#stx-pair? _hd1004110091_)
                              (let ((_e1004310097_
                                     (gx#syntax-e _hd1004110091_)))
                                (let ((_hd1004410101_ (##car _e1004310097_))
                                      (_tl1004510104_ (##cdr _e1004310097_)))
                                  (if (gx#stx-null? _tl1004510104_)
                                      (if (gx#stx-pair? _tl1004210094_)
                                          (let ((_e1004610107_
                                                 (gx#syntax-e _tl1004210094_)))
                                            (let ((_hd1004710111_
                                                   (##car _e1004610107_))
                                                  (_tl1004810114_
                                                   (##cdr _e1004610107_)))
                                              (if (gx#stx-pair? _tl1004810114_)
                                                  (let ((_e1004910117_
                                                         (gx#syntax-e
                                                          _tl1004810114_)))
                                                    (let ((_hd1005010121_
                                                           (##car _e1004910117_))
                                                          (_tl1005110124_
                                                           (##cdr _e1004910117_)))
                                                      (if (gx#stx-pair?
                                                           _tl1005110124_)
                                                          (let ((_e1005210127_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1005110124_)))
                    (let ((_hd1005310131_ (##car _e1005210127_))
                          (_tl1005410134_ (##cdr _e1005210127_)))
                      (if (gx#stx-null? _tl1005410134_)
                          ((lambda (_L10137_
                                    _L10139_
                                    _L10140_
                                    _L10141_
                                    _L10142_
                                    _L10143_)
                             (let ()
                               (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons _L10142_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _L10140_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'if)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'char?)
                           (cons _L10143_ '()))
                     (cons (cons (gx#datum->syntax '#f 'let)
                                 (cons (cons (gx#datum->syntax '#f 'ix)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '##char->integer)
                                                         (cons _L10143_ '()))
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
                                         (cons _L10139_ '())))
                             (cons (cons (gx#datum->syntax '#f '##fx<)
                                         (cons (gx#datum->syntax '#f 'ix)
                                               (cons _L10137_ '())))
                                   '())))
                 (cons _L10141_ (cons (cons _L10142_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))
                           (cons (cons _L10142_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                           _hd1005310131_
                           _hd1005010121_
                           _hd1004710111_
                           _hd1004410101_
                           _hd1003810081_
                           _hd1003510071_)
                          (_g1002610060_ _g1002710064_))))
                  (_g1002610060_ _g1002710064_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1002610060_
                                                   _g1002710064_))))
                                          (_g1002610060_ _g1002710064_))
                                      (_g1002610060_ _g1002710064_))))
                              (_g1002610060_ _g1002710064_))))
                      (_g1002610060_ _g1002710064_))))
              (_g1002610060_ _g1002710064_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1002610060_ _g1002710064_)))))
                                  (_g1002510177_
                                   (list _e10008_
                                         (gx#genident 'default)
                                         _dispatch10011_
                                         _default10012_
                                         _start10022_
                                         _end10024_))))
                              (let* ((_g1018110225_
                                      (lambda (_g1018210221_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g1018210221_)))
                                     (_g1018010381_
                                      (lambda (_g1018210229_)
                                        (if (gx#stx-pair? _g1018210229_)
                                            (let ((_e1019010232_
                                                   (gx#syntax-e
                                                    _g1018210229_)))
                                              (let ((_hd1019110236_
                                                     (##car _e1019010232_))
                                                    (_tl1019210239_
                                                     (##cdr _e1019010232_)))
                                                (if (gx#stx-pair?
                                                     _tl1019210239_)
                                                    (let ((_e1019310242_
                                                           (gx#syntax-e
                                                            _tl1019210239_)))
                                                      (let ((_hd1019410246_
                                                             (##car _e1019310242_))
                                                            (_tl1019510249_
                                                             (##cdr _e1019310242_)))
                                                        (if (gx#stx-pair?
                                                             _tl1019510249_)
                                                            (let ((_e1019610252_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl1019510249_)))
                      (let ((_hd1019710256_ (##car _e1019610252_))
                            (_tl1019810259_ (##cdr _e1019610252_)))
                        (if (gx#stx-pair? _tl1019810259_)
                            (let ((_e1019910262_ (gx#syntax-e _tl1019810259_)))
                              (let ((_hd1020010266_ (##car _e1019910262_))
                                    (_tl1020110269_ (##cdr _e1019910262_)))
                                (if (gx#stx-pair/null? _hd1020010266_)
                                    (if (fx>= (gx#stx-length _hd1020010266_)
                                              '0)
                                        (let ((_g35469_
                                               (gx#syntax-split-splice
                                                _hd1020010266_
                                                '0)))
                                          (begin
                                            (let ((_g35470_
                                                   (if (##values? _g35469_)
                                                       (##vector-length
                                                        _g35469_)
                                                       1)))
                                              (if (not (##fx= _g35470_ 2))
                                                  (error "Context expects 2 values"
                                                         _g35470_)))
                                            (let ((_target1020210272_
                                                   (##vector-ref _g35469_ 0))
                                                  (_tl1020410275_
                                                   (##vector-ref _g35469_ 1)))
                                              (if (gx#stx-null? _tl1020410275_)
                                                  (letrec ((_loop1020510278_
                                                            (lambda (_hd1020310282_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _dispatch1020910285_)
                      (if (gx#stx-pair? _hd1020310282_)
                          (let ((_e1020610288_ (gx#syntax-e _hd1020310282_)))
                            (let ((_lp-hd1020710292_ (##car _e1020610288_))
                                  (_lp-tl1020810295_ (##cdr _e1020610288_)))
                              (_loop1020510278_
                               _lp-tl1020810295_
                               (cons _lp-hd1020710292_ _dispatch1020910285_))))
                          (let ((_dispatch1021010298_
                                 (reverse _dispatch1020910285_)))
                            (if (gx#stx-pair? _tl1020110269_)
                                (let ((_e1021110302_
                                       (gx#syntax-e _tl1020110269_)))
                                  (let ((_hd1021210306_ (##car _e1021110302_))
                                        (_tl1021310309_ (##cdr _e1021110302_)))
                                    (if (gx#stx-pair? _tl1021310309_)
                                        (let ((_e1021410312_
                                               (gx#syntax-e _tl1021310309_)))
                                          (let ((_hd1021510316_
                                                 (##car _e1021410312_))
                                                (_tl1021610319_
                                                 (##cdr _e1021410312_)))
                                            (if (gx#stx-pair? _tl1021610319_)
                                                (let ((_e1021710322_
                                                       (gx#syntax-e
                                                        _tl1021610319_)))
                                                  (let ((_hd1021810326_
                                                         (##car _e1021710322_))
                                                        (_tl1021910329_
                                                         (##cdr _e1021710322_)))
                                                    (if (gx#stx-null?
                                                         _tl1021910329_)
                                                        ((lambda (_L10332_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L10334_
                          _L10335_
                          _L10336_
                          _L10337_
                          _L10338_
                          _L10339_)
                   (let ()
                     (cons (gx#datum->syntax '#f 'let)
                           (cons (cons (cons _L10338_
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'lambda)
                                                         (cons '()
                                                               (cons _L10335_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                       (cons (cons _L10337_
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'quote)
                                                               (cons _L10334_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'if)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'char?)
                                                         (cons _L10339_ '()))
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
                                               (cons _L10339_ '()))
                                         '()))
                             (cons (cons (gx#datum->syntax '#f 'if)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fx<)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'ix)
                                                           (cons _L10332_
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
                                           (cons _L10337_
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
                                                               (foldr (lambda (_g1037210375_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1037310378_)
                                (cons _g1037210375_ _g1037310378_))
                              '()
                              _L10336_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L10338_ '())
                                                       '()))))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons _L10338_ '())
                                                           '()))))
                                   '())))
                 (cons (cons _L10338_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))))
                 _hd1021810326_
                 _hd1021510316_
                 _hd1021210306_
                 _dispatch1021010298_
                 _hd1019710256_
                 _hd1019410246_
                 _hd1019110236_)
                (_g1018110225_ _g1018210229_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1018110225_
                                                 _g1018210229_))))
                                        (_g1018110225_ _g1018210229_))))
                                (_g1018110225_ _g1018210229_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1020510278_
                                                     _target1020210272_
                                                     '()))
                                                  (_g1018110225_
                                                   _g1018210229_)))))
                                        (_g1018110225_ _g1018210229_))
                                    (_g1018110225_ _g1018210229_))))
                            (_g1018110225_ _g1018210229_))))
                    (_g1018110225_ _g1018210229_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1018110225_
                                                     _g1018210229_))))
                                            (_g1018110225_ _g1018210229_)))))
                                (_g1018010381_
                                 (list _e10008_
                                       (gx#genident 'default)
                                       (gx#genident 'table)
                                       _dispatch10011_
                                       _default10012_
                                       _tab10017_
                                       (vector-length _tab10017_))))))
                        (_generate-char-dispatch/hash8870_
                         _e10008_
                         _datums10010_
                         _dispatch10011_
                         _default10012_))))
                 (_generate-char-dispatch/hash8870_
                  (lambda (_e9786_ _datums9788_ _dispatch9789_ _default9790_)
                    (let* ((_indexes9792_
                            (_datum-dispatch-index8861_ _datums9788_))
                           (_tab9795_
                            (_generate-hash-dispatch-table8863_
                             _indexes9792_
                             char->integer)))
                      (let* ((_g98009844_
                              (lambda (_g98019840_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g98019840_)))
                             (_g979910004_
                              (lambda (_g98019848_)
                                (if (gx#stx-pair? _g98019848_)
                                    (let ((_e98099851_
                                           (gx#syntax-e _g98019848_)))
                                      (let ((_hd98109855_ (##car _e98099851_))
                                            (_tl98119858_ (##cdr _e98099851_)))
                                        (if (gx#stx-pair? _tl98119858_)
                                            (let ((_e98129861_
                                                   (gx#syntax-e _tl98119858_)))
                                              (let ((_hd98139865_
                                                     (##car _e98129861_))
                                                    (_tl98149868_
                                                     (##cdr _e98129861_)))
                                                (if (gx#stx-pair? _tl98149868_)
                                                    (let ((_e98159871_
                                                           (gx#syntax-e
                                                            _tl98149868_)))
                                                      (let ((_hd98169875_
                                                             (##car _e98159871_))
                                                            (_tl98179878_
                                                             (##cdr _e98159871_)))
                                                        (if (gx#stx-pair?
                                                             _tl98179878_)
                                                            (let ((_e98189881_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl98179878_)))
                      (let ((_hd98199885_ (##car _e98189881_))
                            (_tl98209888_ (##cdr _e98189881_)))
                        (if (gx#stx-pair/null? _hd98199885_)
                            (if (fx>= (gx#stx-length _hd98199885_) '0)
                                (let ((_g35471_
                                       (gx#syntax-split-splice
                                        _hd98199885_
                                        '0)))
                                  (begin
                                    (let ((_g35472_
                                           (if (##values? _g35471_)
                                               (##vector-length _g35471_)
                                               1)))
                                      (if (not (##fx= _g35472_ 2))
                                          (error "Context expects 2 values"
                                                 _g35472_)))
                                    (let ((_target98219891_
                                           (##vector-ref _g35471_ 0))
                                          (_tl98239894_
                                           (##vector-ref _g35471_ 1)))
                                      (if (gx#stx-null? _tl98239894_)
                                          (letrec ((_loop98249897_
                                                    (lambda (_hd98229901_
                                                             _dispatch98289904_)
                                                      (if (gx#stx-pair?
                                                           _hd98229901_)
                                                          (let ((_e98259907_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _hd98229901_)))
                    (let ((_lp-hd98269911_ (##car _e98259907_))
                          (_lp-tl98279914_ (##cdr _e98259907_)))
                      (_loop98249897_
                       _lp-tl98279914_
                       (cons _lp-hd98269911_ _dispatch98289904_))))
                  (let ((_dispatch98299917_ (reverse _dispatch98289904_)))
                    (if (gx#stx-pair? _tl98209888_)
                        (let ((_e98309921_ (gx#syntax-e _tl98209888_)))
                          (let ((_hd98319925_ (##car _e98309921_))
                                (_tl98329928_ (##cdr _e98309921_)))
                            (if (gx#stx-pair? _tl98329928_)
                                (let ((_e98339931_ (gx#syntax-e _tl98329928_)))
                                  (let ((_hd98349935_ (##car _e98339931_))
                                        (_tl98359938_ (##cdr _e98339931_)))
                                    (if (gx#stx-pair? _tl98359938_)
                                        (let ((_e98369941_
                                               (gx#syntax-e _tl98359938_)))
                                          (let ((_hd98379945_
                                                 (##car _e98369941_))
                                                (_tl98389948_
                                                 (##cdr _e98369941_)))
                                            (if (gx#stx-null? _tl98389948_)
                                                ((lambda (_L9951_
                                                          _L9953_
                                                          _L9954_
                                                          _L9955_
                                                          _L9956_
                                                          _L9957_
                                                          _L9958_)
                                                   (let ()
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'let)
                                                           (cons (cons (cons _L9957_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (cons (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '() (cons _L9954_ '())))
                                           '()))
                               (cons (cons _L9956_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'quote)
                                                       (cons _L9953_ '()))
                                                 '()))
                                     '()))
                         (cons (cons (gx#datum->syntax '#f 'if)
                                     (cons (cons (gx#datum->syntax '#f 'char?)
                                                 (cons _L9958_ '()))
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
                                             (cons _L9958_ '()))
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'ix)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##fxmodulo)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'h)
                                                         (cons _L9951_ '())))
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'q)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '##vector-ref)
                                                         (cons _L9956_
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
                             (cons _L9958_ '())))
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
                                                       (foldr (lambda (_g99959998_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g999610001_)
                        (cons _g99959998_ _g999610001_))
                      '()
                      _L9955_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       (cons (cons _L9957_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons _L9957_ '()) '()))))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L9957_ '())
                                                       '()))))
                               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd98379945_
                                                 _hd98349935_
                                                 _hd98319925_
                                                 _dispatch98299917_
                                                 _hd98169875_
                                                 _hd98139865_
                                                 _hd98109855_)
                                                (_g98009844_ _g98019848_))))
                                        (_g98009844_ _g98019848_))))
                                (_g98009844_ _g98019848_))))
                        (_g98009844_ _g98019848_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop98249897_
                                             _target98219891_
                                             '()))
                                          (_g98009844_ _g98019848_)))))
                                (_g98009844_ _g98019848_))
                            (_g98009844_ _g98019848_))))
                    (_g98009844_ _g98019848_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g98009844_
                                                     _g98019848_))))
                                            (_g98009844_ _g98019848_))))
                                    (_g98009844_ _g98019848_)))))
                        (_g979910004_
                         (list _e9786_
                               (gx#genident 'default)
                               (gx#genident 'table)
                               _dispatch9789_
                               _default9790_
                               _tab9795_
                               (vector-length _tab9795_)))))))
                 (_min-fixnum8871_
                  (lambda (_datums9779_)
                    (foldl (lambda (_lst9782_ _r9784_)
                             (foldl min _r9784_ _lst9782_))
                           ##max-fixnum
                           _datums9779_)))
                 (_max-fixnum8872_
                  (lambda (_datums9772_)
                    (foldl (lambda (_lst9775_ _r9777_)
                             (foldl max _r9777_ _lst9775_))
                           ##min-fixnum
                           _datums9772_)))
                 (_generate-fixnum-dispatch-table8873_
                  (lambda (_indexes9754_)
                    (let* ((_ixs9757_ (map car _indexes9754_))
                           (_len9760_ (fx1+ (foldl max '0 _ixs9757_)))
                           (_vec9763_ (make-vector _len9760_ '#f)))
                      (begin
                        (for-each
                         (lambda (_entry9768_ _x9770_)
                           (vector-set! _vec9763_ _x9770_ (cdr _entry9768_)))
                         _indexes9754_
                         _ixs9757_)
                        _vec9763_))))
                 (_generate-fixnum-dispatch8874_
                  (lambda (_e9488_ _datums9490_ _dispatch9491_ _default9492_)
                    (if (if (>= (_min-fixnum8871_ _datums9490_) '0)
                            (< (_max-fixnum8872_ _datums9490_) '1024)
                            '#f)
                        (let* ((_indexes9494_
                                (_datum-dispatch-index8861_ _datums9490_))
                               (_tab9497_
                                (_generate-fixnum-dispatch-table8873_
                                 _indexes9494_))
                               (_dense?9500_
                                (andmap values (vector->list _tab9497_))))
                          (let* ((_g95059549_
                                  (lambda (_g95069545_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g95069545_)))
                                 (_g95049750_
                                  (lambda (_g95069553_)
                                    (if (gx#stx-pair? _g95069553_)
                                        (let ((_e95149556_
                                               (gx#syntax-e _g95069553_)))
                                          (let ((_hd95159560_
                                                 (##car _e95149556_))
                                                (_tl95169563_
                                                 (##cdr _e95149556_)))
                                            (if (gx#stx-pair? _tl95169563_)
                                                (let ((_e95179566_
                                                       (gx#syntax-e
                                                        _tl95169563_)))
                                                  (let ((_hd95189570_
                                                         (##car _e95179566_))
                                                        (_tl95199573_
                                                         (##cdr _e95179566_)))
                                                    (if (gx#stx-pair?
                                                         _tl95199573_)
                                                        (let ((_e95209576_
                                                               (gx#syntax-e
                                                                _tl95199573_)))
                                                          (let ((_hd95219580_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e95209576_))
                        (_tl95229583_ (##cdr _e95209576_)))
                    (if (gx#stx-pair? _tl95229583_)
                        (let ((_e95239586_ (gx#syntax-e _tl95229583_)))
                          (let ((_hd95249590_ (##car _e95239586_))
                                (_tl95259593_ (##cdr _e95239586_)))
                            (if (gx#stx-pair/null? _hd95249590_)
                                (if (fx>= (gx#stx-length _hd95249590_) '0)
                                    (let ((_g35473_
                                           (gx#syntax-split-splice
                                            _hd95249590_
                                            '0)))
                                      (begin
                                        (let ((_g35474_
                                               (if (##values? _g35473_)
                                                   (##vector-length _g35473_)
                                                   1)))
                                          (if (not (##fx= _g35474_ 2))
                                              (error "Context expects 2 values"
                                                     _g35474_)))
                                        (let ((_target95269596_
                                               (##vector-ref _g35473_ 0))
                                              (_tl95289599_
                                               (##vector-ref _g35473_ 1)))
                                          (if (gx#stx-null? _tl95289599_)
                                              (letrec ((_loop95299602_
                                                        (lambda (_hd95279606_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _dispatch95339609_)
                  (if (gx#stx-pair? _hd95279606_)
                      (let ((_e95309612_ (gx#syntax-e _hd95279606_)))
                        (let ((_lp-hd95319616_ (##car _e95309612_))
                              (_lp-tl95329619_ (##cdr _e95309612_)))
                          (_loop95299602_
                           _lp-tl95329619_
                           (cons _lp-hd95319616_ _dispatch95339609_))))
                      (let ((_dispatch95349622_ (reverse _dispatch95339609_)))
                        (if (gx#stx-pair? _tl95259593_)
                            (let ((_e95359626_ (gx#syntax-e _tl95259593_)))
                              (let ((_hd95369630_ (##car _e95359626_))
                                    (_tl95379633_ (##cdr _e95359626_)))
                                (if (gx#stx-pair? _tl95379633_)
                                    (let ((_e95389636_
                                           (gx#syntax-e _tl95379633_)))
                                      (let ((_hd95399640_ (##car _e95389636_))
                                            (_tl95409643_ (##cdr _e95389636_)))
                                        (if (gx#stx-pair? _tl95409643_)
                                            (let ((_e95419646_
                                                   (gx#syntax-e _tl95409643_)))
                                              (let ((_hd95429650_
                                                     (##car _e95419646_))
                                                    (_tl95439653_
                                                     (##cdr _e95419646_)))
                                                (if (gx#stx-null? _tl95439653_)
                                                    ((lambda (_L9656_
                                                              _L9658_
                                                              _L9659_
                                                              _L9660_
                                                              _L9661_
                                                              _L9662_
                                                              _L9663_)
                                                       (let ()
                                                         (let* ((_g97029710_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g97039706_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g97039706_)))
                        (_g97019730_
                         (lambda (_g97039714_)
                           ((lambda (_L9717_)
                              (let ()
                                (cons (gx#datum->syntax '#f 'let)
                                      (cons (cons (cons _L9662_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'lambda)
                            (cons '() (cons _L9659_ '())))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons _L9661_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _L9658_ '()))
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
                            (cons _L9663_ '()))
                      (cons (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons (gx#datum->syntax '#f 'and)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '##fx>=)
                                                          (cons _L9663_
                                                                (cons '0 '())))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '##fx<)
                        (cons _L9663_ (cons _L9656_ '())))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons (cons (gx#datum->syntax '#f 'let)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'x)
                        (cons (cons (gx#datum->syntax '#f '##vector-ref)
                                    (cons _L9661_ (cons _L9663_ '())))
                              '()))
                  (cons _L9717_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons _L9662_ '()) '()))))
                            (cons (cons _L9662_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                            _g97039714_))))
                   (_g97019730_
                    (if _dense?9500_
                        (cons (gx#datum->syntax '#f '~case-dispatch)
                              (cons (gx#datum->syntax '#f 'x)
                                    (begin
                                      '#!void
                                      (foldr (lambda (_g97339736_ _g97349739_)
                                               (cons _g97339736_ _g97349739_))
                                             '()
                                             _L9660_))))
                        (cons (gx#datum->syntax '#f 'if)
                              (cons (gx#datum->syntax '#f 'x)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 '~case-dispatch)
                                                (cons (gx#datum->syntax '#f 'x)
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g97419744_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g97429747_)
                         (cons _g97419744_ _g97429747_))
                       '()
                       _L9660_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons _L9662_ '()) '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd95429650_
                                                     _hd95399640_
                                                     _hd95369630_
                                                     _dispatch95349622_
                                                     _hd95219580_
                                                     _hd95189570_
                                                     _hd95159560_)
                                                    (_g95059549_
                                                     _g95069553_))))
                                            (_g95059549_ _g95069553_))))
                                    (_g95059549_ _g95069553_))))
                            (_g95059549_ _g95069553_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop95299602_
                                                 _target95269596_
                                                 '()))
                                              (_g95059549_ _g95069553_)))))
                                    (_g95059549_ _g95069553_))
                                (_g95059549_ _g95069553_))))
                        (_g95059549_ _g95069553_))))
                (_g95059549_ _g95069553_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g95059549_ _g95069553_))))
                                        (_g95059549_ _g95069553_)))))
                            (_g95049750_
                             (list _e9488_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _dispatch9491_
                                   _default9492_
                                   _tab9497_
                                   (vector-length _tab9497_)))))
                        (_generate-fixnum-dispatch/hash8875_
                         _e9488_
                         _datums9490_
                         _dispatch9491_
                         _default9492_))))
                 (_generate-fixnum-dispatch/hash8875_
                  (lambda (_e9266_ _datums9268_ _dispatch9269_ _default9270_)
                    (let* ((_indexes9272_
                            (_datum-dispatch-index8861_ _datums9268_))
                           (_tab9275_
                            (_generate-hash-dispatch-table8863_
                             _indexes9272_
                             values)))
                      (let* ((_g92809324_
                              (lambda (_g92819320_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g92819320_)))
                             (_g92799484_
                              (lambda (_g92819328_)
                                (if (gx#stx-pair? _g92819328_)
                                    (let ((_e92899331_
                                           (gx#syntax-e _g92819328_)))
                                      (let ((_hd92909335_ (##car _e92899331_))
                                            (_tl92919338_ (##cdr _e92899331_)))
                                        (if (gx#stx-pair? _tl92919338_)
                                            (let ((_e92929341_
                                                   (gx#syntax-e _tl92919338_)))
                                              (let ((_hd92939345_
                                                     (##car _e92929341_))
                                                    (_tl92949348_
                                                     (##cdr _e92929341_)))
                                                (if (gx#stx-pair? _tl92949348_)
                                                    (let ((_e92959351_
                                                           (gx#syntax-e
                                                            _tl92949348_)))
                                                      (let ((_hd92969355_
                                                             (##car _e92959351_))
                                                            (_tl92979358_
                                                             (##cdr _e92959351_)))
                                                        (if (gx#stx-pair?
                                                             _tl92979358_)
                                                            (let ((_e92989361_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl92979358_)))
                      (let ((_hd92999365_ (##car _e92989361_))
                            (_tl93009368_ (##cdr _e92989361_)))
                        (if (gx#stx-pair/null? _hd92999365_)
                            (if (fx>= (gx#stx-length _hd92999365_) '0)
                                (let ((_g35475_
                                       (gx#syntax-split-splice
                                        _hd92999365_
                                        '0)))
                                  (begin
                                    (let ((_g35476_
                                           (if (##values? _g35475_)
                                               (##vector-length _g35475_)
                                               1)))
                                      (if (not (##fx= _g35476_ 2))
                                          (error "Context expects 2 values"
                                                 _g35476_)))
                                    (let ((_target93019371_
                                           (##vector-ref _g35475_ 0))
                                          (_tl93039374_
                                           (##vector-ref _g35475_ 1)))
                                      (if (gx#stx-null? _tl93039374_)
                                          (letrec ((_loop93049377_
                                                    (lambda (_hd93029381_
                                                             _dispatch93089384_)
                                                      (if (gx#stx-pair?
                                                           _hd93029381_)
                                                          (let ((_e93059387_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _hd93029381_)))
                    (let ((_lp-hd93069391_ (##car _e93059387_))
                          (_lp-tl93079394_ (##cdr _e93059387_)))
                      (_loop93049377_
                       _lp-tl93079394_
                       (cons _lp-hd93069391_ _dispatch93089384_))))
                  (let ((_dispatch93099397_ (reverse _dispatch93089384_)))
                    (if (gx#stx-pair? _tl93009368_)
                        (let ((_e93109401_ (gx#syntax-e _tl93009368_)))
                          (let ((_hd93119405_ (##car _e93109401_))
                                (_tl93129408_ (##cdr _e93109401_)))
                            (if (gx#stx-pair? _tl93129408_)
                                (let ((_e93139411_ (gx#syntax-e _tl93129408_)))
                                  (let ((_hd93149415_ (##car _e93139411_))
                                        (_tl93159418_ (##cdr _e93139411_)))
                                    (if (gx#stx-pair? _tl93159418_)
                                        (let ((_e93169421_
                                               (gx#syntax-e _tl93159418_)))
                                          (let ((_hd93179425_
                                                 (##car _e93169421_))
                                                (_tl93189428_
                                                 (##cdr _e93169421_)))
                                            (if (gx#stx-null? _tl93189428_)
                                                ((lambda (_L9431_
                                                          _L9433_
                                                          _L9434_
                                                          _L9435_
                                                          _L9436_
                                                          _L9437_
                                                          _L9438_)
                                                   (let ()
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'let)
                                                           (cons (cons (cons _L9437_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (cons (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '() (cons _L9434_ '())))
                                           '()))
                               (cons (cons _L9436_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'quote)
                                                       (cons _L9433_ '()))
                                                 '()))
                                     '()))
                         (cons (cons (gx#datum->syntax '#f 'if)
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'fixnum?)
                                                 (cons _L9438_ '()))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let*)
                                                       (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'ix)
                                 (cons (cons (gx#datum->syntax '#f '##fxmodulo)
                                             (cons _L9438_ (cons _L9431_ '())))
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'q)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##vector-ref)
                                                   (cons _L9436_
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
                             (cons _L9438_ '())))
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
                                                       (foldr (lambda (_g94759478_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g94769481_)
                        (cons _g94759478_ _g94769481_))
                      '()
                      _L9435_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       (cons (cons _L9437_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons _L9437_ '()) '()))))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L9437_ '())
                                                       '()))))
                               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd93179425_
                                                 _hd93149415_
                                                 _hd93119405_
                                                 _dispatch93099397_
                                                 _hd92969355_
                                                 _hd92939345_
                                                 _hd92909335_)
                                                (_g92809324_ _g92819328_))))
                                        (_g92809324_ _g92819328_))))
                                (_g92809324_ _g92819328_))))
                        (_g92809324_ _g92819328_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop93049377_
                                             _target93019371_
                                             '()))
                                          (_g92809324_ _g92819328_)))))
                                (_g92809324_ _g92819328_))
                            (_g92809324_ _g92819328_))))
                    (_g92809324_ _g92819328_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g92809324_
                                                     _g92819328_))))
                                            (_g92809324_ _g92819328_))))
                                    (_g92809324_ _g92819328_)))))
                        (_g92799484_
                         (list _e9266_
                               (gx#genident 'default)
                               (gx#genident 'table)
                               _dispatch9269_
                               _default9270_
                               _tab9275_
                               (vector-length _tab9275_)))))))
                 (_generate-generic-dispatch8876_
                  (lambda (_e9002_ _datums9004_ _dispatch9005_ _default9006_)
                    (let ((_g35477_
                           (if (_eq-datums?8859_ _datums9004_)
                               (values eq?-hash 'eq?-hash 'eq?)
                               (values equal?-hash 'equal?-hash 'equal?))))
                      (begin
                        #!void
                        (let ((_hash-e9008_ (##vector-ref _g35477_ 0))
                              (_hashf9010_ (##vector-ref _g35477_ 1))
                              (_eqf9011_ (##vector-ref _g35477_ 2)))
                          (let* ((_indexes9013_
                                  (_datum-dispatch-index8861_ _datums9004_))
                                 (_tab9016_
                                  (_generate-hash-dispatch-table8863_
                                   _indexes9013_
                                   _hash-e9008_)))
                            (let* ((_g90219073_
                                    (lambda (_g90229069_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       _g90229069_)))
                                   (_g90209262_
                                    (lambda (_g90229077_)
                                      (if (gx#stx-pair? _g90229077_)
                                          (let ((_e90329080_
                                                 (gx#syntax-e _g90229077_)))
                                            (let ((_hd90339084_
                                                   (##car _e90329080_))
                                                  (_tl90349087_
                                                   (##cdr _e90329080_)))
                                              (if (gx#stx-pair? _tl90349087_)
                                                  (let ((_e90359090_
                                                         (gx#syntax-e
                                                          _tl90349087_)))
                                                    (let ((_hd90369094_
                                                           (##car _e90359090_))
                                                          (_tl90379097_
                                                           (##cdr _e90359090_)))
                                                      (if (gx#stx-pair?
                                                           _tl90379097_)
                                                          (let ((_e90389100_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl90379097_)))
                    (let ((_hd90399104_ (##car _e90389100_))
                          (_tl90409107_ (##cdr _e90389100_)))
                      (if (gx#stx-pair? _tl90409107_)
                          (let ((_e90419110_ (gx#syntax-e _tl90409107_)))
                            (let ((_hd90429114_ (##car _e90419110_))
                                  (_tl90439117_ (##cdr _e90419110_)))
                              (if (gx#stx-pair/null? _hd90429114_)
                                  (if (fx>= (gx#stx-length _hd90429114_) '0)
                                      (let ((_g35478_
                                             (gx#syntax-split-splice
                                              _hd90429114_
                                              '0)))
                                        (begin
                                          (let ((_g35479_
                                                 (if (##values? _g35478_)
                                                     (##vector-length _g35478_)
                                                     1)))
                                            (if (not (##fx= _g35479_ 2))
                                                (error "Context expects 2 values"
                                                       _g35479_)))
                                          (let ((_target90449120_
                                                 (##vector-ref _g35478_ 0))
                                                (_tl90469123_
                                                 (##vector-ref _g35478_ 1)))
                                            (if (gx#stx-null? _tl90469123_)
                                                (letrec ((_loop90479126_
                                                          (lambda (_hd90459130_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _dispatch90519133_)
                    (if (gx#stx-pair? _hd90459130_)
                        (let ((_e90489136_ (gx#syntax-e _hd90459130_)))
                          (let ((_lp-hd90499140_ (##car _e90489136_))
                                (_lp-tl90509143_ (##cdr _e90489136_)))
                            (_loop90479126_
                             _lp-tl90509143_
                             (cons _lp-hd90499140_ _dispatch90519133_))))
                        (let ((_dispatch90529146_
                               (reverse _dispatch90519133_)))
                          (if (gx#stx-pair? _tl90439117_)
                              (let ((_e90539150_ (gx#syntax-e _tl90439117_)))
                                (let ((_hd90549154_ (##car _e90539150_))
                                      (_tl90559157_ (##cdr _e90539150_)))
                                  (if (gx#stx-pair? _tl90559157_)
                                      (let ((_e90569160_
                                             (gx#syntax-e _tl90559157_)))
                                        (let ((_hd90579164_
                                               (##car _e90569160_))
                                              (_tl90589167_
                                               (##cdr _e90569160_)))
                                          (if (gx#stx-pair? _tl90589167_)
                                              (let ((_e90599170_
                                                     (gx#syntax-e
                                                      _tl90589167_)))
                                                (let ((_hd90609174_
                                                       (##car _e90599170_))
                                                      (_tl90619177_
                                                       (##cdr _e90599170_)))
                                                  (if (gx#stx-pair?
                                                       _tl90619177_)
                                                      (let ((_e90629180_
                                                             (gx#syntax-e
                                                              _tl90619177_)))
                                                        (let ((_hd90639184_
                                                               (##car _e90629180_))
                                                              (_tl90649187_
                                                               (##cdr _e90629180_)))
                                                          (if (gx#stx-pair?
                                                               _tl90649187_)
                                                              (let ((_e90659190_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl90649187_)))
                        (let ((_hd90669194_ (##car _e90659190_))
                              (_tl90679197_ (##cdr _e90659190_)))
                          (if (gx#stx-null? _tl90679197_)
                              ((lambda (_L9200_
                                        _L9202_
                                        _L9203_
                                        _L9204_
                                        _L9205_
                                        _L9206_
                                        _L9207_
                                        _L9208_
                                        _L9209_)
                                 (let ()
                                   (cons (gx#datum->syntax '#f 'let)
                                         (cons (cons (cons _L9208_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'lambda)
                               (cons '() (cons _L9205_ '())))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons _L9207_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _L9204_ '()))
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
                                     (cons (cons _L9202_ (cons _L9209_ '()))
                                           '()))
                               (cons (cons (gx#datum->syntax '#f 'ix)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '##fxmodulo)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'h)
                                                             (cons _L9203_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     (cons (cons (gx#datum->syntax '#f 'q)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '##vector-ref)
                                                             (cons _L9207_
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
                                                       (cons (cons _L9200_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f '##car)
                                       (cons (gx#datum->syntax '#f 'q) '()))
                                 (cons _L9209_ '())))
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
                                                           (foldr (lambda (_g92539256_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g92549259_)
                            (cons _g92539256_ _g92549259_))
                          '()
                          _L9206_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))
                           (cons (cons _L9208_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L9208_ '())
                                                       '()))))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                               _hd90669194_
                               _hd90639184_
                               _hd90609174_
                               _hd90579164_
                               _hd90549154_
                               _dispatch90529146_
                               _hd90399104_
                               _hd90369094_
                               _hd90339084_)
                              (_g90219073_ _g90229077_))))
                      (_g90219073_ _g90229077_))))
              (_g90219073_ _g90229077_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g90219073_ _g90229077_))))
                                      (_g90219073_ _g90229077_))))
                              (_g90219073_ _g90229077_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop90479126_
                                                   _target90449120_
                                                   '()))
                                                (_g90219073_ _g90229077_)))))
                                      (_g90219073_ _g90229077_))
                                  (_g90219073_ _g90229077_))))
                          (_g90219073_ _g90229077_))))
                  (_g90219073_ _g90229077_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g90219073_ _g90229077_))))
                                          (_g90219073_ _g90229077_)))))
                              (_g90209262_
                               (list _e9002_
                                     (gx#genident 'default)
                                     (gx#genident 'table)
                                     _dispatch9005_
                                     _default9006_
                                     _tab9016_
                                     (vector-length _tab9016_)
                                     _hashf9010_
                                     _eqf9011_))))))))))
          (let* ((_g88788902_
                  (lambda (_g88798898_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g88798898_)))
                 (_g88778998_
                  (lambda (_g88798906_)
                    (if (gx#stx-pair? _g88798906_)
                        (let ((_e88828909_ (gx#syntax-e _g88798906_)))
                          (let ((_hd88838913_ (##car _e88828909_))
                                (_tl88848916_ (##cdr _e88828909_)))
                            (if (gx#stx-pair? _tl88848916_)
                                (let ((_e88858919_ (gx#syntax-e _tl88848916_)))
                                  (let ((_hd88868923_ (##car _e88858919_))
                                        (_tl88878926_ (##cdr _e88858919_)))
                                    (if (gx#stx-pair/null? _tl88878926_)
                                        (if (fx>= (gx#stx-length _tl88878926_)
                                                  '0)
                                            (let ((_g35480_
                                                   (gx#syntax-split-splice
                                                    _tl88878926_
                                                    '0)))
                                              (begin
                                                (let ((_g35481_
                                                       (if (##values? _g35480_)
                                                           (##vector-length
                                                            _g35480_)
                                                           1)))
                                                  (if (not (##fx= _g35481_ 2))
                                                      (error "Context expects 2 values"
                                                             _g35481_)))
                                                (let ((_target88888929_
                                                       (##vector-ref
                                                        _g35480_
                                                        0))
                                                      (_tl88908932_
                                                       (##vector-ref
                                                        _g35480_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl88908932_)
                                                      (letrec ((_loop88918935_
                                                                (lambda (_hd88898939_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _clause88958942_)
                          (if (gx#stx-pair? _hd88898939_)
                              (let ((_e88928945_ (gx#syntax-e _hd88898939_)))
                                (let ((_lp-hd88938949_ (##car _e88928945_))
                                      (_lp-tl88948952_ (##cdr _e88928945_)))
                                  (_loop88918935_
                                   _lp-tl88948952_
                                   (cons _lp-hd88938949_ _clause88958942_))))
                              (let ((_clause88968955_
                                     (reverse _clause88958942_)))
                                ((lambda (_L8959_ _L8961_)
                                   (let ((_g35482_
                                          (_parse-clauses8852_
                                           _L8961_
                                           (begin
                                             '#!void
                                             (foldr (lambda (_g89798982_
                                                             _g89808985_)
                                                      (cons _g89798982_
                                                            _g89808985_))
                                                    '()
                                                    _L8959_)))))
                                     (begin
                                       (let ((_g35483_
                                              (if (##values? _g35482_)
                                                  (##vector-length _g35482_)
                                                  1)))
                                         (if (not (##fx= _g35483_ 3))
                                             (error "Context expects 3 values"
                                                    _g35483_)))
                                       (let ((_datums8988_
                                              (##vector-ref _g35482_ 0))
                                             (_dispatch8990_
                                              (##vector-ref _g35482_ 1))
                                             (_default8991_
                                              (##vector-ref _g35482_ 2)))
                                         (let ((_datum-count8993_
                                                (_count-datums8855_
                                                 _datums8988_)))
                                           (if (< _datum-count8993_ '6)
                                               (_generate-simple-case8860_
                                                _L8961_
                                                _datums8988_
                                                _dispatch8990_
                                                _default8991_)
                                               (if (_char-datums?8857_
                                                    _datums8988_)
                                                   (_generate-char-dispatch8869_
                                                    _L8961_
                                                    _datums8988_
                                                    _dispatch8990_
                                                    _default8991_)
                                                   (if (_fixnum-datums?8858_
                                                        _datums8988_)
                                                       (_generate-fixnum-dispatch8874_
                                                        _L8961_
                                                        _datums8988_
                                                        _dispatch8990_
                                                        _default8991_)
                                                       (if (< _datum-count8993_
                                                              '12)
                                                           (_generate-simple-case8860_
                                                            _L8961_
                                                            _datums8988_
                                                            _dispatch8990_
                                                            _default8991_)
                                                           (if (_symbolic-datums?8856_
                                                                _datums8988_)
                                                               (_generate-symbolic-dispatch8864_
                                                                _L8961_
                                                                _datums8988_
                                                                _dispatch8990_
                                                                _default8991_)
                                                               (_generate-generic-dispatch8876_
                                                                _L8961_
                                                                _datums8988_
                                                                _dispatch8990_
                                                                _default8991_)))))))))))
                                 _clause88968955_
                                 _hd88868923_))))))
                (_loop88918935_ _target88888929_ '()))
              (_g88788902_ _g88798906_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g88788902_ _g88798906_))
                                        (_g88788902_ _g88798906_))))
                                (_g88788902_ _g88798906_))))
                        (_g88788902_ _g88798906_)))))
            (_g88778998_ _stx8849_)))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#~case-test|
      (lambda (_stx11806_)
        (let* ((_g1180911827_
                (lambda (_g1181011823_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1181011823_)))
               (_g1180811893_
                (lambda (_g1181011831_)
                  (if (gx#stx-pair? _g1181011831_)
                      (let ((_e1181311834_ (gx#syntax-e _g1181011831_)))
                        (let ((_hd1181411838_ (##car _e1181311834_))
                              (_tl1181511841_ (##cdr _e1181311834_)))
                          (if (gx#stx-pair? _tl1181511841_)
                              (let ((_e1181611844_
                                     (gx#syntax-e _tl1181511841_)))
                                (let ((_hd1181711848_ (##car _e1181611844_))
                                      (_tl1181811851_ (##cdr _e1181611844_)))
                                  (if (gx#stx-pair? _tl1181811851_)
                                      (let ((_e1181911854_
                                             (gx#syntax-e _tl1181811851_)))
                                        (let ((_hd1182011858_
                                               (##car _e1181911854_))
                                              (_tl1182111861_
                                               (##cdr _e1181911854_)))
                                          (if (gx#stx-null? _tl1182111861_)
                                              ((lambda (_L11864_ _L11866_)
                                                 (let ((_datum-e11882_
                                                        (gx#stx-e _L11866_)))
                                                   (if (let ((_$e11885_
                                                              (symbol? _datum-e11882_)))
                                                         (if _$e11885_
                                                             _$e11885_
                                                             (let ((_$e11889_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (keyword? _datum-e11882_)))
                       (if _$e11889_ _$e11889_ (immediate? _datum-e11882_)))))
               (cons (gx#datum->syntax '#f 'eq?)
                     (cons (cons (gx#datum->syntax '#f 'quote)
                                 (cons _L11866_ '()))
                           (cons _L11864_ '())))
               (if (number? _datum-e11882_)
                   (cons (gx#datum->syntax '#f 'eqv?)
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _L11866_ '()))
                               (cons _L11864_ '())))
                   (cons (gx#datum->syntax '#f 'equal?)
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _L11866_ '()))
                               (cons _L11864_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd1182011858_
                                               _hd1181711848_)
                                              (_g1180911827_ _g1181011831_))))
                                      (_g1180911827_ _g1181011831_))))
                              (_g1180911827_ _g1181011831_))))
                      (_g1180911827_ _g1181011831_)))))
          (_g1180811893_ _stx11806_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#~case-dispatch|
      (lambda (_$stx11897_)
        (let* ((_g1190111925_
                (lambda (_g1190211921_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1190211921_)))
               (_g1190012010_
                (lambda (_g1190211929_)
                  (if (gx#stx-pair? _g1190211929_)
                      (let ((_e1190511932_ (gx#syntax-e _g1190211929_)))
                        (let ((_hd1190611936_ (##car _e1190511932_))
                              (_tl1190711939_ (##cdr _e1190511932_)))
                          (if (gx#stx-pair? _tl1190711939_)
                              (let ((_e1190811942_
                                     (gx#syntax-e _tl1190711939_)))
                                (let ((_hd1190911946_ (##car _e1190811942_))
                                      (_tl1191011949_ (##cdr _e1190811942_)))
                                  (if (gx#stx-pair/null? _tl1191011949_)
                                      (if (fx>= (gx#stx-length _tl1191011949_)
                                                '0)
                                          (let ((_g35484_
                                                 (gx#syntax-split-splice
                                                  _tl1191011949_
                                                  '0)))
                                            (begin
                                              (let ((_g35485_
                                                     (if (##values? _g35484_)
                                                         (##vector-length
                                                          _g35484_)
                                                         1)))
                                                (if (not (##fx= _g35485_ 2))
                                                    (error "Context expects 2 values"
                                                           _g35485_)))
                                              (let ((_target1191111952_
                                                     (##vector-ref _g35484_ 0))
                                                    (_tl1191311955_
                                                     (##vector-ref
                                                      _g35484_
                                                      1)))
                                                (if (gx#stx-null?
                                                     _tl1191311955_)
                                                    (letrec ((_loop1191411958_
                                                              (lambda (_hd1191211962_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _K1191811965_)
                        (if (gx#stx-pair? _hd1191211962_)
                            (let ((_e1191511968_ (gx#syntax-e _hd1191211962_)))
                              (let ((_lp-hd1191611972_ (##car _e1191511968_))
                                    (_lp-tl1191711975_ (##cdr _e1191511968_)))
                                (_loop1191411958_
                                 _lp-tl1191711975_
                                 (cons _lp-hd1191611972_ _K1191811965_))))
                            (let ((_K1191911978_ (reverse _K1191811965_)))
                              ((lambda (_L11982_ _L11984_)
                                 (cons (gx#datum->syntax '#f '~case-dispatch*)
                                       (cons '0
                                             (cons _L11984_
                                                   (begin
                                                     '#!void
                                                     (foldr (lambda (_g1200112004_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g1200212007_)
                      (cons _g1200112004_ _g1200212007_))
                    '()
                    _L11982_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _K1191911978_
                               _hd1190911946_))))))
              (_loop1191411958_ _target1191111952_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1190111925_
                                                     _g1190211929_)))))
                                          (_g1190111925_ _g1190211929_))
                                      (_g1190111925_ _g1190211929_))))
                              (_g1190111925_ _g1190211929_))))
                      (_g1190111925_ _g1190211929_)))))
          (_g1190012010_ _$stx11897_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#~case-dispatch*|
      (lambda (_stx12015_)
        (let* ((_g1202212118_
                (lambda (_g1202312114_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1202312114_)))
               (_g1202112217_
                (lambda (_g1202312122_)
                  (if (gx#stx-pair? _g1202312122_)
                      (let ((_e1209512125_ (gx#syntax-e _g1202312122_)))
                        (let ((_hd1209612129_ (##car _e1209512125_))
                              (_tl1209712132_ (##cdr _e1209512125_)))
                          (if (gx#stx-pair? _tl1209712132_)
                              (let ((_e1209812135_
                                     (gx#syntax-e _tl1209712132_)))
                                (let ((_hd1209912139_ (##car _e1209812135_))
                                      (_tl1210012142_ (##cdr _e1209812135_)))
                                  (if (gx#stx-pair? _tl1210012142_)
                                      (let ((_e1210112145_
                                             (gx#syntax-e _tl1210012142_)))
                                        (let ((_hd1210212149_
                                               (##car _e1210112145_))
                                              (_tl1210312152_
                                               (##cdr _e1210112145_)))
                                          (if (gx#stx-pair/null?
                                               _tl1210312152_)
                                              (if (fx>= (gx#stx-length
                                                         _tl1210312152_)
                                                        '0)
                                                  (let ((_g35486_
                                                         (gx#syntax-split-splice
                                                          _tl1210312152_
                                                          '0)))
                                                    (begin
                                                      (let ((_g35487_
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g35486_)
                         (##vector-length _g35486_)
                         1)))
                (if (not (##fx= _g35487_ 2))
                    (error "Context expects 2 values" _g35487_)))
              (let ((_target1210412155_ (##vector-ref _g35486_ 0))
                    (_tl1210612158_ (##vector-ref _g35486_ 1)))
                (if (gx#stx-null? _tl1210612158_)
                    (letrec ((_loop1210712161_
                              (lambda (_hd1210512165_ _K1211112168_)
                                (if (gx#stx-pair? _hd1210512165_)
                                    (let ((_e1210812171_
                                           (gx#syntax-e _hd1210512165_)))
                                      (let ((_lp-hd1210912175_
                                             (##car _e1210812171_))
                                            (_lp-tl1211012178_
                                             (##cdr _e1210812171_)))
                                        (_loop1210712161_
                                         _lp-tl1211012178_
                                         (cons _lp-hd1210912175_
                                               _K1211112168_))))
                                    (let ((_K1211212181_
                                           (reverse _K1211112168_)))
                                      ((lambda (_L12185_ _L12187_ _L12188_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                '~case-dispatch-bsearch)
                                               (cons _L12188_
                                                     (cons _L12187_
                                                           (begin
                                                             '#!void
                                                             (foldr (lambda (_g1220812211_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1220912214_)
                              (cons _g1220812211_ _g1220912214_))
                            '()
                            _L12185_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _K1211212181_
                                       _hd1210212149_
                                       _hd1209912139_))))))
                      (_loop1210712161_ _target1210412155_ '()))
                    (_g1202212118_ _g1202312122_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1202212118_
                                                   _g1202312122_))
                                              (_g1202212118_ _g1202312122_))))
                                      (_g1202212118_ _g1202312122_))))
                              (_g1202212118_ _g1202312122_))))
                      (_g1202212118_ _g1202312122_))))
               (_g1202012377_
                (lambda (_g1202312221_)
                  (if (gx#stx-pair? _g1202312221_)
                      (let ((_e1207412224_ (gx#syntax-e _g1202312221_)))
                        (let ((_hd1207512228_ (##car _e1207412224_))
                              (_tl1207612231_ (##cdr _e1207412224_)))
                          (if (gx#stx-pair? _tl1207612231_)
                              (let ((_e1207712234_
                                     (gx#syntax-e _tl1207612231_)))
                                (let ((_hd1207812238_ (##car _e1207712234_))
                                      (_tl1207912241_ (##cdr _e1207712234_)))
                                  (if (gx#stx-pair? _tl1207912241_)
                                      (let ((_e1208012244_
                                             (gx#syntax-e _tl1207912241_)))
                                        (let ((_hd1208112248_
                                               (##car _e1208012244_))
                                              (_tl1208212251_
                                               (##cdr _e1208012244_)))
                                          (if (gx#stx-pair? _tl1208212251_)
                                              (let ((_e1208312254_
                                                     (gx#syntax-e
                                                      _tl1208212251_)))
                                                (let ((_hd1208412258_
                                                       (##car _e1208312254_))
                                                      (_tl1208512261_
                                                       (##cdr _e1208312254_)))
                                                  (if (gx#stx-pair?
                                                       _tl1208512261_)
                                                      (let ((_e1208612264_
                                                             (gx#syntax-e
                                                              _tl1208512261_)))
                                                        (let ((_hd1208712268_
                                                               (##car _e1208612264_))
                                                              (_tl1208812271_
                                                               (##cdr _e1208612264_)))
                                                          (if (gx#stx-pair?
                                                               _tl1208812271_)
                                                              (let ((_e1208912274_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl1208812271_)))
                        (let ((_hd1209012278_ (##car _e1208912274_))
                              (_tl1209112281_ (##cdr _e1208912274_)))
                          (if (gx#stx-null? _tl1209112281_)
                              ((lambda (_L12284_
                                        _L12286_
                                        _L12287_
                                        _L12288_
                                        _L12289_)
                                 (let* ((_g1231312328_
                                         (lambda (_g1231412324_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g1231412324_)))
                                        (_g1231212373_
                                         (lambda (_g1231412332_)
                                           (if (gx#stx-pair? _g1231412332_)
                                               (let ((_e1231712335_
                                                      (gx#syntax-e
                                                       _g1231412332_)))
                                                 (let ((_hd1231812339_
                                                        (##car _e1231712335_))
                                                       (_tl1231912342_
                                                        (##cdr _e1231712335_)))
                                                   (if (gx#stx-pair?
                                                        _tl1231912342_)
                                                       (let ((_e1232012345_
                                                              (gx#syntax-e
                                                               _tl1231912342_)))
                                                         (let ((_hd1232112349_
                                                                (##car _e1232012345_))
                                                               (_tl1232212352_
                                                                (##cdr _e1232012345_)))
                                                           (if (gx#stx-null?
                                                                _tl1232212352_)
                                                               ((lambda (_L12355_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L12357_)
                          (let ()
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons (gx#datum->syntax '#f '##fx=)
                                              (cons _L12288_
                                                    (cons _L12357_ '())))
                                        (cons _L12287_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '##fx=)
                              (cons _L12288_ (cons _L12355_ '())))
                        (cons _L12286_ (cons _L12284_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))
                        _hd1232112349_
                        _hd1231812339_)
                       (_g1231312328_ _g1231412332_))))
               (_g1231312328_ _g1231412332_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1231312328_
                                                _g1231412332_)))))
                                   (_g1231212373_
                                    (list (gx#stx-e _L12289_)
                                          (fx1+ (gx#stx-e _L12289_))))))
                               _hd1209012278_
                               _hd1208712268_
                               _hd1208412258_
                               _hd1208112248_
                               _hd1207812238_)
                              (_g1202112217_ _g1202312221_))))
                      (_g1202112217_ _g1202312221_))))
              (_g1202112217_ _g1202312221_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1202112217_ _g1202312221_))))
                                      (_g1202112217_ _g1202312221_))))
                              (_g1202112217_ _g1202312221_))))
                      (_g1202112217_ _g1202312221_))))
               (_g1201912490_
                (lambda (_g1202312381_)
                  (if (gx#stx-pair? _g1202312381_)
                      (let ((_e1205412384_ (gx#syntax-e _g1202312381_)))
                        (let ((_hd1205512388_ (##car _e1205412384_))
                              (_tl1205612391_ (##cdr _e1205412384_)))
                          (if (gx#stx-pair? _tl1205612391_)
                              (let ((_e1205712394_
                                     (gx#syntax-e _tl1205612391_)))
                                (let ((_hd1205812398_ (##car _e1205712394_))
                                      (_tl1205912401_ (##cdr _e1205712394_)))
                                  (if (gx#stx-pair? _tl1205912401_)
                                      (let ((_e1206012404_
                                             (gx#syntax-e _tl1205912401_)))
                                        (let ((_hd1206112408_
                                               (##car _e1206012404_))
                                              (_tl1206212411_
                                               (##cdr _e1206012404_)))
                                          (if (gx#stx-pair? _tl1206212411_)
                                              (let ((_e1206312414_
                                                     (gx#syntax-e
                                                      _tl1206212411_)))
                                                (let ((_hd1206412418_
                                                       (##car _e1206312414_))
                                                      (_tl1206512421_
                                                       (##cdr _e1206312414_)))
                                                  (if (gx#stx-pair?
                                                       _tl1206512421_)
                                                      (let ((_e1206612424_
                                                             (gx#syntax-e
                                                              _tl1206512421_)))
                                                        (let ((_hd1206712428_
                                                               (##car _e1206612424_))
                                                              (_tl1206812431_
                                                               (##cdr _e1206612424_)))
                                                          (if (gx#stx-null?
                                                               _tl1206812431_)
                                                              ((lambda (_L12434_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _L12436_
                                _L12437_
                                _L12438_)
                         (let* ((_g1245912467_
                                 (lambda (_g1246012463_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1246012463_)))
                                (_g1245812486_
                                 (lambda (_g1246012471_)
                                   ((lambda (_L12474_)
                                      (let ()
                                        (cons (gx#datum->syntax '#f 'if)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '##fx=)
                                                          (cons _L12437_
                                                                (cons _L12474_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _L12436_
                                                          (cons _L12434_
                                                                '()))))))
                                    _g1246012471_))))
                           (_g1245812486_ (gx#stx-e _L12438_))))
                       _hd1206712428_
                       _hd1206412418_
                       _hd1206112408_
                       _hd1205812398_)
                      (_g1202012377_ _g1202312381_))))
              (_g1202012377_ _g1202312381_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1202012377_ _g1202312381_))))
                                      (_g1202012377_ _g1202312381_))))
                              (_g1202012377_ _g1202312381_))))
                      (_g1202012377_ _g1202312381_))))
               (_g1201812558_
                (lambda (_g1202312494_)
                  (if (gx#stx-pair? _g1202312494_)
                      (let ((_e1203812497_ (gx#syntax-e _g1202312494_)))
                        (let ((_hd1203912501_ (##car _e1203812497_))
                              (_tl1204012504_ (##cdr _e1203812497_)))
                          (if (gx#stx-pair? _tl1204012504_)
                              (let ((_e1204112507_
                                     (gx#syntax-e _tl1204012504_)))
                                (let ((_hd1204212511_ (##car _e1204112507_))
                                      (_tl1204312514_ (##cdr _e1204112507_)))
                                  (if (gx#stx-pair? _tl1204312514_)
                                      (let ((_e1204412517_
                                             (gx#syntax-e _tl1204312514_)))
                                        (let ((_hd1204512521_
                                               (##car _e1204412517_))
                                              (_tl1204612524_
                                               (##cdr _e1204412517_)))
                                          (if (gx#stx-pair? _tl1204612524_)
                                              (let ((_e1204712527_
                                                     (gx#syntax-e
                                                      _tl1204612524_)))
                                                (let ((_hd1204812531_
                                                       (##car _e1204712527_))
                                                      (_tl1204912534_
                                                       (##cdr _e1204712527_)))
                                                  (if (gx#stx-null?
                                                       _tl1204912534_)
                                                      ((lambda (_L12537_
                                                                _L12539_
                                                                _L12540_)
                                                         _L12537_)
                                                       _hd1204812531_
                                                       _hd1204512521_
                                                       _hd1204212511_)
                                                      (_g1201912490_
                                                       _g1202312494_))))
                                              (_g1201912490_ _g1202312494_))))
                                      (_g1201912490_ _g1202312494_))))
                              (_g1201912490_ _g1202312494_))))
                      (_g1201912490_ _g1202312494_))))
               (_g1201712612_
                (lambda (_g1202312562_)
                  (if (gx#stx-pair? _g1202312562_)
                      (let ((_e1202612565_ (gx#syntax-e _g1202312562_)))
                        (let ((_hd1202712569_ (##car _e1202612565_))
                              (_tl1202812572_ (##cdr _e1202612565_)))
                          (if (gx#stx-pair? _tl1202812572_)
                              (let ((_e1202912575_
                                     (gx#syntax-e _tl1202812572_)))
                                (let ((_hd1203012579_ (##car _e1202912575_))
                                      (_tl1203112582_ (##cdr _e1202912575_)))
                                  (if (gx#stx-pair? _tl1203112582_)
                                      (let ((_e1203212585_
                                             (gx#syntax-e _tl1203112582_)))
                                        (let ((_hd1203312589_
                                               (##car _e1203212585_))
                                              (_tl1203412592_
                                               (##cdr _e1203212585_)))
                                          (if (gx#stx-null? _tl1203412592_)
                                              ((lambda (_L12595_ _L12597_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'quote)
                                                       (cons '#!void '())))
                                               _hd1203312589_
                                               _hd1203012579_)
                                              (_g1201812558_ _g1202312562_))))
                                      (_g1201812558_ _g1202312562_))))
                              (_g1201812558_ _g1202312562_))))
                      (_g1201812558_ _g1202312562_)))))
          (_g1201712612_ _stx12015_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#~case-dispatch-bsearch|
      (lambda (_stx12617_)
        (letrec ((_split12620_
                  (lambda (_lst12981_ _mid12983_)
                    (let _lp12985_ ((_i12988_ '0)
                                    (_rest12990_ _lst12981_)
                                    (_left12991_ '()))
                      (if (fx< _i12988_ _mid12983_)
                          (_lp12985_
                           (fx1+ _i12988_)
                           (cdr _rest12990_)
                           (cons (car _rest12990_) _left12991_))
                          (values (reverse _left12991_) _rest12990_))))))
          (let* ((_g1262312651_
                  (lambda (_g1262412647_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1262412647_)))
                 (_g1262212977_
                  (lambda (_g1262412655_)
                    (if (gx#stx-pair? _g1262412655_)
                        (let ((_e1262812658_ (gx#syntax-e _g1262412655_)))
                          (let ((_hd1262912662_ (##car _e1262812658_))
                                (_tl1263012665_ (##cdr _e1262812658_)))
                            (if (gx#stx-pair? _tl1263012665_)
                                (let ((_e1263112668_
                                       (gx#syntax-e _tl1263012665_)))
                                  (let ((_hd1263212672_ (##car _e1263112668_))
                                        (_tl1263312675_ (##cdr _e1263112668_)))
                                    (if (gx#stx-pair? _tl1263312675_)
                                        (let ((_e1263412678_
                                               (gx#syntax-e _tl1263312675_)))
                                          (let ((_hd1263512682_
                                                 (##car _e1263412678_))
                                                (_tl1263612685_
                                                 (##cdr _e1263412678_)))
                                            (if (gx#stx-pair/null?
                                                 _tl1263612685_)
                                                (if (fx>= (gx#stx-length
                                                           _tl1263612685_)
                                                          '0)
                                                    (let ((_g35488_
                                                           (gx#syntax-split-splice
                                                            _tl1263612685_
                                                            '0)))
                                                      (begin
                                                        (let ((_g35489_
                                                               (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g35488_)
                           (##vector-length _g35488_)
                           1)))
                  (if (not (##fx= _g35489_ 2))
                      (error "Context expects 2 values" _g35489_)))
                (let ((_target1263712688_ (##vector-ref _g35488_ 0))
                      (_tl1263912691_ (##vector-ref _g35488_ 1)))
                  (if (gx#stx-null? _tl1263912691_)
                      (letrec ((_loop1264012694_
                                (lambda (_hd1263812698_ _K1264412701_)
                                  (if (gx#stx-pair? _hd1263812698_)
                                      (let ((_e1264112704_
                                             (gx#syntax-e _hd1263812698_)))
                                        (let ((_lp-hd1264212708_
                                               (##car _e1264112704_))
                                              (_lp-tl1264312711_
                                               (##cdr _e1264112704_)))
                                          (_loop1264012694_
                                           _lp-tl1264312711_
                                           (cons _lp-hd1264212708_
                                                 _K1264412701_))))
                                      (let ((_K1264512714_
                                             (reverse _K1264412701_)))
                                        ((lambda (_L12718_ _L12720_ _L12721_)
                                           (let* ((_len12751_
                                                   (length (begin
                                                             '#!void
                                                             (foldr (lambda (_g1274212745_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1274312748_)
                              (cons _g1274212745_ _g1274312748_))
                            '()
                            _L12718_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_mid12754_
                                                   (quotient _len12751_ '2))
                                                  (_g35490_
                                                   (_split12620_
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g1275612759_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1275712762_)
                       (cons _g1275612759_ _g1275712762_))
                     '()
                     _L12718_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _mid12754_)))
                                             (begin
                                               (let ((_g35491_
                                                      (if (##values? _g35490_)
                                                          (##vector-length
                                                           _g35490_)
                                                          1)))
                                                 (if (not (##fx= _g35491_ 2))
                                                     (error "Context expects 2 values"
                                                            _g35491_)))
                                               (let ((_left12765_
                                                      (##vector-ref
                                                       _g35490_
                                                       0))
                                                     (_right12767_
                                                      (##vector-ref
                                                       _g35490_
                                                       1)))
                                                 (let ()
                                                   (let* ((_g1277112812_
                                                           (lambda (_g1277212808_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g1277212808_)))
                                                          (_g1277012973_
                                                           (lambda (_g1277212816_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1277212816_)
                         (let ((_e1277712819_ (gx#syntax-e _g1277212816_)))
                           (let ((_hd1277812823_ (##car _e1277712819_))
                                 (_tl1277912826_ (##cdr _e1277712819_)))
                             (if (gx#stx-pair? _tl1277912826_)
                                 (let ((_e1278012829_
                                        (gx#syntax-e _tl1277912826_)))
                                   (let ((_hd1278112833_ (##car _e1278012829_))
                                         (_tl1278212836_
                                          (##cdr _e1278012829_)))
                                     (if (gx#stx-pair/null? _hd1278112833_)
                                         (if (fx>= (gx#stx-length
                                                    _hd1278112833_)
                                                   '0)
                                             (let ((_g35492_
                                                    (gx#syntax-split-splice
                                                     _hd1278112833_
                                                     '0)))
                                               (begin
                                                 (let ((_g35493_
                                                        (if (##values?
                                                             _g35492_)
                                                            (##vector-length
                                                             _g35492_)
                                                            1)))
                                                   (if (not (##fx= _g35493_ 2))
                                                       (error "Context expects 2 values"
                                                              _g35493_)))
                                                 (let ((_target1278312839_
                                                        (##vector-ref
                                                         _g35492_
                                                         0))
                                                       (_tl1278512842_
                                                        (##vector-ref
                                                         _g35492_
                                                         1)))
                                                   (if (gx#stx-null?
                                                        _tl1278512842_)
                                                       (letrec ((_loop1278612845_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd1278412849_ _K-left1279012852_)
                           (if (gx#stx-pair? _hd1278412849_)
                               (let ((_e1278712855_
                                      (gx#syntax-e _hd1278412849_)))
                                 (let ((_lp-hd1278812859_
                                        (##car _e1278712855_))
                                       (_lp-tl1278912862_
                                        (##cdr _e1278712855_)))
                                   (_loop1278612845_
                                    _lp-tl1278912862_
                                    (cons _lp-hd1278812859_
                                          _K-left1279012852_))))
                               (let ((_K-left1279112865_
                                      (reverse _K-left1279012852_)))
                                 (if (gx#stx-pair? _tl1278212836_)
                                     (let ((_e1279212869_
                                            (gx#syntax-e _tl1278212836_)))
                                       (let ((_hd1279312873_
                                              (##car _e1279212869_))
                                             (_tl1279412876_
                                              (##cdr _e1279212869_)))
                                         (if (gx#stx-pair/null? _hd1279312873_)
                                             (if (fx>= (gx#stx-length
                                                        _hd1279312873_)
                                                       '0)
                                                 (let ((_g35494_
                                                        (gx#syntax-split-splice
                                                         _hd1279312873_
                                                         '0)))
                                                   (begin
                                                     (let ((_g35495_
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g35494_)
                        (##vector-length _g35494_)
                        1)))
               (if (not (##fx= _g35495_ 2))
                   (error "Context expects 2 values" _g35495_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target1279512879_
                                                            (##vector-ref
                                                             _g35494_
                                                             0))
                                                           (_tl1279712882_
                                                            (##vector-ref
                                                             _g35494_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl1279712882_)
                                                           (letrec ((_loop1279812885_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd1279612889_ _K-right1280212892_)
                               (if (gx#stx-pair? _hd1279612889_)
                                   (let ((_e1279912895_
                                          (gx#syntax-e _hd1279612889_)))
                                     (let ((_lp-hd1280012899_
                                            (##car _e1279912895_))
                                           (_lp-tl1280112902_
                                            (##cdr _e1279912895_)))
                                       (_loop1279812885_
                                        _lp-tl1280112902_
                                        (cons _lp-hd1280012899_
                                              _K-right1280212892_))))
                                   (let ((_K-right1280312905_
                                          (reverse _K-right1280212892_)))
                                     (if (gx#stx-pair? _tl1279412876_)
                                         (let ((_e1280412909_
                                                (gx#syntax-e _tl1279412876_)))
                                           (let ((_hd1280512913_
                                                  (##car _e1280412909_))
                                                 (_tl1280612916_
                                                  (##cdr _e1280412909_)))
                                             (if (gx#stx-null? _tl1280612916_)
                                                 ((lambda (_L12919_
                                                           _L12921_
                                                           _L12922_
                                                           _L12923_)
                                                    (let ()
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'if)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 '##fx<)
                                (cons _L12720_ (cons _L12919_ '())))
                          (cons (cons (gx#datum->syntax '#f '~case-dispatch*)
                                      (cons _L12721_
                                            (cons _L12720_
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g1295612961_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1295712964_)
                     (cons _g1295612961_ _g1295712964_))
                   '()
                   _L12922_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             '~case-dispatch*)
                                            (cons _L12919_
                                                  (cons _L12720_
                                                        (begin
                                                          '#!void
                                                          (foldr (lambda (_g1295812967_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g1295912970_)
                           (cons _g1295812967_ _g1295912970_))
                         '()
                         _L12921_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd1280512913_
                                                  _K-right1280312905_
                                                  _K-left1279112865_
                                                  _hd1277812823_)
                                                 (_g1277112812_
                                                  _g1277212816_))))
                                         (_g1277112812_ _g1277212816_)))))))
                     (_loop1279812885_ _target1279512879_ '()))
                   (_g1277112812_ _g1277212816_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1277112812_ _g1277212816_))
                                             (_g1277112812_ _g1277212816_))))
                                     (_g1277112812_ _g1277212816_)))))))
                 (_loop1278612845_ _target1278312839_ '()))
               (_g1277112812_ _g1277212816_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1277112812_ _g1277212816_))
                                         (_g1277112812_ _g1277212816_))))
                                 (_g1277112812_ _g1277212816_))))
                         (_g1277112812_ _g1277212816_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1277012973_
                                                      (list _mid12754_
                                                            _left12765_
                                                            _right12767_
                                                            (fx+ _mid12754_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _L12721_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _K1264512714_
                                         _hd1263512682_
                                         _hd1263212672_))))))
                        (_loop1264012694_ _target1263712688_ '()))
                      (_g1262312651_ _g1262412655_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1262312651_
                                                     _g1262412655_))
                                                (_g1262312651_
                                                 _g1262412655_))))
                                        (_g1262312651_ _g1262412655_))))
                                (_g1262312651_ _g1262412655_))))
                        (_g1262312651_ _g1262412655_)))))
            (_g1262212977_ _stx12617_)))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#do|
      (lambda (_$stx12997_)
        (let* ((_g1300113072_
                (lambda (_g1300213068_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1300213068_)))
               (_g1300013361_
                (lambda (_g1300213076_)
                  (if (gx#stx-pair? _g1300213076_)
                      (let ((_e1300913079_ (gx#syntax-e _g1300213076_)))
                        (let ((_hd1301013083_ (##car _e1300913079_))
                              (_tl1301113086_ (##cdr _e1300913079_)))
                          (if (gx#stx-pair? _tl1301113086_)
                              (let ((_e1301213089_
                                     (gx#syntax-e _tl1301113086_)))
                                (let ((_hd1301313093_ (##car _e1301213089_))
                                      (_tl1301413096_ (##cdr _e1301213089_)))
                                  (if (gx#stx-pair/null? _hd1301313093_)
                                      (if (fx>= (gx#stx-length _hd1301313093_)
                                                '0)
                                          (let ((_g35496_
                                                 (gx#syntax-split-splice
                                                  _hd1301313093_
                                                  '0)))
                                            (begin
                                              (let ((_g35497_
                                                     (if (##values? _g35496_)
                                                         (##vector-length
                                                          _g35496_)
                                                         1)))
                                                (if (not (##fx= _g35497_ 2))
                                                    (error "Context expects 2 values"
                                                           _g35497_)))
                                              (let ((_target1301513099_
                                                     (##vector-ref _g35496_ 0))
                                                    (_tl1301713102_
                                                     (##vector-ref
                                                      _g35496_
                                                      1)))
                                                (if (gx#stx-null?
                                                     _tl1301713102_)
                                                    (letrec ((_loop1301813105_
                                                              (lambda (_hd1301613109_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _step1302213112_
                               _init1302313114_
                               _var1302413116_)
                        (if (gx#stx-pair? _hd1301613109_)
                            (let ((_e1301913119_ (gx#syntax-e _hd1301613109_)))
                              (let ((_lp-hd1302013123_ (##car _e1301913119_))
                                    (_lp-tl1302113126_ (##cdr _e1301913119_)))
                                (if (gx#stx-pair? _lp-hd1302013123_)
                                    (let ((_e1302813129_
                                           (gx#syntax-e _lp-hd1302013123_)))
                                      (let ((_hd1302913133_
                                             (##car _e1302813129_))
                                            (_tl1303013136_
                                             (##cdr _e1302813129_)))
                                        (if (gx#stx-pair? _tl1303013136_)
                                            (let ((_e1303113139_
                                                   (gx#syntax-e
                                                    _tl1303013136_)))
                                              (let ((_hd1303213143_
                                                     (##car _e1303113139_))
                                                    (_tl1303313146_
                                                     (##cdr _e1303113139_)))
                                                (if (gx#stx-pair/null?
                                                     _tl1303313146_)
                                                    (if (fx>= (gx#stx-length
                                                               _tl1303313146_)
                                                              '0)
                                                        (let ((_g35498_
                                                               (gx#syntax-split-splice
                                                                _tl1303313146_
                                                                '0)))
                                                          (begin
                                                            (let ((_g35499_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if (##values? _g35498_)
                               (##vector-length _g35498_)
                               1)))
                      (if (not (##fx= _g35499_ 2))
                          (error "Context expects 2 values" _g35499_)))
                    (let ((_target1303413149_ (##vector-ref _g35498_ 0))
                          (_tl1303613152_ (##vector-ref _g35498_ 1)))
                      (if (gx#stx-null? _tl1303613152_)
                          (letrec ((_loop1303713155_
                                    (lambda (_hd1303513159_ _step1304113162_)
                                      (if (gx#stx-pair? _hd1303513159_)
                                          (let ((_e1303813165_
                                                 (gx#syntax-e _hd1303513159_)))
                                            (let ((_lp-hd1303913169_
                                                   (##car _e1303813165_))
                                                  (_lp-tl1304013172_
                                                   (##cdr _e1303813165_)))
                                              (_loop1303713155_
                                               _lp-tl1304013172_
                                               (cons _lp-hd1303913169_
                                                     _step1304113162_))))
                                          (let ((_step1304213175_
                                                 (reverse _step1304113162_)))
                                            (_loop1301813105_
                                             _lp-tl1302113126_
                                             (cons _step1304213175_
                                                   _step1302213112_)
                                             (cons _hd1303213143_
                                                   _init1302313114_)
                                             (cons _hd1302913133_
                                                   _var1302413116_)))))))
                            (_loop1303713155_ _target1303413149_ '()))
                          (_g1300113072_ _g1300213076_)))))
                (_g1300113072_ _g1300213076_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1300113072_
                                                     _g1300213076_))))
                                            (_g1300113072_ _g1300213076_))))
                                    (_g1300113072_ _g1300213076_))))
                            (let ((_step1302513179_ (reverse _step1302213112_))
                                  (_init1302613182_ (reverse _init1302313114_))
                                  (_var1302713184_ (reverse _var1302413116_)))
                              (if (gx#stx-pair? _tl1301413096_)
                                  (let ((_e1304313187_
                                         (gx#syntax-e _tl1301413096_)))
                                    (let ((_hd1304413191_
                                           (##car _e1304313187_))
                                          (_tl1304513194_
                                           (##cdr _e1304313187_)))
                                      (if (gx#stx-pair? _hd1304413191_)
                                          (let ((_e1304613197_
                                                 (gx#syntax-e _hd1304413191_)))
                                            (let ((_hd1304713201_
                                                   (##car _e1304613197_))
                                                  (_tl1304813204_
                                                   (##cdr _e1304613197_)))
                                              (if (gx#stx-pair/null?
                                                   _tl1304813204_)
                                                  (if (fx>= (gx#stx-length
                                                             _tl1304813204_)
                                                            '0)
                                                      (let ((_g35500_
                                                             (gx#syntax-split-splice
                                                              _tl1304813204_
                                                              '0)))
                                                        (begin
                                                          (let ((_g35501_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g35500_)
                             (##vector-length _g35500_)
                             1)))
                    (if (not (##fx= _g35501_ 2))
                        (error "Context expects 2 values" _g35501_)))
                  (let ((_target1304913207_ (##vector-ref _g35500_ 0))
                        (_tl1305113210_ (##vector-ref _g35500_ 1)))
                    (if (gx#stx-null? _tl1305113210_)
                        (letrec ((_loop1305213213_
                                  (lambda (_hd1305013217_ _fini1305613220_)
                                    (if (gx#stx-pair? _hd1305013217_)
                                        (let ((_e1305313223_
                                               (gx#syntax-e _hd1305013217_)))
                                          (let ((_lp-hd1305413227_
                                                 (##car _e1305313223_))
                                                (_lp-tl1305513230_
                                                 (##cdr _e1305313223_)))
                                            (_loop1305213213_
                                             _lp-tl1305513230_
                                             (cons _lp-hd1305413227_
                                                   _fini1305613220_))))
                                        (let ((_fini1305713233_
                                               (reverse _fini1305613220_)))
                                          (if (gx#stx-pair/null?
                                               _tl1304513194_)
                                              (if (fx>= (gx#stx-length
                                                         _tl1304513194_)
                                                        '0)
                                                  (let ((_g35502_
                                                         (gx#syntax-split-splice
                                                          _tl1304513194_
                                                          '0)))
                                                    (begin
                                                      (let ((_g35503_
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g35502_)
                         (##vector-length _g35502_)
                         1)))
                (if (not (##fx= _g35503_ 2))
                    (error "Context expects 2 values" _g35503_)))
              (let ((_target1305813237_ (##vector-ref _g35502_ 0))
                    (_tl1306013240_ (##vector-ref _g35502_ 1)))
                (if (gx#stx-null? _tl1306013240_)
                    (letrec ((_loop1306113243_
                              (lambda (_hd1305913247_ _body1306513250_)
                                (if (gx#stx-pair? _hd1305913247_)
                                    (let ((_e1306213253_
                                           (gx#syntax-e _hd1305913247_)))
                                      (let ((_lp-hd1306313257_
                                             (##car _e1306213253_))
                                            (_lp-tl1306413260_
                                             (##cdr _e1306213253_)))
                                        (_loop1306113243_
                                         _lp-tl1306413260_
                                         (cons _lp-hd1306313257_
                                               _body1306513250_))))
                                    (let ((_body1306613263_
                                           (reverse _body1306513250_)))
                                      ((lambda (_L13267_
                                                _L13269_
                                                _L13270_
                                                _L13271_
                                                _L13272_
                                                _L13273_)
                                         (if (gx#stx-andmap
                                              gx#identifier?
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g1330613309_
                                                                _g1330713312_)
                                                         (cons _g1330613309_
                                                               _g1330713312_))
                                                       '()
                                                       _L13273_)))
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          '$loop)
                                                         (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-check-splice-targets _L13272_ _L13273_)
                         (foldr (lambda (_g1331413327_
                                         _g1331513330_
                                         _g1331613332_)
                                  (cons (cons _g1331513330_
                                              (cons _g1331413327_ '()))
                                        _g1331613332_))
                                '()
                                _L13272_
                                _L13273_))
                       (cons (cons (gx#datum->syntax '#f 'if)
                                   (cons _L13270_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'begin)
                                                     (cons '#!void
                                                           (begin
                                                             '#!void
                                                             (foldr (lambda (_g1331713335_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1331813338_)
                              (cons _g1331713335_ _g1331813338_))
                            '()
                            _L13269_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'begin)
                                                           (begin
                                                             '#!void
                                                             (foldr (lambda (_g1331913341_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1332013344_)
                              (cons _g1331913341_ _g1332013344_))
                            (cons (cons (gx#datum->syntax '#f '$loop)
                                        (begin
                                          (gx#syntax-check-splice-targets
                                           _L13271_
                                           _L13273_)
                                          (foldr (lambda (_g1332113347_
                                                          _g1332213350_
                                                          _g1332313352_)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'begin)
                                                               (cons _g1332213350_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (begin
                               '#!void
                               (foldr (lambda (_g1332413355_ _g1332513358_)
                                        (cons _g1332413355_ _g1332513358_))
                                      '()
                                      _g1332113347_))))
                 _g1332313352_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()
                                                 _L13271_
                                                 _L13273_)))
                                  '())
                            _L13267_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1300113072_ _g1300213076_)))
                                       _body1306613263_
                                       _fini1305713233_
                                       _hd1304713201_
                                       _step1302513179_
                                       _init1302613182_
                                       _var1302713184_))))))
                      (_loop1306113243_ _target1305813237_ '()))
                    (_g1300113072_ _g1300213076_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1300113072_
                                                   _g1300213076_))
                                              (_g1300113072_
                                               _g1300213076_)))))))
                          (_loop1305213213_ _target1304913207_ '()))
                        (_g1300113072_ _g1300213076_)))))
              (_g1300113072_ _g1300213076_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1300113072_
                                                   _g1300213076_))))
                                          (_g1300113072_ _g1300213076_))))
                                  (_g1300113072_ _g1300213076_)))))))
              (_loop1301813105_ _target1301513099_ '() '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1300113072_
                                                     _g1300213076_)))))
                                          (_g1300113072_ _g1300213076_))
                                      (_g1300113072_ _g1300213076_))))
                              (_g1300113072_ _g1300213076_))))
                      (_g1300113072_ _g1300213076_)))))
          (_g1300013361_ _$stx12997_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#do-while|
      (lambda (_$stx13369_)
        (let* ((_g1337313396_
                (lambda (_g1337413392_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1337413392_)))
               (_g1337213467_
                (lambda (_g1337413400_)
                  (if (gx#stx-pair? _g1337413400_)
                      (let ((_e1337913403_ (gx#syntax-e _g1337413400_)))
                        (let ((_hd1338013407_ (##car _e1337913403_))
                              (_tl1338113410_ (##cdr _e1337913403_)))
                          (if (gx#stx-pair? _tl1338113410_)
                              (let ((_e1338213413_
                                     (gx#syntax-e _tl1338113410_)))
                                (let ((_hd1338313417_ (##car _e1338213413_))
                                      (_tl1338413420_ (##cdr _e1338213413_)))
                                  (if (gx#stx-pair? _tl1338413420_)
                                      (let ((_e1338513423_
                                             (gx#syntax-e _tl1338413420_)))
                                        (let ((_hd1338613427_
                                               (##car _e1338513423_))
                                              (_tl1338713430_
                                               (##cdr _e1338513423_)))
                                          (if (gx#stx-pair? _hd1338613427_)
                                              (let ((_e1338813433_
                                                     (gx#syntax-e
                                                      _hd1338613427_)))
                                                (let ((_hd1338913437_
                                                       (##car _e1338813433_))
                                                      (_tl1339013440_
                                                       (##cdr _e1338813433_)))
                                                  ((lambda (_L13443_
                                                            _L13445_
                                                            _L13446_
                                                            _L13447_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'do)
                                                           (cons _L13447_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (cons (gx#datum->syntax '#f 'not)
                                           (cons _L13446_ '()))
                                     _L13445_)
                               _L13443_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _tl1338713430_
                                                   _tl1339013440_
                                                   _hd1338913437_
                                                   _hd1338313417_)))
                                              (_g1337313396_ _g1337413400_))))
                                      (_g1337313396_ _g1337413400_))))
                              (_g1337313396_ _g1337413400_))))
                      (_g1337313396_ _g1337413400_)))))
          (_g1337213467_ _$stx13369_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#begin0|
      (lambda (_$stx13471_)
        (let* ((_g1347613507_
                (lambda (_g1347713503_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1347713503_)))
               (_g1347513592_
                (lambda (_g1347713511_)
                  (if (gx#stx-pair? _g1347713511_)
                      (let ((_e1348713514_ (gx#syntax-e _g1347713511_)))
                        (let ((_hd1348813518_ (##car _e1348713514_))
                              (_tl1348913521_ (##cdr _e1348713514_)))
                          (if (gx#stx-pair? _tl1348913521_)
                              (let ((_e1349013524_
                                     (gx#syntax-e _tl1348913521_)))
                                (let ((_hd1349113528_ (##car _e1349013524_))
                                      (_tl1349213531_ (##cdr _e1349013524_)))
                                  (if (gx#stx-pair/null? _tl1349213531_)
                                      (if (fx>= (gx#stx-length _tl1349213531_)
                                                '0)
                                          (let ((_g35504_
                                                 (gx#syntax-split-splice
                                                  _tl1349213531_
                                                  '0)))
                                            (begin
                                              (let ((_g35505_
                                                     (if (##values? _g35504_)
                                                         (##vector-length
                                                          _g35504_)
                                                         1)))
                                                (if (not (##fx= _g35505_ 2))
                                                    (error "Context expects 2 values"
                                                           _g35505_)))
                                              (let ((_target1349313534_
                                                     (##vector-ref _g35504_ 0))
                                                    (_tl1349513537_
                                                     (##vector-ref
                                                      _g35504_
                                                      1)))
                                                (if (gx#stx-null?
                                                     _tl1349513537_)
                                                    (letrec ((_loop1349613540_
                                                              (lambda (_hd1349413544_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _rest1350013547_)
                        (if (gx#stx-pair? _hd1349413544_)
                            (let ((_e1349713550_ (gx#syntax-e _hd1349413544_)))
                              (let ((_lp-hd1349813554_ (##car _e1349713550_))
                                    (_lp-tl1349913557_ (##cdr _e1349713550_)))
                                (_loop1349613540_
                                 _lp-tl1349913557_
                                 (cons _lp-hd1349813554_ _rest1350013547_))))
                            (let ((_rest1350113560_
                                   (reverse _rest1350013547_)))
                              ((lambda (_L13564_ _L13566_)
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (cons (gx#datum->syntax '#f '$r)
                                                   (cons _L13566_ '()))
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '%#expression)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'begin)
                             (begin
                               '#!void
                               (foldr (lambda (_g1358313586_ _g1358413589_)
                                        (cons _g1358313586_ _g1358413589_))
                                      '()
                                      _L13564_)))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          '$r)
                                                         '())))))
                               _rest1350113560_
                               _hd1349113528_))))))
              (_loop1349613540_ _target1349313534_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1347613507_
                                                     _g1347713511_)))))
                                          (_g1347613507_ _g1347713511_))
                                      (_g1347613507_ _g1347713511_))))
                              (_g1347613507_ _g1347713511_))))
                      (_g1347613507_ _g1347713511_))))
               (_g1347413632_
                (lambda (_g1347713596_)
                  (if (gx#stx-pair? _g1347713596_)
                      (let ((_e1347913599_ (gx#syntax-e _g1347713596_)))
                        (let ((_hd1348013603_ (##car _e1347913599_))
                              (_tl1348113606_ (##cdr _e1347913599_)))
                          (if (gx#stx-pair? _tl1348113606_)
                              (let ((_e1348213609_
                                     (gx#syntax-e _tl1348113606_)))
                                (let ((_hd1348313613_ (##car _e1348213609_))
                                      (_tl1348413616_ (##cdr _e1348213609_)))
                                  (if (gx#stx-null? _tl1348413616_)
                                      ((lambda (_L13619_) _L13619_)
                                       _hd1348313613_)
                                      (_g1347513592_ _g1347713596_))))
                              (_g1347513592_ _g1347713596_))))
                      (_g1347513592_ _g1347713596_)))))
          (_g1347413632_ _$stx13471_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#rec|
      (lambda (_$stx13637_)
        (let* ((_g1364313696_
                (lambda (_g1364413692_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1364413692_)))
               (_g1364213795_
                (lambda (_g1364413700_)
                  (if (gx#stx-pair? _g1364413700_)
                      (let ((_e1367313703_ (gx#syntax-e _g1364413700_)))
                        (let ((_hd1367413707_ (##car _e1367313703_))
                              (_tl1367513710_ (##cdr _e1367313703_)))
                          (if (gx#stx-pair? _tl1367513710_)
                              (let ((_e1367613713_
                                     (gx#syntax-e _tl1367513710_)))
                                (let ((_hd1367713717_ (##car _e1367613713_))
                                      (_tl1367813720_ (##cdr _e1367613713_)))
                                  (if (gx#stx-pair? _hd1367713717_)
                                      (let ((_e1367913723_
                                             (gx#syntax-e _hd1367713717_)))
                                        (let ((_hd1368013727_
                                               (##car _e1367913723_))
                                              (_tl1368113730_
                                               (##cdr _e1367913723_)))
                                          (if (gx#stx-pair/null?
                                               _tl1367813720_)
                                              (if (fx>= (gx#stx-length
                                                         _tl1367813720_)
                                                        '0)
                                                  (let ((_g35506_
                                                         (gx#syntax-split-splice
                                                          _tl1367813720_
                                                          '0)))
                                                    (begin
                                                      (let ((_g35507_
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g35506_)
                         (##vector-length _g35506_)
                         1)))
                (if (not (##fx= _g35507_ 2))
                    (error "Context expects 2 values" _g35507_)))
              (let ((_target1368213733_ (##vector-ref _g35506_ 0))
                    (_tl1368413736_ (##vector-ref _g35506_ 1)))
                (if (gx#stx-null? _tl1368413736_)
                    (letrec ((_loop1368513739_
                              (lambda (_hd1368313743_ _body1368913746_)
                                (if (gx#stx-pair? _hd1368313743_)
                                    (let ((_e1368613749_
                                           (gx#syntax-e _hd1368313743_)))
                                      (let ((_lp-hd1368713753_
                                             (##car _e1368613749_))
                                            (_lp-tl1368813756_
                                             (##cdr _e1368613749_)))
                                        (_loop1368513739_
                                         _lp-tl1368813756_
                                         (cons _lp-hd1368713753_
                                               _body1368913746_))))
                                    (let ((_body1369013759_
                                           (reverse _body1368913746_)))
                                      ((lambda (_L13763_ _L13765_ _L13766_)
                                         (if (gx#identifier? _L13766_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'letrec)
                                                   (cons (cons (cons _L13766_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _L13765_
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g1378613789_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1378713792_)
                  (cons _g1378613789_ _g1378713792_))
                '()
                _L13763_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   '()))
                       '())
                 (cons _L13766_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1364313696_ _g1364413700_)))
                                       _body1369013759_
                                       _tl1368113730_
                                       _hd1368013727_))))))
                      (_loop1368513739_ _target1368213733_ '()))
                    (_g1364313696_ _g1364413700_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1364313696_
                                                   _g1364413700_))
                                              (_g1364313696_ _g1364413700_))))
                                      (_g1364313696_ _g1364413700_))))
                              (_g1364313696_ _g1364413700_))))
                      (_g1364313696_ _g1364413700_))))
               (_g1364113861_
                (lambda (_g1364413799_)
                  (if (gx#stx-pair? _g1364413799_)
                      (let ((_e1365813802_ (gx#syntax-e _g1364413799_)))
                        (let ((_hd1365913806_ (##car _e1365813802_))
                              (_tl1366013809_ (##cdr _e1365813802_)))
                          (if (gx#stx-pair? _tl1366013809_)
                              (let ((_e1366113812_
                                     (gx#syntax-e _tl1366013809_)))
                                (let ((_hd1366213816_ (##car _e1366113812_))
                                      (_tl1366313819_ (##cdr _e1366113812_)))
                                  (if (gx#stx-pair? _hd1366213816_)
                                      (let ((_e1366413822_
                                             (gx#syntax-e _hd1366213816_)))
                                        (let ((_hd1366513826_
                                               (##car _e1366413822_))
                                              (_tl1366613829_
                                               (##cdr _e1366413822_)))
                                          (if (gx#identifier? _hd1366513826_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<sugar>$<sugar:2>[1]#_g35508_|
                                                   _hd1366513826_)
                                                  (if (gx#stx-pair?
                                                       _tl1366313819_)
                                                      (let ((_e1366713832_
                                                             (gx#syntax-e
                                                              _tl1366313819_)))
                                                        (let ((_hd1366813836_
                                                               (##car _e1366713832_))
                                                              (_tl1366913839_
                                                               (##cdr _e1366713832_)))
                                                          (if (gx#stx-null?
                                                               _tl1366913839_)
                                                              ((lambda (_L13842_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _L13844_)
                         (if (gx#identifier-list? _L13844_)
                             (cons (gx#datum->syntax '#f 'letrec-values)
                                   (cons (cons (cons _L13844_
                                                     (cons _L13842_ '()))
                                               '())
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'values)
                                                     _L13844_)
                                               '())))
                             (_g1364213795_ _g1364413799_)))
                       _hd1366813836_
                       _tl1366613829_)
                      (_g1364213795_ _g1364413799_))))
              (_g1364213795_ _g1364413799_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1364213795_
                                                   _g1364413799_))
                                              (_g1364213795_ _g1364413799_))))
                                      (_g1364213795_ _g1364413799_))))
                              (_g1364213795_ _g1364413799_))))
                      (_g1364213795_ _g1364413799_))))
               (_g1364013915_
                (lambda (_g1364413865_)
                  (if (gx#stx-pair? _g1364413865_)
                      (let ((_e1364713868_ (gx#syntax-e _g1364413865_)))
                        (let ((_hd1364813872_ (##car _e1364713868_))
                              (_tl1364913875_ (##cdr _e1364713868_)))
                          (if (gx#stx-pair? _tl1364913875_)
                              (let ((_e1365013878_
                                     (gx#syntax-e _tl1364913875_)))
                                (let ((_hd1365113882_ (##car _e1365013878_))
                                      (_tl1365213885_ (##cdr _e1365013878_)))
                                  (if (gx#stx-pair? _tl1365213885_)
                                      (let ((_e1365313888_
                                             (gx#syntax-e _tl1365213885_)))
                                        (let ((_hd1365413892_
                                               (##car _e1365313888_))
                                              (_tl1365513895_
                                               (##cdr _e1365313888_)))
                                          (if (gx#stx-null? _tl1365513895_)
                                              ((lambda (_L13898_ _L13900_)
                                                 (if (gx#identifier? _L13900_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'letrec)
                                                           (cons (cons (cons _L13900_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (cons _L13898_ '()))
                               '())
                         (cons _L13900_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1364113861_
                                                      _g1364413865_)))
                                               _hd1365413892_
                                               _hd1365113882_)
                                              (_g1364113861_ _g1364413865_))))
                                      (_g1364113861_ _g1364413865_))))
                              (_g1364113861_ _g1364413865_))))
                      (_g1364113861_ _g1364413865_)))))
          (_g1364013915_ _$stx13637_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#alet|
      (lambda (_stx13920_)
        (letrec ((_let-head?13923_
                  (lambda (_x14470_)
                    (let* ((_g1447414485_
                            (lambda (_g1447514481_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1447514481_)))
                           (_g1447314496_
                            (lambda (_g1447514489_)
                              ((lambda () (gx#identifier? _x14470_)))))
                           (_g1447214526_
                            (lambda (_g1447514500_)
                              (if (gx#stx-pair? _g1447514500_)
                                  (let ((_e1447714503_
                                         (gx#syntax-e _g1447514500_)))
                                    (let ((_hd1447814507_
                                           (##car _e1447714503_))
                                          (_tl1447914510_
                                           (##cdr _e1447714503_)))
                                      (if (gx#identifier? _hd1447814507_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<sugar>$<sugar:2>[1]#_g35509_|
                                               _hd1447814507_)
                                              ((lambda (_L14513_)
                                                 (gx#stx-andmap
                                                  gx#identifier?
                                                  _L14513_))
                                               _tl1447914510_)
                                              (_g1447314496_ _g1447514500_))
                                          (_g1447314496_ _g1447514500_))))
                                  (_g1447314496_ _g1447514500_)))))
                      (_g1447214526_ _x14470_))))
                 (_let-head13925_
                  (lambda (_x14410_)
                    (let* ((_g1441414425_
                            (lambda (_g1441514421_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1441514421_)))
                           (_g1441314436_
                            (lambda (_g1441514429_)
                              ((lambda () (list _x14410_)))))
                           (_g1441214466_
                            (lambda (_g1441514440_)
                              (if (gx#stx-pair? _g1441514440_)
                                  (let ((_e1441714443_
                                         (gx#syntax-e _g1441514440_)))
                                    (let ((_hd1441814447_
                                           (##car _e1441714443_))
                                          (_tl1441914450_
                                           (##cdr _e1441714443_)))
                                      (if (gx#identifier? _hd1441814447_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<sugar>$<sugar:2>[1]#_g35510_|
                                               _hd1441814447_)
                                              ((lambda (_L14453_) _L14453_)
                                               _tl1441914450_)
                                              (_g1441314436_ _g1441514440_))
                                          (_g1441314436_ _g1441514440_))))
                                  (_g1441314436_ _g1441514440_)))))
                      (_g1441214466_ _x14410_)))))
          (let* ((_g1392813986_
                  (lambda (_g1392913982_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1392913982_)))
                 (_g1392714336_
                  (lambda (_g1392913990_)
                    (if (gx#stx-pair? _g1392913990_)
                        (let ((_e1394913993_ (gx#syntax-e _g1392913990_)))
                          (let ((_hd1395013997_ (##car _e1394913993_))
                                (_tl1395114000_ (##cdr _e1394913993_)))
                            (if (gx#stx-pair? _tl1395114000_)
                                (let ((_e1395214003_
                                       (gx#syntax-e _tl1395114000_)))
                                  (let ((_hd1395314007_ (##car _e1395214003_))
                                        (_tl1395414010_ (##cdr _e1395214003_)))
                                    (if (gx#stx-pair/null? _hd1395314007_)
                                        (if (fx>= (gx#stx-length
                                                   _hd1395314007_)
                                                  '0)
                                            (let ((_g35511_
                                                   (gx#syntax-split-splice
                                                    _hd1395314007_
                                                    '0)))
                                              (begin
                                                (let ((_g35512_
                                                       (if (##values? _g35511_)
                                                           (##vector-length
                                                            _g35511_)
                                                           1)))
                                                  (if (not (##fx= _g35512_ 2))
                                                      (error "Context expects 2 values"
                                                             _g35512_)))
                                                (let ((_target1395514013_
                                                       (##vector-ref
                                                        _g35511_
                                                        0))
                                                      (_tl1395714016_
                                                       (##vector-ref
                                                        _g35511_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl1395714016_)
                                                      (letrec ((_loop1395814019_
                                                                (lambda (_hd1395614023_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _e1396214026_
                                 _hd1396314028_)
                          (if (gx#stx-pair? _hd1395614023_)
                              (let ((_e1395914031_
                                     (gx#syntax-e _hd1395614023_)))
                                (let ((_lp-hd1396014035_ (##car _e1395914031_))
                                      (_lp-tl1396114038_
                                       (##cdr _e1395914031_)))
                                  (if (gx#stx-pair? _lp-hd1396014035_)
                                      (let ((_e1396614041_
                                             (gx#syntax-e _lp-hd1396014035_)))
                                        (let ((_hd1396714045_
                                               (##car _e1396614041_))
                                              (_tl1396814048_
                                               (##cdr _e1396614041_)))
                                          (if (gx#stx-pair? _tl1396814048_)
                                              (let ((_e1396914051_
                                                     (gx#syntax-e
                                                      _tl1396814048_)))
                                                (let ((_hd1397014055_
                                                       (##car _e1396914051_))
                                                      (_tl1397114058_
                                                       (##cdr _e1396914051_)))
                                                  (if (gx#stx-null?
                                                       _tl1397114058_)
                                                      (_loop1395814019_
                                                       _lp-tl1396114038_
                                                       (cons _hd1397014055_
                                                             _e1396214026_)
                                                       (cons _hd1396714045_
                                                             _hd1396314028_))
                                                      (_g1392813986_
                                                       _g1392913990_))))
                                              (_g1392813986_ _g1392913990_))))
                                      (_g1392813986_ _g1392913990_))))
                              (let ((_e1396414061_ (reverse _e1396214026_))
                                    (_hd1396514064_ (reverse _hd1396314028_)))
                                (if (gx#stx-pair/null? _tl1395414010_)
                                    (if (fx>= (gx#stx-length _tl1395414010_)
                                              '0)
                                        (let ((_g35513_
                                               (gx#syntax-split-splice
                                                _tl1395414010_
                                                '0)))
                                          (begin
                                            (let ((_g35514_
                                                   (if (##values? _g35513_)
                                                       (##vector-length
                                                        _g35513_)
                                                       1)))
                                              (if (not (##fx= _g35514_ 2))
                                                  (error "Context expects 2 values"
                                                         _g35514_)))
                                            (let ((_target1397214067_
                                                   (##vector-ref _g35513_ 0))
                                                  (_tl1397414070_
                                                   (##vector-ref _g35513_ 1)))
                                              (if (gx#stx-null? _tl1397414070_)
                                                  (letrec ((_loop1397514073_
                                                            (lambda (_hd1397314077_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _body1397914080_)
                      (if (gx#stx-pair? _hd1397314077_)
                          (let ((_e1397614083_ (gx#syntax-e _hd1397314077_)))
                            (let ((_lp-hd1397714087_ (##car _e1397614083_))
                                  (_lp-tl1397814090_ (##cdr _e1397614083_)))
                              (_loop1397514073_
                               _lp-tl1397814090_
                               (cons _lp-hd1397714087_ _body1397914080_))))
                          (let ((_body1398014093_ (reverse _body1397914080_)))
                            ((lambda (_L14097_ _L14099_ _L14100_)
                               (if (gx#stx-andmap
                                    _let-head?13923_
                                    (begin
                                      '#!void
                                      (foldr (lambda (_g1412314126_
                                                      _g1412414129_)
                                               (cons _g1412314126_
                                                     _g1412414129_))
                                             '()
                                             _L14100_)))
                                   (let* ((_g1413214165_
                                           (lambda (_g1413314161_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1413314161_)))
                                          (_g1413114316_
                                           (lambda (_g1413314169_)
                                             (if (gx#stx-pair? _g1413314169_)
                                                 (let ((_e1413614172_
                                                        (gx#syntax-e
                                                         _g1413314169_)))
                                                   (let ((_hd1413714176_
                                                          (##car _e1413614172_))
                                                         (_tl1413814179_
                                                          (##cdr _e1413614172_)))
                                                     (if (gx#stx-pair/null?
                                                          _hd1413714176_)
                                                         (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd1413714176_)
                           '0)
                     (let ((_g35515_
                            (gx#syntax-split-splice _hd1413714176_ '0)))
                       (begin
                         (let ((_g35516_
                                (if (##values? _g35515_)
                                    (##vector-length _g35515_)
                                    1)))
                           (if (not (##fx= _g35516_ 2))
                               (error "Context expects 2 values" _g35516_)))
                         (let ((_target1413914182_ (##vector-ref _g35515_ 0))
                               (_tl1414114185_ (##vector-ref _g35515_ 1)))
                           (if (gx#stx-null? _tl1414114185_)
                               (letrec ((_loop1414214188_
                                         (lambda (_hd1414014192_
                                                  _$e1414614195_)
                                           (if (gx#stx-pair? _hd1414014192_)
                                               (let ((_e1414314198_
                                                      (gx#syntax-e
                                                       _hd1414014192_)))
                                                 (let ((_lp-hd1414414202_
                                                        (##car _e1414314198_))
                                                       (_lp-tl1414514205_
                                                        (##cdr _e1414314198_)))
                                                   (_loop1414214188_
                                                    _lp-tl1414514205_
                                                    (cons _lp-hd1414414202_
                                                          _$e1414614195_))))
                                               (let ((_$e1414714208_
                                                      (reverse _$e1414614195_)))
                                                 (if (gx#stx-pair?
                                                      _tl1413814179_)
                                                     (let ((_e1414814212_
                                                            (gx#syntax-e
                                                             _tl1413814179_)))
                                                       (let ((_hd1414914216_
                                                              (##car _e1414814212_))
                                                             (_tl1415014219_
                                                              (##cdr _e1414814212_)))
                                                         (if (gx#stx-pair/null?
                                                              _hd1414914216_)
                                                             (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _hd1414914216_)
                               '0)
                         (let ((_g35517_
                                (gx#syntax-split-splice _hd1414914216_ '0)))
                           (begin
                             (let ((_g35518_
                                    (if (##values? _g35517_)
                                        (##vector-length _g35517_)
                                        1)))
                               (if (not (##fx= _g35518_ 2))
                                   (error "Context expects 2 values"
                                          _g35518_)))
                             (let ((_target1415114222_
                                    (##vector-ref _g35517_ 0))
                                   (_tl1415314225_ (##vector-ref _g35517_ 1)))
                               (if (gx#stx-null? _tl1415314225_)
                                   (letrec ((_loop1415414228_
                                             (lambda (_hd1415214232_
                                                      _hd-bind1415814235_)
                                               (if (gx#stx-pair?
                                                    _hd1415214232_)
                                                   (let ((_e1415514238_
                                                          (gx#syntax-e
                                                           _hd1415214232_)))
                                                     (let ((_lp-hd1415614242_
                                                            (##car _e1415514238_))
                                                           (_lp-tl1415714245_
                                                            (##cdr _e1415514238_)))
                                                       (_loop1415414228_
                                                        _lp-tl1415714245_
                                                        (cons _lp-hd1415614242_
                                                              _hd-bind1415814235_))))
                                                   (let ((_hd-bind1415914248_
                                                          (reverse _hd-bind1415814235_)))
                                                     (if (gx#stx-null?
                                                          _tl1415014219_)
                                                         ((lambda (_L14252_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L14254_)
                    (let ()
                      (cons (gx#datum->syntax '#f 'let-values)
                            (cons (begin
                                    (gx#syntax-check-splice-targets
                                     _L14099_
                                     _L14254_)
                                    (foldr (lambda (_g1427714288_
                                                    _g1427814291_
                                                    _g1427914293_)
                                             (cons (cons (cons _g1427814291_
                                                               '())
                                                         (cons _g1427714288_
                                                               '()))
                                                   _g1427914293_))
                                           '()
                                           _L14099_
                                           _L14254_))
                                  (cons (cons (gx#datum->syntax '#f 'and)
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g1428014296_
                                                                _g1428114299_)
                                                         (cons _g1428014296_
                                                               _g1428114299_))
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'let-values)
                           (cons (begin
                                   (gx#syntax-check-splice-targets
                                    _L14254_
                                    _L14252_)
                                   (foldr (lambda (_g1428214302_
                                                   _g1428314305_
                                                   _g1428414307_)
                                            (cons (cons _g1428314305_
                                                        (cons _g1428214302_
                                                              '()))
                                                  _g1428414307_))
                                          '()
                                          _L14254_
                                          _L14252_))
                                 (begin
                                   '#!void
                                   (foldr (lambda (_g1428514310_ _g1428614313_)
                                            (cons _g1428514310_ _g1428614313_))
                                          '()
                                          _L14097_))))
                     '())
               _L14254_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                  _hd-bind1415914248_
                  _$e1414714208_)
                 (_g1413214165_ _g1413314169_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop1415414228_ _target1415114222_ '()))
                                   (_g1413214165_ _g1413314169_)))))
                         (_g1413214165_ _g1413314169_))
                     (_g1413214165_ _g1413314169_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1413214165_
                                                      _g1413314169_)))))))
                                 (_loop1414214188_ _target1413914182_ '()))
                               (_g1413214165_ _g1413314169_)))))
                     (_g1413214165_ _g1413314169_))
                 (_g1413214165_ _g1413314169_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1413214165_
                                                  _g1413314169_)))))
                                     (_g1413114316_
                                      (list (gx#gentemps
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g1431914322_
                                                               _g1432014325_)
                                                        (cons _g1431914322_
                                                              _g1432014325_))
                                                      '()
                                                      _L14100_)))
                                            (gx#stx-map
                                             _let-head13925_
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g1432714330_
                                                               _g1432814333_)
                                                        (cons _g1432714330_
                                                              _g1432814333_))
                                                      '()
                                                      _L14100_))))))
                                   (_g1392813986_ _g1392913990_)))
                             _body1398014093_
                             _e1396414061_
                             _hd1396514064_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1397514073_
                                                     _target1397214067_
                                                     '()))
                                                  (_g1392813986_
                                                   _g1392913990_)))))
                                        (_g1392813986_ _g1392913990_))
                                    (_g1392813986_ _g1392913990_)))))))
                (_loop1395814019_ _target1395514013_ '() '()))
              (_g1392813986_ _g1392913990_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1392813986_ _g1392913990_))
                                        (_g1392813986_ _g1392913990_))))
                                (_g1392813986_ _g1392913990_))))
                        (_g1392813986_ _g1392913990_))))
                 (_g1392614406_
                  (lambda (_g1392914340_)
                    (if (gx#stx-pair? _g1392914340_)
                        (let ((_e1393414343_ (gx#syntax-e _g1392914340_)))
                          (let ((_hd1393514347_ (##car _e1393414343_))
                                (_tl1393614350_ (##cdr _e1393414343_)))
                            (if (gx#stx-pair? _tl1393614350_)
                                (let ((_e1393714353_
                                       (gx#syntax-e _tl1393614350_)))
                                  (let ((_hd1393814357_ (##car _e1393714353_))
                                        (_tl1393914360_ (##cdr _e1393714353_)))
                                    (if (gx#stx-pair? _hd1393814357_)
                                        (let ((_e1394014363_
                                               (gx#syntax-e _hd1393814357_)))
                                          (let ((_hd1394114367_
                                                 (##car _e1394014363_))
                                                (_tl1394214370_
                                                 (##cdr _e1394014363_)))
                                            (if (gx#stx-pair? _tl1394214370_)
                                                (let ((_e1394314373_
                                                       (gx#syntax-e
                                                        _tl1394214370_)))
                                                  (let ((_hd1394414377_
                                                         (##car _e1394314373_))
                                                        (_tl1394514380_
                                                         (##cdr _e1394314373_)))
                                                    (if (gx#stx-null?
                                                         _tl1394514380_)
                                                        ((lambda (_L14383_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L14385_
                          _L14386_
                          _L14387_)
                   (if (_let-head?13923_ _L14386_)
                       (cons _L14387_
                             (cons (cons (cons _L14386_ (cons _L14385_ '()))
                                         '())
                                   _L14383_))
                       (_g1392714336_ _g1392914340_)))
                 _tl1393914360_
                 _hd1394414377_
                 _hd1394114367_
                 _hd1393514347_)
                (_g1392714336_ _g1392914340_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1392714336_
                                                 _g1392914340_))))
                                        (_g1392714336_ _g1392914340_))))
                                (_g1392714336_ _g1392914340_))))
                        (_g1392714336_ _g1392914340_)))))
            (_g1392614406_ _stx13920_)))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#alet*|
      (lambda (_$stx14534_)
        (let* ((_g1453914584_
                (lambda (_g1454014580_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1454014580_)))
               (_g1453814685_
                (lambda (_g1454014588_)
                  (if (gx#stx-pair? _g1454014588_)
                      (let ((_e1456114591_ (gx#syntax-e _g1454014588_)))
                        (let ((_hd1456214595_ (##car _e1456114591_))
                              (_tl1456314598_ (##cdr _e1456114591_)))
                          (if (gx#stx-pair? _tl1456314598_)
                              (let ((_e1456414601_
                                     (gx#syntax-e _tl1456314598_)))
                                (let ((_hd1456514605_ (##car _e1456414601_))
                                      (_tl1456614608_ (##cdr _e1456414601_)))
                                  (if (gx#stx-pair? _hd1456514605_)
                                      (let ((_e1456714611_
                                             (gx#syntax-e _hd1456514605_)))
                                        (let ((_hd1456814615_
                                               (##car _e1456714611_))
                                              (_tl1456914618_
                                               (##cdr _e1456714611_)))
                                          (if (gx#stx-pair/null?
                                               _tl1456614608_)
                                              (if (fx>= (gx#stx-length
                                                         _tl1456614608_)
                                                        '0)
                                                  (let ((_g35519_
                                                         (gx#syntax-split-splice
                                                          _tl1456614608_
                                                          '0)))
                                                    (begin
                                                      (let ((_g35520_
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g35519_)
                         (##vector-length _g35519_)
                         1)))
                (if (not (##fx= _g35520_ 2))
                    (error "Context expects 2 values" _g35520_)))
              (let ((_target1457014621_ (##vector-ref _g35519_ 0))
                    (_tl1457214624_ (##vector-ref _g35519_ 1)))
                (if (gx#stx-null? _tl1457214624_)
                    (letrec ((_loop1457314627_
                              (lambda (_hd1457114631_ _body1457714634_)
                                (if (gx#stx-pair? _hd1457114631_)
                                    (let ((_e1457414637_
                                           (gx#syntax-e _hd1457114631_)))
                                      (let ((_lp-hd1457514641_
                                             (##car _e1457414637_))
                                            (_lp-tl1457614644_
                                             (##cdr _e1457414637_)))
                                        (_loop1457314627_
                                         _lp-tl1457614644_
                                         (cons _lp-hd1457514641_
                                               _body1457714634_))))
                                    (let ((_body1457814647_
                                           (reverse _body1457714634_)))
                                      ((lambda (_L14651_
                                                _L14653_
                                                _L14654_
                                                _L14655_)
                                         (cons (gx#datum->syntax '#f 'alet)
                                               (cons (cons _L14654_ '())
                                                     (cons (cons _L14655_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L14653_
                               (begin
                                 '#!void
                                 (foldr (lambda (_g1467614679_ _g1467714682_)
                                          (cons _g1467614679_ _g1467714682_))
                                        '()
                                        _L14651_))))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _body1457814647_
                                       _tl1456914618_
                                       _hd1456814615_
                                       _hd1456214595_))))))
                      (_loop1457314627_ _target1457014621_ '()))
                    (_g1453914584_ _g1454014588_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1453914584_
                                                   _g1454014588_))
                                              (_g1453914584_ _g1454014588_))))
                                      (_g1453914584_ _g1454014588_))))
                              (_g1453914584_ _g1454014588_))))
                      (_g1453914584_ _g1454014588_))))
               (_g1453714767_
                (lambda (_g1454014689_)
                  (if (gx#stx-pair? _g1454014689_)
                      (let ((_e1454214692_ (gx#syntax-e _g1454014689_)))
                        (let ((_hd1454314696_ (##car _e1454214692_))
                              (_tl1454414699_ (##cdr _e1454214692_)))
                          (if (gx#stx-pair? _tl1454414699_)
                              (let ((_e1454514702_
                                     (gx#syntax-e _tl1454414699_)))
                                (let ((_hd1454614706_ (##car _e1454514702_))
                                      (_tl1454714709_ (##cdr _e1454514702_)))
                                  (if (gx#stx-null? _hd1454614706_)
                                      (if (gx#stx-pair/null? _tl1454714709_)
                                          (if (fx>= (gx#stx-length
                                                     _tl1454714709_)
                                                    '0)
                                              (let ((_g35521_
                                                     (gx#syntax-split-splice
                                                      _tl1454714709_
                                                      '0)))
                                                (begin
                                                  (let ((_g35522_
                                                         (if (##values?
                                                              _g35521_)
                                                             (##vector-length
                                                              _g35521_)
                                                             1)))
                                                    (if (not (##fx= _g35522_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                (error "Context expects 2 values" _g35522_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target1454814712_
                                                         (##vector-ref
                                                          _g35521_
                                                          0))
                                                        (_tl1455014715_
                                                         (##vector-ref
                                                          _g35521_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl1455014715_)
                                                        (letrec ((_loop1455114718_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd1454914722_ _body1455514725_)
                            (if (gx#stx-pair? _hd1454914722_)
                                (let ((_e1455214728_
                                       (gx#syntax-e _hd1454914722_)))
                                  (let ((_lp-hd1455314732_
                                         (##car _e1455214728_))
                                        (_lp-tl1455414735_
                                         (##cdr _e1455214728_)))
                                    (_loop1455114718_
                                     _lp-tl1455414735_
                                     (cons _lp-hd1455314732_
                                           _body1455514725_))))
                                (let ((_body1455614738_
                                       (reverse _body1455514725_)))
                                  ((lambda (_L14742_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons '()
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g1475814761_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1475914764_)
                    (cons _g1475814761_ _g1475914764_))
                  '()
                  _L14742_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _body1455614738_))))))
                  (_loop1455114718_ _target1454814712_ '()))
                (_g1453814685_ _g1454014689_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1453814685_ _g1454014689_))
                                          (_g1453814685_ _g1454014689_))
                                      (_g1453814685_ _g1454014689_))))
                              (_g1453814685_ _g1454014689_))))
                      (_g1453814685_ _g1454014689_)))))
          (_g1453714767_ _$stx14534_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#@list|
      (lambda (_$stx14773_)
        (let* ((_g1478214839_
                (lambda (_g1478314835_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1478314835_)))
               (_g1478114868_
                (lambda (_g1478314843_)
                  (if (gx#stx-pair? _g1478314843_)
                      (let ((_e1483114846_ (gx#syntax-e _g1478314843_)))
                        (let ((_hd1483214850_ (##car _e1483114846_))
                              (_tl1483314853_ (##cdr _e1483114846_)))
                          ((lambda (_L14856_) _L14856_) _tl1483314853_)))
                      (_g1478214839_ _g1478314843_))))
               (_g1478014912_
                (lambda (_g1478314872_)
                  (if (gx#stx-pair? _g1478314872_)
                      (let ((_e1482414875_ (gx#syntax-e _g1478314872_)))
                        (let ((_hd1482514879_ (##car _e1482414875_))
                              (_tl1482614882_ (##cdr _e1482414875_)))
                          (if (gx#stx-pair? _tl1482614882_)
                              (let ((_e1482714885_
                                     (gx#syntax-e _tl1482614882_)))
                                (let ((_hd1482814889_ (##car _e1482714885_))
                                      (_tl1482914892_ (##cdr _e1482714885_)))
                                  ((lambda (_L14895_ _L14897_ _L14898_)
                                     (cons (gx#datum->syntax '#f 'cons)
                                           (cons _L14897_
                                                 (cons (cons _L14898_ _L14895_)
                                                       '()))))
                                   _tl1482914892_
                                   _hd1482814889_
                                   _hd1482514879_)))
                              (_g1478114868_ _g1478314872_))))
                      (_g1478114868_ _g1478314872_))))
               (_g1477914970_
                (lambda (_g1478314916_)
                  (if (gx#stx-pair? _g1478314916_)
                      (let ((_e1481214919_ (gx#syntax-e _g1478314916_)))
                        (let ((_hd1481314923_ (##car _e1481214919_))
                              (_tl1481414926_ (##cdr _e1481214919_)))
                          (if (gx#stx-pair? _tl1481414926_)
                              (let ((_e1481514929_
                                     (gx#syntax-e _tl1481414926_)))
                                (let ((_hd1481614933_ (##car _e1481514929_))
                                      (_tl1481714936_ (##cdr _e1481514929_)))
                                  (if (gx#stx-pair? _tl1481714936_)
                                      (let ((_e1481814939_
                                             (gx#syntax-e _tl1481714936_)))
                                        (let ((_hd1481914943_
                                               (##car _e1481814939_))
                                              (_tl1482014946_
                                               (##cdr _e1481814939_)))
                                          ((lambda (_L14949_
                                                    _L14951_
                                                    _L14952_
                                                    _L14953_)
                                             (if (gx#ellipsis? _L14951_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'foldr)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'cons)
                                                             (cons (cons _L14953_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L14949_)
                           (cons _L14952_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1478014912_
                                                  _g1478314916_)))
                                           _tl1482014946_
                                           _hd1481914943_
                                           _hd1481614933_
                                           _hd1481314923_)))
                                      (_g1478014912_ _g1478314916_))))
                              (_g1478014912_ _g1478314916_))))
                      (_g1478014912_ _g1478314916_))))
               (_g1477815024_
                (lambda (_g1478314974_)
                  (if (gx#stx-pair? _g1478314974_)
                      (let ((_e1479914977_ (gx#syntax-e _g1478314974_)))
                        (let ((_hd1480014981_ (##car _e1479914977_))
                              (_tl1480114984_ (##cdr _e1479914977_)))
                          (if (gx#stx-pair? _tl1480114984_)
                              (let ((_e1480214987_
                                     (gx#syntax-e _tl1480114984_)))
                                (let ((_hd1480314991_ (##car _e1480214987_))
                                      (_tl1480414994_ (##cdr _e1480214987_)))
                                  (if (gx#stx-pair? _tl1480414994_)
                                      (let ((_e1480514997_
                                             (gx#syntax-e _tl1480414994_)))
                                        (let ((_hd1480615001_
                                               (##car _e1480514997_))
                                              (_tl1480715004_
                                               (##cdr _e1480514997_)))
                                          (if (gx#stx-null? _tl1480715004_)
                                              ((lambda (_L15007_ _L15009_)
                                                 (if (gx#ellipsis? _L15007_)
                                                     _L15009_
                                                     (_g1477914970_
                                                      _g1478314974_)))
                                               _hd1480615001_
                                               _hd1480314991_)
                                              (_g1477914970_ _g1478314974_))))
                                      (_g1477914970_ _g1478314974_))))
                              (_g1477914970_ _g1478314974_))))
                      (_g1477914970_ _g1478314974_))))
               (_g1477715076_
                (lambda (_g1478315028_)
                  (if (gx#stx-pair? _g1478315028_)
                      (let ((_e1478815031_ (gx#syntax-e _g1478315028_)))
                        (let ((_hd1478915035_ (##car _e1478815031_))
                              (_tl1479015038_ (##cdr _e1478815031_)))
                          (if (gx#stx-pair? _tl1479015038_)
                              (let ((_e1479115041_
                                     (gx#syntax-e _tl1479015038_)))
                                (let ((_hd1479215045_ (##car _e1479115041_))
                                      (_tl1479315048_ (##cdr _e1479115041_)))
                                  (if (gx#stx-datum? _hd1479215045_)
                                      (if (equal? (gx#stx-e _hd1479215045_)
                                                  '::)
                                          (if (gx#stx-pair? _tl1479315048_)
                                              (let ((_e1479415051_
                                                     (gx#syntax-e
                                                      _tl1479315048_)))
                                                (let ((_hd1479515055_
                                                       (##car _e1479415051_))
                                                      (_tl1479615058_
                                                       (##cdr _e1479415051_)))
                                                  (if (gx#stx-null?
                                                       _tl1479615058_)
                                                      ((lambda (_L15061_)
                                                         _L15061_)
                                                       _hd1479515055_)
                                                      (_g1477815024_
                                                       _g1478315028_))))
                                              (_g1477815024_ _g1478315028_))
                                          (_g1477815024_ _g1478315028_))
                                      (_g1477815024_ _g1478315028_))))
                              (_g1477815024_ _g1478315028_))))
                      (_g1477815024_ _g1478315028_))))
               (_g1477615097_
                (lambda (_g1478315080_)
                  (if (gx#stx-pair? _g1478315080_)
                      (let ((_e1478415083_ (gx#syntax-e _g1478315080_)))
                        (let ((_hd1478515087_ (##car _e1478415083_))
                              (_tl1478615090_ (##cdr _e1478415083_)))
                          (if (gx#stx-null? _tl1478615090_)
                              ((lambda ()
                                 (cons (gx#datum->syntax '#f 'quote)
                                       (cons '() '()))))
                              (_g1477715076_ _g1478315080_))))
                      (_g1477715076_ _g1478315080_)))))
          (_g1477615097_ _$stx14773_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#quasiquote|
      (lambda (_stx15101_)
        (letrec ((_simple-quote?15104_
                  (lambda (_e15796_)
                    (let* ((_g1580415841_
                            (lambda (_g1580515837_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1580515837_)))
                           (_g1580315852_
                            (lambda (_g1580515845_) ((lambda () '#t))))
                           (_g1580215875_
                            (lambda (_g1580515856_)
                              (if (gx#stx-box? _g1580515856_)
                                  (let ((_e1583515859_
                                         (unbox (gx#syntax-e _g1580515856_))))
                                    ((lambda (_L15863_)
                                       (_simple-quote?15104_ _L15863_))
                                     _e1583515859_))
                                  (_g1580315852_ _g1580515856_))))
                           (_g1580115938_
                            (lambda (_g1580515879_)
                              (if (gx#stx-vector? _g1580515879_)
                                  (let ((_e1582415882_
                                         (vector->list
                                          (gx#syntax-e _g1580515879_))))
                                    (if (gx#stx-pair/null? _e1582415882_)
                                        (if (fx>= (gx#stx-length _e1582415882_)
                                                  '0)
                                            (let ((_g35523_
                                                   (gx#syntax-split-splice
                                                    _e1582415882_
                                                    '0)))
                                              (begin
                                                (let ((_g35524_
                                                       (if (##values? _g35523_)
                                                           (##vector-length
                                                            _g35523_)
                                                           1)))
                                                  (if (not (##fx= _g35524_ 2))
                                                      (error "Context expects 2 values"
                                                             _g35524_)))
                                                (let ((_target1582515886_
                                                       (##vector-ref
                                                        _g35523_
                                                        0))
                                                      (_tl1582715889_
                                                       (##vector-ref
                                                        _g35523_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl1582715889_)
                                                      (letrec ((_loop1582815892_
                                                                (lambda (_hd1582615896_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _e1583215899_)
                          (if (gx#stx-pair? _hd1582615896_)
                              (let ((_e1582915902_
                                     (gx#syntax-e _hd1582615896_)))
                                (let ((_lp-hd1583015906_ (##car _e1582915902_))
                                      (_lp-tl1583115909_
                                       (##cdr _e1582915902_)))
                                  (_loop1582815892_
                                   _lp-tl1583115909_
                                   (cons _lp-hd1583015906_ _e1583215899_))))
                              (let ((_e1583315912_ (reverse _e1583215899_)))
                                ((lambda (_L15916_)
                                   (_simple-quote?15104_
                                    (begin
                                      '#!void
                                      (foldr (lambda (_g1592915932_
                                                      _g1593015935_)
                                               (cons _g1592915932_
                                                     _g1593015935_))
                                             '()
                                             _L15916_))))
                                 _e1583315912_))))))
                (_loop1582815892_ _target1582515886_ '()))
              (_g1580215875_ _g1580515879_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1580215875_ _g1580515879_))
                                        (_g1580215875_ _g1580515879_)))
                                  (_g1580215875_ _g1580515879_))))
                           (_g1580015968_
                            (lambda (_g1580515942_)
                              (if (gx#stx-pair? _g1580515942_)
                                  (let ((_e1582015945_
                                         (gx#syntax-e _g1580515942_)))
                                    (let ((_hd1582115949_
                                           (##car _e1582015945_))
                                          (_tl1582215952_
                                           (##cdr _e1582015945_)))
                                      ((lambda (_L15955_ _L15957_)
                                         (if (_simple-quote?15104_ _L15957_)
                                             (_simple-quote?15104_ _L15955_)
                                             '#f))
                                       _tl1582215952_
                                       _hd1582115949_)))
                                  (_g1580115938_ _g1580515942_))))
                           (_g1579915999_
                            (lambda (_g1580515972_)
                              (if (gx#stx-pair? _g1580515972_)
                                  (let ((_e1581215975_
                                         (gx#syntax-e _g1580515972_)))
                                    (let ((_hd1581315979_
                                           (##car _e1581215975_))
                                          (_tl1581415982_
                                           (##cdr _e1581215975_)))
                                      (if (gx#identifier? _hd1581315979_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<sugar>$<sugar:2>[1]#_g35525_|
                                               _hd1581315979_)
                                              (if (gx#stx-pair? _tl1581415982_)
                                                  (let ((_e1581515985_
                                                         (gx#syntax-e
                                                          _tl1581415982_)))
                                                    (let ((_hd1581615989_
                                                           (##car _e1581515985_))
                                                          (_tl1581715992_
                                                           (##cdr _e1581515985_)))
                                                      (if (gx#stx-null?
                                                           _tl1581715992_)
                                                          ((lambda () '#f))
                                                          (_g1580015968_
                                                           _g1580515972_))))
                                                  (_g1580015968_
                                                   _g1580515972_))
                                              (_g1580015968_ _g1580515972_))
                                          (_g1580015968_ _g1580515972_))))
                                  (_g1580015968_ _g1580515972_))))
                           (_g1579816030_
                            (lambda (_g1580516003_)
                              (if (gx#stx-pair? _g1580516003_)
                                  (let ((_e1580616006_
                                         (gx#syntax-e _g1580516003_)))
                                    (let ((_hd1580716010_
                                           (##car _e1580616006_))
                                          (_tl1580816013_
                                           (##cdr _e1580616006_)))
                                      (if (gx#identifier? _hd1580716010_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<sugar>$<sugar:2>[1]#_g35526_|
                                               _hd1580716010_)
                                              (if (gx#stx-pair? _tl1580816013_)
                                                  (let ((_e1580916016_
                                                         (gx#syntax-e
                                                          _tl1580816013_)))
                                                    (let ((_hd1581016020_
                                                           (##car _e1580916016_))
                                                          (_tl1581116023_
                                                           (##cdr _e1580916016_)))
                                                      (if (gx#stx-null?
                                                           _tl1581116023_)
                                                          ((lambda () '#f))
                                                          (_g1579915999_
                                                           _g1580516003_))))
                                                  (_g1579915999_
                                                   _g1580516003_))
                                              (_g1579915999_ _g1580516003_))
                                          (_g1579915999_ _g1580516003_))))
                                  (_g1579915999_ _g1580516003_)))))
                      (_g1579816030_ _e15796_))))
                 (_generate15106_
                  (lambda (_e15168_ _d15170_)
                    (let* ((_g1517915237_
                            (lambda (_g1518015233_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1518015233_)))
                           (_g1517815254_
                            (lambda (_g1518015241_)
                              ((lambda (_L15244_)
                                 (cons (gx#datum->syntax '#f 'quote)
                                       (cons _L15244_ '())))
                               _g1518015241_)))
                           (_g1517715306_
                            (lambda (_g1518015258_)
                              (if (gx#stx-box? _g1518015258_)
                                  (let ((_e1523015261_
                                         (unbox (gx#syntax-e _g1518015258_))))
                                    ((lambda (_L15265_)
                                       (let* ((_g1527515283_
                                               (lambda (_g1527615279_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1527615279_)))
                                              (_g1527415302_
                                               (lambda (_g1527615287_)
                                                 ((lambda (_L15290_)
                                                    (let ()
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'box)
                                                            (cons _L15290_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g1527615287_))))
                                         (_g1527415302_
                                          (_generate15106_
                                           _L15265_
                                           _d15170_))))
                                     _e1523015261_))
                                  (_g1517815254_ _g1518015258_))))
                           (_g1517615400_
                            (lambda (_g1518015310_)
                              (if (gx#stx-vector? _g1518015310_)
                                  (let ((_e1521915313_
                                         (vector->list
                                          (gx#syntax-e _g1518015310_))))
                                    (if (gx#stx-pair/null? _e1521915313_)
                                        (if (fx>= (gx#stx-length _e1521915313_)
                                                  '0)
                                            (let ((_g35527_
                                                   (gx#syntax-split-splice
                                                    _e1521915313_
                                                    '0)))
                                              (begin
                                                (let ((_g35528_
                                                       (if (##values? _g35527_)
                                                           (##vector-length
                                                            _g35527_)
                                                           1)))
                                                  (if (not (##fx= _g35528_ 2))
                                                      (error "Context expects 2 values"
                                                             _g35528_)))
                                                (let ((_target1522015317_
                                                       (##vector-ref
                                                        _g35527_
                                                        0))
                                                      (_tl1522215320_
                                                       (##vector-ref
                                                        _g35527_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl1522215320_)
                                                      (letrec ((_loop1522315323_
                                                                (lambda (_hd1522115327_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _e1522715330_)
                          (if (gx#stx-pair? _hd1522115327_)
                              (let ((_e1522415333_
                                     (gx#syntax-e _hd1522115327_)))
                                (let ((_lp-hd1522515337_ (##car _e1522415333_))
                                      (_lp-tl1522615340_
                                       (##cdr _e1522415333_)))
                                  (_loop1522315323_
                                   _lp-tl1522615340_
                                   (cons _lp-hd1522515337_ _e1522715330_))))
                              (let ((_e1522815343_ (reverse _e1522715330_)))
                                ((lambda (_L15347_)
                                   (let* ((_g1536115369_
                                           (lambda (_g1536215365_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1536215365_)))
                                          (_g1536015388_
                                           (lambda (_g1536215373_)
                                             ((lambda (_L15376_)
                                                (let ()
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'list->vector)
                                                        (cons _L15376_ '()))))
                                              _g1536215373_))))
                                     (_g1536015388_
                                      (_generate15106_
                                       (begin
                                         '#!void
                                         (foldr (lambda (_g1539115394_
                                                         _g1539215397_)
                                                  (cons _g1539115394_
                                                        _g1539215397_))
                                                '()
                                                _L15347_))
                                       _d15170_))))
                                 _e1522815343_))))))
                (_loop1522315323_ _target1522015317_ '()))
              (_g1517715306_ _g1518015310_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1517715306_ _g1518015310_))
                                        (_g1517715306_ _g1518015310_)))
                                  (_g1517715306_ _g1518015310_))))
                           (_g1517515494_
                            (lambda (_g1518015404_)
                              (if (gx#stx-pair? _g1518015404_)
                                  (let ((_e1521515407_
                                         (gx#syntax-e _g1518015404_)))
                                    (let ((_hd1521615411_
                                           (##car _e1521515407_))
                                          (_tl1521715414_
                                           (##cdr _e1521515407_)))
                                      ((lambda (_L15417_ _L15419_)
                                         (let* ((_g1543015445_
                                                 (lambda (_g1543115441_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1543115441_)))
                                                (_g1542915490_
                                                 (lambda (_g1543115449_)
                                                   (if (gx#stx-pair?
                                                        _g1543115449_)
                                                       (let ((_e1543415452_
                                                              (gx#syntax-e
                                                               _g1543115449_)))
                                                         (let ((_hd1543515456_
                                                                (##car _e1543415452_))
                                                               (_tl1543615459_
                                                                (##cdr _e1543415452_)))
                                                           (if (gx#stx-pair?
                                                                _tl1543615459_)
                                                               (let ((_e1543715462_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl1543615459_)))
                         (let ((_hd1543815466_ (##car _e1543715462_))
                               (_tl1543915469_ (##cdr _e1543715462_)))
                           (if (gx#stx-null? _tl1543915469_)
                               ((lambda (_L15472_ _L15474_)
                                  (let ()
                                    (cons (gx#datum->syntax '#f 'cons)
                                          (cons _L15474_
                                                (cons _L15472_ '())))))
                                _hd1543815466_
                                _hd1543515456_)
                               (_g1543015445_ _g1543115449_))))
                       (_g1543015445_ _g1543115449_))))
               (_g1543015445_ _g1543115449_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g1542915490_
                                            (list (_generate15106_
                                                   _L15419_
                                                   _d15170_)
                                                  (_generate15106_
                                                   _L15417_
                                                   _d15170_)))))
                                       _tl1521715414_
                                       _hd1521615411_)))
                                  (_g1517615400_ _g1518015404_))))
                           (_g1517415579_
                            (lambda (_g1518015498_)
                              (if (gx#stx-pair? _g1518015498_)
                                  (let ((_e1520415501_
                                         (gx#syntax-e _g1518015498_)))
                                    (let ((_hd1520515505_
                                           (##car _e1520415501_))
                                          (_tl1520615508_
                                           (##cdr _e1520415501_)))
                                      (if (gx#stx-pair? _hd1520515505_)
                                          (let ((_e1520715511_
                                                 (gx#syntax-e _hd1520515505_)))
                                            (let ((_hd1520815515_
                                                   (##car _e1520715511_))
                                                  (_tl1520915518_
                                                   (##cdr _e1520715511_)))
                                              (if (gx#identifier?
                                                   _hd1520815515_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<sugar>$<sugar:2>[1]#_g35529_|
                                                       _hd1520815515_)
                                                      (if (gx#stx-pair?
                                                           _tl1520915518_)
                                                          (let ((_e1521015521_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1520915518_)))
                    (let ((_hd1521115525_ (##car _e1521015521_))
                          (_tl1521215528_ (##cdr _e1521015521_)))
                      (if (gx#stx-null? _tl1521215528_)
                          ((lambda (_L15531_ _L15533_)
                             (if (fxzero? _d15170_)
                                 (let* ((_g1554815556_
                                         (lambda (_g1554915552_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g1554915552_)))
                                        (_g1554715575_
                                         (lambda (_g1554915560_)
                                           ((lambda (_L15563_)
                                              (let ()
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'foldr)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'cons)
                                                            (cons _L15563_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L15533_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g1554915560_))))
                                   (_g1554715575_
                                    (_generate15106_ _L15531_ _d15170_)))
                                 (_g1517515494_ _g1518015498_)))
                           _tl1520615508_
                           _hd1521115525_)
                          (_g1517515494_ _g1518015498_))))
                  (_g1517515494_ _g1518015498_))
              (_g1517515494_ _g1518015498_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1517515494_
                                                   _g1518015498_))))
                                          (_g1517515494_ _g1518015498_))))
                                  (_g1517515494_ _g1518015498_))))
                           (_g1517315650_
                            (lambda (_g1518015583_)
                              (if (gx#stx-pair? _g1518015583_)
                                  (let ((_e1519615586_
                                         (gx#syntax-e _g1518015583_)))
                                    (let ((_hd1519715590_
                                           (##car _e1519615586_))
                                          (_tl1519815593_
                                           (##cdr _e1519615586_)))
                                      (if (gx#identifier? _hd1519715590_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<sugar>$<sugar:2>[1]#_g35530_|
                                               _hd1519715590_)
                                              (if (gx#stx-pair? _tl1519815593_)
                                                  (let ((_e1519915596_
                                                         (gx#syntax-e
                                                          _tl1519815593_)))
                                                    (let ((_hd1520015600_
                                                           (##car _e1519915596_))
                                                          (_tl1520115603_
                                                           (##cdr _e1519915596_)))
                                                      (if (gx#stx-null?
                                                           _tl1520115603_)
                                                          ((lambda (_L15606_)
                                                             (if (fxzero? _d15170_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'foldr)
                               (cons (gx#datum->syntax '#f 'cons)
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons '() '()))
                                           (cons _L15606_ '()))))
                         (let* ((_g1561915627_
                                 (lambda (_g1562015623_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1562015623_)))
                                (_g1561815646_
                                 (lambda (_g1562015631_)
                                   ((lambda (_L15634_)
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
                                                    (cons _L15634_ '())))))
                                    _g1562015631_))))
                           (_g1561815646_
                            (_generate15106_ _L15606_ (fx1- _d15170_))))))
                   _hd1520015600_)
                  (_g1517415579_ _g1518015583_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1517415579_
                                                   _g1518015583_))
                                              (_g1517415579_ _g1518015583_))
                                          (_g1517415579_ _g1518015583_))))
                                  (_g1517415579_ _g1518015583_))))
                           (_g1517215721_
                            (lambda (_g1518015654_)
                              (if (gx#stx-pair? _g1518015654_)
                                  (let ((_e1518915657_
                                         (gx#syntax-e _g1518015654_)))
                                    (let ((_hd1519015661_
                                           (##car _e1518915657_))
                                          (_tl1519115664_
                                           (##cdr _e1518915657_)))
                                      (if (gx#identifier? _hd1519015661_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<sugar>$<sugar:2>[1]#_g35531_|
                                               _hd1519015661_)
                                              (if (gx#stx-pair? _tl1519115664_)
                                                  (let ((_e1519215667_
                                                         (gx#syntax-e
                                                          _tl1519115664_)))
                                                    (let ((_hd1519315671_
                                                           (##car _e1519215667_))
                                                          (_tl1519415674_
                                                           (##cdr _e1519215667_)))
                                                      (if (gx#stx-null?
                                                           _tl1519415674_)
                                                          ((lambda (_L15677_)
                                                             (if (fxzero? _d15170_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L15677_
                         (let* ((_g1569015698_
                                 (lambda (_g1569115694_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1569115694_)))
                                (_g1568915717_
                                 (lambda (_g1569115702_)
                                   ((lambda (_L15705_)
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
                                                    (cons _L15705_ '())))))
                                    _g1569115702_))))
                           (_g1568915717_
                            (_generate15106_ _L15677_ (fx1- _d15170_))))))
                   _hd1519315671_)
                  (_g1517315650_ _g1518015654_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1517315650_
                                                   _g1518015654_))
                                              (_g1517315650_ _g1518015654_))
                                          (_g1517315650_ _g1518015654_))))
                                  (_g1517315650_ _g1518015654_))))
                           (_g1517115792_
                            (lambda (_g1518015725_)
                              (if (gx#stx-pair? _g1518015725_)
                                  (let ((_e1518215728_
                                         (gx#syntax-e _g1518015725_)))
                                    (let ((_hd1518315732_
                                           (##car _e1518215728_))
                                          (_tl1518415735_
                                           (##cdr _e1518215728_)))
                                      (if (gx#identifier? _hd1518315732_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<sugar>$<sugar:2>[1]#_g35532_|
                                               _hd1518315732_)
                                              (if (gx#stx-pair? _tl1518415735_)
                                                  (let ((_e1518515738_
                                                         (gx#syntax-e
                                                          _tl1518415735_)))
                                                    (let ((_hd1518615742_
                                                           (##car _e1518515738_))
                                                          (_tl1518715745_
                                                           (##cdr _e1518515738_)))
                                                      (if (gx#stx-null?
                                                           _tl1518715745_)
                                                          ((lambda (_L15748_)
                                                             (let* ((_g1576115769_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1576215765_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g1576215765_)))
                            (_g1576015788_
                             (lambda (_g1576215773_)
                               ((lambda (_L15776_)
                                  (let ()
                                    (cons (gx#datum->syntax '#f 'list)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'quote)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'quasiquote)
                                                            '()))
                                                (cons _L15776_ '())))))
                                _g1576215773_))))
                       (_g1576015788_
                        (_generate15106_ _L15748_ (fx1+ _d15170_)))))
                   _hd1518615742_)
                  (_g1517215721_ _g1518015725_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1517215721_
                                                   _g1518015725_))
                                              (_g1517215721_ _g1518015725_))
                                          (_g1517215721_ _g1518015725_))))
                                  (_g1517215721_ _g1518015725_)))))
                      (_g1517115792_ _e15168_)))))
          (let* ((_g1510815122_
                  (lambda (_g1510915118_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1510915118_)))
                 (_g1510715164_
                  (lambda (_g1510915126_)
                    (if (gx#stx-pair? _g1510915126_)
                        (let ((_e1511115129_ (gx#syntax-e _g1510915126_)))
                          (let ((_hd1511215133_ (##car _e1511115129_))
                                (_tl1511315136_ (##cdr _e1511115129_)))
                            (if (gx#stx-pair? _tl1511315136_)
                                (let ((_e1511415139_
                                       (gx#syntax-e _tl1511315136_)))
                                  (let ((_hd1511515143_ (##car _e1511415139_))
                                        (_tl1511615146_ (##cdr _e1511415139_)))
                                    (if (gx#stx-null? _tl1511615146_)
                                        ((lambda (_L15149_)
                                           (if (_simple-quote?15104_ _L15149_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _L15149_ '()))
                                               (_generate15106_ _L15149_ '0)))
                                         _hd1511515143_)
                                        (_g1510815122_ _g1510915126_))))
                                (_g1510815122_ _g1510915126_))))
                        (_g1510815122_ _g1510915126_)))))
            (_g1510715164_ _stx15101_)))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#delay|
      (lambda (_$stx16036_)
        (let* ((_g1604116062_
                (lambda (_g1604216058_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1604216058_)))
               (_g1604016103_
                (lambda (_g1604216066_)
                  (if (gx#stx-pair? _g1604216066_)
                      (let ((_e1605116069_ (gx#syntax-e _g1604216066_)))
                        (let ((_hd1605216073_ (##car _e1605116069_))
                              (_tl1605316076_ (##cdr _e1605116069_)))
                          (if (gx#stx-pair? _tl1605316076_)
                              (let ((_e1605416079_
                                     (gx#syntax-e _tl1605316076_)))
                                (let ((_hd1605516083_ (##car _e1605416079_))
                                      (_tl1605616086_ (##cdr _e1605416079_)))
                                  (if (gx#stx-null? _tl1605616086_)
                                      ((lambda (_L16089_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                'make-promise)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'lambda%)
                                                           (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L16089_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _hd1605516083_)
                                      (_g1604116062_ _g1604216066_))))
                              (_g1604116062_ _g1604216066_))))
                      (_g1604116062_ _g1604216066_))))
               (_g1603916143_
                (lambda (_g1604216107_)
                  (if (gx#stx-pair? _g1604216107_)
                      (let ((_e1604416110_ (gx#syntax-e _g1604216107_)))
                        (let ((_hd1604516114_ (##car _e1604416110_))
                              (_tl1604616117_ (##cdr _e1604416110_)))
                          (if (gx#stx-pair? _tl1604616117_)
                              (let ((_e1604716120_
                                     (gx#syntax-e _tl1604616117_)))
                                (let ((_hd1604816124_ (##car _e1604716120_))
                                      (_tl1604916127_ (##cdr _e1604716120_)))
                                  (if (gx#stx-null? _tl1604916127_)
                                      ((lambda (_L16130_)
                                         (if (gx#stx-datum? _L16130_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _L16130_ '()))
                                             (_g1604016103_ _g1604216107_)))
                                       _hd1604816124_)
                                      (_g1604016103_ _g1604216107_))))
                              (_g1604016103_ _g1604216107_))))
                      (_g1604016103_ _g1604216107_)))))
          (_g1603916143_ _$stx16036_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#cut|
      (lambda (_stx16147_)
        (letrec ((_generate16150_
                  (lambda (_rest16269_)
                    (let _lp16272_ ((_rest16275_ _rest16269_)
                                    (_hd16277_ '())
                                    (_body16278_ '()))
                      (let* ((_g1628116293_
                              (lambda (_g1628216289_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1628216289_)))
                             (_g1628016304_
                              (lambda (_g1628216297_)
                                ((lambda ()
                                   (values (reverse _hd16277_)
                                           (reverse _body16278_)
                                           '#f)))))
                             (_g1627916390_
                              (lambda (_g1628216308_)
                                (if (gx#stx-pair? _g1628216308_)
                                    (let ((_e1628516311_
                                           (gx#syntax-e _g1628216308_)))
                                      (let ((_hd1628616315_
                                             (##car _e1628516311_))
                                            (_tl1628716318_
                                             (##cdr _e1628516311_)))
                                        ((lambda (_L16321_ _L16323_)
                                           (let* ((_g1634016347_
                                                   (lambda (_g1634116343_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g1634116343_)))
                                                  (_g1633916358_
                                                   (lambda (_g1634116351_)
                                                     ((lambda ()
                                                        (_lp16272_
                                                         _L16321_
                                                         _hd16277_
                                                         (cons _L16323_
                                                               _body16278_))))))
                                                  (_g1633816372_
                                                   (lambda (_g1634116362_)
                                                     (if (gx#identifier?
                                                          _g1634116362_)
                                                         (if (gx#free-identifier=?
                                                              |gerbil/core$<sugar>$<sugar:2>[1]#_g35533_|
                                                              _g1634116362_)
                                                             ((lambda ()
                                                                (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L16321_)
                            (let ((_tail16369_ (gx#genident)))
                              (values (foldl cons _tail16369_ _hd16277_)
                                      (foldl cons
                                             (list _tail16369_)
                                             _body16278_)
                                      '#t))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _stx16147_
                             _L16323_))))
                     (_g1633916358_ _g1634116362_))
                 (_g1633916358_ _g1634116362_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1633716386_
                                                   (lambda (_g1634116376_)
                                                     (if (gx#identifier?
                                                          _g1634116376_)
                                                         (if (gx#free-identifier=?
                                                              |gerbil/core$<sugar>$<sugar:2>[1]#_g35534_|
                                                              _g1634116376_)
                                                             ((lambda ()
                                                                (let ((_arg16383_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#genident)))
                          (_lp16272_
                           _L16321_
                           (cons _arg16383_ _hd16277_)
                           (cons _arg16383_ _body16278_)))))
                     (_g1633816372_ _g1634116376_))
                 (_g1633816372_ _g1634116376_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1633716386_ _L16323_)))
                                         _tl1628716318_
                                         _hd1628616315_)))
                                    (_g1628016304_ _g1628216308_)))))
                        (_g1627916390_ _rest16275_))))))
          (let* ((_g1615316164_
                  (lambda (_g1615416160_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1615416160_)))
                 (_g1615216265_
                  (lambda (_g1615416168_)
                    (if (gx#stx-pair? _g1615416168_)
                        (let ((_e1615616171_ (gx#syntax-e _g1615416168_)))
                          (let ((_hd1615716175_ (##car _e1615616171_))
                                (_tl1615816178_ (##cdr _e1615616171_)))
                            ((lambda (_L16181_)
                               (if (if (gx#stx-list? _L16181_)
                                       (not (gx#stx-null? _L16181_))
                                       '#f)
                                   (let ((_g35535_ (_generate16150_ _L16181_)))
                                     (begin
                                       (let ((_g35536_
                                              (if (##values? _g35535_)
                                                  (##vector-length _g35535_)
                                                  1)))
                                         (if (not (##fx= _g35536_ 3))
                                             (error "Context expects 3 values"
                                                    _g35536_)))
                                       (let ((_hd16194_
                                              (##vector-ref _g35535_ 0))
                                             (_body16196_
                                              (##vector-ref _g35535_ 1))
                                             (_tail?16197_
                                              (##vector-ref _g35535_ 2)))
                                         (let* ((_g1619916207_
                                                 (lambda (_g1620016203_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1620016203_)))
                                                (_g1619816261_
                                                 (lambda (_g1620016211_)
                                                   ((lambda (_L16214_)
                                                      (let ()
                                                        (let* ((_g1622716235_
                                                                (lambda (_g1622816231_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1622816231_)))
                       (_g1622616257_
                        (lambda (_g1622816239_)
                          ((lambda (_L16242_)
                             (let ()
                               (let ()
                                 (if _tail?16197_
                                     (cons (gx#datum->syntax '#f 'lambda%)
                                           (cons _L16214_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'apply)
                                                             _L16242_)
                                                       '())))
                                     (cons (gx#datum->syntax '#f 'lambda%)
                                           (cons _L16214_
                                                 (cons _L16242_ '())))))))
                           _g1622816239_))))
                  (_g1622616257_ _body16196_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1620016211_))))
                                           (_g1619816261_ _hd16194_)))))
                                   (_g1615316164_ _g1615416168_)))
                             _tl1615816178_)))
                        (_g1615316164_ _g1615416168_)))))
            (_g1615216265_ _stx16147_)))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#<>|
      (lambda (_$stx16395_)
        (let ((_g1639816405_
               (lambda (_g1639916401_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1639916401_))))
          (_g1639816405_ _$stx16395_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#<...>|
      (lambda (_$stx16409_)
        (let ((_g1641216419_
               (lambda (_g1641316415_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1641316415_))))
          (_g1641216419_ _$stx16409_))))))
