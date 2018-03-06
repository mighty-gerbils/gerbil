(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g34908_|
    (gx#make-syntax-quote '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g34909_|
    (gx#make-syntax-quote 'else #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g34958_|
    (gx#make-syntax-quote 'values #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g34959_|
    (gx#make-syntax-quote 'values #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g34960_|
    (gx#make-syntax-quote 'values #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g34975_|
    (gx#make-syntax-quote
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g34976_|
    (gx#make-syntax-quote 'unquote #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g34979_|
    (gx#make-syntax-quote
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g34980_|
    (gx#make-syntax-quote
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g34981_|
    (gx#make-syntax-quote 'unquote #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g34982_|
    (gx#make-syntax-quote 'quasiquote #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g34983_|
    (gx#make-syntax-quote '<...> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g34984_|
    (gx#make-syntax-quote '<> #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#lambda|
      (lambda (_stx4925_)
        (letrec ((_simple-lambda?4928_
                  (lambda (_hd8078_) (gx#stx-andmap gx#identifier? _hd8078_)))
                 (_opt-lambda?4930_
                  (lambda (_hd7930_)
                    (let _lp7933_ ((_rest7936_ _hd7930_) (_opt?7938_ '#f))
                      (let* ((_g79417953_
                              (lambda (_g79427949_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g79427949_)))
                             (_g79407968_
                              (lambda (_g79427957_)
                                ((lambda ()
                                   (if _opt?7938_
                                       (let ((_$e7964_
                                              (gx#stx-null? _rest7936_)))
                                         (if _$e7964_
                                             _$e7964_
                                             (gx#identifier? _rest7936_)))
                                       '#f)))))
                             (_g79398074_
                              (lambda (_g79427972_)
                                (if (gx#stx-pair? _g79427972_)
                                    (let ((_e79457975_
                                           (gx#syntax-e _g79427972_)))
                                      (let ((_hd79467979_ (##car _e79457975_))
                                            (_tl79477982_ (##cdr _e79457975_)))
                                        ((lambda (_L7985_ _L7987_)
                                           (let* ((_g80038017_
                                                   (lambda (_g80048013_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g80048013_)))
                                                  (_g80028028_
                                                   (lambda (_g80048021_)
                                                     ((lambda ()
                                                        (if (gx#identifier?
                                                             _L7987_)
                                                            (if (not _opt?7938_)
                                                                (_lp7933_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L7985_
                         '#f)
                        '#f)
                    '#f)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g80018070_
                                                   (lambda (_g80048032_)
                                                     (if (gx#stx-pair?
                                                          _g80048032_)
                                                         (let ((_e80068035_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g80048032_)))
                   (let ((_hd80078039_ (##car _e80068035_))
                         (_tl80088042_ (##cdr _e80068035_)))
                     (if (gx#stx-pair? _tl80088042_)
                         (let ((_e80098045_ (gx#syntax-e _tl80088042_)))
                           (let ((_hd80108049_ (##car _e80098045_))
                                 (_tl80118052_ (##cdr _e80098045_)))
                             (if (gx#stx-null? _tl80118052_)
                                 ((lambda (_L8055_)
                                    (if (gx#identifier? _L8055_)
                                        (_lp7933_ _L7985_ '#t)
                                        (_g80028028_ _g80048032_)))
                                  _hd80078039_)
                                 (_g80028028_ _g80048032_))))
                         (_g80028028_ _g80048032_))))
                 (_g80028028_ _g80048032_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g80018070_ _L7987_)))
                                         _tl79477982_
                                         _hd79467979_)))
                                    (_g79407968_ _g79427972_)))))
                        (_g79398074_ _rest7936_)))))
                 (_opt-lambda-split4931_
                  (lambda (_hd7782_)
                    (let _lp7785_ ((_rest7788_ _hd7782_)
                                   (_pre7790_ '())
                                   (_opt7791_ '()))
                      (let* ((_g77947806_
                              (lambda (_g77957802_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g77957802_)))
                             (_g77937817_
                              (lambda (_g77957810_)
                                ((lambda ()
                                   (values (reverse _pre7790_)
                                           (reverse _opt7791_)
                                           (if (gx#identifier? _rest7788_)
                                               (_generate-bind4934_ _rest7788_)
                                               _rest7788_))))))
                             (_g77927926_
                              (lambda (_g77957821_)
                                (if (gx#stx-pair? _g77957821_)
                                    (let ((_e77987824_
                                           (gx#syntax-e _g77957821_)))
                                      (let ((_hd77997828_ (##car _e77987824_))
                                            (_tl78007831_ (##cdr _e77987824_)))
                                        ((lambda (_L7834_ _L7836_)
                                           (let* ((_g78527867_
                                                   (lambda (_g78537863_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g78537863_)))
                                                  (_g78517878_
                                                   (lambda (_g78537871_)
                                                     ((lambda ()
                                                        (_lp7785_
                                                         _L7834_
                                                         (cons (_generate-bind4934_
                                                                _L7836_)
                                                               _pre7790_)
                                                         _opt7791_)))))
                                                  (_g78507922_
                                                   (lambda (_g78537882_)
                                                     (if (gx#stx-pair?
                                                          _g78537882_)
                                                         (let ((_e78567885_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g78537882_)))
                   (let ((_hd78577889_ (##car _e78567885_))
                         (_tl78587892_ (##cdr _e78567885_)))
                     (if (gx#stx-pair? _tl78587892_)
                         (let ((_e78597895_ (gx#syntax-e _tl78587892_)))
                           (let ((_hd78607899_ (##car _e78597895_))
                                 (_tl78617902_ (##cdr _e78597895_)))
                             (if (gx#stx-null? _tl78617902_)
                                 ((lambda (_L7905_ _L7907_)
                                    (_lp7785_
                                     _L7834_
                                     _pre7790_
                                     (cons (cons (_generate-bind4934_ _L7907_)
                                                 _L7905_)
                                           _opt7791_)))
                                  _hd78607899_
                                  _hd78577889_)
                                 (_g78517878_ _g78537882_))))
                         (_g78517878_ _g78537882_))))
                 (_g78517878_ _g78537882_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g78507922_ _L7836_)))
                                         _tl78007831_
                                         _hd77997828_)))
                                    (_g77937817_ _g77957821_)))))
                        (_g77927926_ _rest7788_)))))
                 (_kw-lambda?4932_
                  (lambda (_hd7456_)
                    (let _lp7459_ ((_rest7462_ _hd7456_)
                                   (_opt?7464_ '#f)
                                   (_key?7465_ '#f))
                      (let* ((_g74707499_
                              (lambda (_g74717495_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g74717495_)))
                             (_g74697514_
                              (lambda (_g74717503_)
                                ((lambda ()
                                   (if _key?7465_
                                       (let ((_$e7510_
                                              (gx#stx-null? _rest7462_)))
                                         (if _$e7510_
                                             _$e7510_
                                             (gx#identifier? _rest7462_)))
                                       '#f)))))
                             (_g74687620_
                              (lambda (_g74717518_)
                                (if (gx#stx-pair? _g74717518_)
                                    (let ((_e74917521_
                                           (gx#syntax-e _g74717518_)))
                                      (let ((_hd74927525_ (##car _e74917521_))
                                            (_tl74937528_ (##cdr _e74917521_)))
                                        ((lambda (_L7531_ _L7533_)
                                           (let* ((_g75497563_
                                                   (lambda (_g75507559_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g75507559_)))
                                                  (_g75487574_
                                                   (lambda (_g75507567_)
                                                     ((lambda ()
                                                        (if (gx#identifier?
                                                             _L7533_)
                                                            (if (not _opt?7464_)
                                                                (_lp7459_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L7531_
                         '#f
                         _key?7465_)
                        '#f)
                    '#f)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g75477616_
                                                   (lambda (_g75507578_)
                                                     (if (gx#stx-pair?
                                                          _g75507578_)
                                                         (let ((_e75527581_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g75507578_)))
                   (let ((_hd75537585_ (##car _e75527581_))
                         (_tl75547588_ (##cdr _e75527581_)))
                     (if (gx#stx-pair? _tl75547588_)
                         (let ((_e75557591_ (gx#syntax-e _tl75547588_)))
                           (let ((_hd75567595_ (##car _e75557591_))
                                 (_tl75577598_ (##cdr _e75557591_)))
                             (if (gx#stx-null? _tl75577598_)
                                 ((lambda (_L7601_)
                                    (if (gx#identifier? _L7601_)
                                        (_lp7459_ _L7531_ '#t _key?7465_)
                                        '#f))
                                  _hd75537585_)
                                 (_g75487574_ _g75507578_))))
                         (_g75487574_ _g75507578_))))
                 (_g75487574_ _g75507578_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g75477616_ _L7533_)))
                                         _tl74937528_
                                         _hd74927525_)))
                                    (_g74697514_ _g74717518_))))
                             (_g74677662_
                              (lambda (_g74717624_)
                                (if (gx#stx-pair? _g74717624_)
                                    (let ((_e74837627_
                                           (gx#syntax-e _g74717624_)))
                                      (let ((_hd74847631_ (##car _e74837627_))
                                            (_tl74857634_ (##cdr _e74837627_)))
                                        (if (gx#stx-datum? _hd74847631_)
                                            (if (equal? (gx#stx-e _hd74847631_)
                                                        '#!key)
                                                (if (gx#stx-pair? _tl74857634_)
                                                    (let ((_e74867637_
                                                           (gx#syntax-e
                                                            _tl74857634_)))
                                                      (let ((_hd74877641_
                                                             (##car _e74867637_))
                                                            (_tl74887644_
                                                             (##cdr _e74867637_)))
                                                        ((lambda (_L7647_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L7649_)
                   (if (gx#identifier? _L7649_)
                       (_lp7459_ _L7647_ _opt?7464_ '#t)
                       '#f))
                 _tl74887644_
                 _hd74877641_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g74687620_ _g74717624_))
                                                (_g74687620_ _g74717624_))
                                            (_g74687620_ _g74717624_))))
                                    (_g74687620_ _g74717624_))))
                             (_g74667778_
                              (lambda (_g74717666_)
                                (if (gx#stx-pair? _g74717666_)
                                    (let ((_e74757669_
                                           (gx#syntax-e _g74717666_)))
                                      (let ((_hd74767673_ (##car _e74757669_))
                                            (_tl74777676_ (##cdr _e74757669_)))
                                        (if (gx#stx-pair? _tl74777676_)
                                            (let ((_e74787679_
                                                   (gx#syntax-e _tl74777676_)))
                                              (let ((_hd74797683_
                                                     (##car _e74787679_))
                                                    (_tl74807686_
                                                     (##cdr _e74787679_)))
                                                ((lambda (_L7689_
                                                          _L7691_
                                                          _L7692_)
                                                   (if (gx#stx-keyword?
                                                        _L7692_)
                                                       (let* ((_g77077721_
                                                               (lambda (_g77087717_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g77087717_)))
                      (_g77067732_
                       (lambda (_g77087725_)
                         ((lambda ()
                            (if (gx#identifier? _L7691_)
                                (_lp7459_ _L7689_ _opt?7464_ '#t)
                                '#f)))))
                      (_g77057774_
                       (lambda (_g77087736_)
                         (if (gx#stx-pair? _g77087736_)
                             (let ((_e77107739_ (gx#syntax-e _g77087736_)))
                               (let ((_hd77117743_ (##car _e77107739_))
                                     (_tl77127746_ (##cdr _e77107739_)))
                                 (if (gx#stx-pair? _tl77127746_)
                                     (let ((_e77137749_
                                            (gx#syntax-e _tl77127746_)))
                                       (let ((_hd77147753_ (##car _e77137749_))
                                             (_tl77157756_
                                              (##cdr _e77137749_)))
                                         (if (gx#stx-null? _tl77157756_)
                                             ((lambda (_L7759_)
                                                (if (gx#identifier? _L7759_)
                                                    (_lp7459_
                                                     _L7689_
                                                     _opt?7464_
                                                     '#t)
                                                    '#f))
                                              _hd77117743_)
                                             (_g77067732_ _g77087736_))))
                                     (_g77067732_ _g77087736_))))
                             (_g77067732_ _g77087736_)))))
                 (_g77057774_ _L7691_))
               (_g74677662_ _g74717666_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _tl74807686_
                                                 _hd74797683_
                                                 _hd74767673_)))
                                            (_g74677662_ _g74717666_))))
                                    (_g74677662_ _g74717666_)))))
                        (_g74667778_ _rest7462_)))))
                 (_kw-lambda-split4933_
                  (lambda (_hd7195_)
                    (let _lp7198_ ((_rest7201_ _hd7195_)
                                   (_kwvar7203_ '#f)
                                   (_kwargs7204_ '())
                                   (_args7205_ '()))
                      (let* ((_g72107239_
                              (lambda (_g72117235_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g72117235_)))
                             (_g72097250_
                              (lambda (_g72117243_)
                                ((lambda ()
                                   (values _kwvar7203_
                                           (reverse _kwargs7204_)
                                           (foldl cons
                                                  _rest7201_
                                                  _args7205_))))))
                             (_g72087284_
                              (lambda (_g72117254_)
                                (if (gx#stx-pair? _g72117254_)
                                    (let ((_e72317257_
                                           (gx#syntax-e _g72117254_)))
                                      (let ((_hd72327261_ (##car _e72317257_))
                                            (_tl72337264_ (##cdr _e72317257_)))
                                        ((lambda (_L7267_ _L7269_)
                                           (_lp7198_
                                            _L7267_
                                            _kwvar7203_
                                            _kwargs7204_
                                            (cons _L7269_ _args7205_)))
                                         _tl72337264_
                                         _hd72327261_)))
                                    (_g72097250_ _g72117254_))))
                             (_g72077326_
                              (lambda (_g72117288_)
                                (if (gx#stx-pair? _g72117288_)
                                    (let ((_e72237291_
                                           (gx#syntax-e _g72117288_)))
                                      (let ((_hd72247295_ (##car _e72237291_))
                                            (_tl72257298_ (##cdr _e72237291_)))
                                        (if (gx#stx-datum? _hd72247295_)
                                            (if (equal? (gx#stx-e _hd72247295_)
                                                        '#!key)
                                                (if (gx#stx-pair? _tl72257298_)
                                                    (let ((_e72267301_
                                                           (gx#syntax-e
                                                            _tl72257298_)))
                                                      (let ((_hd72277305_
                                                             (##car _e72267301_))
                                                            (_tl72287308_
                                                             (##cdr _e72267301_)))
                                                        ((lambda (_L7311_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L7313_)
                   (if _kwvar7203_
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; duplicate #!key argument"
                        _stx4925_
                        _hd7195_
                        _L7313_)
                       (_lp7198_
                        _L7311_
                        (_generate-bind4934_ _L7313_)
                        _kwargs7204_
                        _args7205_)))
                 _tl72287308_
                 _hd72277305_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g72087284_ _g72117288_))
                                                (_g72087284_ _g72117288_))
                                            (_g72087284_ _g72117288_))))
                                    (_g72087284_ _g72117288_))))
                             (_g72067452_
                              (lambda (_g72117330_)
                                (if (gx#stx-pair? _g72117330_)
                                    (let ((_e72157333_
                                           (gx#syntax-e _g72117330_)))
                                      (let ((_hd72167337_ (##car _e72157333_))
                                            (_tl72177340_ (##cdr _e72157333_)))
                                        (if (gx#stx-pair? _tl72177340_)
                                            (let ((_e72187343_
                                                   (gx#syntax-e _tl72177340_)))
                                              (let ((_hd72197347_
                                                     (##car _e72187343_))
                                                    (_tl72207350_
                                                     (##cdr _e72187343_)))
                                                ((lambda (_L7353_
                                                          _L7355_
                                                          _L7356_)
                                                   (if (gx#stx-keyword?
                                                        _L7356_)
                                                       (let ((_key7370_
                                                              (gx#stx-e
                                                               _L7356_)))
                                                         (if (find (lambda (_kwarg7373_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (eq? _key7370_ (car _kwarg7373_)))
                           _kwargs7204_)
                     (gx#raise-syntax-error
                      '#f
                      '"Bad syntax; duplicate keyword argument"
                      _stx4925_
                      _hd7195_
                      _key7370_)
                     (let* ((_g73777392_
                             (lambda (_g73787388_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g73787388_)))
                            (_g73767403_
                             (lambda (_g73787396_)
                               ((lambda ()
                                  (_lp7198_
                                   _L7353_
                                   _kwvar7203_
                                   (cons (list _key7370_
                                               (_generate-bind4934_ _L7355_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'error)
                                                     (cons '"Missing required keyword argument"
                                                           (cons _L7356_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _kwargs7204_)
                                   _args7205_)))))
                            (_g73757448_
                             (lambda (_g73787407_)
                               (if (gx#stx-pair? _g73787407_)
                                   (let ((_e73817410_
                                          (gx#syntax-e _g73787407_)))
                                     (let ((_hd73827414_ (##car _e73817410_))
                                           (_tl73837417_ (##cdr _e73817410_)))
                                       (if (gx#stx-pair? _tl73837417_)
                                           (let ((_e73847420_
                                                  (gx#syntax-e _tl73837417_)))
                                             (let ((_hd73857424_
                                                    (##car _e73847420_))
                                                   (_tl73867427_
                                                    (##cdr _e73847420_)))
                                               (if (gx#stx-null? _tl73867427_)
                                                   ((lambda (_L7430_ _L7432_)
                                                      (_lp7198_
                                                       _L7353_
                                                       _kwvar7203_
                                                       (cons (list _key7370_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_generate-bind4934_ _L7432_)
                           _L7430_)
                     _kwargs7204_)
               _args7205_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd73857424_
                                                    _hd73827414_)
                                                   (_g73767403_ _g73787407_))))
                                           (_g73767403_ _g73787407_))))
                                   (_g73767403_ _g73787407_)))))
                       (_g73757448_ _L7355_))))
               (_g72077326_ _g72117330_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _tl72207350_
                                                 _hd72197347_
                                                 _hd72167337_)))
                                            (_g72077326_ _g72117330_))))
                                    (_g72077326_ _g72117330_)))))
                        (_g72067452_ _rest7201_)))))
                 (_generate-bind4934_
                  (lambda (_e7192_)
                    (if (gx#underscore? _e7192_)
                        (gx#genident _e7192_)
                        _e7192_)))
                 (_check-duplicate-bindings4935_
                  (lambda (_hd6889_)
                    (letrec ((_cons-id6892_
                              (lambda (_id7188_ _ids7190_)
                                (if (gx#underscore? _id7188_)
                                    _ids7190_
                                    (cons _id7188_ _ids7190_)))))
                      (let _lp6895_ ((_rest6898_ _hd6889_) (_ids6900_ '()))
                        (let* ((_g69036915_
                                (lambda (_g69046911_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g69046911_)))
                               (_g69026926_
                                (lambda (_g69046919_)
                                  ((lambda ()
                                     (gx#check-duplicate-identifiers
                                      (if (gx#stx-null? _rest6898_)
                                          _ids6900_
                                          (_cons-id6892_ _rest6898_ _ids6900_))
                                      _stx4925_)))))
                               (_g69017184_
                                (lambda (_g69046930_)
                                  (if (gx#stx-pair? _g69046930_)
                                      (let ((_e69076933_
                                             (gx#syntax-e _g69046930_)))
                                        (let ((_hd69086937_
                                               (##car _e69076933_))
                                              (_tl69096940_
                                               (##cdr _e69076933_)))
                                          ((lambda (_L6943_ _L6945_)
                                             (if (gx#identifier? _L6945_)
                                                 (_lp6895_
                                                  _L6943_
                                                  (_cons-id6892_
                                                   _L6945_
                                                   _ids6900_))
                                                 (if (gx#stx-pair? _L6945_)
                                                     (let* ((_g69616975_
                                                             (lambda (_g69626971_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g69626971_)))
                                                            (_g69607016_
                                                             (lambda (_g69626979_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g69626979_)
                           (let ((_e69646982_ (gx#syntax-e _g69626979_)))
                             (let ((_hd69656986_ (##car _e69646982_))
                                   (_tl69666989_ (##cdr _e69646982_)))
                               (if (gx#stx-pair? _tl69666989_)
                                   (let ((_e69676992_
                                          (gx#syntax-e _tl69666989_)))
                                     (let ((_hd69686996_ (##car _e69676992_))
                                           (_tl69696999_ (##cdr _e69676992_)))
                                       (if (gx#stx-null? _tl69696999_)
                                           ((lambda (_L7002_)
                                              (_lp6895_
                                               _L6943_
                                               (_cons-id6892_
                                                _L7002_
                                                _ids6900_)))
                                            _hd69656986_)
                                           (_g69616975_ _g69626979_))))
                                   (_g69616975_ _g69626979_))))
                           (_g69616975_ _g69626979_)))))
               (_g69607016_ _L6945_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-keyword?
                                                          _L6945_)
                                                         (let* ((_g70207032_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g70217028_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g70217028_)))
                        (_g70197134_
                         (lambda (_g70217036_)
                           (if (gx#stx-pair? _g70217036_)
                               (let ((_e70247039_ (gx#syntax-e _g70217036_)))
                                 (let ((_hd70257043_ (##car _e70247039_))
                                       (_tl70267046_ (##cdr _e70247039_)))
                                   ((lambda (_L7049_ _L7051_)
                                      (let* ((_g70637077_
                                              (lambda (_g70647073_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _g70647073_)))
                                             (_g70627088_
                                              (lambda (_g70647081_)
                                                ((lambda ()
                                                   (_lp6895_
                                                    _L7049_
                                                    (_cons-id6892_
                                                     _L7051_
                                                     _ids6900_))))))
                                             (_g70617130_
                                              (lambda (_g70647092_)
                                                (if (gx#stx-pair? _g70647092_)
                                                    (let ((_e70667095_
                                                           (gx#syntax-e
                                                            _g70647092_)))
                                                      (let ((_hd70677099_
                                                             (##car _e70667095_))
                                                            (_tl70687102_
                                                             (##cdr _e70667095_)))
                                                        (if (gx#stx-pair?
                                                             _tl70687102_)
                                                            (let ((_e70697105_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl70687102_)))
                      (let ((_hd70707109_ (##car _e70697105_))
                            (_tl70717112_ (##cdr _e70697105_)))
                        (if (gx#stx-null? _tl70717112_)
                            ((lambda (_L7115_)
                               (_lp6895_
                                _L7049_
                                (_cons-id6892_ _L7115_ _ids6900_)))
                             _hd70677099_)
                            (_g70627088_ _g70647092_))))
                    (_g70627088_ _g70647092_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g70627088_
                                                     _g70647092_)))))
                                        (_g70617130_ _L7051_)))
                                    _tl70267046_
                                    _hd70257043_)))
                               (_g70207032_ _g70217036_)))))
                   (_g70197134_ _L6943_))
                 (if (eq? (gx#stx-e _L6945_) '#!key)
                     (let* ((_g71387150_
                             (lambda (_g71397146_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g71397146_)))
                            (_g71377180_
                             (lambda (_g71397154_)
                               (if (gx#stx-pair? _g71397154_)
                                   (let ((_e71427157_
                                          (gx#syntax-e _g71397154_)))
                                     (let ((_hd71437161_ (##car _e71427157_))
                                           (_tl71447164_ (##cdr _e71427157_)))
                                       ((lambda (_L7167_ _L7169_)
                                          (_lp6895_
                                           _L7167_
                                           (_cons-id6892_ _L7169_ _ids6900_)))
                                        _tl71447164_
                                        _hd71437161_)))
                                   (_g71387150_ _g71397154_)))))
                       (_g71377180_ _L6943_))
                     (error '"BUG: check-duplicate-bindings"
                            _stx4925_
                            _rest6898_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _tl69096940_
                                           _hd69086937_)))
                                      (_g69026926_ _g69046930_)))))
                          (_g69017184_ _rest6898_))))))
                 (_generate-opt-primary4936_
                  (lambda (_pre6681_ _opt6683_ _tail6684_ _body6685_)
                    (let* ((_g66876728_
                            (lambda (_g66886724_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g66886724_)))
                           (_g66866885_
                            (lambda (_g66886732_)
                              (if (gx#stx-pair? _g66886732_)
                                  (let ((_e66936735_
                                         (gx#syntax-e _g66886732_)))
                                    (let ((_hd66946739_ (##car _e66936735_))
                                          (_tl66956742_ (##cdr _e66936735_)))
                                      (if (gx#stx-pair/null? _hd66946739_)
                                          (if (fx>= (gx#stx-length
                                                     _hd66946739_)
                                                    '0)
                                              (let ((_g34874_
                                                     (gx#syntax-split-splice
                                                      _hd66946739_
                                                      '0)))
                                                (begin
                                                  (let ((_g34875_
                                                         (values-count
                                                          _g34874_)))
                                                    (if (not (fx= _g34875_ 2))
                                                        (error "Context expects 2 values"
                                                               _g34875_)))
                                                  (let ((_target66966745_
                                                         (values-ref
                                                          _g34874_
                                                          0))
                                                        (_tl66986748_
                                                         (values-ref
                                                          _g34874_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl66986748_)
                                                        (letrec ((_loop66996751_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd66976755_ _pre67036758_)
                            (if (gx#stx-pair? _hd66976755_)
                                (let ((_e67006761_ (gx#syntax-e _hd66976755_)))
                                  (let ((_lp-hd67016765_ (##car _e67006761_))
                                        (_lp-tl67026768_ (##cdr _e67006761_)))
                                    (_loop66996751_
                                     _lp-tl67026768_
                                     (cons _lp-hd67016765_ _pre67036758_))))
                                (let ((_pre67046771_ (reverse _pre67036758_)))
                                  (if (gx#stx-pair? _tl66956742_)
                                      (let ((_e67056775_
                                             (gx#syntax-e _tl66956742_)))
                                        (let ((_hd67066779_
                                               (##car _e67056775_))
                                              (_tl67076782_
                                               (##cdr _e67056775_)))
                                          (if (gx#stx-pair/null? _hd67066779_)
                                              (if (fx>= (gx#stx-length
                                                         _hd67066779_)
                                                        '0)
                                                  (let ((_g34876_
                                                         (gx#syntax-split-splice
                                                          _hd67066779_
                                                          '0)))
                                                    (begin
                                                      (let ((_g34877_
                                                             (values-count
                                                              _g34876_)))
                                                        (if (not (fx= _g34877_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g34877_)))
              (let ((_target67086785_ (values-ref _g34876_ 0))
                    (_tl67106788_ (values-ref _g34876_ 1)))
                (if (gx#stx-null? _tl67106788_)
                    (letrec ((_loop67116791_
                              (lambda (_hd67096795_ _opt67156798_)
                                (if (gx#stx-pair? _hd67096795_)
                                    (let ((_e67126801_
                                           (gx#syntax-e _hd67096795_)))
                                      (let ((_lp-hd67136805_
                                             (##car _e67126801_))
                                            (_lp-tl67146808_
                                             (##cdr _e67126801_)))
                                        (_loop67116791_
                                         _lp-tl67146808_
                                         (cons _lp-hd67136805_
                                               _opt67156798_))))
                                    (let ((_opt67166811_
                                           (reverse _opt67156798_)))
                                      (if (gx#stx-pair? _tl67076782_)
                                          (let ((_e67176815_
                                                 (gx#syntax-e _tl67076782_)))
                                            (let ((_hd67186819_
                                                   (##car _e67176815_))
                                                  (_tl67196822_
                                                   (##cdr _e67176815_)))
                                              (if (gx#stx-pair? _tl67196822_)
                                                  (let ((_e67206825_
                                                         (gx#syntax-e
                                                          _tl67196822_)))
                                                    (let ((_hd67216829_
                                                           (##car _e67206825_))
                                                          (_tl67226832_
                                                           (##cdr _e67206825_)))
                                                      (if (gx#stx-null?
                                                           _tl67226832_)
                                                          ((lambda (_L6835_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L6837_
                            _L6838_
                            _L6839_)
                     (let ()
                       (cons (gx#datum->syntax '#f 'lambda%)
                             (cons (begin
                                     '#!void
                                     (foldr (lambda (_g68686873_ _g68696876_)
                                              (cons _g68686873_ _g68696876_))
                                            (begin
                                              '#!void
                                              (foldr (lambda (_g68706879_
                                                              _g68716882_)
                                                       (cons _g68706879_
                                                             _g68716882_))
                                                     _L6837_
                                                     _L6838_))
                                            _L6839_))
                                   _L6835_))))
                   _hd67216829_
                   _hd67186819_
                   _opt67166811_
                   _pre67046771_)
                  (_g66876728_ _g66886732_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g66876728_ _g66886732_))))
                                          (_g66876728_ _g66886732_)))))))
                      (_loop67116791_ _target67086785_ '()))
                    (_g66876728_ _g66886732_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g66876728_ _g66886732_))
                                              (_g66876728_ _g66886732_))))
                                      (_g66876728_ _g66886732_)))))))
                  (_loop66996751_ _target66966745_ '()))
                (_g66876728_ _g66886732_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g66876728_ _g66886732_))
                                          (_g66876728_ _g66886732_))))
                                  (_g66876728_ _g66886732_)))))
                      (_g66866885_
                       (list _pre6681_
                             (map car _opt6683_)
                             _tail6684_
                             _body6685_)))))
                 (_generate-opt-dispatch4937_
                  (lambda (_primary6675_ _pre6677_ _opt6678_ _tail6679_)
                    (cons (list _pre6677_
                                (_generate-opt-clause4939_
                                 _primary6675_
                                 _pre6677_
                                 _opt6678_))
                          (_generate-opt-dispatch*4938_
                           _primary6675_
                           _pre6677_
                           _opt6678_
                           _tail6679_))))
                 (_generate-opt-dispatch*4938_
                  (lambda (_primary6232_ _pre6234_ _opt6235_ _tail6236_)
                    (let _recur6238_ ((_opt-rest6241_ _opt6235_)
                                      (_right6243_ '()))
                      (if (pair? _opt-rest6241_)
                          (let* ((_hd6245_ (caar _opt-rest6241_))
                                 (_rest6248_ (cdr _opt-rest6241_))
                                 (_right*6251_ (cons _hd6245_ _right6243_))
                                 (_g62546271_
                                  (lambda (_g62556267_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g62556267_)))
                                 (_g62536454_
                                  (lambda (_g62556275_)
                                    (if (gx#stx-pair/null? _g62556275_)
                                        (if (fx>= (gx#stx-length _g62556275_)
                                                  '0)
                                            (let ((_g34878_
                                                   (gx#syntax-split-splice
                                                    _g62556275_
                                                    '0)))
                                              (begin
                                                (let ((_g34879_
                                                       (values-count
                                                        _g34878_)))
                                                  (if (not (fx= _g34879_ 2))
                                                      (error "Context expects 2 values"
                                                             _g34879_)))
                                                (let ((_target62576278_
                                                       (values-ref _g34878_ 0))
                                                      (_tl62596281_
                                                       (values-ref
                                                        _g34878_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl62596281_)
                                                      (letrec ((_loop62606284_
                                                                (lambda (_hd62586288_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _pre-bind62646291_)
                          (if (gx#stx-pair? _hd62586288_)
                              (let ((_e62616294_ (gx#syntax-e _hd62586288_)))
                                (let ((_lp-hd62626298_ (##car _e62616294_))
                                      (_lp-tl62636301_ (##cdr _e62616294_)))
                                  (_loop62606284_
                                   _lp-tl62636301_
                                   (cons _lp-hd62626298_ _pre-bind62646291_))))
                              (let ((_pre-bind62656304_
                                     (reverse _pre-bind62646291_)))
                                ((lambda (_L6308_)
                                   (let ()
                                     (let* ((_g63296346_
                                             (lambda (_g63306342_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g63306342_)))
                                            (_g63286450_
                                             (lambda (_g63306350_)
                                               (if (gx#stx-pair/null?
                                                    _g63306350_)
                                                   (if (fx>= (gx#stx-length
                                                              _g63306350_)
                                                             '0)
                                                       (let ((_g34880_
                                                              (gx#syntax-split-splice
                                                               _g63306350_
                                                               '0)))
                                                         (begin
                                                           (let ((_g34881_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (values-count _g34880_)))
                     (if (not (fx= _g34881_ 2))
                         (error "Context expects 2 values" _g34881_)))
                   (let ((_target63326353_ (values-ref _g34880_ 0))
                         (_tl63346356_ (values-ref _g34880_ 1)))
                     (if (gx#stx-null? _tl63346356_)
                         (letrec ((_loop63356359_
                                   (lambda (_hd63336363_ _opt-bind63396366_)
                                     (if (gx#stx-pair? _hd63336363_)
                                         (let ((_e63366369_
                                                (gx#syntax-e _hd63336363_)))
                                           (let ((_lp-hd63376373_
                                                  (##car _e63366369_))
                                                 (_lp-tl63386376_
                                                  (##cdr _e63366369_)))
                                             (_loop63356359_
                                              _lp-tl63386376_
                                              (cons _lp-hd63376373_
                                                    _opt-bind63396366_))))
                                         (let ((_opt-bind63406379_
                                                (reverse _opt-bind63396366_)))
                                           ((lambda (_L6383_)
                                              (let ()
                                                (let* ((_g64006408_
                                                        (lambda (_g64016404_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g64016404_)))
                                                       (_g63996446_
                                                        (lambda (_g64016412_)
                                                          ((lambda (_L6415_)
                                                             (let ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (list (begin
                                       '#!void
                                       (foldr (lambda (_g64296434_ _g64306437_)
                                                (cons _g64296434_ _g64306437_))
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g64316440_
                                                                _g64326443_)
                                                         (cons _g64316440_
                                                               _g64326443_))
                                                       (cons _L6415_ '())
                                                       _L6383_))
                                              _L6308_))
                                     (_generate-opt-clause4939_
                                      _primary6232_
                                      (foldr cons
                                             (reverse _right*6251_)
                                             _pre6234_)
                                      _rest6248_))
                               (_recur6238_ _rest6248_ _right*6251_)))))
                   _g64016412_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g63996446_ _hd6245_))))
                                            _opt-bind63406379_))))))
                           (_loop63356359_ _target63326353_ '()))
                         (_g63296346_ _g63306350_)))))
               (_g63296346_ _g63306350_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g63296346_
                                                    _g63306350_)))))
                                       (_g63286450_ (reverse _right6243_)))))
                                 _pre-bind62656304_))))))
                (_loop62606284_ _target62576278_ '()))
              (_g62546271_ _g62556275_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g62546271_ _g62556275_))
                                        (_g62546271_ _g62556275_)))))
                            (_g62536454_ _pre6234_))
                          (if (gx#stx-null? _tail6236_)
                              '()
                              (let* ((_g64586499_
                                      (lambda (_g64596495_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g64596495_)))
                                     (_g64576671_
                                      (lambda (_g64596503_)
                                        (if (gx#stx-pair? _g64596503_)
                                            (let ((_e64646506_
                                                   (gx#syntax-e _g64596503_)))
                                              (let ((_hd64656510_
                                                     (##car _e64646506_))
                                                    (_tl64666513_
                                                     (##cdr _e64646506_)))
                                                (if (gx#stx-pair/null?
                                                     _hd64656510_)
                                                    (if (fx>= (gx#stx-length
                                                               _hd64656510_)
                                                              '0)
                                                        (let ((_g34882_
                                                               (gx#syntax-split-splice
                                                                _hd64656510_
                                                                '0)))
                                                          (begin
                                                            (let ((_g34883_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (values-count _g34882_)))
                      (if (not (fx= _g34883_ 2))
                          (error "Context expects 2 values" _g34883_)))
                    (let ((_target64676516_ (values-ref _g34882_ 0))
                          (_tl64696519_ (values-ref _g34882_ 1)))
                      (if (gx#stx-null? _tl64696519_)
                          (letrec ((_loop64706522_
                                    (lambda (_hd64686526_ _pre64746529_)
                                      (if (gx#stx-pair? _hd64686526_)
                                          (let ((_e64716532_
                                                 (gx#syntax-e _hd64686526_)))
                                            (let ((_lp-hd64726536_
                                                   (##car _e64716532_))
                                                  (_lp-tl64736539_
                                                   (##cdr _e64716532_)))
                                              (_loop64706522_
                                               _lp-tl64736539_
                                               (cons _lp-hd64726536_
                                                     _pre64746529_))))
                                          (let ((_pre64756542_
                                                 (reverse _pre64746529_)))
                                            (if (gx#stx-pair? _tl64666513_)
                                                (let ((_e64766546_
                                                       (gx#syntax-e
                                                        _tl64666513_)))
                                                  (let ((_hd64776550_
                                                         (##car _e64766546_))
                                                        (_tl64786553_
                                                         (##cdr _e64766546_)))
                                                    (if (gx#stx-pair/null?
                                                         _hd64776550_)
                                                        (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd64776550_)
                          '0)
                    (let ((_g34884_ (gx#syntax-split-splice _hd64776550_ '0)))
                      (begin
                        (let ((_g34885_ (values-count _g34884_)))
                          (if (not (fx= _g34885_ 2))
                              (error "Context expects 2 values" _g34885_)))
                        (let ((_target64796556_ (values-ref _g34884_ 0))
                              (_tl64816559_ (values-ref _g34884_ 1)))
                          (if (gx#stx-null? _tl64816559_)
                              (letrec ((_loop64826562_
                                        (lambda (_hd64806566_ _opt64866569_)
                                          (if (gx#stx-pair? _hd64806566_)
                                              (let ((_e64836572_
                                                     (gx#syntax-e
                                                      _hd64806566_)))
                                                (let ((_lp-hd64846576_
                                                       (##car _e64836572_))
                                                      (_lp-tl64856579_
                                                       (##cdr _e64836572_)))
                                                  (_loop64826562_
                                                   _lp-tl64856579_
                                                   (cons _lp-hd64846576_
                                                         _opt64866569_))))
                                              (let ((_opt64876582_
                                                     (reverse _opt64866569_)))
                                                (if (gx#stx-pair? _tl64786553_)
                                                    (let ((_e64886586_
                                                           (gx#syntax-e
                                                            _tl64786553_)))
                                                      (let ((_hd64896590_
                                                             (##car _e64886586_))
                                                            (_tl64906593_
                                                             (##cdr _e64886586_)))
                                                        (if (gx#stx-pair?
                                                             _tl64906593_)
                                                            (let ((_e64916596_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl64906593_)))
                      (let ((_hd64926600_ (##car _e64916596_))
                            (_tl64936603_ (##cdr _e64916596_)))
                        (if (gx#stx-null? _tl64936603_)
                            ((lambda (_L6606_ _L6608_ _L6609_ _L6610_)
                               (let ()
                                 (list (list (begin
                                               '#!void
                                               (foldr (lambda (_g66386643_
                                                               _g66396646_)
                                                        (cons _g66386643_
                                                              _g66396646_))
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g66406649_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g66416652_)
                         (cons _g66406649_ _g66416652_))
                       _L6608_
                       _L6609_))
              _L6610_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (gx#stx-wrap-source
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'apply)
                                                    (cons _L6606_
                                                          (begin
                                                            '#!void
                                                            (foldr (lambda (_g66546659_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g66556662_)
                             (cons _g66546659_ _g66556662_))
                           (begin
                             '#!void
                             (foldr (lambda (_g66566665_ _g66576668_)
                                      (cons _g66566665_ _g66576668_))
                                    (cons _L6608_ '())
                                    _L6609_))
                           _L6610_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx4925_))))))
                             _hd64926600_
                             _hd64896590_
                             _opt64876582_
                             _pre64756542_)
                            (_g64586499_ _g64596503_))))
                    (_g64586499_ _g64596503_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g64586499_
                                                     _g64596503_)))))))
                                (_loop64826562_ _target64796556_ '()))
                              (_g64586499_ _g64596503_)))))
                    (_g64586499_ _g64596503_))
                (_g64586499_ _g64596503_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g64586499_ _g64596503_)))))))
                            (_loop64706522_ _target64676516_ '()))
                          (_g64586499_ _g64596503_)))))
                (_g64586499_ _g64596503_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g64586499_
                                                     _g64596503_))))
                                            (_g64586499_ _g64596503_)))))
                                (_g64576671_
                                 (list _pre6234_
                                       (reverse _right6243_)
                                       _tail6236_
                                       _primary6232_))))))))
                 (_generate-opt-clause4939_
                  (lambda (_primary5930_ _pre5932_ _opt5933_)
                    (let _recur5935_ ((_opt-rest5938_ _opt5933_)
                                      (_right5940_ '()))
                      (if (pair? _opt-rest5938_)
                          (let* ((_hd5942_ (car _opt-rest5938_))
                                 (_rest5945_ (cdr _opt-rest5938_))
                                 (_g59485956_
                                  (lambda (_g59495952_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g59495952_)))
                                 (_g59476045_
                                  (lambda (_g59495960_)
                                    ((lambda (_L5963_)
                                       (let ()
                                         (let* ((_g59795987_
                                                 (lambda (_g59805983_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g59805983_)))
                                                (_g59786041_
                                                 (lambda (_g59805991_)
                                                   ((lambda (_L5994_)
                                                      (let ()
                                                        (let* ((_g60076015_
                                                                (lambda (_g60086011_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g60086011_)))
                       (_g60066037_
                        (lambda (_g60086019_)
                          ((lambda (_L6022_)
                             (let ()
                               (let ()
                                 (cons (gx#datum->syntax '#f 'let-values)
                                       (cons (cons (cons (cons _L5963_ '())
                                                         (cons _L5994_ '()))
                                                   '())
                                             (cons _L6022_ '()))))))
                           _g60086019_))))
                  (_g60066037_
                   (_recur5935_ _rest5945_ (cons _L5963_ _right5940_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g59805991_))))
                                           (_g59786041_ (cdr _hd5942_)))))
                                     _g59495960_))))
                            (_g59476045_ (car _hd5942_)))
                          (let* ((_g60496086_
                                  (lambda (_g60506082_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g60506082_)))
                                 (_g60486228_
                                  (lambda (_g60506090_)
                                    (if (gx#stx-pair? _g60506090_)
                                        (let ((_e60546093_
                                               (gx#syntax-e _g60506090_)))
                                          (let ((_hd60556097_
                                                 (##car _e60546093_))
                                                (_tl60566100_
                                                 (##cdr _e60546093_)))
                                            (if (gx#stx-pair/null?
                                                 _hd60556097_)
                                                (if (fx>= (gx#stx-length
                                                           _hd60556097_)
                                                          '0)
                                                    (let ((_g34886_
                                                           (gx#syntax-split-splice
                                                            _hd60556097_
                                                            '0)))
                                                      (begin
                                                        (let ((_g34887_
                                                               (values-count
                                                                _g34886_)))
                                                          (if (not (fx= _g34887_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                2))
                      (error "Context expects 2 values" _g34887_)))
                (let ((_target60576103_ (values-ref _g34886_ 0))
                      (_tl60596106_ (values-ref _g34886_ 1)))
                  (if (gx#stx-null? _tl60596106_)
                      (letrec ((_loop60606109_
                                (lambda (_hd60586113_ _pre60646116_)
                                  (if (gx#stx-pair? _hd60586113_)
                                      (let ((_e60616119_
                                             (gx#syntax-e _hd60586113_)))
                                        (let ((_lp-hd60626123_
                                               (##car _e60616119_))
                                              (_lp-tl60636126_
                                               (##cdr _e60616119_)))
                                          (_loop60606109_
                                           _lp-tl60636126_
                                           (cons _lp-hd60626123_
                                                 _pre60646116_))))
                                      (let ((_pre60656129_
                                             (reverse _pre60646116_)))
                                        (if (gx#stx-pair? _tl60566100_)
                                            (let ((_e60666133_
                                                   (gx#syntax-e _tl60566100_)))
                                              (let ((_hd60676137_
                                                     (##car _e60666133_))
                                                    (_tl60686140_
                                                     (##cdr _e60666133_)))
                                                (if (gx#stx-pair/null?
                                                     _hd60676137_)
                                                    (if (fx>= (gx#stx-length
                                                               _hd60676137_)
                                                              '0)
                                                        (let ((_g34888_
                                                               (gx#syntax-split-splice
                                                                _hd60676137_
                                                                '0)))
                                                          (begin
                                                            (let ((_g34889_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (values-count _g34888_)))
                      (if (not (fx= _g34889_ 2))
                          (error "Context expects 2 values" _g34889_)))
                    (let ((_target60696143_ (values-ref _g34888_ 0))
                          (_tl60716146_ (values-ref _g34888_ 1)))
                      (if (gx#stx-null? _tl60716146_)
                          (letrec ((_loop60726149_
                                    (lambda (_hd60706153_ _opt60766156_)
                                      (if (gx#stx-pair? _hd60706153_)
                                          (let ((_e60736159_
                                                 (gx#syntax-e _hd60706153_)))
                                            (let ((_lp-hd60746163_
                                                   (##car _e60736159_))
                                                  (_lp-tl60756166_
                                                   (##cdr _e60736159_)))
                                              (_loop60726149_
                                               _lp-tl60756166_
                                               (cons _lp-hd60746163_
                                                     _opt60766156_))))
                                          (let ((_opt60776169_
                                                 (reverse _opt60766156_)))
                                            (if (gx#stx-pair? _tl60686140_)
                                                (let ((_e60786173_
                                                       (gx#syntax-e
                                                        _tl60686140_)))
                                                  (let ((_hd60796177_
                                                         (##car _e60786173_))
                                                        (_tl60806180_
                                                         (##cdr _e60786173_)))
                                                    (if (gx#stx-null?
                                                         _tl60806180_)
                                                        ((lambda (_L6183_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L6185_
                          _L6186_)
                   (let ()
                     (gx#stx-wrap-source
                      (cons _L6183_
                            (begin
                              '#!void
                              (foldr (lambda (_g62116216_ _g62126219_)
                                       (cons _g62116216_ _g62126219_))
                                     (begin
                                       '#!void
                                       (foldr (lambda (_g62136222_ _g62146225_)
                                                (cons _g62136222_ _g62146225_))
                                              '()
                                              _L6185_))
                                     _L6186_)))
                      (gx#stx-source _stx4925_))))
                 _hd60796177_
                 _opt60776169_
                 _pre60656129_)
                (_g60496086_ _g60506090_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g60496086_ _g60506090_)))))))
                            (_loop60726149_ _target60696143_ '()))
                          (_g60496086_ _g60506090_)))))
                (_g60496086_ _g60506090_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g60496086_
                                                     _g60506090_))))
                                            (_g60496086_ _g60506090_)))))))
                        (_loop60606109_ _target60576103_ '()))
                      (_g60496086_ _g60506090_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g60496086_ _g60506090_))
                                                (_g60496086_ _g60506090_))))
                                        (_g60496086_ _g60506090_)))))
                            (_g60486228_
                             (list _pre5932_
                                   (reverse _right5940_)
                                   _primary5930_)))))))
                 (_generate-kw-primary4940_
                  (lambda (_kwvar5577_ _kwargs5579_ _args5580_ _body5581_)
                    (letrec* ((_absent5583_ (gx#genident 'absent))
                              (_make-body5585_
                               (lambda (_kwargs5749_ _body5751_)
                                 (if (pair? _kwargs5749_)
                                     (let* ((_next5753_ (car _kwargs5749_))
                                            (_rest5756_ (cdr _kwargs5749_))
                                            (_key5759_ (car _next5753_))
                                            (_var5762_ (cadr _next5753_))
                                            (_default5765_ (caddr _next5753_)))
                                       (let* ((_g57705805_
                                               (lambda (_g57715801_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g57715801_)))
                                              (_g57695926_
                                               (lambda (_g57715809_)
                                                 (if (gx#stx-pair? _g57715809_)
                                                     (let ((_e57795812_
                                                            (gx#syntax-e
                                                             _g57715809_)))
                                                       (let ((_hd57805816_
                                                              (##car _e57795812_))
                                                             (_tl57815819_
                                                              (##cdr _e57795812_)))
                                                         (if (gx#stx-pair?
                                                              _tl57815819_)
                                                             (let ((_e57825822_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl57815819_)))
                       (let ((_hd57835826_ (##car _e57825822_))
                             (_tl57845829_ (##cdr _e57825822_)))
                         (if (gx#stx-pair? _tl57845829_)
                             (let ((_e57855832_ (gx#syntax-e _tl57845829_)))
                               (let ((_hd57865836_ (##car _e57855832_))
                                     (_tl57875839_ (##cdr _e57855832_)))
                                 (if (gx#stx-pair? _tl57875839_)
                                     (let ((_e57885842_
                                            (gx#syntax-e _tl57875839_)))
                                       (let ((_hd57895846_ (##car _e57885842_))
                                             (_tl57905849_
                                              (##cdr _e57885842_)))
                                         (if (gx#stx-pair? _tl57905849_)
                                             (let ((_e57915852_
                                                    (gx#syntax-e
                                                     _tl57905849_)))
                                               (let ((_hd57925856_
                                                      (##car _e57915852_))
                                                     (_tl57935859_
                                                      (##cdr _e57915852_)))
                                                 (if (gx#stx-pair?
                                                      _tl57935859_)
                                                     (let ((_e57945862_
                                                            (gx#syntax-e
                                                             _tl57935859_)))
                                                       (let ((_hd57955866_
                                                              (##car _e57945862_))
                                                             (_tl57965869_
                                                              (##cdr _e57945862_)))
                                                         (if (gx#stx-pair?
                                                              _tl57965869_)
                                                             (let ((_e57975872_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl57965869_)))
                       (let ((_hd57985876_ (##car _e57975872_))
                             (_tl57995879_ (##cdr _e57975872_)))
                         (if (gx#stx-null? _tl57995879_)
                             ((lambda (_L5882_
                                       _L5884_
                                       _L5885_
                                       _L5886_
                                       _L5887_
                                       _L5888_
                                       _L5889_)
                                (let ()
                                  (cons (gx#datum->syntax '#f 'let-values)
                                        (cons (cons (cons (cons _L5886_ '())
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'hash-ref)
                              (cons _L5889_
                                    (cons (cons (gx#datum->syntax '#f 'quote)
                                                (cons _L5888_ '()))
                                          (cons _L5882_ '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'let-values)
                                                          (cons (cons (cons (cons _L5887_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons (cons (gx#datum->syntax '#f 'if)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'eq?)
                                                            (cons _L5886_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L5882_ '())))
              (cons _L5885_ (cons _L5886_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))
                              '())
                        (cons _L5884_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))))
                              _hd57985876_
                              _hd57955866_
                              _hd57925856_
                              _hd57895846_
                              _hd57865836_
                              _hd57835826_
                              _hd57805816_)
                             (_g57705805_ _g57715809_))))
                     (_g57705805_ _g57715809_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g57705805_
                                                      _g57715809_))))
                                             (_g57705805_ _g57715809_))))
                                     (_g57705805_ _g57715809_))))
                             (_g57705805_ _g57715809_))))
                     (_g57705805_ _g57715809_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g57705805_
                                                      _g57715809_)))))
                                         (_g57695926_
                                          (list _kwvar5577_
                                                _key5759_
                                                _var5762_
                                                (gx#genident _var5762_)
                                                _default5765_
                                                (_make-body5585_
                                                 _rest5756_
                                                 _body5751_)
                                                _absent5583_))))
                                     (cons 'begin _body5751_)))))
                      (let* ((_g55875595_
                              (lambda (_g55885591_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g55885591_)))
                             (_g55865745_
                              (lambda (_g55885599_)
                                ((lambda (_L5602_)
                                   (let ()
                                     (let* ((_g56155623_
                                             (lambda (_g56165619_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g56165619_)))
                                            (_g56145741_
                                             (lambda (_g56165627_)
                                               ((lambda (_L5630_)
                                                  (let ()
                                                    (let* ((_g56435651_
                                                            (lambda (_g56445647_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g56445647_)))
                                                           (_g56425737_
                                                            (lambda (_g56445655_)
                                                              ((lambda (_L5658_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g56715679_
                                   (lambda (_g56725675_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g56725675_)))
                                  (_g56705733_
                                   (lambda (_g56725683_)
                                     ((lambda (_L5686_)
                                        (let ()
                                          (let* ((_g56995707_
                                                  (lambda (_g57005703_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g57005703_)))
                                                 (_g56985729_
                                                  (lambda (_g57005711_)
                                                    ((lambda (_L5714_)
                                                       (let ()
                                                         (let ()
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'let-values)
                         (cons (cons (cons (cons _L5714_ '())
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'make-vector)
                                                       (cons '0 '()))
                                                 '()))
                                     '())
                               (cons _L5686_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g57005711_))))
                                            (_g56985729_ _absent5583_))))
                                      _g56725683_))))
                             (_g56705733_
                              (gx#stx-wrap-source
                               (cons (gx#datum->syntax '#f 'lambda)
                                     (cons (cons _L5602_ _L5630_)
                                           (cons _L5658_ '())))
                               (gx#stx-source _stx4925_))))))
                       _g56445655_))))
              (_g56425737_ (_make-body5585_ _kwargs5579_ _body5581_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g56165627_))))
                                       (_g56145741_ _args5580_))))
                                 _g55885599_))))
                        (_g55865745_ _kwvar5577_)))))
                 (_generate-kw-dispatch4941_
                  (lambda (_primary5490_ _kwargs5492_ _strict?5493_)
                    (let* ((_g54955514_
                            (lambda (_g54965510_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g54965510_)))
                           (_g54945573_
                            (lambda (_g54965518_)
                              (if (gx#stx-pair? _g54965518_)
                                  (let ((_e55005521_
                                         (gx#syntax-e _g54965518_)))
                                    (let ((_hd55015525_ (##car _e55005521_))
                                          (_tl55025528_ (##cdr _e55005521_)))
                                      (if (gx#stx-pair? _tl55025528_)
                                          (let ((_e55035531_
                                                 (gx#syntax-e _tl55025528_)))
                                            (let ((_hd55045535_
                                                   (##car _e55035531_))
                                                  (_tl55055538_
                                                   (##cdr _e55035531_)))
                                              (if (gx#stx-pair? _tl55055538_)
                                                  (let ((_e55065541_
                                                         (gx#syntax-e
                                                          _tl55055538_)))
                                                    (let ((_hd55075545_
                                                           (##car _e55065541_))
                                                          (_tl55085548_
                                                           (##cdr _e55065541_)))
                                                      (if (gx#stx-null?
                                                           _tl55085548_)
                                                          ((lambda (_L5551_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L5553_
                            _L5554_)
                     (let ()
                       (cons (gx#datum->syntax '#f 'lambda%)
                             (cons _L5551_
                                   (cons (cons (gx#datum->syntax '#f 'apply)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'keyword-dispatch)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _L5554_ '()))
                   (cons _L5553_ (cons _L5551_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))))
                   _hd55075545_
                   _hd55045535_
                   _hd55015525_)
                  (_g54955514_ _g54965518_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g54955514_ _g54965518_))))
                                          (_g54955514_ _g54965518_))))
                                  (_g54955514_ _g54965518_)))))
                      (_g54945573_
                       (list (if _strict?5493_
                                 (_generate-kw-table4942_
                                  (map car _kwargs5492_))
                                 '#f)
                             _primary5490_
                             (gx#genident 'args))))))
                 (_generate-kw-table4942_
                  (lambda (_kws5464_)
                    (let _rehash5467_ ((_pht5470_
                                        (make-vector (length _kws5464_) '#f)))
                      (let _lp5473_ ((_rest5476_ _kws5464_))
                        (if (pair? _rest5476_)
                            (let* ((_key5479_ (car _rest5476_))
                                   (_rest5482_ (cdr _rest5476_))
                                   (_pos5485_
                                    (fxmodulo
                                     (keyword-hash _key5479_)
                                     (vector-length _pht5470_))))
                              (if (vector-ref _pht5470_ _pos5485_)
                                  (if (fx< (vector-length _pht5470_) '8192)
                                      (_rehash5467_
                                       (make-vector
                                        (quotient
                                         (fx* '3 (vector-length _pht5470_))
                                         '2)
                                        '#f))
                                      (error '"Unresolvable keyword collision"
                                             _kws5464_))
                                  (begin
                                    (vector-set! _pht5470_ _pos5485_ _key5479_)
                                    (_lp5473_ _rest5482_))))
                            _pht5470_))))))
          (let* ((_g49464977_
                  (lambda (_g49474973_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g49474973_)))
                 (_g49455190_
                  (lambda (_g49474981_)
                    (if (gx#stx-pair? _g49474981_)
                        (let ((_e49664984_ (gx#syntax-e _g49474981_)))
                          (let ((_hd49674988_ (##car _e49664984_))
                                (_tl49684991_ (##cdr _e49664984_)))
                            (if (gx#stx-pair? _tl49684991_)
                                (let ((_e49694994_ (gx#syntax-e _tl49684991_)))
                                  (let ((_hd49704998_ (##car _e49694994_))
                                        (_tl49715001_ (##cdr _e49694994_)))
                                    ((lambda (_L5004_ _L5006_)
                                       (if (_kw-lambda?4932_ _L5006_)
                                           (let* ((_g50225029_
                                                   (lambda (_g50235025_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g50235025_)))
                                                  (_g50215186_
                                                   (lambda (_g50235033_)
                                                     ((lambda ()
                                                        (let ()
                                                          (let ((_g34890_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_kw-lambda-split4933_ _L5006_)))
                    (begin
                      (let ((_g34891_ (values-count _g34890_)))
                        (if (not (fx= _g34891_ 3))
                            (error "Context expects 3 values" _g34891_)))
                      (let ((_key5042_ (values-ref _g34890_ 0))
                            (_kwargs5044_ (values-ref _g34890_ 1))
                            (_args5045_ (values-ref _g34890_ 2)))
                        (let* ((_g50475055_
                                (lambda (_g50485051_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g50485051_)))
                               (_g50465178_
                                (lambda (_g50485059_)
                                  ((lambda (_L5062_)
                                     (let ()
                                       (let* ((_g50805088_
                                               (lambda (_g50815084_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g50815084_)))
                                              (_g50795174_
                                               (lambda (_g50815092_)
                                                 ((lambda (_L5095_)
                                                    (let ()
                                                      (let* ((_g51085116_
                                                              (lambda (_g51095112_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax"
                         _g51095112_)))
                     (_g51075170_
                      (lambda (_g51095120_)
                        ((lambda (_L5123_)
                           (let ()
                             (let* ((_g51365144_
                                     (lambda (_g51375140_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g51375140_)))
                                    (_g51355166_
                                     (lambda (_g51375148_)
                                       ((lambda (_L5151_)
                                          (let ()
                                            (let ()
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'let-values)
                                                    (cons (cons (cons (cons _L5095_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _L5123_ '()))
                        '())
                  (cons _L5151_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _g51375148_))))
                               (_g51355166_
                                (gx#stx-wrap-source
                                 (_generate-kw-dispatch4941_
                                  _L5095_
                                  _kwargs5044_
                                  (not _key5042_))
                                 (gx#stx-source _stx4925_))))))
                         _g51095120_))))
                (_g51075170_
                 (gx#stx-wrap-source
                  (_generate-kw-primary4940_
                   _L5062_
                   _kwargs5044_
                   _args5045_
                   _L5004_)
                  (gx#stx-source _stx4925_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g50815092_))))
                                         (_g50795174_
                                          (gx#genident 'kw-lambda)))))
                                   _g50485059_))))
                          (_g50465178_
                           (let ((_$e5182_ _key5042_))
                             (if _$e5182_
                                 _$e5182_
                                 (gx#genident 'key))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g50215186_
                                              (_check-duplicate-bindings4935_
                                               _L5006_)))
                                           (_g49464977_ _g49474981_)))
                                     _tl49715001_
                                     _hd49704998_)))
                                (_g49464977_ _g49474981_))))
                        (_g49464977_ _g49474981_))))
                 (_g49445418_
                  (lambda (_g49475194_)
                    (if (gx#stx-pair? _g49475194_)
                        (let ((_e49585197_ (gx#syntax-e _g49475194_)))
                          (let ((_hd49595201_ (##car _e49585197_))
                                (_tl49605204_ (##cdr _e49585197_)))
                            (if (gx#stx-pair? _tl49605204_)
                                (let ((_e49615207_ (gx#syntax-e _tl49605204_)))
                                  (let ((_hd49625211_ (##car _e49615207_))
                                        (_tl49635214_ (##cdr _e49615207_)))
                                    ((lambda (_L5217_ _L5219_)
                                       (if (_opt-lambda?4930_ _L5219_)
                                           (let ((_g34892_
                                                  (_opt-lambda-split4931_
                                                   _L5219_)))
                                             (begin
                                               (let ((_g34893_
                                                      (values-count _g34892_)))
                                                 (if (not (fx= _g34893_ 3))
                                                     (error "Context expects 3 values"
                                                            _g34893_)))
                                               (let ((_pre5232_
                                                      (values-ref _g34892_ 0))
                                                     (_opt5234_
                                                      (values-ref _g34892_ 1))
                                                     (_tail5235_
                                                      (values-ref _g34892_ 2)))
                                                 (let* ((_g52375245_
                                                         (lambda (_g52385241_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g52385241_)))
                                                        (_g52365414_
                                                         (lambda (_g52385249_)
                                                           ((lambda (_L5252_)
                                                              (let ()
                                                                (let* ((_g52655273_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_g52665269_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g52665269_)))
                               (_g52645410_
                                (lambda (_g52665277_)
                                  ((lambda (_L5280_)
                                     (let ()
                                       (let* ((_g52935310_
                                               (lambda (_g52945306_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g52945306_)))
                                              (_g52925406_
                                               (lambda (_g52945314_)
                                                 (if (gx#stx-pair/null?
                                                      _g52945314_)
                                                     (if (fx>= (gx#stx-length
                                                                _g52945314_)
                                                               '0)
                                                         (let ((_g34894_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g52945314_
                         '0)))
                   (begin
                     (let ((_g34895_ (values-count _g34894_)))
                       (if (not (fx= _g34895_ 2))
                           (error "Context expects 2 values" _g34895_)))
                     (let ((_target52965317_ (values-ref _g34894_ 0))
                           (_tl52985320_ (values-ref _g34894_ 1)))
                       (if (gx#stx-null? _tl52985320_)
                           (letrec ((_loop52995323_
                                     (lambda (_hd52975327_ _clause53035330_)
                                       (if (gx#stx-pair? _hd52975327_)
                                           (let ((_e53005333_
                                                  (gx#syntax-e _hd52975327_)))
                                             (let ((_lp-hd53015337_
                                                    (##car _e53005333_))
                                                   (_lp-tl53025340_
                                                    (##cdr _e53005333_)))
                                               (_loop52995323_
                                                _lp-tl53025340_
                                                (cons _lp-hd53015337_
                                                      _clause53035330_))))
                                           (let ((_clause53045343_
                                                  (reverse _clause53035330_)))
                                             ((lambda (_L5347_)
                                                (let ()
                                                  (let* ((_g53645372_
                                                          (lambda (_g53655368_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g53655368_)))
                                                         (_g53635394_
                                                          (lambda (_g53655376_)
                                                            ((lambda (_L5379_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (cons (gx#datum->syntax '#f 'let-values)
                                 (cons (cons (cons (cons _L5252_ '())
                                                   (cons _L5280_ '()))
                                             '())
                                       (cons _L5379_ '()))))))
                     _g53655376_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g53635394_
                                                     (gx#stx-wrap-source
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'case-lambda)
                                                            (begin
                                                              '#!void
                                                              (foldr (lambda (_g53975400_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g53985403_)
                               (cons _g53975400_ _g53985403_))
                             '()
                             _L5347_)))
              (gx#stx-source _stx4925_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _clause53045343_))))))
                             (_loop52995323_ _target52965317_ '()))
                           (_g52935310_ _g52945314_)))))
                 (_g52935310_ _g52945314_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g52935310_
                                                      _g52945314_)))))
                                         (_g52925406_
                                          (_generate-opt-dispatch4937_
                                           _L5252_
                                           _pre5232_
                                           _opt5234_
                                           _tail5235_)))))
                                   _g52665277_))))
                          (_g52645410_
                           (gx#stx-wrap-source
                            (_generate-opt-primary4936_
                             _pre5232_
                             _opt5234_
                             _tail5235_
                             _L5217_)
                            (gx#stx-source _stx4925_))))))
                    _g52385249_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g52365414_
                                                    (gx#genident
                                                     'opt-lambda))))))
                                           (_g49455190_ _g49475194_)))
                                     _tl49635214_
                                     _hd49625211_)))
                                (_g49455190_ _g49475194_))))
                        (_g49455190_ _g49475194_))))
                 (_g49435460_
                  (lambda (_g49475422_)
                    (if (gx#stx-pair? _g49475422_)
                        (let ((_e49505425_ (gx#syntax-e _g49475422_)))
                          (let ((_hd49515429_ (##car _e49505425_))
                                (_tl49525432_ (##cdr _e49505425_)))
                            (if (gx#stx-pair? _tl49525432_)
                                (let ((_e49535435_ (gx#syntax-e _tl49525432_)))
                                  (let ((_hd49545439_ (##car _e49535435_))
                                        (_tl49555442_ (##cdr _e49535435_)))
                                    ((lambda (_L5445_ _L5447_)
                                       (if (_simple-lambda?4928_ _L5447_)
                                           (cons (gx#datum->syntax
                                                  '#f
                                                  'lambda%)
                                                 (cons _L5447_ _L5445_))
                                           (_g49445418_ _g49475422_)))
                                     _tl49555442_
                                     _hd49545439_)))
                                (_g49445418_ _g49475422_))))
                        (_g49445418_ _g49475422_)))))
            (_g49435460_ _stx4925_)))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#def|
      (lambda (_$stx8092_)
        (let* ((_g80978136_
                (lambda (_g80988132_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g80988132_)))
               (_g80968191_
                (lambda (_g80988140_)
                  (if (gx#stx-pair? _g80988140_)
                      (let ((_e81228143_ (gx#syntax-e _g80988140_)))
                        (let ((_hd81238147_ (##car _e81228143_))
                              (_tl81248150_ (##cdr _e81228143_)))
                          (if (gx#stx-pair? _tl81248150_)
                              (let ((_e81258153_ (gx#syntax-e _tl81248150_)))
                                (let ((_hd81268157_ (##car _e81258153_))
                                      (_tl81278160_ (##cdr _e81258153_)))
                                  (if (gx#stx-pair? _tl81278160_)
                                      (let ((_e81288163_
                                             (gx#syntax-e _tl81278160_)))
                                        (let ((_hd81298167_
                                               (##car _e81288163_))
                                              (_tl81308170_
                                               (##cdr _e81288163_)))
                                          (if (gx#stx-null? _tl81308170_)
                                              ((lambda (_L8173_ _L8175_)
                                                 (if (gx#identifier? _L8175_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'define-values)
                                                           (cons (cons _L8175_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '())
                         (cons _L8173_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g80978136_
                                                      _g80988140_)))
                                               _hd81298167_
                                               _hd81268157_)
                                              (_g80978136_ _g80988140_))))
                                      (_g80978136_ _g80988140_))))
                              (_g80978136_ _g80988140_))))
                      (_g80978136_ _g80988140_))))
               (_g80958289_
                (lambda (_g80988195_)
                  (if (gx#stx-pair? _g80988195_)
                      (let ((_e81028198_ (gx#syntax-e _g80988195_)))
                        (let ((_hd81038202_ (##car _e81028198_))
                              (_tl81048205_ (##cdr _e81028198_)))
                          (if (gx#stx-pair? _tl81048205_)
                              (let ((_e81058208_ (gx#syntax-e _tl81048205_)))
                                (let ((_hd81068212_ (##car _e81058208_))
                                      (_tl81078215_ (##cdr _e81058208_)))
                                  (if (gx#stx-pair? _hd81068212_)
                                      (let ((_e81088218_
                                             (gx#syntax-e _hd81068212_)))
                                        (let ((_hd81098222_
                                               (##car _e81088218_))
                                              (_tl81108225_
                                               (##cdr _e81088218_)))
                                          (if (gx#stx-pair/null? _tl81078215_)
                                              (if (fx>= (gx#stx-length
                                                         _tl81078215_)
                                                        '0)
                                                  (let ((_g34896_
                                                         (gx#syntax-split-splice
                                                          _tl81078215_
                                                          '0)))
                                                    (begin
                                                      (let ((_g34897_
                                                             (values-count
                                                              _g34896_)))
                                                        (if (not (fx= _g34897_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g34897_)))
              (let ((_target81118228_ (values-ref _g34896_ 0))
                    (_tl81138231_ (values-ref _g34896_ 1)))
                (if (gx#stx-null? _tl81138231_)
                    (letrec ((_loop81148234_
                              (lambda (_hd81128238_ _body81188241_)
                                (if (gx#stx-pair? _hd81128238_)
                                    (let ((_e81158244_
                                           (gx#syntax-e _hd81128238_)))
                                      (let ((_lp-hd81168248_
                                             (##car _e81158244_))
                                            (_lp-tl81178251_
                                             (##cdr _e81158244_)))
                                        (_loop81148234_
                                         _lp-tl81178251_
                                         (cons _lp-hd81168248_
                                               _body81188241_))))
                                    (let ((_body81198254_
                                           (reverse _body81188241_)))
                                      ((lambda (_L8258_ _L8260_ _L8261_)
                                         (if (gx#identifier? _L8261_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'define-values)
                                                   (cons (cons _L8261_ '())
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'lambda)
                             (cons _L8260_
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g82808283_ _g82818286_)
                                              (cons _g82808283_ _g82818286_))
                                            '()
                                            _L8258_))))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g80968191_ _g80988195_)))
                                       _body81198254_
                                       _tl81108225_
                                       _hd81098222_))))))
                      (_loop81148234_ _target81118228_ '()))
                    (_g80968191_ _g80988195_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g80968191_ _g80988195_))
                                              (_g80968191_ _g80988195_))))
                                      (_g80968191_ _g80988195_))))
                              (_g80968191_ _g80988195_))))
                      (_g80968191_ _g80988195_)))))
          (_g80958289_ _$stx8092_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#def*|
      (lambda (_$stx8294_)
        (let* ((_g82988322_
                (lambda (_g82998318_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g82998318_)))
               (_g82978407_
                (lambda (_g82998326_)
                  (if (gx#stx-pair? _g82998326_)
                      (let ((_e83028329_ (gx#syntax-e _g82998326_)))
                        (let ((_hd83038333_ (##car _e83028329_))
                              (_tl83048336_ (##cdr _e83028329_)))
                          (if (gx#stx-pair? _tl83048336_)
                              (let ((_e83058339_ (gx#syntax-e _tl83048336_)))
                                (let ((_hd83068343_ (##car _e83058339_))
                                      (_tl83078346_ (##cdr _e83058339_)))
                                  (if (gx#stx-pair/null? _tl83078346_)
                                      (if (fx>= (gx#stx-length _tl83078346_)
                                                '0)
                                          (let ((_g34898_
                                                 (gx#syntax-split-splice
                                                  _tl83078346_
                                                  '0)))
                                            (begin
                                              (let ((_g34899_
                                                     (values-count _g34898_)))
                                                (if (not (fx= _g34899_ 2))
                                                    (error "Context expects 2 values"
                                                           _g34899_)))
                                              (let ((_target83088349_
                                                     (values-ref _g34898_ 0))
                                                    (_tl83108352_
                                                     (values-ref _g34898_ 1)))
                                                (if (gx#stx-null? _tl83108352_)
                                                    (letrec ((_loop83118355_
                                                              (lambda (_hd83098359_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _clauses83158362_)
                        (if (gx#stx-pair? _hd83098359_)
                            (let ((_e83128365_ (gx#syntax-e _hd83098359_)))
                              (let ((_lp-hd83138369_ (##car _e83128365_))
                                    (_lp-tl83148372_ (##cdr _e83128365_)))
                                (_loop83118355_
                                 _lp-tl83148372_
                                 (cons _lp-hd83138369_ _clauses83158362_))))
                            (let ((_clauses83168375_
                                   (reverse _clauses83158362_)))
                              ((lambda (_L8379_ _L8381_)
                                 (if (gx#identifier? _L8381_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'define-values)
                                           (cons (cons _L8381_ '())
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'case-lambda)
                                                             (begin
                                                               '#!void
                                                               (foldr (lambda (_g83988401_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g83998404_)
                                (cons _g83988401_ _g83998404_))
                              '()
                              _L8379_)))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_g82988322_ _g82998326_)))
                               _clauses83168375_
                               _hd83068343_))))))
              (_loop83118355_ _target83088349_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g82988322_
                                                     _g82998326_)))))
                                          (_g82988322_ _g82998326_))
                                      (_g82988322_ _g82998326_))))
                              (_g82988322_ _g82998326_))))
                      (_g82988322_ _g82998326_)))))
          (_g82978407_ _$stx8294_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#defvalues|
      (lambda (_$stx8412_)
        (let* ((_g84168434_
                (lambda (_g84178430_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g84178430_)))
               (_g84158489_
                (lambda (_g84178438_)
                  (if (gx#stx-pair? _g84178438_)
                      (let ((_e84208441_ (gx#syntax-e _g84178438_)))
                        (let ((_hd84218445_ (##car _e84208441_))
                              (_tl84228448_ (##cdr _e84208441_)))
                          (if (gx#stx-pair? _tl84228448_)
                              (let ((_e84238451_ (gx#syntax-e _tl84228448_)))
                                (let ((_hd84248455_ (##car _e84238451_))
                                      (_tl84258458_ (##cdr _e84238451_)))
                                  (if (gx#stx-pair? _tl84258458_)
                                      (let ((_e84268461_
                                             (gx#syntax-e _tl84258458_)))
                                        (let ((_hd84278465_
                                               (##car _e84268461_))
                                              (_tl84288468_
                                               (##cdr _e84268461_)))
                                          (if (gx#stx-null? _tl84288468_)
                                              ((lambda (_L8471_ _L8473_)
                                                 (if (gx#identifier-list?
                                                      _L8473_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'define-values)
                                                           (cons _L8473_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L8471_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g84168434_
                                                      _g84178438_)))
                                               _hd84278465_
                                               _hd84248455_)
                                              (_g84168434_ _g84178438_))))
                                      (_g84168434_ _g84178438_))))
                              (_g84168434_ _g84178438_))))
                      (_g84168434_ _g84178438_)))))
          (_g84158489_ _$stx8412_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#case|
      (lambda (_$stx8493_)
        (let* ((_g84978521_
                (lambda (_g84988517_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g84988517_)))
               (_g84968606_
                (lambda (_g84988525_)
                  (if (gx#stx-pair? _g84988525_)
                      (let ((_e85018528_ (gx#syntax-e _g84988525_)))
                        (let ((_hd85028532_ (##car _e85018528_))
                              (_tl85038535_ (##cdr _e85018528_)))
                          (if (gx#stx-pair? _tl85038535_)
                              (let ((_e85048538_ (gx#syntax-e _tl85038535_)))
                                (let ((_hd85058542_ (##car _e85048538_))
                                      (_tl85068545_ (##cdr _e85048538_)))
                                  (if (gx#stx-pair/null? _tl85068545_)
                                      (if (fx>= (gx#stx-length _tl85068545_)
                                                '0)
                                          (let ((_g34900_
                                                 (gx#syntax-split-splice
                                                  _tl85068545_
                                                  '0)))
                                            (begin
                                              (let ((_g34901_
                                                     (values-count _g34900_)))
                                                (if (not (fx= _g34901_ 2))
                                                    (error "Context expects 2 values"
                                                           _g34901_)))
                                              (let ((_target85078548_
                                                     (values-ref _g34900_ 0))
                                                    (_tl85098551_
                                                     (values-ref _g34900_ 1)))
                                                (if (gx#stx-null? _tl85098551_)
                                                    (letrec ((_loop85108554_
                                                              (lambda (_hd85088558_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _clause85148561_)
                        (if (gx#stx-pair? _hd85088558_)
                            (let ((_e85118564_ (gx#syntax-e _hd85088558_)))
                              (let ((_lp-hd85128568_ (##car _e85118564_))
                                    (_lp-tl85138571_ (##cdr _e85118564_)))
                                (_loop85108554_
                                 _lp-tl85138571_
                                 (cons _lp-hd85128568_ _clause85148561_))))
                            (let ((_clause85158574_
                                   (reverse _clause85148561_)))
                              ((lambda (_L8578_ _L8580_)
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (cons (gx#datum->syntax '#f '$e)
                                                   (cons _L8580_ '()))
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '~case)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                '$e)
                                                               (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#!void
                         (foldr (lambda (_g85978600_ _g85988603_)
                                  (cons _g85978600_ _g85988603_))
                                '()
                                _L8578_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                               _clause85158574_
                               _hd85058542_))))))
              (_loop85108554_ _target85078548_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g84978521_
                                                     _g84988525_)))))
                                          (_g84978521_ _g84988525_))
                                      (_g84978521_ _g84988525_))))
                              (_g84978521_ _g84988525_))))
                      (_g84978521_ _g84988525_)))))
          (_g84968606_ _$stx8493_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#~case|
      (lambda (_stx8611_)
        (letrec ((_parse-clauses8614_
                  (lambda (_e11077_ _clauses11079_)
                    (let _lp11081_ ((_rest11084_ _clauses11079_)
                                    (_datums11086_ '())
                                    (_dispatch11087_ '())
                                    (_default11088_ '#f))
                      (let* ((_g1109111103_
                              (lambda (_g1109211099_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1109211099_)))
                             (_g1109011118_
                              (lambda (_g1109211107_)
                                (if (gx#stx-null? _g1109211107_)
                                    ((lambda ()
                                       (begin
                                         (_check-duplicate-datums8616_
                                          _datums11086_)
                                         (values (reverse _datums11086_)
                                                 (reverse _dispatch11087_)
                                                 (let ((_$e11114_
                                                        _default11088_))
                                                   (if _$e11114_
                                                       _$e11114_
                                                       '#!void))))))
                                    (_g1109111103_ _g1109211107_))))
                             (_g1108911549_
                              (lambda (_g1109211122_)
                                (if (gx#stx-pair? _g1109211122_)
                                    (let ((_e1109511125_
                                           (gx#syntax-e _g1109211122_)))
                                      (let ((_hd1109611129_
                                             (##car _e1109511125_))
                                            (_tl1109711132_
                                             (##cdr _e1109511125_)))
                                        ((lambda (_L11135_ _L11137_)
                                           (let* ((_g1115411217_
                                                   (lambda (_g1115511213_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g1115511213_)))
                                                  (_g1115311340_
                                                   (lambda (_g1115511221_)
                                                     (if (gx#stx-pair?
                                                          _g1115511221_)
                                                         (let ((_e1119111224_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1115511221_)))
                   (let ((_hd1119211228_ (##car _e1119111224_))
                         (_tl1119311231_ (##cdr _e1119111224_)))
                     (if (gx#stx-pair/null? _hd1119211228_)
                         (if (fx>= (gx#stx-length _hd1119211228_) '0)
                             (let ((_g34902_
                                    (gx#syntax-split-splice
                                     _hd1119211228_
                                     '0)))
                               (begin
                                 (let ((_g34903_ (values-count _g34902_)))
                                   (if (not (fx= _g34903_ 2))
                                       (error "Context expects 2 values"
                                              _g34903_)))
                                 (let ((_target1119411234_
                                        (values-ref _g34902_ 0))
                                       (_tl1119611237_
                                        (values-ref _g34902_ 1)))
                                   (if (gx#stx-null? _tl1119611237_)
                                       (letrec ((_loop1119711240_
                                                 (lambda (_hd1119511244_
                                                          _datum1120111247_)
                                                   (if (gx#stx-pair?
                                                        _hd1119511244_)
                                                       (let ((_e1119811250_
                                                              (gx#syntax-e
                                                               _hd1119511244_)))
                                                         (let ((_lp-hd1119911254_
                                                                (##car _e1119811250_))
                                                               (_lp-tl1120011257_
                                                                (##cdr _e1119811250_)))
                                                           (_loop1119711240_
                                                            _lp-tl1120011257_
                                                            (cons _lp-hd1119911254_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _datum1120111247_))))
               (let ((_datum1120211260_ (reverse _datum1120111247_)))
                 (if (gx#stx-pair/null? _tl1119311231_)
                     (if (fx>= (gx#stx-length _tl1119311231_) '0)
                         (let ((_g34904_
                                (gx#syntax-split-splice _tl1119311231_ '0)))
                           (begin
                             (let ((_g34905_ (values-count _g34904_)))
                               (if (not (fx= _g34905_ 2))
                                   (error "Context expects 2 values"
                                          _g34905_)))
                             (let ((_target1120311264_ (values-ref _g34904_ 0))
                                   (_tl1120511267_ (values-ref _g34904_ 1)))
                               (if (gx#stx-null? _tl1120511267_)
                                   (letrec ((_loop1120611270_
                                             (lambda (_hd1120411274_
                                                      _body1121011277_)
                                               (if (gx#stx-pair?
                                                    _hd1120411274_)
                                                   (let ((_e1120711280_
                                                          (gx#syntax-e
                                                           _hd1120411274_)))
                                                     (let ((_lp-hd1120811284_
                                                            (##car _e1120711280_))
                                                           (_lp-tl1120911287_
                                                            (##cdr _e1120711280_)))
                                                       (_loop1120611270_
                                                        _lp-tl1120911287_
                                                        (cons _lp-hd1120811284_
                                                              _body1121011277_))))
                                                   (let ((_body1121111290_
                                                          (reverse _body1121011277_)))
                                                     ((lambda (_L11294_
                                                               _L11296_)
                                                        (if (null? (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#!void
                             (foldr (lambda (_g1131511318_ _g1131611321_)
                                      (cons _g1131511318_ _g1131611321_))
                                    '()
                                    _L11296_)))
                    (_lp11081_
                     _L11135_
                     _datums11086_
                     _dispatch11087_
                     _default11088_)
                    (_lp11081_
                     _L11135_
                     (cons (map gx#stx-e
                                (begin
                                  '#!void
                                  (foldr (lambda (_g1132311326_ _g1132411329_)
                                           (cons _g1132311326_ _g1132411329_))
                                         '()
                                         _L11296_)))
                           _datums11086_)
                     (cons (cons (gx#datum->syntax '#f 'begin)
                                 (begin
                                   '#!void
                                   (foldr (lambda (_g1133111334_ _g1133211337_)
                                            (cons _g1133111334_ _g1133211337_))
                                          '()
                                          _L11294_)))
                           _dispatch11087_)
                     _default11088_)))
              _body1121111290_
              _datum1120211260_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop1120611270_ _target1120311264_ '()))
                                   (_g1115411217_ _g1115511221_)))))
                         (_g1115411217_ _g1115511221_))
                     (_g1115411217_ _g1115511221_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop1119711240_
                                          _target1119411234_
                                          '()))
                                       (_g1115411217_ _g1115511221_)))))
                             (_g1115411217_ _g1115511221_))
                         (_g1115411217_ _g1115511221_))))
                 (_g1115411217_ _g1115511221_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1115211475_
                                                   (lambda (_g1115511344_)
                                                     (if (gx#stx-pair?
                                                          _g1115511344_)
                                                         (let ((_e1117111347_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1115511344_)))
                   (let ((_hd1117211351_ (##car _e1117111347_))
                         (_tl1117311354_ (##cdr _e1117111347_)))
                     (if (gx#stx-pair/null? _hd1117211351_)
                         (if (fx>= (gx#stx-length _hd1117211351_) '0)
                             (let ((_g34906_
                                    (gx#syntax-split-splice
                                     _hd1117211351_
                                     '0)))
                               (begin
                                 (let ((_g34907_ (values-count _g34906_)))
                                   (if (not (fx= _g34907_ 2))
                                       (error "Context expects 2 values"
                                              _g34907_)))
                                 (let ((_target1117411357_
                                        (values-ref _g34906_ 0))
                                       (_tl1117611360_
                                        (values-ref _g34906_ 1)))
                                   (if (gx#stx-null? _tl1117611360_)
                                       (letrec ((_loop1117711363_
                                                 (lambda (_hd1117511367_
                                                          _datum1118111370_)
                                                   (if (gx#stx-pair?
                                                        _hd1117511367_)
                                                       (let ((_e1117811373_
                                                              (gx#syntax-e
                                                               _hd1117511367_)))
                                                         (let ((_lp-hd1117911377_
                                                                (##car _e1117811373_))
                                                               (_lp-tl1118011380_
                                                                (##cdr _e1117811373_)))
                                                           (_loop1117711363_
                                                            _lp-tl1118011380_
                                                            (cons _lp-hd1117911377_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _datum1118111370_))))
               (let ((_datum1118211383_ (reverse _datum1118111370_)))
                 (if (gx#stx-pair? _tl1117311354_)
                     (let ((_e1118311387_ (gx#syntax-e _tl1117311354_)))
                       (let ((_hd1118411391_ (##car _e1118311387_))
                             (_tl1118511394_ (##cdr _e1118311387_)))
                         (if (gx#identifier? _hd1118411391_)
                             (if (gx#free-identifier=?
                                  |gerbil/core$<sugar>$<sugar:2>[1]#_g34908_|
                                  _hd1118411391_)
                                 (if (gx#stx-pair? _tl1118511394_)
                                     (let ((_e1118611397_
                                            (gx#syntax-e _tl1118511394_)))
                                       (let ((_hd1118711401_
                                              (##car _e1118611397_))
                                             (_tl1118811404_
                                              (##cdr _e1118611397_)))
                                         (if (gx#stx-null? _tl1118811404_)
                                             ((lambda (_L11407_ _L11409_)
                                                (if (null? (begin
                                                             '#!void
                                                             (foldr (lambda (_g1142711430_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1142811433_)
                              (cons _g1142711430_ _g1142811433_))
                            '()
                            _L11409_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_lp11081_
                                                     _L11135_
                                                     _datums11086_
                                                     _dispatch11087_
                                                     _default11088_)
                                                    (let* ((_g1143611444_
                                                            (lambda (_g1143711440_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g1143711440_)))
                                                           (_g1143511471_
                                                            (lambda (_g1143711448_)
                                                              ((lambda (_L11451_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (_lp11081_
                            _L11135_
                            (cons (map gx#stx-e
                                       (begin
                                         '#!void
                                         (foldr (lambda (_g1146211465_
                                                         _g1146311468_)
                                                  (cons _g1146211465_
                                                        _g1146311468_))
                                                '()
                                                _L11409_)))
                                  _datums11086_)
                            (cons (cons _L11407_ (cons _L11451_ '()))
                                  _dispatch11087_)
                            _default11088_)))
                       _g1143711448_))))
              (_g1143511471_ _e11077_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd1118711401_
                                              _datum1118211383_)
                                             (_g1115311340_ _g1115511344_))))
                                     (_g1115311340_ _g1115511344_))
                                 (_g1115311340_ _g1115511344_))
                             (_g1115311340_ _g1115511344_))))
                     (_g1115311340_ _g1115511344_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop1117711363_
                                          _target1117411357_
                                          '()))
                                       (_g1115311340_ _g1115511344_)))))
                             (_g1115311340_ _g1115511344_))
                         (_g1115311340_ _g1115511344_))))
                 (_g1115311340_ _g1115511344_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1115111545_
                                                   (lambda (_g1115511479_)
                                                     (if (gx#stx-pair?
                                                          _g1115511479_)
                                                         (let ((_e1115711482_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1115511479_)))
                   (let ((_hd1115811486_ (##car _e1115711482_))
                         (_tl1115911489_ (##cdr _e1115711482_)))
                     (if (gx#identifier? _hd1115811486_)
                         (if (gx#free-identifier=?
                              |gerbil/core$<sugar>$<sugar:2>[1]#_g34909_|
                              _hd1115811486_)
                             (if (gx#stx-pair/null? _tl1115911489_)
                                 (if (fx>= (gx#stx-length _tl1115911489_) '0)
                                     (let ((_g34910_
                                            (gx#syntax-split-splice
                                             _tl1115911489_
                                             '0)))
                                       (begin
                                         (let ((_g34911_
                                                (values-count _g34910_)))
                                           (if (not (fx= _g34911_ 2))
                                               (error "Context expects 2 values"
                                                      _g34911_)))
                                         (let ((_target1116011492_
                                                (values-ref _g34910_ 0))
                                               (_tl1116211495_
                                                (values-ref _g34910_ 1)))
                                           (if (gx#stx-null? _tl1116211495_)
                                               (letrec ((_loop1116311498_
                                                         (lambda (_hd1116111502_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _body1116711505_)
                   (if (gx#stx-pair? _hd1116111502_)
                       (let ((_e1116411508_ (gx#syntax-e _hd1116111502_)))
                         (let ((_lp-hd1116511512_ (##car _e1116411508_))
                               (_lp-tl1116611515_ (##cdr _e1116411508_)))
                           (_loop1116311498_
                            _lp-tl1116611515_
                            (cons _lp-hd1116511512_ _body1116711505_))))
                       (let ((_body1116811518_ (reverse _body1116711505_)))
                         ((lambda (_L11522_)
                            (if (gx#stx-null? _L11135_)
                                (if _default11088_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Duplicate else clause"
                                     _stx8611_
                                     _L11137_)
                                    (_lp11081_
                                     _L11135_
                                     _datums11086_
                                     _dispatch11087_
                                     (cons (gx#datum->syntax '#f 'begin)
                                           (begin
                                             '#!void
                                             (foldr (lambda (_g1153611539_
                                                             _g1153711542_)
                                                      (cons _g1153611539_
                                                            _g1153711542_))
                                                    '()
                                                    _L11522_)))))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Misplaced else clause"
                                 _stx8611_
                                 _L11137_)))
                          _body1116811518_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1116311498_
                                                  _target1116011492_
                                                  '()))
                                               (_g1115211475_
                                                _g1115511479_)))))
                                     (_g1115211475_ _g1115511479_))
                                 (_g1115211475_ _g1115511479_))
                             (_g1115211475_ _g1115511479_))
                         (_g1115211475_ _g1115511479_))))
                 (_g1115211475_ _g1115511479_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1115111545_ _L11137_)))
                                         _tl1109711132_
                                         _hd1109611129_)))
                                    (_g1109011118_ _g1109211122_)))))
                        (_g1108911549_ _rest11084_)))))
                 (_check-duplicate-datums8616_
                  (lambda (_datums11065_)
                    (let ((_ht11068_ (make-hash-table)))
                      (for-each
                       (lambda (_lst11071_)
                         (for-each
                          (lambda (_datum11074_)
                            (if (hash-get _ht11068_ _datum11074_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Duplicate datum"
                                 _stx8611_
                                 _datum11074_)
                                (hash-put! _ht11068_ _datum11074_ '#t)))
                          _lst11071_))
                       _datums11065_))))
                 (_count-datums8617_
                  (lambda (_datums11058_)
                    (foldl (lambda (_lst11061_ _r11063_)
                             (+ (length _lst11061_) _r11063_))
                           '0
                           _datums11058_)))
                 (_symbolic-datums?8618_
                  (lambda (_datums11052_)
                    (andmap (lambda (_lst11055_) (andmap symbol? _lst11055_))
                            _datums11052_)))
                 (_char-datums?8619_
                  (lambda (_datums11046_)
                    (andmap (lambda (_lst11049_) (andmap char? _lst11049_))
                            _datums11046_)))
                 (_fixnum-datums?8620_
                  (lambda (_datums11040_)
                    (andmap (lambda (_lst11043_) (andmap fixnum? _lst11043_))
                            _datums11040_)))
                 (_eq-datums?8621_
                  (lambda (_datums11023_)
                    (andmap (lambda (_lst11026_)
                              (andmap (lambda (_x11029_)
                                        (let ((_$e11032_ (symbol? _x11029_)))
                                          (if _$e11032_
                                              _$e11032_
                                              (let ((_$e11036_
                                                     (keyword? _x11029_)))
                                                (if _$e11036_
                                                    _$e11036_
                                                    (immediate? _x11029_))))))
                                      _lst11026_))
                            _datums11023_)))
                 (_generate-simple-case8622_
                  (lambda (_e10787_
                           _datums10789_
                           _dispatch10790_
                           _default10791_)
                    (let* ((_g1079310801_
                            (lambda (_g1079410797_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1079410797_)))
                           (_g1079211019_
                            (lambda (_g1079410805_)
                              ((lambda (_L10808_)
                                 (let ()
                                   (let _recur10820_ ((_datums10823_
                                                       _datums10789_)
                                                      (_dispatch10825_
                                                       _dispatch10790_))
                                     (let* ((_g1082810849_
                                             (lambda (_g1082910845_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1082910845_)))
                                            (_g1082710860_
                                             (lambda (_g1082910853_)
                                               ((lambda () _default10791_))))
                                            (_g1082611015_
                                             (lambda (_g1082910864_)
                                               (if (gx#stx-pair? _g1082910864_)
                                                   (let ((_e1083210867_
                                                          (gx#syntax-e
                                                           _g1082910864_)))
                                                     (let ((_hd1083310871_
                                                            (##car _e1083210867_))
                                                           (_tl1083410874_
                                                            (##cdr _e1083210867_)))
                                                       (if (gx#stx-pair/null?
                                                            _hd1083310871_)
                                                           (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd1083310871_)
                             '0)
                       (let ((_g34912_
                              (gx#syntax-split-splice _hd1083310871_ '0)))
                         (begin
                           (let ((_g34913_ (values-count _g34912_)))
                             (if (not (fx= _g34913_ 2))
                                 (error "Context expects 2 values" _g34913_)))
                           (let ((_target1083510877_ (values-ref _g34912_ 0))
                                 (_tl1083710880_ (values-ref _g34912_ 1)))
                             (if (gx#stx-null? _tl1083710880_)
                                 (letrec ((_loop1083810883_
                                           (lambda (_hd1083610887_
                                                    _datum1084210890_)
                                             (if (gx#stx-pair? _hd1083610887_)
                                                 (let ((_e1083910893_
                                                        (gx#syntax-e
                                                         _hd1083610887_)))
                                                   (let ((_lp-hd1084010897_
                                                          (##car _e1083910893_))
                                                         (_lp-tl1084110900_
                                                          (##cdr _e1083910893_)))
                                                     (_loop1083810883_
                                                      _lp-tl1084110900_
                                                      (cons _lp-hd1084010897_
                                                            _datum1084210890_))))
                                                 (let ((_datum1084310903_
                                                        (reverse _datum1084210890_)))
                                                   ((lambda (_L10907_ _L10909_)
                                                      (let* ((_g1092910941_
                                                              (lambda (_g1093010937_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax"
                         _g1093010937_)))
                     (_g1092811011_
                      (lambda (_g1093010945_)
                        (if (gx#stx-pair? _g1093010945_)
                            (let ((_e1093310948_ (gx#syntax-e _g1093010945_)))
                              (let ((_hd1093410952_ (##car _e1093310948_))
                                    (_tl1093510955_ (##cdr _e1093310948_)))
                                ((lambda (_L10958_ _L10960_)
                                   (let* ((_g1097210980_
                                           (lambda (_g1097310976_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1097310976_)))
                                          (_g1097111007_
                                           (lambda (_g1097310984_)
                                             ((lambda (_L10987_)
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
                              (foldr (lambda (_g1099811001_ _g1099911004_)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '~case-test)
                                                   (cons _g1099811001_
                                                         (cons _L10808_ '())))
                                             _g1099911004_))
                                     '()
                                     _L10909_)))
                      (cons _L10960_ (cons _L10987_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _g1097310984_))))
                                     (_g1097111007_
                                      (_recur10820_ _L10907_ _L10958_))))
                                 _tl1093510955_
                                 _hd1093410952_)))
                            (_g1092910941_ _g1093010945_)))))
                (_g1092811011_ _dispatch10825_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl1083410874_
                                                    _datum1084310903_))))))
                                   (_loop1083810883_ _target1083510877_ '()))
                                 (_g1082710860_ _g1082910864_)))))
                       (_g1082710860_ _g1082910864_))
                   (_g1082710860_ _g1082910864_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1082710860_
                                                    _g1082910864_)))))
                                       (_g1082611015_ _datums10823_)))))
                               _g1079410805_))))
                      (_g1079211019_ _e10787_))))
                 (_datum-dispatch-index8623_
                  (lambda (_datums10659_)
                    (let _lp10662_ ((_rest10665_ _datums10659_)
                                    (_ix10667_ '0)
                                    (_r10668_ '()))
                      (let* ((_g1067110692_
                              (lambda (_g1067210688_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1067210688_)))
                             (_g1067010703_
                              (lambda (_g1067210696_) ((lambda () _r10668_))))
                             (_g1066910783_
                              (lambda (_g1067210707_)
                                (if (gx#stx-pair? _g1067210707_)
                                    (let ((_e1067510710_
                                           (gx#syntax-e _g1067210707_)))
                                      (let ((_hd1067610714_
                                             (##car _e1067510710_))
                                            (_tl1067710717_
                                             (##cdr _e1067510710_)))
                                        (if (gx#stx-pair/null? _hd1067610714_)
                                            (if (fx>= (gx#stx-length
                                                       _hd1067610714_)
                                                      '0)
                                                (let ((_g34914_
                                                       (gx#syntax-split-splice
                                                        _hd1067610714_
                                                        '0)))
                                                  (begin
                                                    (let ((_g34915_
                                                           (values-count
                                                            _g34914_)))
                                                      (if (not (fx= _g34915_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g34915_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1067810720_
                                                           (values-ref
                                                            _g34914_
                                                            0))
                                                          (_tl1068010723_
                                                           (values-ref
                                                            _g34914_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl1068010723_)
                                                          (letrec ((_loop1068110726_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1067910730_ _datum1068510733_)
                              (if (gx#stx-pair? _hd1067910730_)
                                  (let ((_e1068210736_
                                         (gx#syntax-e _hd1067910730_)))
                                    (let ((_lp-hd1068310740_
                                           (##car _e1068210736_))
                                          (_lp-tl1068410743_
                                           (##cdr _e1068210736_)))
                                      (_loop1068110726_
                                       _lp-tl1068410743_
                                       (cons _lp-hd1068310740_
                                             _datum1068510733_))))
                                  (let ((_datum1068610746_
                                         (reverse _datum1068510733_)))
                                    ((lambda (_L10750_ _L10752_)
                                       (_lp10662_
                                        _L10750_
                                        (fx1+ _ix10667_)
                                        (foldl (lambda (_x10771_ _r10773_)
                                                 (cons (cons _x10771_
                                                             _ix10667_)
                                                       _r10773_))
                                               _r10668_
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g1077410777_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1077510780_)
                  (cons _g1077410777_ _g1077510780_))
                '()
                _L10752_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _tl1067710717_
                                     _datum1068610746_))))))
                    (_loop1068110726_ _target1067810720_ '()))
                  (_g1067010703_ _g1067210707_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1067010703_ _g1067210707_))
                                            (_g1067010703_ _g1067210707_))))
                                    (_g1067010703_ _g1067210707_)))))
                        (_g1066910783_ _rest10665_)))))
                 (_duplicate-indexes?8624_
                  (lambda (_xs10640_)
                    (let ((_ht10643_ (make-hash-table-eq)))
                      (let _lp10646_ ((_rest10649_ _xs10640_))
                        (if (pair? _rest10649_)
                            (let* ((_ix10652_ (car _rest10649_))
                                   (_$e10655_ (hash-get _ht10643_ _ix10652_)))
                              (if _$e10655_
                                  _$e10655_
                                  (begin
                                    (hash-put! _ht10643_ _ix10652_ '#t)
                                    (_lp10646_ (cdr _rest10649_)))))
                            '#f)))))
                 (_generate-hash-dispatch-table8625_
                  (lambda (_indexes10609_ _hash-e10611_)
                    (let _lp10613_ ((_len10616_
                                     (* '2 (length _indexes10609_))))
                      (let* ((_hs10622_
                              (map (lambda (_x10619_)
                                     (_hash-e10611_ (car _x10619_)))
                                   _indexes10609_))
                             (_xs10628_
                              (map (lambda (_h10625_)
                                     (fxmodulo _h10625_ _len10616_))
                                   _hs10622_)))
                        (if (_duplicate-indexes?8624_ _xs10628_)
                            (if (< _len10616_ '131072)
                                (_lp10613_ (quotient (fx* _len10616_ '3) '2))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Cannot create perfect dispatch table"
                                 _stx8611_
                                 _indexes10609_))
                            (let ((_tab10633_ (make-vector _len10616_ '#f)))
                              (begin
                                (for-each
                                 (lambda (_entry10636_ _x10638_)
                                   (vector-set!
                                    _tab10633_
                                    _x10638_
                                    _entry10636_))
                                 _indexes10609_
                                 _xs10628_)
                                _tab10633_)))))))
                 (_generate-symbolic-dispatch8626_
                  (lambda (_e10212_
                           _datums10214_
                           _dispatch10215_
                           _default10216_)
                    (let* ((_indexes10218_
                            (_datum-dispatch-index8623_ _datums10214_))
                           (_tab10221_
                            (_generate-hash-dispatch-table8625_
                             _indexes10218_
                             symbol-hash)))
                      (if (= (length _dispatch10215_) '1)
                          (let* ((_tab10229_
                                  (vector-map
                                   (lambda (_x10226_)
                                     (if _x10226_ (car _x10226_) '#f))
                                   _tab10221_))
                                 (_g1023210270_
                                  (lambda (_g1023310266_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g1023310266_)))
                                 (_g1023110401_
                                  (lambda (_g1023310274_)
                                    (if (gx#stx-pair? _g1023310274_)
                                        (let ((_e1024110277_
                                               (gx#syntax-e _g1023310274_)))
                                          (let ((_hd1024210281_
                                                 (##car _e1024110277_))
                                                (_tl1024310284_
                                                 (##cdr _e1024110277_)))
                                            (if (gx#stx-pair? _tl1024310284_)
                                                (let ((_e1024410287_
                                                       (gx#syntax-e
                                                        _tl1024310284_)))
                                                  (let ((_hd1024510291_
                                                         (##car _e1024410287_))
                                                        (_tl1024610294_
                                                         (##cdr _e1024410287_)))
                                                    (if (gx#stx-pair?
                                                         _tl1024610294_)
                                                        (let ((_e1024710297_
                                                               (gx#syntax-e
                                                                _tl1024610294_)))
                                                          (let ((_hd1024810301_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1024710297_))
                        (_tl1024910304_ (##cdr _e1024710297_)))
                    (if (gx#stx-pair? _tl1024910304_)
                        (let ((_e1025010307_ (gx#syntax-e _tl1024910304_)))
                          (let ((_hd1025110311_ (##car _e1025010307_))
                                (_tl1025210314_ (##cdr _e1025010307_)))
                            (if (gx#stx-pair? _hd1025110311_)
                                (let ((_e1025310317_
                                       (gx#syntax-e _hd1025110311_)))
                                  (let ((_hd1025410321_ (##car _e1025310317_))
                                        (_tl1025510324_ (##cdr _e1025310317_)))
                                    (if (gx#stx-null? _tl1025510324_)
                                        (if (gx#stx-pair? _tl1025210314_)
                                            (let ((_e1025610327_
                                                   (gx#syntax-e
                                                    _tl1025210314_)))
                                              (let ((_hd1025710331_
                                                     (##car _e1025610327_))
                                                    (_tl1025810334_
                                                     (##cdr _e1025610327_)))
                                                (if (gx#stx-pair?
                                                     _tl1025810334_)
                                                    (let ((_e1025910337_
                                                           (gx#syntax-e
                                                            _tl1025810334_)))
                                                      (let ((_hd1026010341_
                                                             (##car _e1025910337_))
                                                            (_tl1026110344_
                                                             (##cdr _e1025910337_)))
                                                        (if (gx#stx-pair?
                                                             _tl1026110344_)
                                                            (let ((_e1026210347_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl1026110344_)))
                      (let ((_hd1026310351_ (##car _e1026210347_))
                            (_tl1026410354_ (##cdr _e1026210347_)))
                        (if (gx#stx-null? _tl1026410354_)
                            ((lambda (_L10357_
                                      _L10359_
                                      _L10360_
                                      _L10361_
                                      _L10362_
                                      _L10363_
                                      _L10364_)
                               (let ()
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (cons (cons _L10363_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'lambda)
                             (cons '() (cons _L10360_ '())))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons _L10362_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'quote)
                                   (cons _L10359_ '()))
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
                             (cons _L10364_ '()))
                       (cons (cons (gx#datum->syntax '#f 'let*)
                                   (cons (cons (cons (gx#datum->syntax '#f 'h)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##symbol-hash)
                         (cons _L10364_ '()))
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
                                     (cons _L10357_ '())))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'q)
                         (cons (cons (gx#datum->syntax '#f '##vector-ref)
                                     (cons _L10362_
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
                         (cons (gx#datum->syntax '#f 'q) (cons _L10364_ '())))
                   (cons _L10361_ (cons (cons _L10363_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))
                             (cons (cons _L10363_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))))
                             _hd1026310351_
                             _hd1026010341_
                             _hd1025710331_
                             _hd1025410321_
                             _hd1024810301_
                             _hd1024510291_
                             _hd1024210281_)
                            (_g1023210270_ _g1023310274_))))
                    (_g1023210270_ _g1023310274_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1023210270_
                                                     _g1023310274_))))
                                            (_g1023210270_ _g1023310274_))
                                        (_g1023210270_ _g1023310274_))))
                                (_g1023210270_ _g1023310274_))))
                        (_g1023210270_ _g1023310274_))))
                (_g1023210270_ _g1023310274_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1023210270_
                                                 _g1023310274_))))
                                        (_g1023210270_ _g1023310274_)))))
                            (_g1023110401_
                             (list _e10212_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _dispatch10215_
                                   _default10216_
                                   _tab10229_
                                   (vector-length _tab10229_))))
                          (let* ((_g1040510449_
                                  (lambda (_g1040610445_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g1040610445_)))
                                 (_g1040410605_
                                  (lambda (_g1040610453_)
                                    (if (gx#stx-pair? _g1040610453_)
                                        (let ((_e1041410456_
                                               (gx#syntax-e _g1040610453_)))
                                          (let ((_hd1041510460_
                                                 (##car _e1041410456_))
                                                (_tl1041610463_
                                                 (##cdr _e1041410456_)))
                                            (if (gx#stx-pair? _tl1041610463_)
                                                (let ((_e1041710466_
                                                       (gx#syntax-e
                                                        _tl1041610463_)))
                                                  (let ((_hd1041810470_
                                                         (##car _e1041710466_))
                                                        (_tl1041910473_
                                                         (##cdr _e1041710466_)))
                                                    (if (gx#stx-pair?
                                                         _tl1041910473_)
                                                        (let ((_e1042010476_
                                                               (gx#syntax-e
                                                                _tl1041910473_)))
                                                          (let ((_hd1042110480_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1042010476_))
                        (_tl1042210483_ (##cdr _e1042010476_)))
                    (if (gx#stx-pair? _tl1042210483_)
                        (let ((_e1042310486_ (gx#syntax-e _tl1042210483_)))
                          (let ((_hd1042410490_ (##car _e1042310486_))
                                (_tl1042510493_ (##cdr _e1042310486_)))
                            (if (gx#stx-pair/null? _hd1042410490_)
                                (if (fx>= (gx#stx-length _hd1042410490_) '0)
                                    (let ((_g34916_
                                           (gx#syntax-split-splice
                                            _hd1042410490_
                                            '0)))
                                      (begin
                                        (let ((_g34917_
                                               (values-count _g34916_)))
                                          (if (not (fx= _g34917_ 2))
                                              (error "Context expects 2 values"
                                                     _g34917_)))
                                        (let ((_target1042610496_
                                               (values-ref _g34916_ 0))
                                              (_tl1042810499_
                                               (values-ref _g34916_ 1)))
                                          (if (gx#stx-null? _tl1042810499_)
                                              (letrec ((_loop1042910502_
                                                        (lambda (_hd1042710506_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _dispatch1043310509_)
                  (if (gx#stx-pair? _hd1042710506_)
                      (let ((_e1043010512_ (gx#syntax-e _hd1042710506_)))
                        (let ((_lp-hd1043110516_ (##car _e1043010512_))
                              (_lp-tl1043210519_ (##cdr _e1043010512_)))
                          (_loop1042910502_
                           _lp-tl1043210519_
                           (cons _lp-hd1043110516_ _dispatch1043310509_))))
                      (let ((_dispatch1043410522_
                             (reverse _dispatch1043310509_)))
                        (if (gx#stx-pair? _tl1042510493_)
                            (let ((_e1043510526_ (gx#syntax-e _tl1042510493_)))
                              (let ((_hd1043610530_ (##car _e1043510526_))
                                    (_tl1043710533_ (##cdr _e1043510526_)))
                                (if (gx#stx-pair? _tl1043710533_)
                                    (let ((_e1043810536_
                                           (gx#syntax-e _tl1043710533_)))
                                      (let ((_hd1043910540_
                                             (##car _e1043810536_))
                                            (_tl1044010543_
                                             (##cdr _e1043810536_)))
                                        (if (gx#stx-pair? _tl1044010543_)
                                            (let ((_e1044110546_
                                                   (gx#syntax-e
                                                    _tl1044010543_)))
                                              (let ((_hd1044210550_
                                                     (##car _e1044110546_))
                                                    (_tl1044310553_
                                                     (##cdr _e1044110546_)))
                                                (if (gx#stx-null?
                                                     _tl1044310553_)
                                                    ((lambda (_L10556_
                                                              _L10558_
                                                              _L10559_
                                                              _L10560_
                                                              _L10561_
                                                              _L10562_
                                                              _L10563_)
                                                       (let ()
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'let)
                                                               (cons (cons (cons _L10562_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons '()
                                                           (cons _L10559_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (cons (cons _L10561_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote)
                                                           (cons _L10558_ '()))
                                                     '()))
                                         '()))
                             (cons (cons (gx#datum->syntax '#f 'if)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'symbol?)
                                                     (cons _L10563_ '()))
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
                                                 (cons _L10563_ '()))
                                           '()))
                               (cons (cons (gx#datum->syntax '#f 'ix)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '##fxmodulo)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'h)
                                                             (cons _L10556_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     (cons (cons (gx#datum->syntax '#f 'q)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '##vector-ref)
                                                             (cons _L10561_
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
                                 (cons _L10563_ '())))
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
                                                           (foldr (lambda (_g1059610599_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g1059710602_)
                            (cons _g1059610599_ _g1059710602_))
                          '()
                          _L10560_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))
                           (cons (cons _L10562_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L10562_ '())
                                                       '()))))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons _L10562_ '())
                                                           '()))))
                                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd1044210550_
                                                     _hd1043910540_
                                                     _hd1043610530_
                                                     _dispatch1043410522_
                                                     _hd1042110480_
                                                     _hd1041810470_
                                                     _hd1041510460_)
                                                    (_g1040510449_
                                                     _g1040610453_))))
                                            (_g1040510449_ _g1040610453_))))
                                    (_g1040510449_ _g1040610453_))))
                            (_g1040510449_ _g1040610453_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop1042910502_
                                                 _target1042610496_
                                                 '()))
                                              (_g1040510449_ _g1040610453_)))))
                                    (_g1040510449_ _g1040610453_))
                                (_g1040510449_ _g1040610453_))))
                        (_g1040510449_ _g1040610453_))))
                (_g1040510449_ _g1040610453_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1040510449_
                                                 _g1040610453_))))
                                        (_g1040510449_ _g1040610453_)))))
                            (_g1040410605_
                             (list _e10212_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _dispatch10215_
                                   _default10216_
                                   _tab10221_
                                   (vector-length _tab10221_))))))))
                 (_max-char8627_
                  (lambda (_datums10201_)
                    (foldl (lambda (_lst10204_ _r10206_)
                             (foldl (lambda (_char10208_ _r10210_)
                                      (max (char->integer _char10208_)
                                           _r10210_))
                                    _r10206_
                                    _lst10204_))
                           '0
                           _datums10201_)))
                 (_generate-char-dispatch-table8628_
                  (lambda (_indexes10180_)
                    (let* ((_ixs10186_
                            (map (lambda (_x10183_)
                                   (char->integer (car _x10183_)))
                                 _indexes10180_))
                           (_len10189_ (fx1+ (foldl max '0 _ixs10186_)))
                           (_vec10192_ (make-vector _len10189_ '#f)))
                      (begin
                        (for-each
                         (lambda (_entry10197_ _x10199_)
                           (vector-set!
                            _vec10192_
                            _x10199_
                            (cdr _entry10197_)))
                         _indexes10180_
                         _ixs10186_)
                        _vec10192_))))
                 (_simple-char-range?8629_
                  (lambda (_tab10156_)
                    (let ((_end10159_ (vector-length _tab10156_)))
                      (let _lp10162_ ((_i10165_ '0))
                        (let ((_ix10168_ (vector-ref _tab10156_ _i10165_)))
                          (if _ix10168_
                              (let _lp210171_ ((_i10174_ (fx1+ _i10165_)))
                                (if (fx< _i10174_ _end10159_)
                                    (let ((_ix*10177_
                                           (vector-ref _tab10156_ _i10174_)))
                                      (if (eq? _ix10168_ _ix*10177_)
                                          (_lp210171_ (fx1+ _i10174_))
                                          '#f))
                                    '#t))
                              (_lp10162_ (fx1+ _i10165_))))))))
                 (_char-range-start8630_
                  (lambda (_tab10147_)
                    (let _lp10150_ ((_i10153_ '0))
                      (if (vector-ref _tab10147_ _i10153_)
                          _i10153_
                          (_lp10150_ (fx1+ _i10153_))))))
                 (_generate-char-dispatch8631_
                  (lambda (_e9770_ _datums9772_ _dispatch9773_ _default9774_)
                    (if (< (_max-char8627_ _datums9772_) '128)
                        (let* ((_indexes9776_
                                (_datum-dispatch-index8623_ _datums9772_))
                               (_tab9779_
                                (_generate-char-dispatch-table8628_
                                 _indexes9776_)))
                          (if (_simple-char-range?8629_ _tab9779_)
                              (let ((_start9784_
                                     (_char-range-start8630_ _tab9779_))
                                    (_end9786_ (vector-length _tab9779_)))
                                (let* ((_g97889822_
                                        (lambda (_g97899818_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g97899818_)))
                                       (_g97879939_
                                        (lambda (_g97899826_)
                                          (if (gx#stx-pair? _g97899826_)
                                              (let ((_e97969829_
                                                     (gx#syntax-e
                                                      _g97899826_)))
                                                (let ((_hd97979833_
                                                       (##car _e97969829_))
                                                      (_tl97989836_
                                                       (##cdr _e97969829_)))
                                                  (if (gx#stx-pair?
                                                       _tl97989836_)
                                                      (let ((_e97999839_
                                                             (gx#syntax-e
                                                              _tl97989836_)))
                                                        (let ((_hd98009843_
                                                               (##car _e97999839_))
                                                              (_tl98019846_
                                                               (##cdr _e97999839_)))
                                                          (if (gx#stx-pair?
                                                               _tl98019846_)
                                                              (let ((_e98029849_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl98019846_)))
                        (let ((_hd98039853_ (##car _e98029849_))
                              (_tl98049856_ (##cdr _e98029849_)))
                          (if (gx#stx-pair? _hd98039853_)
                              (let ((_e98059859_ (gx#syntax-e _hd98039853_)))
                                (let ((_hd98069863_ (##car _e98059859_))
                                      (_tl98079866_ (##cdr _e98059859_)))
                                  (if (gx#stx-null? _tl98079866_)
                                      (if (gx#stx-pair? _tl98049856_)
                                          (let ((_e98089869_
                                                 (gx#syntax-e _tl98049856_)))
                                            (let ((_hd98099873_
                                                   (##car _e98089869_))
                                                  (_tl98109876_
                                                   (##cdr _e98089869_)))
                                              (if (gx#stx-pair? _tl98109876_)
                                                  (let ((_e98119879_
                                                         (gx#syntax-e
                                                          _tl98109876_)))
                                                    (let ((_hd98129883_
                                                           (##car _e98119879_))
                                                          (_tl98139886_
                                                           (##cdr _e98119879_)))
                                                      (if (gx#stx-pair?
                                                           _tl98139886_)
                                                          (let ((_e98149889_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl98139886_)))
                    (let ((_hd98159893_ (##car _e98149889_))
                          (_tl98169896_ (##cdr _e98149889_)))
                      (if (gx#stx-null? _tl98169896_)
                          ((lambda (_L9899_
                                    _L9901_
                                    _L9902_
                                    _L9903_
                                    _L9904_
                                    _L9905_)
                             (let ()
                               (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons _L9904_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _L9902_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'if)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'char?)
                           (cons _L9905_ '()))
                     (cons (cons (gx#datum->syntax '#f 'let)
                                 (cons (cons (gx#datum->syntax '#f 'ix)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '##char->integer)
                                                         (cons _L9905_ '()))
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
                                         (cons _L9901_ '())))
                             (cons (cons (gx#datum->syntax '#f '##fx<)
                                         (cons (gx#datum->syntax '#f 'ix)
                                               (cons _L9899_ '())))
                                   '())))
                 (cons _L9903_ (cons (cons _L9904_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))
                           (cons (cons _L9904_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                           _hd98159893_
                           _hd98129883_
                           _hd98099873_
                           _hd98069863_
                           _hd98009843_
                           _hd97979833_)
                          (_g97889822_ _g97899826_))))
                  (_g97889822_ _g97899826_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g97889822_ _g97899826_))))
                                          (_g97889822_ _g97899826_))
                                      (_g97889822_ _g97899826_))))
                              (_g97889822_ _g97899826_))))
                      (_g97889822_ _g97899826_))))
              (_g97889822_ _g97899826_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g97889822_ _g97899826_)))))
                                  (_g97879939_
                                   (list _e9770_
                                         (gx#genident 'default)
                                         _dispatch9773_
                                         _default9774_
                                         _start9784_
                                         _end9786_))))
                              (let* ((_g99439987_
                                      (lambda (_g99449983_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g99449983_)))
                                     (_g994210143_
                                      (lambda (_g99449991_)
                                        (if (gx#stx-pair? _g99449991_)
                                            (let ((_e99529994_
                                                   (gx#syntax-e _g99449991_)))
                                              (let ((_hd99539998_
                                                     (##car _e99529994_))
                                                    (_tl995410001_
                                                     (##cdr _e99529994_)))
                                                (if (gx#stx-pair?
                                                     _tl995410001_)
                                                    (let ((_e995510004_
                                                           (gx#syntax-e
                                                            _tl995410001_)))
                                                      (let ((_hd995610008_
                                                             (##car _e995510004_))
                                                            (_tl995710011_
                                                             (##cdr _e995510004_)))
                                                        (if (gx#stx-pair?
                                                             _tl995710011_)
                                                            (let ((_e995810014_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl995710011_)))
                      (let ((_hd995910018_ (##car _e995810014_))
                            (_tl996010021_ (##cdr _e995810014_)))
                        (if (gx#stx-pair? _tl996010021_)
                            (let ((_e996110024_ (gx#syntax-e _tl996010021_)))
                              (let ((_hd996210028_ (##car _e996110024_))
                                    (_tl996310031_ (##cdr _e996110024_)))
                                (if (gx#stx-pair/null? _hd996210028_)
                                    (if (fx>= (gx#stx-length _hd996210028_) '0)
                                        (let ((_g34918_
                                               (gx#syntax-split-splice
                                                _hd996210028_
                                                '0)))
                                          (begin
                                            (let ((_g34919_
                                                   (values-count _g34918_)))
                                              (if (not (fx= _g34919_ 2))
                                                  (error "Context expects 2 values"
                                                         _g34919_)))
                                            (let ((_target996410034_
                                                   (values-ref _g34918_ 0))
                                                  (_tl996610037_
                                                   (values-ref _g34918_ 1)))
                                              (if (gx#stx-null? _tl996610037_)
                                                  (letrec ((_loop996710040_
                                                            (lambda (_hd996510044_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _dispatch997110047_)
                      (if (gx#stx-pair? _hd996510044_)
                          (let ((_e996810050_ (gx#syntax-e _hd996510044_)))
                            (let ((_lp-hd996910054_ (##car _e996810050_))
                                  (_lp-tl997010057_ (##cdr _e996810050_)))
                              (_loop996710040_
                               _lp-tl997010057_
                               (cons _lp-hd996910054_ _dispatch997110047_))))
                          (let ((_dispatch997210060_
                                 (reverse _dispatch997110047_)))
                            (if (gx#stx-pair? _tl996310031_)
                                (let ((_e997310064_
                                       (gx#syntax-e _tl996310031_)))
                                  (let ((_hd997410068_ (##car _e997310064_))
                                        (_tl997510071_ (##cdr _e997310064_)))
                                    (if (gx#stx-pair? _tl997510071_)
                                        (let ((_e997610074_
                                               (gx#syntax-e _tl997510071_)))
                                          (let ((_hd997710078_
                                                 (##car _e997610074_))
                                                (_tl997810081_
                                                 (##cdr _e997610074_)))
                                            (if (gx#stx-pair? _tl997810081_)
                                                (let ((_e997910084_
                                                       (gx#syntax-e
                                                        _tl997810081_)))
                                                  (let ((_hd998010088_
                                                         (##car _e997910084_))
                                                        (_tl998110091_
                                                         (##cdr _e997910084_)))
                                                    (if (gx#stx-null?
                                                         _tl998110091_)
                                                        ((lambda (_L10094_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L10096_
                          _L10097_
                          _L10098_
                          _L10099_
                          _L10100_
                          _L10101_)
                   (let ()
                     (cons (gx#datum->syntax '#f 'let)
                           (cons (cons (cons _L10100_
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'lambda)
                                                         (cons '()
                                                               (cons _L10097_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                       (cons (cons _L10099_
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'quote)
                                                               (cons _L10096_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'if)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'char?)
                                                         (cons _L10101_ '()))
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
                                               (cons _L10101_ '()))
                                         '()))
                             (cons (cons (gx#datum->syntax '#f 'if)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fx<)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'ix)
                                                           (cons _L10094_
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
                                           (cons _L10099_
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
                                                               (foldr (lambda (_g1013410137_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1013510140_)
                                (cons _g1013410137_ _g1013510140_))
                              '()
                              _L10098_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L10100_ '())
                                                       '()))))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons _L10100_ '())
                                                           '()))))
                                   '())))
                 (cons (cons _L10100_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))))
                 _hd998010088_
                 _hd997710078_
                 _hd997410068_
                 _dispatch997210060_
                 _hd995910018_
                 _hd995610008_
                 _hd99539998_)
                (_g99439987_ _g99449991_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g99439987_ _g99449991_))))
                                        (_g99439987_ _g99449991_))))
                                (_g99439987_ _g99449991_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop996710040_
                                                     _target996410034_
                                                     '()))
                                                  (_g99439987_ _g99449991_)))))
                                        (_g99439987_ _g99449991_))
                                    (_g99439987_ _g99449991_))))
                            (_g99439987_ _g99449991_))))
                    (_g99439987_ _g99449991_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g99439987_
                                                     _g99449991_))))
                                            (_g99439987_ _g99449991_)))))
                                (_g994210143_
                                 (list _e9770_
                                       (gx#genident 'default)
                                       (gx#genident 'table)
                                       _dispatch9773_
                                       _default9774_
                                       _tab9779_
                                       (vector-length _tab9779_))))))
                        (_generate-char-dispatch/hash8632_
                         _e9770_
                         _datums9772_
                         _dispatch9773_
                         _default9774_))))
                 (_generate-char-dispatch/hash8632_
                  (lambda (_e9548_ _datums9550_ _dispatch9551_ _default9552_)
                    (let* ((_indexes9554_
                            (_datum-dispatch-index8623_ _datums9550_))
                           (_tab9557_
                            (_generate-hash-dispatch-table8625_
                             _indexes9554_
                             char->integer)))
                      (let* ((_g95629606_
                              (lambda (_g95639602_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g95639602_)))
                             (_g95619766_
                              (lambda (_g95639610_)
                                (if (gx#stx-pair? _g95639610_)
                                    (let ((_e95719613_
                                           (gx#syntax-e _g95639610_)))
                                      (let ((_hd95729617_ (##car _e95719613_))
                                            (_tl95739620_ (##cdr _e95719613_)))
                                        (if (gx#stx-pair? _tl95739620_)
                                            (let ((_e95749623_
                                                   (gx#syntax-e _tl95739620_)))
                                              (let ((_hd95759627_
                                                     (##car _e95749623_))
                                                    (_tl95769630_
                                                     (##cdr _e95749623_)))
                                                (if (gx#stx-pair? _tl95769630_)
                                                    (let ((_e95779633_
                                                           (gx#syntax-e
                                                            _tl95769630_)))
                                                      (let ((_hd95789637_
                                                             (##car _e95779633_))
                                                            (_tl95799640_
                                                             (##cdr _e95779633_)))
                                                        (if (gx#stx-pair?
                                                             _tl95799640_)
                                                            (let ((_e95809643_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl95799640_)))
                      (let ((_hd95819647_ (##car _e95809643_))
                            (_tl95829650_ (##cdr _e95809643_)))
                        (if (gx#stx-pair/null? _hd95819647_)
                            (if (fx>= (gx#stx-length _hd95819647_) '0)
                                (let ((_g34920_
                                       (gx#syntax-split-splice
                                        _hd95819647_
                                        '0)))
                                  (begin
                                    (let ((_g34921_ (values-count _g34920_)))
                                      (if (not (fx= _g34921_ 2))
                                          (error "Context expects 2 values"
                                                 _g34921_)))
                                    (let ((_target95839653_
                                           (values-ref _g34920_ 0))
                                          (_tl95859656_
                                           (values-ref _g34920_ 1)))
                                      (if (gx#stx-null? _tl95859656_)
                                          (letrec ((_loop95869659_
                                                    (lambda (_hd95849663_
                                                             _dispatch95909666_)
                                                      (if (gx#stx-pair?
                                                           _hd95849663_)
                                                          (let ((_e95879669_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _hd95849663_)))
                    (let ((_lp-hd95889673_ (##car _e95879669_))
                          (_lp-tl95899676_ (##cdr _e95879669_)))
                      (_loop95869659_
                       _lp-tl95899676_
                       (cons _lp-hd95889673_ _dispatch95909666_))))
                  (let ((_dispatch95919679_ (reverse _dispatch95909666_)))
                    (if (gx#stx-pair? _tl95829650_)
                        (let ((_e95929683_ (gx#syntax-e _tl95829650_)))
                          (let ((_hd95939687_ (##car _e95929683_))
                                (_tl95949690_ (##cdr _e95929683_)))
                            (if (gx#stx-pair? _tl95949690_)
                                (let ((_e95959693_ (gx#syntax-e _tl95949690_)))
                                  (let ((_hd95969697_ (##car _e95959693_))
                                        (_tl95979700_ (##cdr _e95959693_)))
                                    (if (gx#stx-pair? _tl95979700_)
                                        (let ((_e95989703_
                                               (gx#syntax-e _tl95979700_)))
                                          (let ((_hd95999707_
                                                 (##car _e95989703_))
                                                (_tl96009710_
                                                 (##cdr _e95989703_)))
                                            (if (gx#stx-null? _tl96009710_)
                                                ((lambda (_L9713_
                                                          _L9715_
                                                          _L9716_
                                                          _L9717_
                                                          _L9718_
                                                          _L9719_
                                                          _L9720_)
                                                   (let ()
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'let)
                                                           (cons (cons (cons _L9719_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (cons (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '() (cons _L9716_ '())))
                                           '()))
                               (cons (cons _L9718_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'quote)
                                                       (cons _L9715_ '()))
                                                 '()))
                                     '()))
                         (cons (cons (gx#datum->syntax '#f 'if)
                                     (cons (cons (gx#datum->syntax '#f 'char?)
                                                 (cons _L9720_ '()))
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
                                             (cons _L9720_ '()))
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'ix)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##fxmodulo)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'h)
                                                         (cons _L9713_ '())))
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'q)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '##vector-ref)
                                                         (cons _L9718_
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
                             (cons _L9720_ '())))
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
                                                       (foldr (lambda (_g97579760_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g97589763_)
                        (cons _g97579760_ _g97589763_))
                      '()
                      _L9717_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       (cons (cons _L9719_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons _L9719_ '()) '()))))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L9719_ '())
                                                       '()))))
                               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd95999707_
                                                 _hd95969697_
                                                 _hd95939687_
                                                 _dispatch95919679_
                                                 _hd95789637_
                                                 _hd95759627_
                                                 _hd95729617_)
                                                (_g95629606_ _g95639610_))))
                                        (_g95629606_ _g95639610_))))
                                (_g95629606_ _g95639610_))))
                        (_g95629606_ _g95639610_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop95869659_
                                             _target95839653_
                                             '()))
                                          (_g95629606_ _g95639610_)))))
                                (_g95629606_ _g95639610_))
                            (_g95629606_ _g95639610_))))
                    (_g95629606_ _g95639610_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g95629606_
                                                     _g95639610_))))
                                            (_g95629606_ _g95639610_))))
                                    (_g95629606_ _g95639610_)))))
                        (_g95619766_
                         (list _e9548_
                               (gx#genident 'default)
                               (gx#genident 'table)
                               _dispatch9551_
                               _default9552_
                               _tab9557_
                               (vector-length _tab9557_)))))))
                 (_min-fixnum8633_
                  (lambda (_datums9541_)
                    (foldl (lambda (_lst9544_ _r9546_)
                             (foldl min _r9546_ _lst9544_))
                           ##max-fixnum
                           _datums9541_)))
                 (_max-fixnum8634_
                  (lambda (_datums9534_)
                    (foldl (lambda (_lst9537_ _r9539_)
                             (foldl max _r9539_ _lst9537_))
                           ##min-fixnum
                           _datums9534_)))
                 (_generate-fixnum-dispatch-table8635_
                  (lambda (_indexes9516_)
                    (let* ((_ixs9519_ (map car _indexes9516_))
                           (_len9522_ (fx1+ (foldl max '0 _ixs9519_)))
                           (_vec9525_ (make-vector _len9522_ '#f)))
                      (begin
                        (for-each
                         (lambda (_entry9530_ _x9532_)
                           (vector-set! _vec9525_ _x9532_ (cdr _entry9530_)))
                         _indexes9516_
                         _ixs9519_)
                        _vec9525_))))
                 (_generate-fixnum-dispatch8636_
                  (lambda (_e9250_ _datums9252_ _dispatch9253_ _default9254_)
                    (if (if (>= (_min-fixnum8633_ _datums9252_) '0)
                            (< (_max-fixnum8634_ _datums9252_) '1024)
                            '#f)
                        (let* ((_indexes9256_
                                (_datum-dispatch-index8623_ _datums9252_))
                               (_tab9259_
                                (_generate-fixnum-dispatch-table8635_
                                 _indexes9256_))
                               (_dense?9262_
                                (andmap values (vector->list _tab9259_))))
                          (let* ((_g92679311_
                                  (lambda (_g92689307_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g92689307_)))
                                 (_g92669512_
                                  (lambda (_g92689315_)
                                    (if (gx#stx-pair? _g92689315_)
                                        (let ((_e92769318_
                                               (gx#syntax-e _g92689315_)))
                                          (let ((_hd92779322_
                                                 (##car _e92769318_))
                                                (_tl92789325_
                                                 (##cdr _e92769318_)))
                                            (if (gx#stx-pair? _tl92789325_)
                                                (let ((_e92799328_
                                                       (gx#syntax-e
                                                        _tl92789325_)))
                                                  (let ((_hd92809332_
                                                         (##car _e92799328_))
                                                        (_tl92819335_
                                                         (##cdr _e92799328_)))
                                                    (if (gx#stx-pair?
                                                         _tl92819335_)
                                                        (let ((_e92829338_
                                                               (gx#syntax-e
                                                                _tl92819335_)))
                                                          (let ((_hd92839342_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e92829338_))
                        (_tl92849345_ (##cdr _e92829338_)))
                    (if (gx#stx-pair? _tl92849345_)
                        (let ((_e92859348_ (gx#syntax-e _tl92849345_)))
                          (let ((_hd92869352_ (##car _e92859348_))
                                (_tl92879355_ (##cdr _e92859348_)))
                            (if (gx#stx-pair/null? _hd92869352_)
                                (if (fx>= (gx#stx-length _hd92869352_) '0)
                                    (let ((_g34922_
                                           (gx#syntax-split-splice
                                            _hd92869352_
                                            '0)))
                                      (begin
                                        (let ((_g34923_
                                               (values-count _g34922_)))
                                          (if (not (fx= _g34923_ 2))
                                              (error "Context expects 2 values"
                                                     _g34923_)))
                                        (let ((_target92889358_
                                               (values-ref _g34922_ 0))
                                              (_tl92909361_
                                               (values-ref _g34922_ 1)))
                                          (if (gx#stx-null? _tl92909361_)
                                              (letrec ((_loop92919364_
                                                        (lambda (_hd92899368_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _dispatch92959371_)
                  (if (gx#stx-pair? _hd92899368_)
                      (let ((_e92929374_ (gx#syntax-e _hd92899368_)))
                        (let ((_lp-hd92939378_ (##car _e92929374_))
                              (_lp-tl92949381_ (##cdr _e92929374_)))
                          (_loop92919364_
                           _lp-tl92949381_
                           (cons _lp-hd92939378_ _dispatch92959371_))))
                      (let ((_dispatch92969384_ (reverse _dispatch92959371_)))
                        (if (gx#stx-pair? _tl92879355_)
                            (let ((_e92979388_ (gx#syntax-e _tl92879355_)))
                              (let ((_hd92989392_ (##car _e92979388_))
                                    (_tl92999395_ (##cdr _e92979388_)))
                                (if (gx#stx-pair? _tl92999395_)
                                    (let ((_e93009398_
                                           (gx#syntax-e _tl92999395_)))
                                      (let ((_hd93019402_ (##car _e93009398_))
                                            (_tl93029405_ (##cdr _e93009398_)))
                                        (if (gx#stx-pair? _tl93029405_)
                                            (let ((_e93039408_
                                                   (gx#syntax-e _tl93029405_)))
                                              (let ((_hd93049412_
                                                     (##car _e93039408_))
                                                    (_tl93059415_
                                                     (##cdr _e93039408_)))
                                                (if (gx#stx-null? _tl93059415_)
                                                    ((lambda (_L9418_
                                                              _L9420_
                                                              _L9421_
                                                              _L9422_
                                                              _L9423_
                                                              _L9424_
                                                              _L9425_)
                                                       (let ()
                                                         (let* ((_g94649472_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g94659468_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g94659468_)))
                        (_g94639492_
                         (lambda (_g94659476_)
                           ((lambda (_L9479_)
                              (let ()
                                (cons (gx#datum->syntax '#f 'let)
                                      (cons (cons (cons _L9424_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'lambda)
                            (cons '() (cons _L9421_ '())))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons _L9423_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _L9420_ '()))
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
                            (cons _L9425_ '()))
                      (cons (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons (gx#datum->syntax '#f 'and)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '##fx>=)
                                                          (cons _L9425_
                                                                (cons '0 '())))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '##fx<)
                        (cons _L9425_ (cons _L9418_ '())))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons (cons (gx#datum->syntax '#f 'let)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'x)
                        (cons (cons (gx#datum->syntax '#f '##vector-ref)
                                    (cons _L9423_ (cons _L9425_ '())))
                              '()))
                  (cons _L9479_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons _L9424_ '()) '()))))
                            (cons (cons _L9424_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                            _g94659476_))))
                   (_g94639492_
                    (if _dense?9262_
                        (cons (gx#datum->syntax '#f '~case-dispatch)
                              (cons (gx#datum->syntax '#f 'x)
                                    (begin
                                      '#!void
                                      (foldr (lambda (_g94959498_ _g94969501_)
                                               (cons _g94959498_ _g94969501_))
                                             '()
                                             _L9422_))))
                        (cons (gx#datum->syntax '#f 'if)
                              (cons (gx#datum->syntax '#f 'x)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 '~case-dispatch)
                                                (cons (gx#datum->syntax '#f 'x)
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g95039506_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g95049509_)
                         (cons _g95039506_ _g95049509_))
                       '()
                       _L9422_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons _L9424_ '()) '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd93049412_
                                                     _hd93019402_
                                                     _hd92989392_
                                                     _dispatch92969384_
                                                     _hd92839342_
                                                     _hd92809332_
                                                     _hd92779322_)
                                                    (_g92679311_
                                                     _g92689315_))))
                                            (_g92679311_ _g92689315_))))
                                    (_g92679311_ _g92689315_))))
                            (_g92679311_ _g92689315_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop92919364_
                                                 _target92889358_
                                                 '()))
                                              (_g92679311_ _g92689315_)))))
                                    (_g92679311_ _g92689315_))
                                (_g92679311_ _g92689315_))))
                        (_g92679311_ _g92689315_))))
                (_g92679311_ _g92689315_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g92679311_ _g92689315_))))
                                        (_g92679311_ _g92689315_)))))
                            (_g92669512_
                             (list _e9250_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _dispatch9253_
                                   _default9254_
                                   _tab9259_
                                   (vector-length _tab9259_)))))
                        (_generate-fixnum-dispatch/hash8637_
                         _e9250_
                         _datums9252_
                         _dispatch9253_
                         _default9254_))))
                 (_generate-fixnum-dispatch/hash8637_
                  (lambda (_e9028_ _datums9030_ _dispatch9031_ _default9032_)
                    (let* ((_indexes9034_
                            (_datum-dispatch-index8623_ _datums9030_))
                           (_tab9037_
                            (_generate-hash-dispatch-table8625_
                             _indexes9034_
                             values)))
                      (let* ((_g90429086_
                              (lambda (_g90439082_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g90439082_)))
                             (_g90419246_
                              (lambda (_g90439090_)
                                (if (gx#stx-pair? _g90439090_)
                                    (let ((_e90519093_
                                           (gx#syntax-e _g90439090_)))
                                      (let ((_hd90529097_ (##car _e90519093_))
                                            (_tl90539100_ (##cdr _e90519093_)))
                                        (if (gx#stx-pair? _tl90539100_)
                                            (let ((_e90549103_
                                                   (gx#syntax-e _tl90539100_)))
                                              (let ((_hd90559107_
                                                     (##car _e90549103_))
                                                    (_tl90569110_
                                                     (##cdr _e90549103_)))
                                                (if (gx#stx-pair? _tl90569110_)
                                                    (let ((_e90579113_
                                                           (gx#syntax-e
                                                            _tl90569110_)))
                                                      (let ((_hd90589117_
                                                             (##car _e90579113_))
                                                            (_tl90599120_
                                                             (##cdr _e90579113_)))
                                                        (if (gx#stx-pair?
                                                             _tl90599120_)
                                                            (let ((_e90609123_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl90599120_)))
                      (let ((_hd90619127_ (##car _e90609123_))
                            (_tl90629130_ (##cdr _e90609123_)))
                        (if (gx#stx-pair/null? _hd90619127_)
                            (if (fx>= (gx#stx-length _hd90619127_) '0)
                                (let ((_g34924_
                                       (gx#syntax-split-splice
                                        _hd90619127_
                                        '0)))
                                  (begin
                                    (let ((_g34925_ (values-count _g34924_)))
                                      (if (not (fx= _g34925_ 2))
                                          (error "Context expects 2 values"
                                                 _g34925_)))
                                    (let ((_target90639133_
                                           (values-ref _g34924_ 0))
                                          (_tl90659136_
                                           (values-ref _g34924_ 1)))
                                      (if (gx#stx-null? _tl90659136_)
                                          (letrec ((_loop90669139_
                                                    (lambda (_hd90649143_
                                                             _dispatch90709146_)
                                                      (if (gx#stx-pair?
                                                           _hd90649143_)
                                                          (let ((_e90679149_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _hd90649143_)))
                    (let ((_lp-hd90689153_ (##car _e90679149_))
                          (_lp-tl90699156_ (##cdr _e90679149_)))
                      (_loop90669139_
                       _lp-tl90699156_
                       (cons _lp-hd90689153_ _dispatch90709146_))))
                  (let ((_dispatch90719159_ (reverse _dispatch90709146_)))
                    (if (gx#stx-pair? _tl90629130_)
                        (let ((_e90729163_ (gx#syntax-e _tl90629130_)))
                          (let ((_hd90739167_ (##car _e90729163_))
                                (_tl90749170_ (##cdr _e90729163_)))
                            (if (gx#stx-pair? _tl90749170_)
                                (let ((_e90759173_ (gx#syntax-e _tl90749170_)))
                                  (let ((_hd90769177_ (##car _e90759173_))
                                        (_tl90779180_ (##cdr _e90759173_)))
                                    (if (gx#stx-pair? _tl90779180_)
                                        (let ((_e90789183_
                                               (gx#syntax-e _tl90779180_)))
                                          (let ((_hd90799187_
                                                 (##car _e90789183_))
                                                (_tl90809190_
                                                 (##cdr _e90789183_)))
                                            (if (gx#stx-null? _tl90809190_)
                                                ((lambda (_L9193_
                                                          _L9195_
                                                          _L9196_
                                                          _L9197_
                                                          _L9198_
                                                          _L9199_
                                                          _L9200_)
                                                   (let ()
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'let)
                                                           (cons (cons (cons _L9199_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (cons (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '() (cons _L9196_ '())))
                                           '()))
                               (cons (cons _L9198_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'quote)
                                                       (cons _L9195_ '()))
                                                 '()))
                                     '()))
                         (cons (cons (gx#datum->syntax '#f 'if)
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'fixnum?)
                                                 (cons _L9200_ '()))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let*)
                                                       (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'ix)
                                 (cons (cons (gx#datum->syntax '#f '##fxmodulo)
                                             (cons _L9200_ (cons _L9193_ '())))
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'q)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##vector-ref)
                                                   (cons _L9198_
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
                             (cons _L9200_ '())))
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
                                                       (foldr (lambda (_g92379240_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g92389243_)
                        (cons _g92379240_ _g92389243_))
                      '()
                      _L9197_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       (cons (cons _L9199_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons _L9199_ '()) '()))))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L9199_ '())
                                                       '()))))
                               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd90799187_
                                                 _hd90769177_
                                                 _hd90739167_
                                                 _dispatch90719159_
                                                 _hd90589117_
                                                 _hd90559107_
                                                 _hd90529097_)
                                                (_g90429086_ _g90439090_))))
                                        (_g90429086_ _g90439090_))))
                                (_g90429086_ _g90439090_))))
                        (_g90429086_ _g90439090_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop90669139_
                                             _target90639133_
                                             '()))
                                          (_g90429086_ _g90439090_)))))
                                (_g90429086_ _g90439090_))
                            (_g90429086_ _g90439090_))))
                    (_g90429086_ _g90439090_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g90429086_
                                                     _g90439090_))))
                                            (_g90429086_ _g90439090_))))
                                    (_g90429086_ _g90439090_)))))
                        (_g90419246_
                         (list _e9028_
                               (gx#genident 'default)
                               (gx#genident 'table)
                               _dispatch9031_
                               _default9032_
                               _tab9037_
                               (vector-length _tab9037_)))))))
                 (_generate-generic-dispatch8638_
                  (lambda (_e8764_ _datums8766_ _dispatch8767_ _default8768_)
                    (let ((_g34926_
                           (if (_eq-datums?8621_ _datums8766_)
                               (values eq?-hash 'eq?-hash 'eq?)
                               (values equal?-hash 'equal?-hash 'equal?))))
                      (begin
                        (let ((_g34927_ (values-count _g34926_)))
                          (if (not (fx= _g34927_ 3))
                              (error "Context expects 3 values" _g34927_)))
                        (let ((_hash-e8770_ (values-ref _g34926_ 0))
                              (_hashf8772_ (values-ref _g34926_ 1))
                              (_eqf8773_ (values-ref _g34926_ 2)))
                          (let* ((_indexes8775_
                                  (_datum-dispatch-index8623_ _datums8766_))
                                 (_tab8778_
                                  (_generate-hash-dispatch-table8625_
                                   _indexes8775_
                                   _hash-e8770_)))
                            (let* ((_g87838835_
                                    (lambda (_g87848831_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       _g87848831_)))
                                   (_g87829024_
                                    (lambda (_g87848839_)
                                      (if (gx#stx-pair? _g87848839_)
                                          (let ((_e87948842_
                                                 (gx#syntax-e _g87848839_)))
                                            (let ((_hd87958846_
                                                   (##car _e87948842_))
                                                  (_tl87968849_
                                                   (##cdr _e87948842_)))
                                              (if (gx#stx-pair? _tl87968849_)
                                                  (let ((_e87978852_
                                                         (gx#syntax-e
                                                          _tl87968849_)))
                                                    (let ((_hd87988856_
                                                           (##car _e87978852_))
                                                          (_tl87998859_
                                                           (##cdr _e87978852_)))
                                                      (if (gx#stx-pair?
                                                           _tl87998859_)
                                                          (let ((_e88008862_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl87998859_)))
                    (let ((_hd88018866_ (##car _e88008862_))
                          (_tl88028869_ (##cdr _e88008862_)))
                      (if (gx#stx-pair? _tl88028869_)
                          (let ((_e88038872_ (gx#syntax-e _tl88028869_)))
                            (let ((_hd88048876_ (##car _e88038872_))
                                  (_tl88058879_ (##cdr _e88038872_)))
                              (if (gx#stx-pair/null? _hd88048876_)
                                  (if (fx>= (gx#stx-length _hd88048876_) '0)
                                      (let ((_g34928_
                                             (gx#syntax-split-splice
                                              _hd88048876_
                                              '0)))
                                        (begin
                                          (let ((_g34929_
                                                 (values-count _g34928_)))
                                            (if (not (fx= _g34929_ 2))
                                                (error "Context expects 2 values"
                                                       _g34929_)))
                                          (let ((_target88068882_
                                                 (values-ref _g34928_ 0))
                                                (_tl88088885_
                                                 (values-ref _g34928_ 1)))
                                            (if (gx#stx-null? _tl88088885_)
                                                (letrec ((_loop88098888_
                                                          (lambda (_hd88078892_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _dispatch88138895_)
                    (if (gx#stx-pair? _hd88078892_)
                        (let ((_e88108898_ (gx#syntax-e _hd88078892_)))
                          (let ((_lp-hd88118902_ (##car _e88108898_))
                                (_lp-tl88128905_ (##cdr _e88108898_)))
                            (_loop88098888_
                             _lp-tl88128905_
                             (cons _lp-hd88118902_ _dispatch88138895_))))
                        (let ((_dispatch88148908_
                               (reverse _dispatch88138895_)))
                          (if (gx#stx-pair? _tl88058879_)
                              (let ((_e88158912_ (gx#syntax-e _tl88058879_)))
                                (let ((_hd88168916_ (##car _e88158912_))
                                      (_tl88178919_ (##cdr _e88158912_)))
                                  (if (gx#stx-pair? _tl88178919_)
                                      (let ((_e88188922_
                                             (gx#syntax-e _tl88178919_)))
                                        (let ((_hd88198926_
                                               (##car _e88188922_))
                                              (_tl88208929_
                                               (##cdr _e88188922_)))
                                          (if (gx#stx-pair? _tl88208929_)
                                              (let ((_e88218932_
                                                     (gx#syntax-e
                                                      _tl88208929_)))
                                                (let ((_hd88228936_
                                                       (##car _e88218932_))
                                                      (_tl88238939_
                                                       (##cdr _e88218932_)))
                                                  (if (gx#stx-pair?
                                                       _tl88238939_)
                                                      (let ((_e88248942_
                                                             (gx#syntax-e
                                                              _tl88238939_)))
                                                        (let ((_hd88258946_
                                                               (##car _e88248942_))
                                                              (_tl88268949_
                                                               (##cdr _e88248942_)))
                                                          (if (gx#stx-pair?
                                                               _tl88268949_)
                                                              (let ((_e88278952_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl88268949_)))
                        (let ((_hd88288956_ (##car _e88278952_))
                              (_tl88298959_ (##cdr _e88278952_)))
                          (if (gx#stx-null? _tl88298959_)
                              ((lambda (_L8962_
                                        _L8964_
                                        _L8965_
                                        _L8966_
                                        _L8967_
                                        _L8968_
                                        _L8969_
                                        _L8970_
                                        _L8971_)
                                 (let ()
                                   (cons (gx#datum->syntax '#f 'let)
                                         (cons (cons (cons _L8970_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'lambda)
                               (cons '() (cons _L8967_ '())))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons _L8969_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _L8966_ '()))
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
                                     (cons (cons _L8964_ (cons _L8971_ '()))
                                           '()))
                               (cons (cons (gx#datum->syntax '#f 'ix)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '##fxmodulo)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'h)
                                                             (cons _L8965_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     (cons (cons (gx#datum->syntax '#f 'q)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '##vector-ref)
                                                             (cons _L8969_
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
                                                       (cons (cons _L8962_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f '##car)
                                       (cons (gx#datum->syntax '#f 'q) '()))
                                 (cons _L8971_ '())))
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
                                                           (foldr (lambda (_g90159018_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g90169021_)
                            (cons _g90159018_ _g90169021_))
                          '()
                          _L8968_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))
                           (cons (cons _L8970_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L8970_ '())
                                                       '()))))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                               _hd88288956_
                               _hd88258946_
                               _hd88228936_
                               _hd88198926_
                               _hd88168916_
                               _dispatch88148908_
                               _hd88018866_
                               _hd87988856_
                               _hd87958846_)
                              (_g87838835_ _g87848839_))))
                      (_g87838835_ _g87848839_))))
              (_g87838835_ _g87848839_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g87838835_ _g87848839_))))
                                      (_g87838835_ _g87848839_))))
                              (_g87838835_ _g87848839_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop88098888_
                                                   _target88068882_
                                                   '()))
                                                (_g87838835_ _g87848839_)))))
                                      (_g87838835_ _g87848839_))
                                  (_g87838835_ _g87848839_))))
                          (_g87838835_ _g87848839_))))
                  (_g87838835_ _g87848839_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g87838835_ _g87848839_))))
                                          (_g87838835_ _g87848839_)))))
                              (_g87829024_
                               (list _e8764_
                                     (gx#genident 'default)
                                     (gx#genident 'table)
                                     _dispatch8767_
                                     _default8768_
                                     _tab8778_
                                     (vector-length _tab8778_)
                                     _hashf8772_
                                     _eqf8773_))))))))))
          (let* ((_g86408664_
                  (lambda (_g86418660_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g86418660_)))
                 (_g86398760_
                  (lambda (_g86418668_)
                    (if (gx#stx-pair? _g86418668_)
                        (let ((_e86448671_ (gx#syntax-e _g86418668_)))
                          (let ((_hd86458675_ (##car _e86448671_))
                                (_tl86468678_ (##cdr _e86448671_)))
                            (if (gx#stx-pair? _tl86468678_)
                                (let ((_e86478681_ (gx#syntax-e _tl86468678_)))
                                  (let ((_hd86488685_ (##car _e86478681_))
                                        (_tl86498688_ (##cdr _e86478681_)))
                                    (if (gx#stx-pair/null? _tl86498688_)
                                        (if (fx>= (gx#stx-length _tl86498688_)
                                                  '0)
                                            (let ((_g34930_
                                                   (gx#syntax-split-splice
                                                    _tl86498688_
                                                    '0)))
                                              (begin
                                                (let ((_g34931_
                                                       (values-count
                                                        _g34930_)))
                                                  (if (not (fx= _g34931_ 2))
                                                      (error "Context expects 2 values"
                                                             _g34931_)))
                                                (let ((_target86508691_
                                                       (values-ref _g34930_ 0))
                                                      (_tl86528694_
                                                       (values-ref
                                                        _g34930_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl86528694_)
                                                      (letrec ((_loop86538697_
                                                                (lambda (_hd86518701_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _clause86578704_)
                          (if (gx#stx-pair? _hd86518701_)
                              (let ((_e86548707_ (gx#syntax-e _hd86518701_)))
                                (let ((_lp-hd86558711_ (##car _e86548707_))
                                      (_lp-tl86568714_ (##cdr _e86548707_)))
                                  (_loop86538697_
                                   _lp-tl86568714_
                                   (cons _lp-hd86558711_ _clause86578704_))))
                              (let ((_clause86588717_
                                     (reverse _clause86578704_)))
                                ((lambda (_L8721_ _L8723_)
                                   (let ((_g34932_
                                          (_parse-clauses8614_
                                           _L8723_
                                           (begin
                                             '#!void
                                             (foldr (lambda (_g87418744_
                                                             _g87428747_)
                                                      (cons _g87418744_
                                                            _g87428747_))
                                                    '()
                                                    _L8721_)))))
                                     (begin
                                       (let ((_g34933_
                                              (values-count _g34932_)))
                                         (if (not (fx= _g34933_ 3))
                                             (error "Context expects 3 values"
                                                    _g34933_)))
                                       (let ((_datums8750_
                                              (values-ref _g34932_ 0))
                                             (_dispatch8752_
                                              (values-ref _g34932_ 1))
                                             (_default8753_
                                              (values-ref _g34932_ 2)))
                                         (let ((_datum-count8755_
                                                (_count-datums8617_
                                                 _datums8750_)))
                                           (if (< _datum-count8755_ '6)
                                               (_generate-simple-case8622_
                                                _L8723_
                                                _datums8750_
                                                _dispatch8752_
                                                _default8753_)
                                               (if (_char-datums?8619_
                                                    _datums8750_)
                                                   (_generate-char-dispatch8631_
                                                    _L8723_
                                                    _datums8750_
                                                    _dispatch8752_
                                                    _default8753_)
                                                   (if (_fixnum-datums?8620_
                                                        _datums8750_)
                                                       (_generate-fixnum-dispatch8636_
                                                        _L8723_
                                                        _datums8750_
                                                        _dispatch8752_
                                                        _default8753_)
                                                       (if (< _datum-count8755_
                                                              '12)
                                                           (_generate-simple-case8622_
                                                            _L8723_
                                                            _datums8750_
                                                            _dispatch8752_
                                                            _default8753_)
                                                           (if (_symbolic-datums?8618_
                                                                _datums8750_)
                                                               (_generate-symbolic-dispatch8626_
                                                                _L8723_
                                                                _datums8750_
                                                                _dispatch8752_
                                                                _default8753_)
                                                               (_generate-generic-dispatch8638_
                                                                _L8723_
                                                                _datums8750_
                                                                _dispatch8752_
                                                                _default8753_)))))))))))
                                 _clause86588717_
                                 _hd86488685_))))))
                (_loop86538697_ _target86508691_ '()))
              (_g86408664_ _g86418668_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g86408664_ _g86418668_))
                                        (_g86408664_ _g86418668_))))
                                (_g86408664_ _g86418668_))))
                        (_g86408664_ _g86418668_)))))
            (_g86398760_ _stx8611_)))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#~case-test|
      (lambda (_stx11568_)
        (let* ((_g1157111589_
                (lambda (_g1157211585_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1157211585_)))
               (_g1157011655_
                (lambda (_g1157211593_)
                  (if (gx#stx-pair? _g1157211593_)
                      (let ((_e1157511596_ (gx#syntax-e _g1157211593_)))
                        (let ((_hd1157611600_ (##car _e1157511596_))
                              (_tl1157711603_ (##cdr _e1157511596_)))
                          (if (gx#stx-pair? _tl1157711603_)
                              (let ((_e1157811606_
                                     (gx#syntax-e _tl1157711603_)))
                                (let ((_hd1157911610_ (##car _e1157811606_))
                                      (_tl1158011613_ (##cdr _e1157811606_)))
                                  (if (gx#stx-pair? _tl1158011613_)
                                      (let ((_e1158111616_
                                             (gx#syntax-e _tl1158011613_)))
                                        (let ((_hd1158211620_
                                               (##car _e1158111616_))
                                              (_tl1158311623_
                                               (##cdr _e1158111616_)))
                                          (if (gx#stx-null? _tl1158311623_)
                                              ((lambda (_L11626_ _L11628_)
                                                 (let ((_datum-e11644_
                                                        (gx#stx-e _L11628_)))
                                                   (if (let ((_$e11647_
                                                              (symbol? _datum-e11644_)))
                                                         (if _$e11647_
                                                             _$e11647_
                                                             (let ((_$e11651_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (keyword? _datum-e11644_)))
                       (if _$e11651_ _$e11651_ (immediate? _datum-e11644_)))))
               (cons (gx#datum->syntax '#f 'eq?)
                     (cons (cons (gx#datum->syntax '#f 'quote)
                                 (cons _L11628_ '()))
                           (cons _L11626_ '())))
               (if (number? _datum-e11644_)
                   (cons (gx#datum->syntax '#f 'eqv?)
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _L11628_ '()))
                               (cons _L11626_ '())))
                   (cons (gx#datum->syntax '#f 'equal?)
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _L11628_ '()))
                               (cons _L11626_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd1158211620_
                                               _hd1157911610_)
                                              (_g1157111589_ _g1157211593_))))
                                      (_g1157111589_ _g1157211593_))))
                              (_g1157111589_ _g1157211593_))))
                      (_g1157111589_ _g1157211593_)))))
          (_g1157011655_ _stx11568_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#~case-dispatch|
      (lambda (_$stx11659_)
        (let* ((_g1166311687_
                (lambda (_g1166411683_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1166411683_)))
               (_g1166211772_
                (lambda (_g1166411691_)
                  (if (gx#stx-pair? _g1166411691_)
                      (let ((_e1166711694_ (gx#syntax-e _g1166411691_)))
                        (let ((_hd1166811698_ (##car _e1166711694_))
                              (_tl1166911701_ (##cdr _e1166711694_)))
                          (if (gx#stx-pair? _tl1166911701_)
                              (let ((_e1167011704_
                                     (gx#syntax-e _tl1166911701_)))
                                (let ((_hd1167111708_ (##car _e1167011704_))
                                      (_tl1167211711_ (##cdr _e1167011704_)))
                                  (if (gx#stx-pair/null? _tl1167211711_)
                                      (if (fx>= (gx#stx-length _tl1167211711_)
                                                '0)
                                          (let ((_g34934_
                                                 (gx#syntax-split-splice
                                                  _tl1167211711_
                                                  '0)))
                                            (begin
                                              (let ((_g34935_
                                                     (values-count _g34934_)))
                                                (if (not (fx= _g34935_ 2))
                                                    (error "Context expects 2 values"
                                                           _g34935_)))
                                              (let ((_target1167311714_
                                                     (values-ref _g34934_ 0))
                                                    (_tl1167511717_
                                                     (values-ref _g34934_ 1)))
                                                (if (gx#stx-null?
                                                     _tl1167511717_)
                                                    (letrec ((_loop1167611720_
                                                              (lambda (_hd1167411724_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _K1168011727_)
                        (if (gx#stx-pair? _hd1167411724_)
                            (let ((_e1167711730_ (gx#syntax-e _hd1167411724_)))
                              (let ((_lp-hd1167811734_ (##car _e1167711730_))
                                    (_lp-tl1167911737_ (##cdr _e1167711730_)))
                                (_loop1167611720_
                                 _lp-tl1167911737_
                                 (cons _lp-hd1167811734_ _K1168011727_))))
                            (let ((_K1168111740_ (reverse _K1168011727_)))
                              ((lambda (_L11744_ _L11746_)
                                 (cons (gx#datum->syntax '#f '~case-dispatch*)
                                       (cons '0
                                             (cons _L11746_
                                                   (begin
                                                     '#!void
                                                     (foldr (lambda (_g1176311766_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g1176411769_)
                      (cons _g1176311766_ _g1176411769_))
                    '()
                    _L11744_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _K1168111740_
                               _hd1167111708_))))))
              (_loop1167611720_ _target1167311714_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1166311687_
                                                     _g1166411691_)))))
                                          (_g1166311687_ _g1166411691_))
                                      (_g1166311687_ _g1166411691_))))
                              (_g1166311687_ _g1166411691_))))
                      (_g1166311687_ _g1166411691_)))))
          (_g1166211772_ _$stx11659_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#~case-dispatch*|
      (lambda (_stx11777_)
        (let* ((_g1178411880_
                (lambda (_g1178511876_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1178511876_)))
               (_g1178311979_
                (lambda (_g1178511884_)
                  (if (gx#stx-pair? _g1178511884_)
                      (let ((_e1185711887_ (gx#syntax-e _g1178511884_)))
                        (let ((_hd1185811891_ (##car _e1185711887_))
                              (_tl1185911894_ (##cdr _e1185711887_)))
                          (if (gx#stx-pair? _tl1185911894_)
                              (let ((_e1186011897_
                                     (gx#syntax-e _tl1185911894_)))
                                (let ((_hd1186111901_ (##car _e1186011897_))
                                      (_tl1186211904_ (##cdr _e1186011897_)))
                                  (if (gx#stx-pair? _tl1186211904_)
                                      (let ((_e1186311907_
                                             (gx#syntax-e _tl1186211904_)))
                                        (let ((_hd1186411911_
                                               (##car _e1186311907_))
                                              (_tl1186511914_
                                               (##cdr _e1186311907_)))
                                          (if (gx#stx-pair/null?
                                               _tl1186511914_)
                                              (if (fx>= (gx#stx-length
                                                         _tl1186511914_)
                                                        '0)
                                                  (let ((_g34936_
                                                         (gx#syntax-split-splice
                                                          _tl1186511914_
                                                          '0)))
                                                    (begin
                                                      (let ((_g34937_
                                                             (values-count
                                                              _g34936_)))
                                                        (if (not (fx= _g34937_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g34937_)))
              (let ((_target1186611917_ (values-ref _g34936_ 0))
                    (_tl1186811920_ (values-ref _g34936_ 1)))
                (if (gx#stx-null? _tl1186811920_)
                    (letrec ((_loop1186911923_
                              (lambda (_hd1186711927_ _K1187311930_)
                                (if (gx#stx-pair? _hd1186711927_)
                                    (let ((_e1187011933_
                                           (gx#syntax-e _hd1186711927_)))
                                      (let ((_lp-hd1187111937_
                                             (##car _e1187011933_))
                                            (_lp-tl1187211940_
                                             (##cdr _e1187011933_)))
                                        (_loop1186911923_
                                         _lp-tl1187211940_
                                         (cons _lp-hd1187111937_
                                               _K1187311930_))))
                                    (let ((_K1187411943_
                                           (reverse _K1187311930_)))
                                      ((lambda (_L11947_ _L11949_ _L11950_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                '~case-dispatch-bsearch)
                                               (cons _L11950_
                                                     (cons _L11949_
                                                           (begin
                                                             '#!void
                                                             (foldr (lambda (_g1197011973_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1197111976_)
                              (cons _g1197011973_ _g1197111976_))
                            '()
                            _L11947_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _K1187411943_
                                       _hd1186411911_
                                       _hd1186111901_))))))
                      (_loop1186911923_ _target1186611917_ '()))
                    (_g1178411880_ _g1178511884_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1178411880_
                                                   _g1178511884_))
                                              (_g1178411880_ _g1178511884_))))
                                      (_g1178411880_ _g1178511884_))))
                              (_g1178411880_ _g1178511884_))))
                      (_g1178411880_ _g1178511884_))))
               (_g1178212139_
                (lambda (_g1178511983_)
                  (if (gx#stx-pair? _g1178511983_)
                      (let ((_e1183611986_ (gx#syntax-e _g1178511983_)))
                        (let ((_hd1183711990_ (##car _e1183611986_))
                              (_tl1183811993_ (##cdr _e1183611986_)))
                          (if (gx#stx-pair? _tl1183811993_)
                              (let ((_e1183911996_
                                     (gx#syntax-e _tl1183811993_)))
                                (let ((_hd1184012000_ (##car _e1183911996_))
                                      (_tl1184112003_ (##cdr _e1183911996_)))
                                  (if (gx#stx-pair? _tl1184112003_)
                                      (let ((_e1184212006_
                                             (gx#syntax-e _tl1184112003_)))
                                        (let ((_hd1184312010_
                                               (##car _e1184212006_))
                                              (_tl1184412013_
                                               (##cdr _e1184212006_)))
                                          (if (gx#stx-pair? _tl1184412013_)
                                              (let ((_e1184512016_
                                                     (gx#syntax-e
                                                      _tl1184412013_)))
                                                (let ((_hd1184612020_
                                                       (##car _e1184512016_))
                                                      (_tl1184712023_
                                                       (##cdr _e1184512016_)))
                                                  (if (gx#stx-pair?
                                                       _tl1184712023_)
                                                      (let ((_e1184812026_
                                                             (gx#syntax-e
                                                              _tl1184712023_)))
                                                        (let ((_hd1184912030_
                                                               (##car _e1184812026_))
                                                              (_tl1185012033_
                                                               (##cdr _e1184812026_)))
                                                          (if (gx#stx-pair?
                                                               _tl1185012033_)
                                                              (let ((_e1185112036_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl1185012033_)))
                        (let ((_hd1185212040_ (##car _e1185112036_))
                              (_tl1185312043_ (##cdr _e1185112036_)))
                          (if (gx#stx-null? _tl1185312043_)
                              ((lambda (_L12046_
                                        _L12048_
                                        _L12049_
                                        _L12050_
                                        _L12051_)
                                 (let* ((_g1207512090_
                                         (lambda (_g1207612086_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g1207612086_)))
                                        (_g1207412135_
                                         (lambda (_g1207612094_)
                                           (if (gx#stx-pair? _g1207612094_)
                                               (let ((_e1207912097_
                                                      (gx#syntax-e
                                                       _g1207612094_)))
                                                 (let ((_hd1208012101_
                                                        (##car _e1207912097_))
                                                       (_tl1208112104_
                                                        (##cdr _e1207912097_)))
                                                   (if (gx#stx-pair?
                                                        _tl1208112104_)
                                                       (let ((_e1208212107_
                                                              (gx#syntax-e
                                                               _tl1208112104_)))
                                                         (let ((_hd1208312111_
                                                                (##car _e1208212107_))
                                                               (_tl1208412114_
                                                                (##cdr _e1208212107_)))
                                                           (if (gx#stx-null?
                                                                _tl1208412114_)
                                                               ((lambda (_L12117_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L12119_)
                          (let ()
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons (gx#datum->syntax '#f '##fx=)
                                              (cons _L12050_
                                                    (cons _L12119_ '())))
                                        (cons _L12049_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '##fx=)
                              (cons _L12050_ (cons _L12117_ '())))
                        (cons _L12048_ (cons _L12046_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))
                        _hd1208312111_
                        _hd1208012101_)
                       (_g1207512090_ _g1207612094_))))
               (_g1207512090_ _g1207612094_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1207512090_
                                                _g1207612094_)))))
                                   (_g1207412135_
                                    (list (gx#stx-e _L12051_)
                                          (fx1+ (gx#stx-e _L12051_))))))
                               _hd1185212040_
                               _hd1184912030_
                               _hd1184612020_
                               _hd1184312010_
                               _hd1184012000_)
                              (_g1178311979_ _g1178511983_))))
                      (_g1178311979_ _g1178511983_))))
              (_g1178311979_ _g1178511983_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1178311979_ _g1178511983_))))
                                      (_g1178311979_ _g1178511983_))))
                              (_g1178311979_ _g1178511983_))))
                      (_g1178311979_ _g1178511983_))))
               (_g1178112252_
                (lambda (_g1178512143_)
                  (if (gx#stx-pair? _g1178512143_)
                      (let ((_e1181612146_ (gx#syntax-e _g1178512143_)))
                        (let ((_hd1181712150_ (##car _e1181612146_))
                              (_tl1181812153_ (##cdr _e1181612146_)))
                          (if (gx#stx-pair? _tl1181812153_)
                              (let ((_e1181912156_
                                     (gx#syntax-e _tl1181812153_)))
                                (let ((_hd1182012160_ (##car _e1181912156_))
                                      (_tl1182112163_ (##cdr _e1181912156_)))
                                  (if (gx#stx-pair? _tl1182112163_)
                                      (let ((_e1182212166_
                                             (gx#syntax-e _tl1182112163_)))
                                        (let ((_hd1182312170_
                                               (##car _e1182212166_))
                                              (_tl1182412173_
                                               (##cdr _e1182212166_)))
                                          (if (gx#stx-pair? _tl1182412173_)
                                              (let ((_e1182512176_
                                                     (gx#syntax-e
                                                      _tl1182412173_)))
                                                (let ((_hd1182612180_
                                                       (##car _e1182512176_))
                                                      (_tl1182712183_
                                                       (##cdr _e1182512176_)))
                                                  (if (gx#stx-pair?
                                                       _tl1182712183_)
                                                      (let ((_e1182812186_
                                                             (gx#syntax-e
                                                              _tl1182712183_)))
                                                        (let ((_hd1182912190_
                                                               (##car _e1182812186_))
                                                              (_tl1183012193_
                                                               (##cdr _e1182812186_)))
                                                          (if (gx#stx-null?
                                                               _tl1183012193_)
                                                              ((lambda (_L12196_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _L12198_
                                _L12199_
                                _L12200_)
                         (let* ((_g1222112229_
                                 (lambda (_g1222212225_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1222212225_)))
                                (_g1222012248_
                                 (lambda (_g1222212233_)
                                   ((lambda (_L12236_)
                                      (let ()
                                        (cons (gx#datum->syntax '#f 'if)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '##fx=)
                                                          (cons _L12199_
                                                                (cons _L12236_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _L12198_
                                                          (cons _L12196_
                                                                '()))))))
                                    _g1222212233_))))
                           (_g1222012248_ (gx#stx-e _L12200_))))
                       _hd1182912190_
                       _hd1182612180_
                       _hd1182312170_
                       _hd1182012160_)
                      (_g1178212139_ _g1178512143_))))
              (_g1178212139_ _g1178512143_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1178212139_ _g1178512143_))))
                                      (_g1178212139_ _g1178512143_))))
                              (_g1178212139_ _g1178512143_))))
                      (_g1178212139_ _g1178512143_))))
               (_g1178012320_
                (lambda (_g1178512256_)
                  (if (gx#stx-pair? _g1178512256_)
                      (let ((_e1180012259_ (gx#syntax-e _g1178512256_)))
                        (let ((_hd1180112263_ (##car _e1180012259_))
                              (_tl1180212266_ (##cdr _e1180012259_)))
                          (if (gx#stx-pair? _tl1180212266_)
                              (let ((_e1180312269_
                                     (gx#syntax-e _tl1180212266_)))
                                (let ((_hd1180412273_ (##car _e1180312269_))
                                      (_tl1180512276_ (##cdr _e1180312269_)))
                                  (if (gx#stx-pair? _tl1180512276_)
                                      (let ((_e1180612279_
                                             (gx#syntax-e _tl1180512276_)))
                                        (let ((_hd1180712283_
                                               (##car _e1180612279_))
                                              (_tl1180812286_
                                               (##cdr _e1180612279_)))
                                          (if (gx#stx-pair? _tl1180812286_)
                                              (let ((_e1180912289_
                                                     (gx#syntax-e
                                                      _tl1180812286_)))
                                                (let ((_hd1181012293_
                                                       (##car _e1180912289_))
                                                      (_tl1181112296_
                                                       (##cdr _e1180912289_)))
                                                  (if (gx#stx-null?
                                                       _tl1181112296_)
                                                      ((lambda (_L12299_
                                                                _L12301_
                                                                _L12302_)
                                                         _L12299_)
                                                       _hd1181012293_
                                                       _hd1180712283_
                                                       _hd1180412273_)
                                                      (_g1178112252_
                                                       _g1178512256_))))
                                              (_g1178112252_ _g1178512256_))))
                                      (_g1178112252_ _g1178512256_))))
                              (_g1178112252_ _g1178512256_))))
                      (_g1178112252_ _g1178512256_))))
               (_g1177912374_
                (lambda (_g1178512324_)
                  (if (gx#stx-pair? _g1178512324_)
                      (let ((_e1178812327_ (gx#syntax-e _g1178512324_)))
                        (let ((_hd1178912331_ (##car _e1178812327_))
                              (_tl1179012334_ (##cdr _e1178812327_)))
                          (if (gx#stx-pair? _tl1179012334_)
                              (let ((_e1179112337_
                                     (gx#syntax-e _tl1179012334_)))
                                (let ((_hd1179212341_ (##car _e1179112337_))
                                      (_tl1179312344_ (##cdr _e1179112337_)))
                                  (if (gx#stx-pair? _tl1179312344_)
                                      (let ((_e1179412347_
                                             (gx#syntax-e _tl1179312344_)))
                                        (let ((_hd1179512351_
                                               (##car _e1179412347_))
                                              (_tl1179612354_
                                               (##cdr _e1179412347_)))
                                          (if (gx#stx-null? _tl1179612354_)
                                              ((lambda (_L12357_ _L12359_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'quote)
                                                       (cons '#!void '())))
                                               _hd1179512351_
                                               _hd1179212341_)
                                              (_g1178012320_ _g1178512324_))))
                                      (_g1178012320_ _g1178512324_))))
                              (_g1178012320_ _g1178512324_))))
                      (_g1178012320_ _g1178512324_)))))
          (_g1177912374_ _stx11777_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#~case-dispatch-bsearch|
      (lambda (_stx12379_)
        (letrec ((_split12382_
                  (lambda (_lst12743_ _mid12745_)
                    (let _lp12747_ ((_i12750_ '0)
                                    (_rest12752_ _lst12743_)
                                    (_left12753_ '()))
                      (if (fx< _i12750_ _mid12745_)
                          (_lp12747_
                           (fx1+ _i12750_)
                           (cdr _rest12752_)
                           (cons (car _rest12752_) _left12753_))
                          (values (reverse _left12753_) _rest12752_))))))
          (let* ((_g1238512413_
                  (lambda (_g1238612409_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1238612409_)))
                 (_g1238412739_
                  (lambda (_g1238612417_)
                    (if (gx#stx-pair? _g1238612417_)
                        (let ((_e1239012420_ (gx#syntax-e _g1238612417_)))
                          (let ((_hd1239112424_ (##car _e1239012420_))
                                (_tl1239212427_ (##cdr _e1239012420_)))
                            (if (gx#stx-pair? _tl1239212427_)
                                (let ((_e1239312430_
                                       (gx#syntax-e _tl1239212427_)))
                                  (let ((_hd1239412434_ (##car _e1239312430_))
                                        (_tl1239512437_ (##cdr _e1239312430_)))
                                    (if (gx#stx-pair? _tl1239512437_)
                                        (let ((_e1239612440_
                                               (gx#syntax-e _tl1239512437_)))
                                          (let ((_hd1239712444_
                                                 (##car _e1239612440_))
                                                (_tl1239812447_
                                                 (##cdr _e1239612440_)))
                                            (if (gx#stx-pair/null?
                                                 _tl1239812447_)
                                                (if (fx>= (gx#stx-length
                                                           _tl1239812447_)
                                                          '0)
                                                    (let ((_g34938_
                                                           (gx#syntax-split-splice
                                                            _tl1239812447_
                                                            '0)))
                                                      (begin
                                                        (let ((_g34939_
                                                               (values-count
                                                                _g34938_)))
                                                          (if (not (fx= _g34939_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                2))
                      (error "Context expects 2 values" _g34939_)))
                (let ((_target1239912450_ (values-ref _g34938_ 0))
                      (_tl1240112453_ (values-ref _g34938_ 1)))
                  (if (gx#stx-null? _tl1240112453_)
                      (letrec ((_loop1240212456_
                                (lambda (_hd1240012460_ _K1240612463_)
                                  (if (gx#stx-pair? _hd1240012460_)
                                      (let ((_e1240312466_
                                             (gx#syntax-e _hd1240012460_)))
                                        (let ((_lp-hd1240412470_
                                               (##car _e1240312466_))
                                              (_lp-tl1240512473_
                                               (##cdr _e1240312466_)))
                                          (_loop1240212456_
                                           _lp-tl1240512473_
                                           (cons _lp-hd1240412470_
                                                 _K1240612463_))))
                                      (let ((_K1240712476_
                                             (reverse _K1240612463_)))
                                        ((lambda (_L12480_ _L12482_ _L12483_)
                                           (let* ((_len12513_
                                                   (length (begin
                                                             '#!void
                                                             (foldr (lambda (_g1250412507_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1250512510_)
                              (cons _g1250412507_ _g1250512510_))
                            '()
                            _L12480_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_mid12516_
                                                   (quotient _len12513_ '2))
                                                  (_g34940_
                                                   (_split12382_
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g1251812521_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1251912524_)
                       (cons _g1251812521_ _g1251912524_))
                     '()
                     _L12480_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _mid12516_)))
                                             (begin
                                               (let ((_g34941_
                                                      (values-count _g34940_)))
                                                 (if (not (fx= _g34941_ 2))
                                                     (error "Context expects 2 values"
                                                            _g34941_)))
                                               (let ((_left12527_
                                                      (values-ref _g34940_ 0))
                                                     (_right12529_
                                                      (values-ref _g34940_ 1)))
                                                 (let ()
                                                   (let* ((_g1253312574_
                                                           (lambda (_g1253412570_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g1253412570_)))
                                                          (_g1253212735_
                                                           (lambda (_g1253412578_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1253412578_)
                         (let ((_e1253912581_ (gx#syntax-e _g1253412578_)))
                           (let ((_hd1254012585_ (##car _e1253912581_))
                                 (_tl1254112588_ (##cdr _e1253912581_)))
                             (if (gx#stx-pair? _tl1254112588_)
                                 (let ((_e1254212591_
                                        (gx#syntax-e _tl1254112588_)))
                                   (let ((_hd1254312595_ (##car _e1254212591_))
                                         (_tl1254412598_
                                          (##cdr _e1254212591_)))
                                     (if (gx#stx-pair/null? _hd1254312595_)
                                         (if (fx>= (gx#stx-length
                                                    _hd1254312595_)
                                                   '0)
                                             (let ((_g34942_
                                                    (gx#syntax-split-splice
                                                     _hd1254312595_
                                                     '0)))
                                               (begin
                                                 (let ((_g34943_
                                                        (values-count
                                                         _g34942_)))
                                                   (if (not (fx= _g34943_ 2))
                                                       (error "Context expects 2 values"
                                                              _g34943_)))
                                                 (let ((_target1254512601_
                                                        (values-ref
                                                         _g34942_
                                                         0))
                                                       (_tl1254712604_
                                                        (values-ref
                                                         _g34942_
                                                         1)))
                                                   (if (gx#stx-null?
                                                        _tl1254712604_)
                                                       (letrec ((_loop1254812607_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd1254612611_ _K-left1255212614_)
                           (if (gx#stx-pair? _hd1254612611_)
                               (let ((_e1254912617_
                                      (gx#syntax-e _hd1254612611_)))
                                 (let ((_lp-hd1255012621_
                                        (##car _e1254912617_))
                                       (_lp-tl1255112624_
                                        (##cdr _e1254912617_)))
                                   (_loop1254812607_
                                    _lp-tl1255112624_
                                    (cons _lp-hd1255012621_
                                          _K-left1255212614_))))
                               (let ((_K-left1255312627_
                                      (reverse _K-left1255212614_)))
                                 (if (gx#stx-pair? _tl1254412598_)
                                     (let ((_e1255412631_
                                            (gx#syntax-e _tl1254412598_)))
                                       (let ((_hd1255512635_
                                              (##car _e1255412631_))
                                             (_tl1255612638_
                                              (##cdr _e1255412631_)))
                                         (if (gx#stx-pair/null? _hd1255512635_)
                                             (if (fx>= (gx#stx-length
                                                        _hd1255512635_)
                                                       '0)
                                                 (let ((_g34944_
                                                        (gx#syntax-split-splice
                                                         _hd1255512635_
                                                         '0)))
                                                   (begin
                                                     (let ((_g34945_
                                                            (values-count
                                                             _g34944_)))
                                                       (if (not (fx= _g34945_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g34945_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target1255712641_
                                                            (values-ref
                                                             _g34944_
                                                             0))
                                                           (_tl1255912644_
                                                            (values-ref
                                                             _g34944_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl1255912644_)
                                                           (letrec ((_loop1256012647_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd1255812651_ _K-right1256412654_)
                               (if (gx#stx-pair? _hd1255812651_)
                                   (let ((_e1256112657_
                                          (gx#syntax-e _hd1255812651_)))
                                     (let ((_lp-hd1256212661_
                                            (##car _e1256112657_))
                                           (_lp-tl1256312664_
                                            (##cdr _e1256112657_)))
                                       (_loop1256012647_
                                        _lp-tl1256312664_
                                        (cons _lp-hd1256212661_
                                              _K-right1256412654_))))
                                   (let ((_K-right1256512667_
                                          (reverse _K-right1256412654_)))
                                     (if (gx#stx-pair? _tl1255612638_)
                                         (let ((_e1256612671_
                                                (gx#syntax-e _tl1255612638_)))
                                           (let ((_hd1256712675_
                                                  (##car _e1256612671_))
                                                 (_tl1256812678_
                                                  (##cdr _e1256612671_)))
                                             (if (gx#stx-null? _tl1256812678_)
                                                 ((lambda (_L12681_
                                                           _L12683_
                                                           _L12684_
                                                           _L12685_)
                                                    (let ()
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'if)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 '##fx<)
                                (cons _L12482_ (cons _L12681_ '())))
                          (cons (cons (gx#datum->syntax '#f '~case-dispatch*)
                                      (cons _L12483_
                                            (cons _L12482_
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g1271812723_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1271912726_)
                     (cons _g1271812723_ _g1271912726_))
                   '()
                   _L12684_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             '~case-dispatch*)
                                            (cons _L12681_
                                                  (cons _L12482_
                                                        (begin
                                                          '#!void
                                                          (foldr (lambda (_g1272012729_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g1272112732_)
                           (cons _g1272012729_ _g1272112732_))
                         '()
                         _L12683_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd1256712675_
                                                  _K-right1256512667_
                                                  _K-left1255312627_
                                                  _hd1254012585_)
                                                 (_g1253312574_
                                                  _g1253412578_))))
                                         (_g1253312574_ _g1253412578_)))))))
                     (_loop1256012647_ _target1255712641_ '()))
                   (_g1253312574_ _g1253412578_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1253312574_ _g1253412578_))
                                             (_g1253312574_ _g1253412578_))))
                                     (_g1253312574_ _g1253412578_)))))))
                 (_loop1254812607_ _target1254512601_ '()))
               (_g1253312574_ _g1253412578_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1253312574_ _g1253412578_))
                                         (_g1253312574_ _g1253412578_))))
                                 (_g1253312574_ _g1253412578_))))
                         (_g1253312574_ _g1253412578_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1253212735_
                                                      (list _mid12516_
                                                            _left12527_
                                                            _right12529_
                                                            (fx+ _mid12516_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _L12483_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _K1240712476_
                                         _hd1239712444_
                                         _hd1239412434_))))))
                        (_loop1240212456_ _target1239912450_ '()))
                      (_g1238512413_ _g1238612417_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1238512413_
                                                     _g1238612417_))
                                                (_g1238512413_
                                                 _g1238612417_))))
                                        (_g1238512413_ _g1238612417_))))
                                (_g1238512413_ _g1238612417_))))
                        (_g1238512413_ _g1238612417_)))))
            (_g1238412739_ _stx12379_)))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#do|
      (lambda (_$stx12759_)
        (let* ((_g1276312834_
                (lambda (_g1276412830_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1276412830_)))
               (_g1276213123_
                (lambda (_g1276412838_)
                  (if (gx#stx-pair? _g1276412838_)
                      (let ((_e1277112841_ (gx#syntax-e _g1276412838_)))
                        (let ((_hd1277212845_ (##car _e1277112841_))
                              (_tl1277312848_ (##cdr _e1277112841_)))
                          (if (gx#stx-pair? _tl1277312848_)
                              (let ((_e1277412851_
                                     (gx#syntax-e _tl1277312848_)))
                                (let ((_hd1277512855_ (##car _e1277412851_))
                                      (_tl1277612858_ (##cdr _e1277412851_)))
                                  (if (gx#stx-pair/null? _hd1277512855_)
                                      (if (fx>= (gx#stx-length _hd1277512855_)
                                                '0)
                                          (let ((_g34946_
                                                 (gx#syntax-split-splice
                                                  _hd1277512855_
                                                  '0)))
                                            (begin
                                              (let ((_g34947_
                                                     (values-count _g34946_)))
                                                (if (not (fx= _g34947_ 2))
                                                    (error "Context expects 2 values"
                                                           _g34947_)))
                                              (let ((_target1277712861_
                                                     (values-ref _g34946_ 0))
                                                    (_tl1277912864_
                                                     (values-ref _g34946_ 1)))
                                                (if (gx#stx-null?
                                                     _tl1277912864_)
                                                    (letrec ((_loop1278012867_
                                                              (lambda (_hd1277812871_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _step1278412874_
                               _init1278512876_
                               _var1278612878_)
                        (if (gx#stx-pair? _hd1277812871_)
                            (let ((_e1278112881_ (gx#syntax-e _hd1277812871_)))
                              (let ((_lp-hd1278212885_ (##car _e1278112881_))
                                    (_lp-tl1278312888_ (##cdr _e1278112881_)))
                                (if (gx#stx-pair? _lp-hd1278212885_)
                                    (let ((_e1279012891_
                                           (gx#syntax-e _lp-hd1278212885_)))
                                      (let ((_hd1279112895_
                                             (##car _e1279012891_))
                                            (_tl1279212898_
                                             (##cdr _e1279012891_)))
                                        (if (gx#stx-pair? _tl1279212898_)
                                            (let ((_e1279312901_
                                                   (gx#syntax-e
                                                    _tl1279212898_)))
                                              (let ((_hd1279412905_
                                                     (##car _e1279312901_))
                                                    (_tl1279512908_
                                                     (##cdr _e1279312901_)))
                                                (if (gx#stx-pair/null?
                                                     _tl1279512908_)
                                                    (if (fx>= (gx#stx-length
                                                               _tl1279512908_)
                                                              '0)
                                                        (let ((_g34948_
                                                               (gx#syntax-split-splice
                                                                _tl1279512908_
                                                                '0)))
                                                          (begin
                                                            (let ((_g34949_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (values-count _g34948_)))
                      (if (not (fx= _g34949_ 2))
                          (error "Context expects 2 values" _g34949_)))
                    (let ((_target1279612911_ (values-ref _g34948_ 0))
                          (_tl1279812914_ (values-ref _g34948_ 1)))
                      (if (gx#stx-null? _tl1279812914_)
                          (letrec ((_loop1279912917_
                                    (lambda (_hd1279712921_ _step1280312924_)
                                      (if (gx#stx-pair? _hd1279712921_)
                                          (let ((_e1280012927_
                                                 (gx#syntax-e _hd1279712921_)))
                                            (let ((_lp-hd1280112931_
                                                   (##car _e1280012927_))
                                                  (_lp-tl1280212934_
                                                   (##cdr _e1280012927_)))
                                              (_loop1279912917_
                                               _lp-tl1280212934_
                                               (cons _lp-hd1280112931_
                                                     _step1280312924_))))
                                          (let ((_step1280412937_
                                                 (reverse _step1280312924_)))
                                            (_loop1278012867_
                                             _lp-tl1278312888_
                                             (cons _step1280412937_
                                                   _step1278412874_)
                                             (cons _hd1279412905_
                                                   _init1278512876_)
                                             (cons _hd1279112895_
                                                   _var1278612878_)))))))
                            (_loop1279912917_ _target1279612911_ '()))
                          (_g1276312834_ _g1276412838_)))))
                (_g1276312834_ _g1276412838_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1276312834_
                                                     _g1276412838_))))
                                            (_g1276312834_ _g1276412838_))))
                                    (_g1276312834_ _g1276412838_))))
                            (let ((_step1278712941_ (reverse _step1278412874_))
                                  (_init1278812944_ (reverse _init1278512876_))
                                  (_var1278912946_ (reverse _var1278612878_)))
                              (if (gx#stx-pair? _tl1277612858_)
                                  (let ((_e1280512949_
                                         (gx#syntax-e _tl1277612858_)))
                                    (let ((_hd1280612953_
                                           (##car _e1280512949_))
                                          (_tl1280712956_
                                           (##cdr _e1280512949_)))
                                      (if (gx#stx-pair? _hd1280612953_)
                                          (let ((_e1280812959_
                                                 (gx#syntax-e _hd1280612953_)))
                                            (let ((_hd1280912963_
                                                   (##car _e1280812959_))
                                                  (_tl1281012966_
                                                   (##cdr _e1280812959_)))
                                              (if (gx#stx-pair/null?
                                                   _tl1281012966_)
                                                  (if (fx>= (gx#stx-length
                                                             _tl1281012966_)
                                                            '0)
                                                      (let ((_g34950_
                                                             (gx#syntax-split-splice
                                                              _tl1281012966_
                                                              '0)))
                                                        (begin
                                                          (let ((_g34951_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (values-count _g34950_)))
                    (if (not (fx= _g34951_ 2))
                        (error "Context expects 2 values" _g34951_)))
                  (let ((_target1281112969_ (values-ref _g34950_ 0))
                        (_tl1281312972_ (values-ref _g34950_ 1)))
                    (if (gx#stx-null? _tl1281312972_)
                        (letrec ((_loop1281412975_
                                  (lambda (_hd1281212979_ _fini1281812982_)
                                    (if (gx#stx-pair? _hd1281212979_)
                                        (let ((_e1281512985_
                                               (gx#syntax-e _hd1281212979_)))
                                          (let ((_lp-hd1281612989_
                                                 (##car _e1281512985_))
                                                (_lp-tl1281712992_
                                                 (##cdr _e1281512985_)))
                                            (_loop1281412975_
                                             _lp-tl1281712992_
                                             (cons _lp-hd1281612989_
                                                   _fini1281812982_))))
                                        (let ((_fini1281912995_
                                               (reverse _fini1281812982_)))
                                          (if (gx#stx-pair/null?
                                               _tl1280712956_)
                                              (if (fx>= (gx#stx-length
                                                         _tl1280712956_)
                                                        '0)
                                                  (let ((_g34952_
                                                         (gx#syntax-split-splice
                                                          _tl1280712956_
                                                          '0)))
                                                    (begin
                                                      (let ((_g34953_
                                                             (values-count
                                                              _g34952_)))
                                                        (if (not (fx= _g34953_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g34953_)))
              (let ((_target1282012999_ (values-ref _g34952_ 0))
                    (_tl1282213002_ (values-ref _g34952_ 1)))
                (if (gx#stx-null? _tl1282213002_)
                    (letrec ((_loop1282313005_
                              (lambda (_hd1282113009_ _body1282713012_)
                                (if (gx#stx-pair? _hd1282113009_)
                                    (let ((_e1282413015_
                                           (gx#syntax-e _hd1282113009_)))
                                      (let ((_lp-hd1282513019_
                                             (##car _e1282413015_))
                                            (_lp-tl1282613022_
                                             (##cdr _e1282413015_)))
                                        (_loop1282313005_
                                         _lp-tl1282613022_
                                         (cons _lp-hd1282513019_
                                               _body1282713012_))))
                                    (let ((_body1282813025_
                                           (reverse _body1282713012_)))
                                      ((lambda (_L13029_
                                                _L13031_
                                                _L13032_
                                                _L13033_
                                                _L13034_
                                                _L13035_)
                                         (if (gx#stx-andmap
                                              gx#identifier?
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g1306813071_
                                                                _g1306913074_)
                                                         (cons _g1306813071_
                                                               _g1306913074_))
                                                       '()
                                                       _L13035_)))
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          '$loop)
                                                         (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-check-splice-targets _L13034_ _L13035_)
                         (foldr (lambda (_g1307613089_
                                         _g1307713092_
                                         _g1307813094_)
                                  (cons (cons _g1307713092_
                                              (cons _g1307613089_ '()))
                                        _g1307813094_))
                                '()
                                _L13034_
                                _L13035_))
                       (cons (cons (gx#datum->syntax '#f 'if)
                                   (cons _L13032_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'begin)
                                                     (cons '#!void
                                                           (begin
                                                             '#!void
                                                             (foldr (lambda (_g1307913097_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1308013100_)
                              (cons _g1307913097_ _g1308013100_))
                            '()
                            _L13031_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'begin)
                                                           (begin
                                                             '#!void
                                                             (foldr (lambda (_g1308113103_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1308213106_)
                              (cons _g1308113103_ _g1308213106_))
                            (cons (cons (gx#datum->syntax '#f '$loop)
                                        (begin
                                          (gx#syntax-check-splice-targets
                                           _L13033_
                                           _L13035_)
                                          (foldr (lambda (_g1308313109_
                                                          _g1308413112_
                                                          _g1308513114_)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'begin)
                                                               (cons _g1308413112_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (begin
                               '#!void
                               (foldr (lambda (_g1308613117_ _g1308713120_)
                                        (cons _g1308613117_ _g1308713120_))
                                      '()
                                      _g1308313109_))))
                 _g1308513114_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()
                                                 _L13033_
                                                 _L13035_)))
                                  '())
                            _L13029_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1276312834_ _g1276412838_)))
                                       _body1282813025_
                                       _fini1281912995_
                                       _hd1280912963_
                                       _step1278712941_
                                       _init1278812944_
                                       _var1278912946_))))))
                      (_loop1282313005_ _target1282012999_ '()))
                    (_g1276312834_ _g1276412838_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1276312834_
                                                   _g1276412838_))
                                              (_g1276312834_
                                               _g1276412838_)))))))
                          (_loop1281412975_ _target1281112969_ '()))
                        (_g1276312834_ _g1276412838_)))))
              (_g1276312834_ _g1276412838_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1276312834_
                                                   _g1276412838_))))
                                          (_g1276312834_ _g1276412838_))))
                                  (_g1276312834_ _g1276412838_)))))))
              (_loop1278012867_ _target1277712861_ '() '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1276312834_
                                                     _g1276412838_)))))
                                          (_g1276312834_ _g1276412838_))
                                      (_g1276312834_ _g1276412838_))))
                              (_g1276312834_ _g1276412838_))))
                      (_g1276312834_ _g1276412838_)))))
          (_g1276213123_ _$stx12759_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#do-while|
      (lambda (_$stx13131_)
        (let* ((_g1313513158_
                (lambda (_g1313613154_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1313613154_)))
               (_g1313413229_
                (lambda (_g1313613162_)
                  (if (gx#stx-pair? _g1313613162_)
                      (let ((_e1314113165_ (gx#syntax-e _g1313613162_)))
                        (let ((_hd1314213169_ (##car _e1314113165_))
                              (_tl1314313172_ (##cdr _e1314113165_)))
                          (if (gx#stx-pair? _tl1314313172_)
                              (let ((_e1314413175_
                                     (gx#syntax-e _tl1314313172_)))
                                (let ((_hd1314513179_ (##car _e1314413175_))
                                      (_tl1314613182_ (##cdr _e1314413175_)))
                                  (if (gx#stx-pair? _tl1314613182_)
                                      (let ((_e1314713185_
                                             (gx#syntax-e _tl1314613182_)))
                                        (let ((_hd1314813189_
                                               (##car _e1314713185_))
                                              (_tl1314913192_
                                               (##cdr _e1314713185_)))
                                          (if (gx#stx-pair? _hd1314813189_)
                                              (let ((_e1315013195_
                                                     (gx#syntax-e
                                                      _hd1314813189_)))
                                                (let ((_hd1315113199_
                                                       (##car _e1315013195_))
                                                      (_tl1315213202_
                                                       (##cdr _e1315013195_)))
                                                  ((lambda (_L13205_
                                                            _L13207_
                                                            _L13208_
                                                            _L13209_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'do)
                                                           (cons _L13209_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (cons (gx#datum->syntax '#f 'not)
                                           (cons _L13208_ '()))
                                     _L13207_)
                               _L13205_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _tl1314913192_
                                                   _tl1315213202_
                                                   _hd1315113199_
                                                   _hd1314513179_)))
                                              (_g1313513158_ _g1313613162_))))
                                      (_g1313513158_ _g1313613162_))))
                              (_g1313513158_ _g1313613162_))))
                      (_g1313513158_ _g1313613162_)))))
          (_g1313413229_ _$stx13131_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#begin0|
      (lambda (_$stx13233_)
        (let* ((_g1323813269_
                (lambda (_g1323913265_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1323913265_)))
               (_g1323713354_
                (lambda (_g1323913273_)
                  (if (gx#stx-pair? _g1323913273_)
                      (let ((_e1324913276_ (gx#syntax-e _g1323913273_)))
                        (let ((_hd1325013280_ (##car _e1324913276_))
                              (_tl1325113283_ (##cdr _e1324913276_)))
                          (if (gx#stx-pair? _tl1325113283_)
                              (let ((_e1325213286_
                                     (gx#syntax-e _tl1325113283_)))
                                (let ((_hd1325313290_ (##car _e1325213286_))
                                      (_tl1325413293_ (##cdr _e1325213286_)))
                                  (if (gx#stx-pair/null? _tl1325413293_)
                                      (if (fx>= (gx#stx-length _tl1325413293_)
                                                '0)
                                          (let ((_g34954_
                                                 (gx#syntax-split-splice
                                                  _tl1325413293_
                                                  '0)))
                                            (begin
                                              (let ((_g34955_
                                                     (values-count _g34954_)))
                                                (if (not (fx= _g34955_ 2))
                                                    (error "Context expects 2 values"
                                                           _g34955_)))
                                              (let ((_target1325513296_
                                                     (values-ref _g34954_ 0))
                                                    (_tl1325713299_
                                                     (values-ref _g34954_ 1)))
                                                (if (gx#stx-null?
                                                     _tl1325713299_)
                                                    (letrec ((_loop1325813302_
                                                              (lambda (_hd1325613306_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _rest1326213309_)
                        (if (gx#stx-pair? _hd1325613306_)
                            (let ((_e1325913312_ (gx#syntax-e _hd1325613306_)))
                              (let ((_lp-hd1326013316_ (##car _e1325913312_))
                                    (_lp-tl1326113319_ (##cdr _e1325913312_)))
                                (_loop1325813302_
                                 _lp-tl1326113319_
                                 (cons _lp-hd1326013316_ _rest1326213309_))))
                            (let ((_rest1326313322_
                                   (reverse _rest1326213309_)))
                              ((lambda (_L13326_ _L13328_)
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (cons (gx#datum->syntax '#f '$r)
                                                   (cons _L13328_ '()))
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '%#expression)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'begin)
                             (begin
                               '#!void
                               (foldr (lambda (_g1334513348_ _g1334613351_)
                                        (cons _g1334513348_ _g1334613351_))
                                      '()
                                      _L13326_)))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          '$r)
                                                         '())))))
                               _rest1326313322_
                               _hd1325313290_))))))
              (_loop1325813302_ _target1325513296_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1323813269_
                                                     _g1323913273_)))))
                                          (_g1323813269_ _g1323913273_))
                                      (_g1323813269_ _g1323913273_))))
                              (_g1323813269_ _g1323913273_))))
                      (_g1323813269_ _g1323913273_))))
               (_g1323613394_
                (lambda (_g1323913358_)
                  (if (gx#stx-pair? _g1323913358_)
                      (let ((_e1324113361_ (gx#syntax-e _g1323913358_)))
                        (let ((_hd1324213365_ (##car _e1324113361_))
                              (_tl1324313368_ (##cdr _e1324113361_)))
                          (if (gx#stx-pair? _tl1324313368_)
                              (let ((_e1324413371_
                                     (gx#syntax-e _tl1324313368_)))
                                (let ((_hd1324513375_ (##car _e1324413371_))
                                      (_tl1324613378_ (##cdr _e1324413371_)))
                                  (if (gx#stx-null? _tl1324613378_)
                                      ((lambda (_L13381_) _L13381_)
                                       _hd1324513375_)
                                      (_g1323713354_ _g1323913358_))))
                              (_g1323713354_ _g1323913358_))))
                      (_g1323713354_ _g1323913358_)))))
          (_g1323613394_ _$stx13233_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#rec|
      (lambda (_$stx13399_)
        (let* ((_g1340513458_
                (lambda (_g1340613454_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1340613454_)))
               (_g1340413557_
                (lambda (_g1340613462_)
                  (if (gx#stx-pair? _g1340613462_)
                      (let ((_e1343513465_ (gx#syntax-e _g1340613462_)))
                        (let ((_hd1343613469_ (##car _e1343513465_))
                              (_tl1343713472_ (##cdr _e1343513465_)))
                          (if (gx#stx-pair? _tl1343713472_)
                              (let ((_e1343813475_
                                     (gx#syntax-e _tl1343713472_)))
                                (let ((_hd1343913479_ (##car _e1343813475_))
                                      (_tl1344013482_ (##cdr _e1343813475_)))
                                  (if (gx#stx-pair? _hd1343913479_)
                                      (let ((_e1344113485_
                                             (gx#syntax-e _hd1343913479_)))
                                        (let ((_hd1344213489_
                                               (##car _e1344113485_))
                                              (_tl1344313492_
                                               (##cdr _e1344113485_)))
                                          (if (gx#stx-pair/null?
                                               _tl1344013482_)
                                              (if (fx>= (gx#stx-length
                                                         _tl1344013482_)
                                                        '0)
                                                  (let ((_g34956_
                                                         (gx#syntax-split-splice
                                                          _tl1344013482_
                                                          '0)))
                                                    (begin
                                                      (let ((_g34957_
                                                             (values-count
                                                              _g34956_)))
                                                        (if (not (fx= _g34957_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g34957_)))
              (let ((_target1344413495_ (values-ref _g34956_ 0))
                    (_tl1344613498_ (values-ref _g34956_ 1)))
                (if (gx#stx-null? _tl1344613498_)
                    (letrec ((_loop1344713501_
                              (lambda (_hd1344513505_ _body1345113508_)
                                (if (gx#stx-pair? _hd1344513505_)
                                    (let ((_e1344813511_
                                           (gx#syntax-e _hd1344513505_)))
                                      (let ((_lp-hd1344913515_
                                             (##car _e1344813511_))
                                            (_lp-tl1345013518_
                                             (##cdr _e1344813511_)))
                                        (_loop1344713501_
                                         _lp-tl1345013518_
                                         (cons _lp-hd1344913515_
                                               _body1345113508_))))
                                    (let ((_body1345213521_
                                           (reverse _body1345113508_)))
                                      ((lambda (_L13525_ _L13527_ _L13528_)
                                         (if (gx#identifier? _L13528_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'letrec)
                                                   (cons (cons (cons _L13528_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _L13527_
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g1354813551_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1354913554_)
                  (cons _g1354813551_ _g1354913554_))
                '()
                _L13525_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   '()))
                       '())
                 (cons _L13528_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1340513458_ _g1340613462_)))
                                       _body1345213521_
                                       _tl1344313492_
                                       _hd1344213489_))))))
                      (_loop1344713501_ _target1344413495_ '()))
                    (_g1340513458_ _g1340613462_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1340513458_
                                                   _g1340613462_))
                                              (_g1340513458_ _g1340613462_))))
                                      (_g1340513458_ _g1340613462_))))
                              (_g1340513458_ _g1340613462_))))
                      (_g1340513458_ _g1340613462_))))
               (_g1340313623_
                (lambda (_g1340613561_)
                  (if (gx#stx-pair? _g1340613561_)
                      (let ((_e1342013564_ (gx#syntax-e _g1340613561_)))
                        (let ((_hd1342113568_ (##car _e1342013564_))
                              (_tl1342213571_ (##cdr _e1342013564_)))
                          (if (gx#stx-pair? _tl1342213571_)
                              (let ((_e1342313574_
                                     (gx#syntax-e _tl1342213571_)))
                                (let ((_hd1342413578_ (##car _e1342313574_))
                                      (_tl1342513581_ (##cdr _e1342313574_)))
                                  (if (gx#stx-pair? _hd1342413578_)
                                      (let ((_e1342613584_
                                             (gx#syntax-e _hd1342413578_)))
                                        (let ((_hd1342713588_
                                               (##car _e1342613584_))
                                              (_tl1342813591_
                                               (##cdr _e1342613584_)))
                                          (if (gx#identifier? _hd1342713588_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<sugar>$<sugar:2>[1]#_g34958_|
                                                   _hd1342713588_)
                                                  (if (gx#stx-pair?
                                                       _tl1342513581_)
                                                      (let ((_e1342913594_
                                                             (gx#syntax-e
                                                              _tl1342513581_)))
                                                        (let ((_hd1343013598_
                                                               (##car _e1342913594_))
                                                              (_tl1343113601_
                                                               (##cdr _e1342913594_)))
                                                          (if (gx#stx-null?
                                                               _tl1343113601_)
                                                              ((lambda (_L13604_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _L13606_)
                         (if (gx#identifier-list? _L13606_)
                             (cons (gx#datum->syntax '#f 'letrec-values)
                                   (cons (cons (cons _L13606_
                                                     (cons _L13604_ '()))
                                               '())
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'values)
                                                     _L13606_)
                                               '())))
                             (_g1340413557_ _g1340613561_)))
                       _hd1343013598_
                       _tl1342813591_)
                      (_g1340413557_ _g1340613561_))))
              (_g1340413557_ _g1340613561_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1340413557_
                                                   _g1340613561_))
                                              (_g1340413557_ _g1340613561_))))
                                      (_g1340413557_ _g1340613561_))))
                              (_g1340413557_ _g1340613561_))))
                      (_g1340413557_ _g1340613561_))))
               (_g1340213677_
                (lambda (_g1340613627_)
                  (if (gx#stx-pair? _g1340613627_)
                      (let ((_e1340913630_ (gx#syntax-e _g1340613627_)))
                        (let ((_hd1341013634_ (##car _e1340913630_))
                              (_tl1341113637_ (##cdr _e1340913630_)))
                          (if (gx#stx-pair? _tl1341113637_)
                              (let ((_e1341213640_
                                     (gx#syntax-e _tl1341113637_)))
                                (let ((_hd1341313644_ (##car _e1341213640_))
                                      (_tl1341413647_ (##cdr _e1341213640_)))
                                  (if (gx#stx-pair? _tl1341413647_)
                                      (let ((_e1341513650_
                                             (gx#syntax-e _tl1341413647_)))
                                        (let ((_hd1341613654_
                                               (##car _e1341513650_))
                                              (_tl1341713657_
                                               (##cdr _e1341513650_)))
                                          (if (gx#stx-null? _tl1341713657_)
                                              ((lambda (_L13660_ _L13662_)
                                                 (if (gx#identifier? _L13662_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'letrec)
                                                           (cons (cons (cons _L13662_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (cons _L13660_ '()))
                               '())
                         (cons _L13662_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1340313623_
                                                      _g1340613627_)))
                                               _hd1341613654_
                                               _hd1341313644_)
                                              (_g1340313623_ _g1340613627_))))
                                      (_g1340313623_ _g1340613627_))))
                              (_g1340313623_ _g1340613627_))))
                      (_g1340313623_ _g1340613627_)))))
          (_g1340213677_ _$stx13399_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#alet|
      (lambda (_stx13682_)
        (letrec ((_let-head?13685_
                  (lambda (_x14232_)
                    (let* ((_g1423614247_
                            (lambda (_g1423714243_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1423714243_)))
                           (_g1423514258_
                            (lambda (_g1423714251_)
                              ((lambda () (gx#identifier? _x14232_)))))
                           (_g1423414288_
                            (lambda (_g1423714262_)
                              (if (gx#stx-pair? _g1423714262_)
                                  (let ((_e1423914265_
                                         (gx#syntax-e _g1423714262_)))
                                    (let ((_hd1424014269_
                                           (##car _e1423914265_))
                                          (_tl1424114272_
                                           (##cdr _e1423914265_)))
                                      (if (gx#identifier? _hd1424014269_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<sugar>$<sugar:2>[1]#_g34959_|
                                               _hd1424014269_)
                                              ((lambda (_L14275_)
                                                 (gx#stx-andmap
                                                  gx#identifier?
                                                  _L14275_))
                                               _tl1424114272_)
                                              (_g1423514258_ _g1423714262_))
                                          (_g1423514258_ _g1423714262_))))
                                  (_g1423514258_ _g1423714262_)))))
                      (_g1423414288_ _x14232_))))
                 (_let-head13687_
                  (lambda (_x14172_)
                    (let* ((_g1417614187_
                            (lambda (_g1417714183_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1417714183_)))
                           (_g1417514198_
                            (lambda (_g1417714191_)
                              ((lambda () (list _x14172_)))))
                           (_g1417414228_
                            (lambda (_g1417714202_)
                              (if (gx#stx-pair? _g1417714202_)
                                  (let ((_e1417914205_
                                         (gx#syntax-e _g1417714202_)))
                                    (let ((_hd1418014209_
                                           (##car _e1417914205_))
                                          (_tl1418114212_
                                           (##cdr _e1417914205_)))
                                      (if (gx#identifier? _hd1418014209_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<sugar>$<sugar:2>[1]#_g34960_|
                                               _hd1418014209_)
                                              ((lambda (_L14215_) _L14215_)
                                               _tl1418114212_)
                                              (_g1417514198_ _g1417714202_))
                                          (_g1417514198_ _g1417714202_))))
                                  (_g1417514198_ _g1417714202_)))))
                      (_g1417414228_ _x14172_)))))
          (let* ((_g1369013748_
                  (lambda (_g1369113744_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1369113744_)))
                 (_g1368914098_
                  (lambda (_g1369113752_)
                    (if (gx#stx-pair? _g1369113752_)
                        (let ((_e1371113755_ (gx#syntax-e _g1369113752_)))
                          (let ((_hd1371213759_ (##car _e1371113755_))
                                (_tl1371313762_ (##cdr _e1371113755_)))
                            (if (gx#stx-pair? _tl1371313762_)
                                (let ((_e1371413765_
                                       (gx#syntax-e _tl1371313762_)))
                                  (let ((_hd1371513769_ (##car _e1371413765_))
                                        (_tl1371613772_ (##cdr _e1371413765_)))
                                    (if (gx#stx-pair/null? _hd1371513769_)
                                        (if (fx>= (gx#stx-length
                                                   _hd1371513769_)
                                                  '0)
                                            (let ((_g34961_
                                                   (gx#syntax-split-splice
                                                    _hd1371513769_
                                                    '0)))
                                              (begin
                                                (let ((_g34962_
                                                       (values-count
                                                        _g34961_)))
                                                  (if (not (fx= _g34962_ 2))
                                                      (error "Context expects 2 values"
                                                             _g34962_)))
                                                (let ((_target1371713775_
                                                       (values-ref _g34961_ 0))
                                                      (_tl1371913778_
                                                       (values-ref
                                                        _g34961_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl1371913778_)
                                                      (letrec ((_loop1372013781_
                                                                (lambda (_hd1371813785_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _e1372413788_
                                 _hd1372513790_)
                          (if (gx#stx-pair? _hd1371813785_)
                              (let ((_e1372113793_
                                     (gx#syntax-e _hd1371813785_)))
                                (let ((_lp-hd1372213797_ (##car _e1372113793_))
                                      (_lp-tl1372313800_
                                       (##cdr _e1372113793_)))
                                  (if (gx#stx-pair? _lp-hd1372213797_)
                                      (let ((_e1372813803_
                                             (gx#syntax-e _lp-hd1372213797_)))
                                        (let ((_hd1372913807_
                                               (##car _e1372813803_))
                                              (_tl1373013810_
                                               (##cdr _e1372813803_)))
                                          (if (gx#stx-pair? _tl1373013810_)
                                              (let ((_e1373113813_
                                                     (gx#syntax-e
                                                      _tl1373013810_)))
                                                (let ((_hd1373213817_
                                                       (##car _e1373113813_))
                                                      (_tl1373313820_
                                                       (##cdr _e1373113813_)))
                                                  (if (gx#stx-null?
                                                       _tl1373313820_)
                                                      (_loop1372013781_
                                                       _lp-tl1372313800_
                                                       (cons _hd1373213817_
                                                             _e1372413788_)
                                                       (cons _hd1372913807_
                                                             _hd1372513790_))
                                                      (_g1369013748_
                                                       _g1369113752_))))
                                              (_g1369013748_ _g1369113752_))))
                                      (_g1369013748_ _g1369113752_))))
                              (let ((_e1372613823_ (reverse _e1372413788_))
                                    (_hd1372713826_ (reverse _hd1372513790_)))
                                (if (gx#stx-pair/null? _tl1371613772_)
                                    (if (fx>= (gx#stx-length _tl1371613772_)
                                              '0)
                                        (let ((_g34963_
                                               (gx#syntax-split-splice
                                                _tl1371613772_
                                                '0)))
                                          (begin
                                            (let ((_g34964_
                                                   (values-count _g34963_)))
                                              (if (not (fx= _g34964_ 2))
                                                  (error "Context expects 2 values"
                                                         _g34964_)))
                                            (let ((_target1373413829_
                                                   (values-ref _g34963_ 0))
                                                  (_tl1373613832_
                                                   (values-ref _g34963_ 1)))
                                              (if (gx#stx-null? _tl1373613832_)
                                                  (letrec ((_loop1373713835_
                                                            (lambda (_hd1373513839_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _body1374113842_)
                      (if (gx#stx-pair? _hd1373513839_)
                          (let ((_e1373813845_ (gx#syntax-e _hd1373513839_)))
                            (let ((_lp-hd1373913849_ (##car _e1373813845_))
                                  (_lp-tl1374013852_ (##cdr _e1373813845_)))
                              (_loop1373713835_
                               _lp-tl1374013852_
                               (cons _lp-hd1373913849_ _body1374113842_))))
                          (let ((_body1374213855_ (reverse _body1374113842_)))
                            ((lambda (_L13859_ _L13861_ _L13862_)
                               (if (gx#stx-andmap
                                    _let-head?13685_
                                    (begin
                                      '#!void
                                      (foldr (lambda (_g1388513888_
                                                      _g1388613891_)
                                               (cons _g1388513888_
                                                     _g1388613891_))
                                             '()
                                             _L13862_)))
                                   (let* ((_g1389413927_
                                           (lambda (_g1389513923_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1389513923_)))
                                          (_g1389314078_
                                           (lambda (_g1389513931_)
                                             (if (gx#stx-pair? _g1389513931_)
                                                 (let ((_e1389813934_
                                                        (gx#syntax-e
                                                         _g1389513931_)))
                                                   (let ((_hd1389913938_
                                                          (##car _e1389813934_))
                                                         (_tl1390013941_
                                                          (##cdr _e1389813934_)))
                                                     (if (gx#stx-pair/null?
                                                          _hd1389913938_)
                                                         (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd1389913938_)
                           '0)
                     (let ((_g34965_
                            (gx#syntax-split-splice _hd1389913938_ '0)))
                       (begin
                         (let ((_g34966_ (values-count _g34965_)))
                           (if (not (fx= _g34966_ 2))
                               (error "Context expects 2 values" _g34966_)))
                         (let ((_target1390113944_ (values-ref _g34965_ 0))
                               (_tl1390313947_ (values-ref _g34965_ 1)))
                           (if (gx#stx-null? _tl1390313947_)
                               (letrec ((_loop1390413950_
                                         (lambda (_hd1390213954_
                                                  _$e1390813957_)
                                           (if (gx#stx-pair? _hd1390213954_)
                                               (let ((_e1390513960_
                                                      (gx#syntax-e
                                                       _hd1390213954_)))
                                                 (let ((_lp-hd1390613964_
                                                        (##car _e1390513960_))
                                                       (_lp-tl1390713967_
                                                        (##cdr _e1390513960_)))
                                                   (_loop1390413950_
                                                    _lp-tl1390713967_
                                                    (cons _lp-hd1390613964_
                                                          _$e1390813957_))))
                                               (let ((_$e1390913970_
                                                      (reverse _$e1390813957_)))
                                                 (if (gx#stx-pair?
                                                      _tl1390013941_)
                                                     (let ((_e1391013974_
                                                            (gx#syntax-e
                                                             _tl1390013941_)))
                                                       (let ((_hd1391113978_
                                                              (##car _e1391013974_))
                                                             (_tl1391213981_
                                                              (##cdr _e1391013974_)))
                                                         (if (gx#stx-pair/null?
                                                              _hd1391113978_)
                                                             (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _hd1391113978_)
                               '0)
                         (let ((_g34967_
                                (gx#syntax-split-splice _hd1391113978_ '0)))
                           (begin
                             (let ((_g34968_ (values-count _g34967_)))
                               (if (not (fx= _g34968_ 2))
                                   (error "Context expects 2 values"
                                          _g34968_)))
                             (let ((_target1391313984_ (values-ref _g34967_ 0))
                                   (_tl1391513987_ (values-ref _g34967_ 1)))
                               (if (gx#stx-null? _tl1391513987_)
                                   (letrec ((_loop1391613990_
                                             (lambda (_hd1391413994_
                                                      _hd-bind1392013997_)
                                               (if (gx#stx-pair?
                                                    _hd1391413994_)
                                                   (let ((_e1391714000_
                                                          (gx#syntax-e
                                                           _hd1391413994_)))
                                                     (let ((_lp-hd1391814004_
                                                            (##car _e1391714000_))
                                                           (_lp-tl1391914007_
                                                            (##cdr _e1391714000_)))
                                                       (_loop1391613990_
                                                        _lp-tl1391914007_
                                                        (cons _lp-hd1391814004_
                                                              _hd-bind1392013997_))))
                                                   (let ((_hd-bind1392114010_
                                                          (reverse _hd-bind1392013997_)))
                                                     (if (gx#stx-null?
                                                          _tl1391213981_)
                                                         ((lambda (_L14014_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L14016_)
                    (let ()
                      (cons (gx#datum->syntax '#f 'let-values)
                            (cons (begin
                                    (gx#syntax-check-splice-targets
                                     _L13861_
                                     _L14016_)
                                    (foldr (lambda (_g1403914050_
                                                    _g1404014053_
                                                    _g1404114055_)
                                             (cons (cons (cons _g1404014053_
                                                               '())
                                                         (cons _g1403914050_
                                                               '()))
                                                   _g1404114055_))
                                           '()
                                           _L13861_
                                           _L14016_))
                                  (cons (cons (gx#datum->syntax '#f 'and)
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g1404214058_
                                                                _g1404314061_)
                                                         (cons _g1404214058_
                                                               _g1404314061_))
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'let-values)
                           (cons (begin
                                   (gx#syntax-check-splice-targets
                                    _L14016_
                                    _L14014_)
                                   (foldr (lambda (_g1404414064_
                                                   _g1404514067_
                                                   _g1404614069_)
                                            (cons (cons _g1404514067_
                                                        (cons _g1404414064_
                                                              '()))
                                                  _g1404614069_))
                                          '()
                                          _L14016_
                                          _L14014_))
                                 (begin
                                   '#!void
                                   (foldr (lambda (_g1404714072_ _g1404814075_)
                                            (cons _g1404714072_ _g1404814075_))
                                          '()
                                          _L13859_))))
                     '())
               _L14016_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                  _hd-bind1392114010_
                  _$e1390913970_)
                 (_g1389413927_ _g1389513931_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop1391613990_ _target1391313984_ '()))
                                   (_g1389413927_ _g1389513931_)))))
                         (_g1389413927_ _g1389513931_))
                     (_g1389413927_ _g1389513931_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1389413927_
                                                      _g1389513931_)))))))
                                 (_loop1390413950_ _target1390113944_ '()))
                               (_g1389413927_ _g1389513931_)))))
                     (_g1389413927_ _g1389513931_))
                 (_g1389413927_ _g1389513931_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1389413927_
                                                  _g1389513931_)))))
                                     (_g1389314078_
                                      (list (gx#gentemps
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g1408114084_
                                                               _g1408214087_)
                                                        (cons _g1408114084_
                                                              _g1408214087_))
                                                      '()
                                                      _L13862_)))
                                            (gx#stx-map
                                             _let-head13687_
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g1408914092_
                                                               _g1409014095_)
                                                        (cons _g1408914092_
                                                              _g1409014095_))
                                                      '()
                                                      _L13862_))))))
                                   (_g1369013748_ _g1369113752_)))
                             _body1374213855_
                             _e1372613823_
                             _hd1372713826_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1373713835_
                                                     _target1373413829_
                                                     '()))
                                                  (_g1369013748_
                                                   _g1369113752_)))))
                                        (_g1369013748_ _g1369113752_))
                                    (_g1369013748_ _g1369113752_)))))))
                (_loop1372013781_ _target1371713775_ '() '()))
              (_g1369013748_ _g1369113752_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1369013748_ _g1369113752_))
                                        (_g1369013748_ _g1369113752_))))
                                (_g1369013748_ _g1369113752_))))
                        (_g1369013748_ _g1369113752_))))
                 (_g1368814168_
                  (lambda (_g1369114102_)
                    (if (gx#stx-pair? _g1369114102_)
                        (let ((_e1369614105_ (gx#syntax-e _g1369114102_)))
                          (let ((_hd1369714109_ (##car _e1369614105_))
                                (_tl1369814112_ (##cdr _e1369614105_)))
                            (if (gx#stx-pair? _tl1369814112_)
                                (let ((_e1369914115_
                                       (gx#syntax-e _tl1369814112_)))
                                  (let ((_hd1370014119_ (##car _e1369914115_))
                                        (_tl1370114122_ (##cdr _e1369914115_)))
                                    (if (gx#stx-pair? _hd1370014119_)
                                        (let ((_e1370214125_
                                               (gx#syntax-e _hd1370014119_)))
                                          (let ((_hd1370314129_
                                                 (##car _e1370214125_))
                                                (_tl1370414132_
                                                 (##cdr _e1370214125_)))
                                            (if (gx#stx-pair? _tl1370414132_)
                                                (let ((_e1370514135_
                                                       (gx#syntax-e
                                                        _tl1370414132_)))
                                                  (let ((_hd1370614139_
                                                         (##car _e1370514135_))
                                                        (_tl1370714142_
                                                         (##cdr _e1370514135_)))
                                                    (if (gx#stx-null?
                                                         _tl1370714142_)
                                                        ((lambda (_L14145_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L14147_
                          _L14148_
                          _L14149_)
                   (if (_let-head?13685_ _L14148_)
                       (cons _L14149_
                             (cons (cons (cons _L14148_ (cons _L14147_ '()))
                                         '())
                                   _L14145_))
                       (_g1368914098_ _g1369114102_)))
                 _tl1370114122_
                 _hd1370614139_
                 _hd1370314129_
                 _hd1369714109_)
                (_g1368914098_ _g1369114102_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1368914098_
                                                 _g1369114102_))))
                                        (_g1368914098_ _g1369114102_))))
                                (_g1368914098_ _g1369114102_))))
                        (_g1368914098_ _g1369114102_)))))
            (_g1368814168_ _stx13682_)))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#alet*|
      (lambda (_$stx14296_)
        (let* ((_g1430114346_
                (lambda (_g1430214342_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1430214342_)))
               (_g1430014447_
                (lambda (_g1430214350_)
                  (if (gx#stx-pair? _g1430214350_)
                      (let ((_e1432314353_ (gx#syntax-e _g1430214350_)))
                        (let ((_hd1432414357_ (##car _e1432314353_))
                              (_tl1432514360_ (##cdr _e1432314353_)))
                          (if (gx#stx-pair? _tl1432514360_)
                              (let ((_e1432614363_
                                     (gx#syntax-e _tl1432514360_)))
                                (let ((_hd1432714367_ (##car _e1432614363_))
                                      (_tl1432814370_ (##cdr _e1432614363_)))
                                  (if (gx#stx-pair? _hd1432714367_)
                                      (let ((_e1432914373_
                                             (gx#syntax-e _hd1432714367_)))
                                        (let ((_hd1433014377_
                                               (##car _e1432914373_))
                                              (_tl1433114380_
                                               (##cdr _e1432914373_)))
                                          (if (gx#stx-pair/null?
                                               _tl1432814370_)
                                              (if (fx>= (gx#stx-length
                                                         _tl1432814370_)
                                                        '0)
                                                  (let ((_g34969_
                                                         (gx#syntax-split-splice
                                                          _tl1432814370_
                                                          '0)))
                                                    (begin
                                                      (let ((_g34970_
                                                             (values-count
                                                              _g34969_)))
                                                        (if (not (fx= _g34970_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g34970_)))
              (let ((_target1433214383_ (values-ref _g34969_ 0))
                    (_tl1433414386_ (values-ref _g34969_ 1)))
                (if (gx#stx-null? _tl1433414386_)
                    (letrec ((_loop1433514389_
                              (lambda (_hd1433314393_ _body1433914396_)
                                (if (gx#stx-pair? _hd1433314393_)
                                    (let ((_e1433614399_
                                           (gx#syntax-e _hd1433314393_)))
                                      (let ((_lp-hd1433714403_
                                             (##car _e1433614399_))
                                            (_lp-tl1433814406_
                                             (##cdr _e1433614399_)))
                                        (_loop1433514389_
                                         _lp-tl1433814406_
                                         (cons _lp-hd1433714403_
                                               _body1433914396_))))
                                    (let ((_body1434014409_
                                           (reverse _body1433914396_)))
                                      ((lambda (_L14413_
                                                _L14415_
                                                _L14416_
                                                _L14417_)
                                         (cons (gx#datum->syntax '#f 'alet)
                                               (cons (cons _L14416_ '())
                                                     (cons (cons _L14417_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L14415_
                               (begin
                                 '#!void
                                 (foldr (lambda (_g1443814441_ _g1443914444_)
                                          (cons _g1443814441_ _g1443914444_))
                                        '()
                                        _L14413_))))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _body1434014409_
                                       _tl1433114380_
                                       _hd1433014377_
                                       _hd1432414357_))))))
                      (_loop1433514389_ _target1433214383_ '()))
                    (_g1430114346_ _g1430214350_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1430114346_
                                                   _g1430214350_))
                                              (_g1430114346_ _g1430214350_))))
                                      (_g1430114346_ _g1430214350_))))
                              (_g1430114346_ _g1430214350_))))
                      (_g1430114346_ _g1430214350_))))
               (_g1429914529_
                (lambda (_g1430214451_)
                  (if (gx#stx-pair? _g1430214451_)
                      (let ((_e1430414454_ (gx#syntax-e _g1430214451_)))
                        (let ((_hd1430514458_ (##car _e1430414454_))
                              (_tl1430614461_ (##cdr _e1430414454_)))
                          (if (gx#stx-pair? _tl1430614461_)
                              (let ((_e1430714464_
                                     (gx#syntax-e _tl1430614461_)))
                                (let ((_hd1430814468_ (##car _e1430714464_))
                                      (_tl1430914471_ (##cdr _e1430714464_)))
                                  (if (gx#stx-null? _hd1430814468_)
                                      (if (gx#stx-pair/null? _tl1430914471_)
                                          (if (fx>= (gx#stx-length
                                                     _tl1430914471_)
                                                    '0)
                                              (let ((_g34971_
                                                     (gx#syntax-split-splice
                                                      _tl1430914471_
                                                      '0)))
                                                (begin
                                                  (let ((_g34972_
                                                         (values-count
                                                          _g34971_)))
                                                    (if (not (fx= _g34972_ 2))
                                                        (error "Context expects 2 values"
                                                               _g34972_)))
                                                  (let ((_target1431014474_
                                                         (values-ref
                                                          _g34971_
                                                          0))
                                                        (_tl1431214477_
                                                         (values-ref
                                                          _g34971_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl1431214477_)
                                                        (letrec ((_loop1431314480_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd1431114484_ _body1431714487_)
                            (if (gx#stx-pair? _hd1431114484_)
                                (let ((_e1431414490_
                                       (gx#syntax-e _hd1431114484_)))
                                  (let ((_lp-hd1431514494_
                                         (##car _e1431414490_))
                                        (_lp-tl1431614497_
                                         (##cdr _e1431414490_)))
                                    (_loop1431314480_
                                     _lp-tl1431614497_
                                     (cons _lp-hd1431514494_
                                           _body1431714487_))))
                                (let ((_body1431814500_
                                       (reverse _body1431714487_)))
                                  ((lambda (_L14504_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons '()
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g1452014523_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1452114526_)
                    (cons _g1452014523_ _g1452114526_))
                  '()
                  _L14504_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _body1431814500_))))))
                  (_loop1431314480_ _target1431014474_ '()))
                (_g1430014447_ _g1430214451_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1430014447_ _g1430214451_))
                                          (_g1430014447_ _g1430214451_))
                                      (_g1430014447_ _g1430214451_))))
                              (_g1430014447_ _g1430214451_))))
                      (_g1430014447_ _g1430214451_)))))
          (_g1429914529_ _$stx14296_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#@list|
      (lambda (_$stx14535_)
        (let* ((_g1454414601_
                (lambda (_g1454514597_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1454514597_)))
               (_g1454314630_
                (lambda (_g1454514605_)
                  (if (gx#stx-pair? _g1454514605_)
                      (let ((_e1459314608_ (gx#syntax-e _g1454514605_)))
                        (let ((_hd1459414612_ (##car _e1459314608_))
                              (_tl1459514615_ (##cdr _e1459314608_)))
                          ((lambda (_L14618_) _L14618_) _tl1459514615_)))
                      (_g1454414601_ _g1454514605_))))
               (_g1454214674_
                (lambda (_g1454514634_)
                  (if (gx#stx-pair? _g1454514634_)
                      (let ((_e1458614637_ (gx#syntax-e _g1454514634_)))
                        (let ((_hd1458714641_ (##car _e1458614637_))
                              (_tl1458814644_ (##cdr _e1458614637_)))
                          (if (gx#stx-pair? _tl1458814644_)
                              (let ((_e1458914647_
                                     (gx#syntax-e _tl1458814644_)))
                                (let ((_hd1459014651_ (##car _e1458914647_))
                                      (_tl1459114654_ (##cdr _e1458914647_)))
                                  ((lambda (_L14657_ _L14659_ _L14660_)
                                     (cons (gx#datum->syntax '#f 'cons)
                                           (cons _L14659_
                                                 (cons (cons _L14660_ _L14657_)
                                                       '()))))
                                   _tl1459114654_
                                   _hd1459014651_
                                   _hd1458714641_)))
                              (_g1454314630_ _g1454514634_))))
                      (_g1454314630_ _g1454514634_))))
               (_g1454114732_
                (lambda (_g1454514678_)
                  (if (gx#stx-pair? _g1454514678_)
                      (let ((_e1457414681_ (gx#syntax-e _g1454514678_)))
                        (let ((_hd1457514685_ (##car _e1457414681_))
                              (_tl1457614688_ (##cdr _e1457414681_)))
                          (if (gx#stx-pair? _tl1457614688_)
                              (let ((_e1457714691_
                                     (gx#syntax-e _tl1457614688_)))
                                (let ((_hd1457814695_ (##car _e1457714691_))
                                      (_tl1457914698_ (##cdr _e1457714691_)))
                                  (if (gx#stx-pair? _tl1457914698_)
                                      (let ((_e1458014701_
                                             (gx#syntax-e _tl1457914698_)))
                                        (let ((_hd1458114705_
                                               (##car _e1458014701_))
                                              (_tl1458214708_
                                               (##cdr _e1458014701_)))
                                          ((lambda (_L14711_
                                                    _L14713_
                                                    _L14714_
                                                    _L14715_)
                                             (if (gx#ellipsis? _L14713_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'foldr)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'cons)
                                                             (cons (cons _L14715_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L14711_)
                           (cons _L14714_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1454214674_
                                                  _g1454514678_)))
                                           _tl1458214708_
                                           _hd1458114705_
                                           _hd1457814695_
                                           _hd1457514685_)))
                                      (_g1454214674_ _g1454514678_))))
                              (_g1454214674_ _g1454514678_))))
                      (_g1454214674_ _g1454514678_))))
               (_g1454014786_
                (lambda (_g1454514736_)
                  (if (gx#stx-pair? _g1454514736_)
                      (let ((_e1456114739_ (gx#syntax-e _g1454514736_)))
                        (let ((_hd1456214743_ (##car _e1456114739_))
                              (_tl1456314746_ (##cdr _e1456114739_)))
                          (if (gx#stx-pair? _tl1456314746_)
                              (let ((_e1456414749_
                                     (gx#syntax-e _tl1456314746_)))
                                (let ((_hd1456514753_ (##car _e1456414749_))
                                      (_tl1456614756_ (##cdr _e1456414749_)))
                                  (if (gx#stx-pair? _tl1456614756_)
                                      (let ((_e1456714759_
                                             (gx#syntax-e _tl1456614756_)))
                                        (let ((_hd1456814763_
                                               (##car _e1456714759_))
                                              (_tl1456914766_
                                               (##cdr _e1456714759_)))
                                          (if (gx#stx-null? _tl1456914766_)
                                              ((lambda (_L14769_ _L14771_)
                                                 (if (gx#ellipsis? _L14769_)
                                                     _L14771_
                                                     (_g1454114732_
                                                      _g1454514736_)))
                                               _hd1456814763_
                                               _hd1456514753_)
                                              (_g1454114732_ _g1454514736_))))
                                      (_g1454114732_ _g1454514736_))))
                              (_g1454114732_ _g1454514736_))))
                      (_g1454114732_ _g1454514736_))))
               (_g1453914838_
                (lambda (_g1454514790_)
                  (if (gx#stx-pair? _g1454514790_)
                      (let ((_e1455014793_ (gx#syntax-e _g1454514790_)))
                        (let ((_hd1455114797_ (##car _e1455014793_))
                              (_tl1455214800_ (##cdr _e1455014793_)))
                          (if (gx#stx-pair? _tl1455214800_)
                              (let ((_e1455314803_
                                     (gx#syntax-e _tl1455214800_)))
                                (let ((_hd1455414807_ (##car _e1455314803_))
                                      (_tl1455514810_ (##cdr _e1455314803_)))
                                  (if (gx#stx-datum? _hd1455414807_)
                                      (if (equal? (gx#stx-e _hd1455414807_)
                                                  '::)
                                          (if (gx#stx-pair? _tl1455514810_)
                                              (let ((_e1455614813_
                                                     (gx#syntax-e
                                                      _tl1455514810_)))
                                                (let ((_hd1455714817_
                                                       (##car _e1455614813_))
                                                      (_tl1455814820_
                                                       (##cdr _e1455614813_)))
                                                  (if (gx#stx-null?
                                                       _tl1455814820_)
                                                      ((lambda (_L14823_)
                                                         _L14823_)
                                                       _hd1455714817_)
                                                      (_g1454014786_
                                                       _g1454514790_))))
                                              (_g1454014786_ _g1454514790_))
                                          (_g1454014786_ _g1454514790_))
                                      (_g1454014786_ _g1454514790_))))
                              (_g1454014786_ _g1454514790_))))
                      (_g1454014786_ _g1454514790_))))
               (_g1453814859_
                (lambda (_g1454514842_)
                  (if (gx#stx-pair? _g1454514842_)
                      (let ((_e1454614845_ (gx#syntax-e _g1454514842_)))
                        (let ((_hd1454714849_ (##car _e1454614845_))
                              (_tl1454814852_ (##cdr _e1454614845_)))
                          (if (gx#stx-null? _tl1454814852_)
                              ((lambda ()
                                 (cons (gx#datum->syntax '#f 'quote)
                                       (cons '() '()))))
                              (_g1453914838_ _g1454514842_))))
                      (_g1453914838_ _g1454514842_)))))
          (_g1453814859_ _$stx14535_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#quasiquote|
      (lambda (_stx14863_)
        (letrec ((_simple-quote?14866_
                  (lambda (_e15558_)
                    (let* ((_g1556615603_
                            (lambda (_g1556715599_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1556715599_)))
                           (_g1556515614_
                            (lambda (_g1556715607_) ((lambda () '#t))))
                           (_g1556415637_
                            (lambda (_g1556715618_)
                              (if (gx#stx-box? _g1556715618_)
                                  (let ((_e1559715621_
                                         (unbox (gx#syntax-e _g1556715618_))))
                                    ((lambda (_L15625_)
                                       (_simple-quote?14866_ _L15625_))
                                     _e1559715621_))
                                  (_g1556515614_ _g1556715618_))))
                           (_g1556315700_
                            (lambda (_g1556715641_)
                              (if (gx#stx-vector? _g1556715641_)
                                  (let ((_e1558615644_
                                         (vector->list
                                          (gx#syntax-e _g1556715641_))))
                                    (if (gx#stx-pair/null? _e1558615644_)
                                        (if (fx>= (gx#stx-length _e1558615644_)
                                                  '0)
                                            (let ((_g34973_
                                                   (gx#syntax-split-splice
                                                    _e1558615644_
                                                    '0)))
                                              (begin
                                                (let ((_g34974_
                                                       (values-count
                                                        _g34973_)))
                                                  (if (not (fx= _g34974_ 2))
                                                      (error "Context expects 2 values"
                                                             _g34974_)))
                                                (let ((_target1558715648_
                                                       (values-ref _g34973_ 0))
                                                      (_tl1558915651_
                                                       (values-ref
                                                        _g34973_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl1558915651_)
                                                      (letrec ((_loop1559015654_
                                                                (lambda (_hd1558815658_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _e1559415661_)
                          (if (gx#stx-pair? _hd1558815658_)
                              (let ((_e1559115664_
                                     (gx#syntax-e _hd1558815658_)))
                                (let ((_lp-hd1559215668_ (##car _e1559115664_))
                                      (_lp-tl1559315671_
                                       (##cdr _e1559115664_)))
                                  (_loop1559015654_
                                   _lp-tl1559315671_
                                   (cons _lp-hd1559215668_ _e1559415661_))))
                              (let ((_e1559515674_ (reverse _e1559415661_)))
                                ((lambda (_L15678_)
                                   (_simple-quote?14866_
                                    (begin
                                      '#!void
                                      (foldr (lambda (_g1569115694_
                                                      _g1569215697_)
                                               (cons _g1569115694_
                                                     _g1569215697_))
                                             '()
                                             _L15678_))))
                                 _e1559515674_))))))
                (_loop1559015654_ _target1558715648_ '()))
              (_g1556415637_ _g1556715641_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1556415637_ _g1556715641_))
                                        (_g1556415637_ _g1556715641_)))
                                  (_g1556415637_ _g1556715641_))))
                           (_g1556215730_
                            (lambda (_g1556715704_)
                              (if (gx#stx-pair? _g1556715704_)
                                  (let ((_e1558215707_
                                         (gx#syntax-e _g1556715704_)))
                                    (let ((_hd1558315711_
                                           (##car _e1558215707_))
                                          (_tl1558415714_
                                           (##cdr _e1558215707_)))
                                      ((lambda (_L15717_ _L15719_)
                                         (if (_simple-quote?14866_ _L15719_)
                                             (_simple-quote?14866_ _L15717_)
                                             '#f))
                                       _tl1558415714_
                                       _hd1558315711_)))
                                  (_g1556315700_ _g1556715704_))))
                           (_g1556115761_
                            (lambda (_g1556715734_)
                              (if (gx#stx-pair? _g1556715734_)
                                  (let ((_e1557415737_
                                         (gx#syntax-e _g1556715734_)))
                                    (let ((_hd1557515741_
                                           (##car _e1557415737_))
                                          (_tl1557615744_
                                           (##cdr _e1557415737_)))
                                      (if (gx#identifier? _hd1557515741_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<sugar>$<sugar:2>[1]#_g34975_|
                                               _hd1557515741_)
                                              (if (gx#stx-pair? _tl1557615744_)
                                                  (let ((_e1557715747_
                                                         (gx#syntax-e
                                                          _tl1557615744_)))
                                                    (let ((_hd1557815751_
                                                           (##car _e1557715747_))
                                                          (_tl1557915754_
                                                           (##cdr _e1557715747_)))
                                                      (if (gx#stx-null?
                                                           _tl1557915754_)
                                                          ((lambda () '#f))
                                                          (_g1556215730_
                                                           _g1556715734_))))
                                                  (_g1556215730_
                                                   _g1556715734_))
                                              (_g1556215730_ _g1556715734_))
                                          (_g1556215730_ _g1556715734_))))
                                  (_g1556215730_ _g1556715734_))))
                           (_g1556015792_
                            (lambda (_g1556715765_)
                              (if (gx#stx-pair? _g1556715765_)
                                  (let ((_e1556815768_
                                         (gx#syntax-e _g1556715765_)))
                                    (let ((_hd1556915772_
                                           (##car _e1556815768_))
                                          (_tl1557015775_
                                           (##cdr _e1556815768_)))
                                      (if (gx#identifier? _hd1556915772_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<sugar>$<sugar:2>[1]#_g34976_|
                                               _hd1556915772_)
                                              (if (gx#stx-pair? _tl1557015775_)
                                                  (let ((_e1557115778_
                                                         (gx#syntax-e
                                                          _tl1557015775_)))
                                                    (let ((_hd1557215782_
                                                           (##car _e1557115778_))
                                                          (_tl1557315785_
                                                           (##cdr _e1557115778_)))
                                                      (if (gx#stx-null?
                                                           _tl1557315785_)
                                                          ((lambda () '#f))
                                                          (_g1556115761_
                                                           _g1556715765_))))
                                                  (_g1556115761_
                                                   _g1556715765_))
                                              (_g1556115761_ _g1556715765_))
                                          (_g1556115761_ _g1556715765_))))
                                  (_g1556115761_ _g1556715765_)))))
                      (_g1556015792_ _e15558_))))
                 (_generate14868_
                  (lambda (_e14930_ _d14932_)
                    (let* ((_g1494114999_
                            (lambda (_g1494214995_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1494214995_)))
                           (_g1494015016_
                            (lambda (_g1494215003_)
                              ((lambda (_L15006_)
                                 (cons (gx#datum->syntax '#f 'quote)
                                       (cons _L15006_ '())))
                               _g1494215003_)))
                           (_g1493915068_
                            (lambda (_g1494215020_)
                              (if (gx#stx-box? _g1494215020_)
                                  (let ((_e1499215023_
                                         (unbox (gx#syntax-e _g1494215020_))))
                                    ((lambda (_L15027_)
                                       (let* ((_g1503715045_
                                               (lambda (_g1503815041_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1503815041_)))
                                              (_g1503615064_
                                               (lambda (_g1503815049_)
                                                 ((lambda (_L15052_)
                                                    (let ()
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'box)
                                                            (cons _L15052_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g1503815049_))))
                                         (_g1503615064_
                                          (_generate14868_
                                           _L15027_
                                           _d14932_))))
                                     _e1499215023_))
                                  (_g1494015016_ _g1494215020_))))
                           (_g1493815162_
                            (lambda (_g1494215072_)
                              (if (gx#stx-vector? _g1494215072_)
                                  (let ((_e1498115075_
                                         (vector->list
                                          (gx#syntax-e _g1494215072_))))
                                    (if (gx#stx-pair/null? _e1498115075_)
                                        (if (fx>= (gx#stx-length _e1498115075_)
                                                  '0)
                                            (let ((_g34977_
                                                   (gx#syntax-split-splice
                                                    _e1498115075_
                                                    '0)))
                                              (begin
                                                (let ((_g34978_
                                                       (values-count
                                                        _g34977_)))
                                                  (if (not (fx= _g34978_ 2))
                                                      (error "Context expects 2 values"
                                                             _g34978_)))
                                                (let ((_target1498215079_
                                                       (values-ref _g34977_ 0))
                                                      (_tl1498415082_
                                                       (values-ref
                                                        _g34977_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl1498415082_)
                                                      (letrec ((_loop1498515085_
                                                                (lambda (_hd1498315089_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _e1498915092_)
                          (if (gx#stx-pair? _hd1498315089_)
                              (let ((_e1498615095_
                                     (gx#syntax-e _hd1498315089_)))
                                (let ((_lp-hd1498715099_ (##car _e1498615095_))
                                      (_lp-tl1498815102_
                                       (##cdr _e1498615095_)))
                                  (_loop1498515085_
                                   _lp-tl1498815102_
                                   (cons _lp-hd1498715099_ _e1498915092_))))
                              (let ((_e1499015105_ (reverse _e1498915092_)))
                                ((lambda (_L15109_)
                                   (let* ((_g1512315131_
                                           (lambda (_g1512415127_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1512415127_)))
                                          (_g1512215150_
                                           (lambda (_g1512415135_)
                                             ((lambda (_L15138_)
                                                (let ()
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'list->vector)
                                                        (cons _L15138_ '()))))
                                              _g1512415135_))))
                                     (_g1512215150_
                                      (_generate14868_
                                       (begin
                                         '#!void
                                         (foldr (lambda (_g1515315156_
                                                         _g1515415159_)
                                                  (cons _g1515315156_
                                                        _g1515415159_))
                                                '()
                                                _L15109_))
                                       _d14932_))))
                                 _e1499015105_))))))
                (_loop1498515085_ _target1498215079_ '()))
              (_g1493915068_ _g1494215072_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1493915068_ _g1494215072_))
                                        (_g1493915068_ _g1494215072_)))
                                  (_g1493915068_ _g1494215072_))))
                           (_g1493715256_
                            (lambda (_g1494215166_)
                              (if (gx#stx-pair? _g1494215166_)
                                  (let ((_e1497715169_
                                         (gx#syntax-e _g1494215166_)))
                                    (let ((_hd1497815173_
                                           (##car _e1497715169_))
                                          (_tl1497915176_
                                           (##cdr _e1497715169_)))
                                      ((lambda (_L15179_ _L15181_)
                                         (let* ((_g1519215207_
                                                 (lambda (_g1519315203_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1519315203_)))
                                                (_g1519115252_
                                                 (lambda (_g1519315211_)
                                                   (if (gx#stx-pair?
                                                        _g1519315211_)
                                                       (let ((_e1519615214_
                                                              (gx#syntax-e
                                                               _g1519315211_)))
                                                         (let ((_hd1519715218_
                                                                (##car _e1519615214_))
                                                               (_tl1519815221_
                                                                (##cdr _e1519615214_)))
                                                           (if (gx#stx-pair?
                                                                _tl1519815221_)
                                                               (let ((_e1519915224_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl1519815221_)))
                         (let ((_hd1520015228_ (##car _e1519915224_))
                               (_tl1520115231_ (##cdr _e1519915224_)))
                           (if (gx#stx-null? _tl1520115231_)
                               ((lambda (_L15234_ _L15236_)
                                  (let ()
                                    (cons (gx#datum->syntax '#f 'cons)
                                          (cons _L15236_
                                                (cons _L15234_ '())))))
                                _hd1520015228_
                                _hd1519715218_)
                               (_g1519215207_ _g1519315211_))))
                       (_g1519215207_ _g1519315211_))))
               (_g1519215207_ _g1519315211_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g1519115252_
                                            (list (_generate14868_
                                                   _L15181_
                                                   _d14932_)
                                                  (_generate14868_
                                                   _L15179_
                                                   _d14932_)))))
                                       _tl1497915176_
                                       _hd1497815173_)))
                                  (_g1493815162_ _g1494215166_))))
                           (_g1493615341_
                            (lambda (_g1494215260_)
                              (if (gx#stx-pair? _g1494215260_)
                                  (let ((_e1496615263_
                                         (gx#syntax-e _g1494215260_)))
                                    (let ((_hd1496715267_
                                           (##car _e1496615263_))
                                          (_tl1496815270_
                                           (##cdr _e1496615263_)))
                                      (if (gx#stx-pair? _hd1496715267_)
                                          (let ((_e1496915273_
                                                 (gx#syntax-e _hd1496715267_)))
                                            (let ((_hd1497015277_
                                                   (##car _e1496915273_))
                                                  (_tl1497115280_
                                                   (##cdr _e1496915273_)))
                                              (if (gx#identifier?
                                                   _hd1497015277_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<sugar>$<sugar:2>[1]#_g34979_|
                                                       _hd1497015277_)
                                                      (if (gx#stx-pair?
                                                           _tl1497115280_)
                                                          (let ((_e1497215283_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1497115280_)))
                    (let ((_hd1497315287_ (##car _e1497215283_))
                          (_tl1497415290_ (##cdr _e1497215283_)))
                      (if (gx#stx-null? _tl1497415290_)
                          ((lambda (_L15293_ _L15295_)
                             (if (fxzero? _d14932_)
                                 (let* ((_g1531015318_
                                         (lambda (_g1531115314_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g1531115314_)))
                                        (_g1530915337_
                                         (lambda (_g1531115322_)
                                           ((lambda (_L15325_)
                                              (let ()
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'foldr)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'cons)
                                                            (cons _L15325_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L15295_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g1531115322_))))
                                   (_g1530915337_
                                    (_generate14868_ _L15293_ _d14932_)))
                                 (_g1493715256_ _g1494215260_)))
                           _tl1496815270_
                           _hd1497315287_)
                          (_g1493715256_ _g1494215260_))))
                  (_g1493715256_ _g1494215260_))
              (_g1493715256_ _g1494215260_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1493715256_
                                                   _g1494215260_))))
                                          (_g1493715256_ _g1494215260_))))
                                  (_g1493715256_ _g1494215260_))))
                           (_g1493515412_
                            (lambda (_g1494215345_)
                              (if (gx#stx-pair? _g1494215345_)
                                  (let ((_e1495815348_
                                         (gx#syntax-e _g1494215345_)))
                                    (let ((_hd1495915352_
                                           (##car _e1495815348_))
                                          (_tl1496015355_
                                           (##cdr _e1495815348_)))
                                      (if (gx#identifier? _hd1495915352_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<sugar>$<sugar:2>[1]#_g34980_|
                                               _hd1495915352_)
                                              (if (gx#stx-pair? _tl1496015355_)
                                                  (let ((_e1496115358_
                                                         (gx#syntax-e
                                                          _tl1496015355_)))
                                                    (let ((_hd1496215362_
                                                           (##car _e1496115358_))
                                                          (_tl1496315365_
                                                           (##cdr _e1496115358_)))
                                                      (if (gx#stx-null?
                                                           _tl1496315365_)
                                                          ((lambda (_L15368_)
                                                             (if (fxzero? _d14932_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'foldr)
                               (cons (gx#datum->syntax '#f 'cons)
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons '() '()))
                                           (cons _L15368_ '()))))
                         (let* ((_g1538115389_
                                 (lambda (_g1538215385_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1538215385_)))
                                (_g1538015408_
                                 (lambda (_g1538215393_)
                                   ((lambda (_L15396_)
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
                                                    (cons _L15396_ '())))))
                                    _g1538215393_))))
                           (_g1538015408_
                            (_generate14868_ _L15368_ (fx1- _d14932_))))))
                   _hd1496215362_)
                  (_g1493615341_ _g1494215345_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1493615341_
                                                   _g1494215345_))
                                              (_g1493615341_ _g1494215345_))
                                          (_g1493615341_ _g1494215345_))))
                                  (_g1493615341_ _g1494215345_))))
                           (_g1493415483_
                            (lambda (_g1494215416_)
                              (if (gx#stx-pair? _g1494215416_)
                                  (let ((_e1495115419_
                                         (gx#syntax-e _g1494215416_)))
                                    (let ((_hd1495215423_
                                           (##car _e1495115419_))
                                          (_tl1495315426_
                                           (##cdr _e1495115419_)))
                                      (if (gx#identifier? _hd1495215423_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<sugar>$<sugar:2>[1]#_g34981_|
                                               _hd1495215423_)
                                              (if (gx#stx-pair? _tl1495315426_)
                                                  (let ((_e1495415429_
                                                         (gx#syntax-e
                                                          _tl1495315426_)))
                                                    (let ((_hd1495515433_
                                                           (##car _e1495415429_))
                                                          (_tl1495615436_
                                                           (##cdr _e1495415429_)))
                                                      (if (gx#stx-null?
                                                           _tl1495615436_)
                                                          ((lambda (_L15439_)
                                                             (if (fxzero? _d14932_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L15439_
                         (let* ((_g1545215460_
                                 (lambda (_g1545315456_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1545315456_)))
                                (_g1545115479_
                                 (lambda (_g1545315464_)
                                   ((lambda (_L15467_)
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
                                                    (cons _L15467_ '())))))
                                    _g1545315464_))))
                           (_g1545115479_
                            (_generate14868_ _L15439_ (fx1- _d14932_))))))
                   _hd1495515433_)
                  (_g1493515412_ _g1494215416_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1493515412_
                                                   _g1494215416_))
                                              (_g1493515412_ _g1494215416_))
                                          (_g1493515412_ _g1494215416_))))
                                  (_g1493515412_ _g1494215416_))))
                           (_g1493315554_
                            (lambda (_g1494215487_)
                              (if (gx#stx-pair? _g1494215487_)
                                  (let ((_e1494415490_
                                         (gx#syntax-e _g1494215487_)))
                                    (let ((_hd1494515494_
                                           (##car _e1494415490_))
                                          (_tl1494615497_
                                           (##cdr _e1494415490_)))
                                      (if (gx#identifier? _hd1494515494_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<sugar>$<sugar:2>[1]#_g34982_|
                                               _hd1494515494_)
                                              (if (gx#stx-pair? _tl1494615497_)
                                                  (let ((_e1494715500_
                                                         (gx#syntax-e
                                                          _tl1494615497_)))
                                                    (let ((_hd1494815504_
                                                           (##car _e1494715500_))
                                                          (_tl1494915507_
                                                           (##cdr _e1494715500_)))
                                                      (if (gx#stx-null?
                                                           _tl1494915507_)
                                                          ((lambda (_L15510_)
                                                             (let* ((_g1552315531_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1552415527_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g1552415527_)))
                            (_g1552215550_
                             (lambda (_g1552415535_)
                               ((lambda (_L15538_)
                                  (let ()
                                    (cons (gx#datum->syntax '#f 'list)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'quote)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'quasiquote)
                                                            '()))
                                                (cons _L15538_ '())))))
                                _g1552415535_))))
                       (_g1552215550_
                        (_generate14868_ _L15510_ (fx1+ _d14932_)))))
                   _hd1494815504_)
                  (_g1493415483_ _g1494215487_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1493415483_
                                                   _g1494215487_))
                                              (_g1493415483_ _g1494215487_))
                                          (_g1493415483_ _g1494215487_))))
                                  (_g1493415483_ _g1494215487_)))))
                      (_g1493315554_ _e14930_)))))
          (let* ((_g1487014884_
                  (lambda (_g1487114880_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1487114880_)))
                 (_g1486914926_
                  (lambda (_g1487114888_)
                    (if (gx#stx-pair? _g1487114888_)
                        (let ((_e1487314891_ (gx#syntax-e _g1487114888_)))
                          (let ((_hd1487414895_ (##car _e1487314891_))
                                (_tl1487514898_ (##cdr _e1487314891_)))
                            (if (gx#stx-pair? _tl1487514898_)
                                (let ((_e1487614901_
                                       (gx#syntax-e _tl1487514898_)))
                                  (let ((_hd1487714905_ (##car _e1487614901_))
                                        (_tl1487814908_ (##cdr _e1487614901_)))
                                    (if (gx#stx-null? _tl1487814908_)
                                        ((lambda (_L14911_)
                                           (if (_simple-quote?14866_ _L14911_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _L14911_ '()))
                                               (_generate14868_ _L14911_ '0)))
                                         _hd1487714905_)
                                        (_g1487014884_ _g1487114888_))))
                                (_g1487014884_ _g1487114888_))))
                        (_g1487014884_ _g1487114888_)))))
            (_g1486914926_ _stx14863_)))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#delay|
      (lambda (_$stx15798_)
        (let* ((_g1580315824_
                (lambda (_g1580415820_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1580415820_)))
               (_g1580215865_
                (lambda (_g1580415828_)
                  (if (gx#stx-pair? _g1580415828_)
                      (let ((_e1581315831_ (gx#syntax-e _g1580415828_)))
                        (let ((_hd1581415835_ (##car _e1581315831_))
                              (_tl1581515838_ (##cdr _e1581315831_)))
                          (if (gx#stx-pair? _tl1581515838_)
                              (let ((_e1581615841_
                                     (gx#syntax-e _tl1581515838_)))
                                (let ((_hd1581715845_ (##car _e1581615841_))
                                      (_tl1581815848_ (##cdr _e1581615841_)))
                                  (if (gx#stx-null? _tl1581815848_)
                                      ((lambda (_L15851_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                'make-promise)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'lambda%)
                                                           (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L15851_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _hd1581715845_)
                                      (_g1580315824_ _g1580415828_))))
                              (_g1580315824_ _g1580415828_))))
                      (_g1580315824_ _g1580415828_))))
               (_g1580115905_
                (lambda (_g1580415869_)
                  (if (gx#stx-pair? _g1580415869_)
                      (let ((_e1580615872_ (gx#syntax-e _g1580415869_)))
                        (let ((_hd1580715876_ (##car _e1580615872_))
                              (_tl1580815879_ (##cdr _e1580615872_)))
                          (if (gx#stx-pair? _tl1580815879_)
                              (let ((_e1580915882_
                                     (gx#syntax-e _tl1580815879_)))
                                (let ((_hd1581015886_ (##car _e1580915882_))
                                      (_tl1581115889_ (##cdr _e1580915882_)))
                                  (if (gx#stx-null? _tl1581115889_)
                                      ((lambda (_L15892_)
                                         (if (gx#stx-datum? _L15892_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _L15892_ '()))
                                             (_g1580215865_ _g1580415869_)))
                                       _hd1581015886_)
                                      (_g1580215865_ _g1580415869_))))
                              (_g1580215865_ _g1580415869_))))
                      (_g1580215865_ _g1580415869_)))))
          (_g1580115905_ _$stx15798_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#cut|
      (lambda (_stx15909_)
        (letrec ((_generate15912_
                  (lambda (_rest16031_)
                    (let _lp16034_ ((_rest16037_ _rest16031_)
                                    (_hd16039_ '())
                                    (_body16040_ '()))
                      (let* ((_g1604316055_
                              (lambda (_g1604416051_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1604416051_)))
                             (_g1604216066_
                              (lambda (_g1604416059_)
                                ((lambda ()
                                   (values (reverse _hd16039_)
                                           (reverse _body16040_)
                                           '#f)))))
                             (_g1604116152_
                              (lambda (_g1604416070_)
                                (if (gx#stx-pair? _g1604416070_)
                                    (let ((_e1604716073_
                                           (gx#syntax-e _g1604416070_)))
                                      (let ((_hd1604816077_
                                             (##car _e1604716073_))
                                            (_tl1604916080_
                                             (##cdr _e1604716073_)))
                                        ((lambda (_L16083_ _L16085_)
                                           (let* ((_g1610216109_
                                                   (lambda (_g1610316105_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g1610316105_)))
                                                  (_g1610116120_
                                                   (lambda (_g1610316113_)
                                                     ((lambda ()
                                                        (_lp16034_
                                                         _L16083_
                                                         _hd16039_
                                                         (cons _L16085_
                                                               _body16040_))))))
                                                  (_g1610016134_
                                                   (lambda (_g1610316124_)
                                                     (if (gx#identifier?
                                                          _g1610316124_)
                                                         (if (gx#free-identifier=?
                                                              |gerbil/core$<sugar>$<sugar:2>[1]#_g34983_|
                                                              _g1610316124_)
                                                             ((lambda ()
                                                                (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L16083_)
                            (let ((_tail16131_ (gx#genident)))
                              (values (foldl cons _tail16131_ _hd16039_)
                                      (foldl cons
                                             (list _tail16131_)
                                             _body16040_)
                                      '#t))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _stx15909_
                             _L16085_))))
                     (_g1610116120_ _g1610316124_))
                 (_g1610116120_ _g1610316124_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1609916148_
                                                   (lambda (_g1610316138_)
                                                     (if (gx#identifier?
                                                          _g1610316138_)
                                                         (if (gx#free-identifier=?
                                                              |gerbil/core$<sugar>$<sugar:2>[1]#_g34984_|
                                                              _g1610316138_)
                                                             ((lambda ()
                                                                (let ((_arg16145_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#genident)))
                          (_lp16034_
                           _L16083_
                           (cons _arg16145_ _hd16039_)
                           (cons _arg16145_ _body16040_)))))
                     (_g1610016134_ _g1610316138_))
                 (_g1610016134_ _g1610316138_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1609916148_ _L16085_)))
                                         _tl1604916080_
                                         _hd1604816077_)))
                                    (_g1604216066_ _g1604416070_)))))
                        (_g1604116152_ _rest16037_))))))
          (let* ((_g1591515926_
                  (lambda (_g1591615922_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1591615922_)))
                 (_g1591416027_
                  (lambda (_g1591615930_)
                    (if (gx#stx-pair? _g1591615930_)
                        (let ((_e1591815933_ (gx#syntax-e _g1591615930_)))
                          (let ((_hd1591915937_ (##car _e1591815933_))
                                (_tl1592015940_ (##cdr _e1591815933_)))
                            ((lambda (_L15943_)
                               (if (if (gx#stx-list? _L15943_)
                                       (not (gx#stx-null? _L15943_))
                                       '#f)
                                   (let ((_g34985_ (_generate15912_ _L15943_)))
                                     (begin
                                       (let ((_g34986_
                                              (values-count _g34985_)))
                                         (if (not (fx= _g34986_ 3))
                                             (error "Context expects 3 values"
                                                    _g34986_)))
                                       (let ((_hd15956_
                                              (values-ref _g34985_ 0))
                                             (_body15958_
                                              (values-ref _g34985_ 1))
                                             (_tail?15959_
                                              (values-ref _g34985_ 2)))
                                         (let* ((_g1596115969_
                                                 (lambda (_g1596215965_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1596215965_)))
                                                (_g1596016023_
                                                 (lambda (_g1596215973_)
                                                   ((lambda (_L15976_)
                                                      (let ()
                                                        (let* ((_g1598915997_
                                                                (lambda (_g1599015993_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1599015993_)))
                       (_g1598816019_
                        (lambda (_g1599016001_)
                          ((lambda (_L16004_)
                             (let ()
                               (let ()
                                 (if _tail?15959_
                                     (cons (gx#datum->syntax '#f 'lambda%)
                                           (cons _L15976_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'apply)
                                                             _L16004_)
                                                       '())))
                                     (cons (gx#datum->syntax '#f 'lambda%)
                                           (cons _L15976_
                                                 (cons _L16004_ '())))))))
                           _g1599016001_))))
                  (_g1598816019_ _body15958_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1596215973_))))
                                           (_g1596016023_ _hd15956_)))))
                                   (_g1591515926_ _g1591615930_)))
                             _tl1592015940_)))
                        (_g1591515926_ _g1591615930_)))))
            (_g1591416027_ _stx15909_)))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#<>|
      (lambda (_$stx16157_)
        (let ((_g1616016167_
               (lambda (_g1616116163_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1616116163_))))
          (_g1616016167_ _$stx16157_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#<...>|
      (lambda (_$stx16171_)
        (let ((_g1617416181_
               (lambda (_g1617516177_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1617516177_))))
          (_g1617416181_ _$stx16171_))))))
