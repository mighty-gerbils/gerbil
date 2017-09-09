(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g30245_|
    (gx#core-quote-syntax '=>))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g30246_|
    (gx#core-quote-syntax 'else))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g30247_|
    (gx#core-quote-syntax 'else))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g30264_|
    (gx#core-quote-syntax 'values))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g30273_|
    (gx#core-quote-syntax 'values))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g30274_|
    (gx#core-quote-syntax 'values))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g30281_|
    (gx#core-quote-syntax 'unquote-splicing))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g30282_|
    (gx#core-quote-syntax 'unquote))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g30285_|
    (gx#core-quote-syntax 'unquote-splicing))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g30286_|
    (gx#core-quote-syntax 'unquote-splicing))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g30287_|
    (gx#core-quote-syntax 'unquote))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g30288_|
    (gx#core-quote-syntax 'quasiquote))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g30291_|
    (gx#core-quote-syntax '<...>))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g30292_|
    (gx#core-quote-syntax '<>))
  (begin
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#lambda|
      (lambda (_stx4868_)
        (let ((_simple-lambda?4871_
               (lambda (_hd8021_) (gx#stx-andmap gx#identifier? _hd8021_))))
          (let ((_opt-lambda?4873_
                 (lambda (_hd7873_)
                   ((letrec ((_lp7876_
                              (lambda (_rest7879_ _opt?7881_)
                                (let ((_g78847896_
                                       (lambda (_g78857892_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g78857892_))))
                                  (let ((_g78837911_
                                         (lambda (_g78857900_)
                                           ((lambda ()
                                              (if _opt?7881_
                                                  (let ((_$e7907_
                                                         (gx#stx-null?
                                                          _rest7879_)))
                                                    (if _$e7907_
                                                        _$e7907_
                                                        (gx#identifier?
                                                         _rest7879_)))
                                                  '#f))))))
                                    (let ((_g78828017_
                                           (lambda (_g78857915_)
                                             (if (gx#stx-pair? _g78857915_)
                                                 (let ((_e78887918_
                                                        (gx#syntax-e
                                                         _g78857915_)))
                                                   (let ((_hd78897922_
                                                          (##car _e78887918_))
                                                         (_tl78907925_
                                                          (##cdr _e78887918_)))
                                                     ((lambda (_L7928_ _L7930_)
                                                        (let ((_g79467960_
                                                               (lambda (_g79477956_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g79477956_))))
                  (let ((_g79457971_
                         (lambda (_g79477964_)
                           ((lambda ()
                              (if (gx#identifier? _L7930_)
                                  (if (not _opt?7881_)
                                      (_lp7876_ _L7928_ '#f)
                                      '#f)
                                  '#f))))))
                    (let ((_g79448013_
                           (lambda (_g79477975_)
                             (if (gx#stx-pair? _g79477975_)
                                 (let ((_e79497978_ (gx#syntax-e _g79477975_)))
                                   (let ((_hd79507982_ (##car _e79497978_))
                                         (_tl79517985_ (##cdr _e79497978_)))
                                     (if (gx#stx-pair? _tl79517985_)
                                         (let ((_e79527988_
                                                (gx#syntax-e _tl79517985_)))
                                           (let ((_hd79537992_
                                                  (##car _e79527988_))
                                                 (_tl79547995_
                                                  (##cdr _e79527988_)))
                                             (if (gx#stx-null? _tl79547995_)
                                                 ((lambda (_L7998_)
                                                    (if (gx#identifier?
                                                         _L7998_)
                                                        (_lp7876_ _L7928_ '#t)
                                                        (_g79457971_
                                                         _g79477975_)))
                                                  _hd79507982_)
                                                 (_g79457971_ _g79477975_))))
                                         (_g79457971_ _g79477975_))))
                                 (_g79457971_ _g79477975_)))))
                      (_g79448013_ _L7930_)))))
              _tl78907925_
              _hd78897922_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g78837911_ _g78857915_)))))
                                      (_g78828017_ _rest7879_)))))))
                      _lp7876_)
                    _hd7873_
                    '#f))))
            (let ((_kw-lambda?4875_
                   (lambda (_hd7399_)
                     ((letrec ((_lp7402_
                                (lambda (_rest7405_ _opt?7407_ _key?7408_)
                                  (let ((_g74137442_
                                         (lambda (_g74147438_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g74147438_))))
                                    (let ((_g74127457_
                                           (lambda (_g74147446_)
                                             ((lambda ()
                                                (if _key?7408_
                                                    (let ((_$e7453_
                                                           (gx#stx-null?
                                                            _rest7405_)))
                                                      (if _$e7453_
                                                          _$e7453_
                                                          (gx#identifier?
                                                           _rest7405_)))
                                                    '#f))))))
                                      (let ((_g74117563_
                                             (lambda (_g74147461_)
                                               (if (gx#stx-pair? _g74147461_)
                                                   (let ((_e74347464_
                                                          (gx#syntax-e
                                                           _g74147461_)))
                                                     (let ((_hd74357468_
                                                            (##car _e74347464_))
                                                           (_tl74367471_
                                                            (##cdr _e74347464_)))
                                                       ((lambda (_L7474_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L7476_)
                  (let ((_g74927506_
                         (lambda (_g74937502_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g74937502_))))
                    (let ((_g74917517_
                           (lambda (_g74937510_)
                             ((lambda ()
                                (if (gx#identifier? _L7476_)
                                    (if (not _opt?7407_)
                                        (_lp7402_ _L7474_ '#f _key?7408_)
                                        '#f)
                                    '#f))))))
                      (let ((_g74907559_
                             (lambda (_g74937521_)
                               (if (gx#stx-pair? _g74937521_)
                                   (let ((_e74957524_
                                          (gx#syntax-e _g74937521_)))
                                     (let ((_hd74967528_ (##car _e74957524_))
                                           (_tl74977531_ (##cdr _e74957524_)))
                                       (if (gx#stx-pair? _tl74977531_)
                                           (let ((_e74987534_
                                                  (gx#syntax-e _tl74977531_)))
                                             (let ((_hd74997538_
                                                    (##car _e74987534_))
                                                   (_tl75007541_
                                                    (##cdr _e74987534_)))
                                               (if (gx#stx-null? _tl75007541_)
                                                   ((lambda (_L7544_)
                                                      (if (gx#identifier?
                                                           _L7544_)
                                                          (_lp7402_
                                                           _L7474_
                                                           '#t
                                                           _key?7408_)
                                                          '#f))
                                                    _hd74967528_)
                                                   (_g74917517_ _g74937521_))))
                                           (_g74917517_ _g74937521_))))
                                   (_g74917517_ _g74937521_)))))
                        (_g74907559_ _L7476_)))))
                _tl74367471_
                _hd74357468_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g74127457_
                                                    _g74147461_)))))
                                        (let ((_g74107605_
                                               (lambda (_g74147567_)
                                                 (if (gx#stx-pair? _g74147567_)
                                                     (let ((_e74267570_
                                                            (gx#syntax-e
                                                             _g74147567_)))
                                                       (let ((_hd74277574_
                                                              (##car _e74267570_))
                                                             (_tl74287577_
                                                              (##cdr _e74267570_)))
                                                         (if (gx#stx-datum?
                                                              _hd74277574_)
                                                             (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _hd74277574_)
                                 '#!key)
                         (if (gx#stx-pair? _tl74287577_)
                             (let ((_e74297580_ (gx#syntax-e _tl74287577_)))
                               (let ((_hd74307584_ (##car _e74297580_))
                                     (_tl74317587_ (##cdr _e74297580_)))
                                 ((lambda (_L7590_ _L7592_)
                                    (if (gx#identifier? _L7592_)
                                        (_lp7402_ _L7590_ _opt?7407_ '#t)
                                        '#f))
                                  _tl74317587_
                                  _hd74307584_)))
                             (_g74117563_ _g74147567_))
                         (_g74117563_ _g74147567_))
                     (_g74117563_ _g74147567_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g74117563_
                                                      _g74147567_)))))
                                          (let ((_g74097721_
                                                 (lambda (_g74147609_)
                                                   (if (gx#stx-pair?
                                                        _g74147609_)
                                                       (let ((_e74187612_
                                                              (gx#syntax-e
                                                               _g74147609_)))
                                                         (let ((_hd74197616_
                                                                (##car _e74187612_))
                                                               (_tl74207619_
                                                                (##cdr _e74187612_)))
                                                           (if (gx#stx-pair?
                                                                _tl74207619_)
                                                               (let ((_e74217622_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl74207619_)))
                         (let ((_hd74227626_ (##car _e74217622_))
                               (_tl74237629_ (##cdr _e74217622_)))
                           ((lambda (_L7632_ _L7634_ _L7635_)
                              (if (gx#stx-keyword? _L7635_)
                                  (let ((_g76507664_
                                         (lambda (_g76517660_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g76517660_))))
                                    (let ((_g76497675_
                                           (lambda (_g76517668_)
                                             ((lambda ()
                                                (if (gx#identifier? _L7634_)
                                                    (_lp7402_
                                                     _L7632_
                                                     _opt?7407_
                                                     '#t)
                                                    '#f))))))
                                      (let ((_g76487717_
                                             (lambda (_g76517679_)
                                               (if (gx#stx-pair? _g76517679_)
                                                   (let ((_e76537682_
                                                          (gx#syntax-e
                                                           _g76517679_)))
                                                     (let ((_hd76547686_
                                                            (##car _e76537682_))
                                                           (_tl76557689_
                                                            (##cdr _e76537682_)))
                                                       (if (gx#stx-pair?
                                                            _tl76557689_)
                                                           (let ((_e76567692_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl76557689_)))
                     (let ((_hd76577696_ (##car _e76567692_))
                           (_tl76587699_ (##cdr _e76567692_)))
                       (if (gx#stx-null? _tl76587699_)
                           ((lambda (_L7702_)
                              (if (gx#identifier? _L7702_)
                                  (_lp7402_ _L7632_ _opt?7407_ '#t)
                                  '#f))
                            _hd76547686_)
                           (_g76497675_ _g76517679_))))
                   (_g76497675_ _g76517679_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g76497675_
                                                    _g76517679_)))))
                                        (_g76487717_ _L7634_))))
                                  (_g74107605_ _g74147609_)))
                            _tl74237629_
                            _hd74227626_
                            _hd74197616_)))
                       (_g74107605_ _g74147609_))))
               (_g74107605_ _g74147609_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g74097721_ _rest7405_)))))))))
                        _lp7402_)
                      _hd7399_
                      '#f
                      '#f))))
              (let ((_generate-bind4877_
                     (lambda (_e7135_)
                       (if (gx#underscore? _e7135_)
                           (gx#genident _e7135_)
                           _e7135_))))
                (let ((_check-duplicate-bindings4878_
                       (lambda (_hd6832_)
                         (let ((_cons-id6835_
                                (lambda (_id7131_ _ids7133_)
                                  (if (gx#underscore? _id7131_)
                                      _ids7133_
                                      (cons _id7131_ _ids7133_)))))
                           ((letrec ((_lp6838_
                                      (lambda (_rest6841_ _ids6843_)
                                        (let ((_g68466858_
                                               (lambda (_g68476854_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g68476854_))))
                                          (let ((_g68456869_
                                                 (lambda (_g68476862_)
                                                   ((lambda ()
                                                      (gx#check-duplicate-identifiers
                                                       (if (gx#stx-null?
                                                            _rest6841_)
                                                           _ids6843_
                                                           (_cons-id6835_
                                                            _rest6841_
                                                            _ids6843_))
                                                       _stx4868_))))))
                                            (let ((_g68447127_
                                                   (lambda (_g68476873_)
                                                     (if (gx#stx-pair?
                                                          _g68476873_)
                                                         (let ((_e68506876_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g68476873_)))
                   (let ((_hd68516880_ (##car _e68506876_))
                         (_tl68526883_ (##cdr _e68506876_)))
                     ((lambda (_L6886_ _L6888_)
                        (if (gx#identifier? _L6888_)
                            (_lp6838_
                             _L6886_
                             (_cons-id6835_ _L6888_ _ids6843_))
                            (if (gx#stx-pair? _L6888_)
                                (let ((_g69046918_
                                       (lambda (_g69056914_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g69056914_))))
                                  (let ((_g69036959_
                                         (lambda (_g69056922_)
                                           (if (gx#stx-pair? _g69056922_)
                                               (let ((_e69076925_
                                                      (gx#syntax-e
                                                       _g69056922_)))
                                                 (let ((_hd69086929_
                                                        (##car _e69076925_))
                                                       (_tl69096932_
                                                        (##cdr _e69076925_)))
                                                   (if (gx#stx-pair?
                                                        _tl69096932_)
                                                       (let ((_e69106935_
                                                              (gx#syntax-e
                                                               _tl69096932_)))
                                                         (let ((_hd69116939_
                                                                (##car _e69106935_))
                                                               (_tl69126942_
                                                                (##cdr _e69106935_)))
                                                           (if (gx#stx-null?
                                                                _tl69126942_)
                                                               ((lambda (_L6945_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_lp6838_ _L6886_ (_cons-id6835_ _L6945_ _ids6843_)))
                        _hd69086929_)
                       (_g69046918_ _g69056922_))))
               (_g69046918_ _g69056922_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g69046918_ _g69056922_)))))
                                    (_g69036959_ _L6888_)))
                                (if (gx#stx-keyword? _L6888_)
                                    (let ((_g69636975_
                                           (lambda (_g69646971_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g69646971_))))
                                      (let ((_g69627077_
                                             (lambda (_g69646979_)
                                               (if (gx#stx-pair? _g69646979_)
                                                   (let ((_e69676982_
                                                          (gx#syntax-e
                                                           _g69646979_)))
                                                     (let ((_hd69686986_
                                                            (##car _e69676982_))
                                                           (_tl69696989_
                                                            (##cdr _e69676982_)))
                                                       ((lambda (_L6992_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L6994_)
                  (let ((_g70067020_
                         (lambda (_g70077016_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g70077016_))))
                    (let ((_g70057031_
                           (lambda (_g70077024_)
                             ((lambda ()
                                (_lp6838_
                                 _L6992_
                                 (_cons-id6835_ _L6994_ _ids6843_)))))))
                      (let ((_g70047073_
                             (lambda (_g70077035_)
                               (if (gx#stx-pair? _g70077035_)
                                   (let ((_e70097038_
                                          (gx#syntax-e _g70077035_)))
                                     (let ((_hd70107042_ (##car _e70097038_))
                                           (_tl70117045_ (##cdr _e70097038_)))
                                       (if (gx#stx-pair? _tl70117045_)
                                           (let ((_e70127048_
                                                  (gx#syntax-e _tl70117045_)))
                                             (let ((_hd70137052_
                                                    (##car _e70127048_))
                                                   (_tl70147055_
                                                    (##cdr _e70127048_)))
                                               (if (gx#stx-null? _tl70147055_)
                                                   ((lambda (_L7058_)
                                                      (_lp6838_
                                                       _L6992_
                                                       (_cons-id6835_
                                                        _L7058_
                                                        _ids6843_)))
                                                    _hd70107042_)
                                                   (_g70057031_ _g70077035_))))
                                           (_g70057031_ _g70077035_))))
                                   (_g70057031_ _g70077035_)))))
                        (_g70047073_ _L6994_)))))
                _tl69696989_
                _hd69686986_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g69636975_
                                                    _g69646979_)))))
                                        (_g69627077_ _L6886_)))
                                    (if (eq? (gx#stx-e _L6888_) '#!key)
                                        (let ((_g70817093_
                                               (lambda (_g70827089_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g70827089_))))
                                          (let ((_g70807123_
                                                 (lambda (_g70827097_)
                                                   (if (gx#stx-pair?
                                                        _g70827097_)
                                                       (let ((_e70857100_
                                                              (gx#syntax-e
                                                               _g70827097_)))
                                                         (let ((_hd70867104_
                                                                (##car _e70857100_))
                                                               (_tl70877107_
                                                                (##cdr _e70857100_)))
                                                           ((lambda (_L7110_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L7112_)
                      (_lp6838_ _L7110_ (_cons-id6835_ _L7112_ _ids6843_)))
                    _tl70877107_
                    _hd70867104_)))
               (_g70817093_ _g70827097_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g70807123_ _L6886_)))
                                        (error '"BUG: check-duplicate-bindings"
                                               _stx4868_
                                               _rest6841_))))))
                      _tl68526883_
                      _hd68516880_)))
                 (_g68456869_ _g68476873_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g68447127_ _rest6841_)))))))
                              _lp6838_)
                            _hd6832_
                            '())))))
                  (let ((_generate-opt-primary4879_
                         (lambda (_pre6624_ _opt6626_ _tail6627_ _body6628_)
                           (let ((_g66306671_
                                  (lambda (_g66316667_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g66316667_))))
                             (let ((_g66296828_
                                    (lambda (_g66316675_)
                                      (if (gx#stx-pair? _g66316675_)
                                          (let ((_e66366678_
                                                 (gx#syntax-e _g66316675_)))
                                            (let ((_hd66376682_
                                                   (##car _e66366678_))
                                                  (_tl66386685_
                                                   (##cdr _e66366678_)))
                                              (if (gx#stx-pair/null?
                                                   _hd66376682_)
                                                  (if (fx>= (gx#stx-length
                                                             _hd66376682_)
                                                            '0)
                                                      (let ((_g30233_
                                                             (gx#syntax-split-splice
                                                              _hd66376682_
                                                              '0)))
                                                        (begin
                                                          (let ((_g30234_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (values-count _g30233_)))
                    (if (not (fx= _g30234_ 2))
                        (error "Context expects 2 values" _g30234_)))
                  (let ((_target66396688_ (values-ref _g30233_ 0))
                        (_tl66416691_ (values-ref _g30233_ 1)))
                    (if (gx#stx-null? _tl66416691_)
                        (letrec ((_loop66426694_
                                  (lambda (_hd66406698_ _pre66466701_)
                                    (if (gx#stx-pair? _hd66406698_)
                                        (let ((_e66436704_
                                               (gx#syntax-e _hd66406698_)))
                                          (let ((_lp-hd66446708_
                                                 (##car _e66436704_))
                                                (_lp-tl66456711_
                                                 (##cdr _e66436704_)))
                                            (_loop66426694_
                                             _lp-tl66456711_
                                             (cons _lp-hd66446708_
                                                   _pre66466701_))))
                                        (let ((_pre66476714_
                                               (reverse _pre66466701_)))
                                          (if (gx#stx-pair? _tl66386685_)
                                              (let ((_e66486718_
                                                     (gx#syntax-e
                                                      _tl66386685_)))
                                                (let ((_hd66496722_
                                                       (##car _e66486718_))
                                                      (_tl66506725_
                                                       (##cdr _e66486718_)))
                                                  (if (gx#stx-pair/null?
                                                       _hd66496722_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd66496722_)
                        '0)
                  (let ((_g30235_ (gx#syntax-split-splice _hd66496722_ '0)))
                    (begin
                      (let ((_g30236_ (values-count _g30235_)))
                        (if (not (fx= _g30236_ 2))
                            (error "Context expects 2 values" _g30236_)))
                      (let ((_target66516728_ (values-ref _g30235_ 0))
                            (_tl66536731_ (values-ref _g30235_ 1)))
                        (if (gx#stx-null? _tl66536731_)
                            (letrec ((_loop66546734_
                                      (lambda (_hd66526738_ _opt66586741_)
                                        (if (gx#stx-pair? _hd66526738_)
                                            (let ((_e66556744_
                                                   (gx#syntax-e _hd66526738_)))
                                              (let ((_lp-hd66566748_
                                                     (##car _e66556744_))
                                                    (_lp-tl66576751_
                                                     (##cdr _e66556744_)))
                                                (_loop66546734_
                                                 _lp-tl66576751_
                                                 (cons _lp-hd66566748_
                                                       _opt66586741_))))
                                            (let ((_opt66596754_
                                                   (reverse _opt66586741_)))
                                              (if (gx#stx-pair? _tl66506725_)
                                                  (let ((_e66606758_
                                                         (gx#syntax-e
                                                          _tl66506725_)))
                                                    (let ((_hd66616762_
                                                           (##car _e66606758_))
                                                          (_tl66626765_
                                                           (##cdr _e66606758_)))
                                                      (if (gx#stx-pair?
                                                           _tl66626765_)
                                                          (let ((_e66636768_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl66626765_)))
                    (let ((_hd66646772_ (##car _e66636768_))
                          (_tl66656775_ (##cdr _e66636768_)))
                      (if (gx#stx-null? _tl66656775_)
                          ((lambda (_L6778_ _L6780_ _L6781_ _L6782_)
                             (let ()
                               (cons (gx#datum->syntax '#f 'lambda%)
                                     (cons (begin
                                             '#!void
                                             (foldr (lambda (_g68116816_
                                                             _g68126819_)
                                                      (cons _g68116816_
                                                            _g68126819_))
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g68136822_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g68146825_)
                       (cons _g68136822_ _g68146825_))
                     _L6780_
                     _L6781_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _L6782_))
                                           _L6778_))))
                           _hd66646772_
                           _hd66616762_
                           _opt66596754_
                           _pre66476714_)
                          (_g66306671_ _g66316675_))))
                  (_g66306671_ _g66316675_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g66306671_
                                                   _g66316675_)))))))
                              (_loop66546734_ _target66516728_ '()))
                            (_g66306671_ _g66316675_)))))
                  (_g66306671_ _g66316675_))
              (_g66306671_ _g66316675_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g66306671_ _g66316675_)))))))
                          (_loop66426694_ _target66396688_ '()))
                        (_g66306671_ _g66316675_)))))
              (_g66306671_ _g66316675_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g66306671_ _g66316675_))))
                                          (_g66306671_ _g66316675_)))))
                               (_g66296828_
                                (list _pre6624_
                                      (map car _opt6626_)
                                      _tail6627_
                                      _body6628_)))))))
                    (let ((_generate-opt-clause4882_
                           (lambda (_primary5873_ _pre5875_ _opt5876_)
                             ((letrec ((_recur5878_
                                        (lambda (_opt-rest5881_ _right5883_)
                                          (if (pair? _opt-rest5881_)
                                              (let ((_hd5885_
                                                     (car _opt-rest5881_)))
                                                (let ((_rest5888_
                                                       (cdr _opt-rest5881_)))
                                                  (let ((_g58915899_
                                                         (lambda (_g58925895_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g58925895_))))
                                                    (let ((_g58905988_
                                                           (lambda (_g58925903_)
                                                             ((lambda (_L5906_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_g59225930_
                                 (lambda (_g59235926_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g59235926_))))
                            (let ((_g59215984_
                                   (lambda (_g59235934_)
                                     ((lambda (_L5937_)
                                        (let ()
                                          (let ((_g59505958_
                                                 (lambda (_g59515954_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g59515954_))))
                                            (let ((_g59495980_
                                                   (lambda (_g59515962_)
                                                     ((lambda (_L5965_)
                                                        (let ()
                                                          (let ()
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'let-values)
                          (cons (cons (cons (cons _L5906_ '())
                                            (cons _L5937_ '()))
                                      '())
                                (cons _L5965_ '()))))))
              _g59515962_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g59495980_
                                               (_recur5878_
                                                _rest5888_
                                                (cons _L5906_
                                                      _right5883_)))))))
                                      _g59235934_))))
                              (_g59215984_ (cdr _hd5885_))))))
                      _g58925903_))))
              (_g58905988_ (car _hd5885_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_g59926029_
                                                     (lambda (_g59936025_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g59936025_))))
                                                (let ((_g59916171_
                                                       (lambda (_g59936033_)
                                                         (if (gx#stx-pair?
                                                              _g59936033_)
                                                             (let ((_e59976036_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _g59936033_)))
                       (let ((_hd59986040_ (##car _e59976036_))
                             (_tl59996043_ (##cdr _e59976036_)))
                         (if (gx#stx-pair/null? _hd59986040_)
                             (if (fx>= (gx#stx-length _hd59986040_) '0)
                                 (let ((_g30229_
                                        (gx#syntax-split-splice
                                         _hd59986040_
                                         '0)))
                                   (begin
                                     (let ((_g30230_ (values-count _g30229_)))
                                       (if (not (fx= _g30230_ 2))
                                           (error "Context expects 2 values"
                                                  _g30230_)))
                                     (let ((_target60006046_
                                            (values-ref _g30229_ 0))
                                           (_tl60026049_
                                            (values-ref _g30229_ 1)))
                                       (if (gx#stx-null? _tl60026049_)
                                           (letrec ((_loop60036052_
                                                     (lambda (_hd60016056_
                                                              _pre60076059_)
                                                       (if (gx#stx-pair?
                                                            _hd60016056_)
                                                           (let ((_e60046062_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd60016056_)))
                     (let ((_lp-hd60056066_ (##car _e60046062_))
                           (_lp-tl60066069_ (##cdr _e60046062_)))
                       (_loop60036052_
                        _lp-tl60066069_
                        (cons _lp-hd60056066_ _pre60076059_))))
                   (let ((_pre60086072_ (reverse _pre60076059_)))
                     (if (gx#stx-pair? _tl59996043_)
                         (let ((_e60096076_ (gx#syntax-e _tl59996043_)))
                           (let ((_hd60106080_ (##car _e60096076_))
                                 (_tl60116083_ (##cdr _e60096076_)))
                             (if (gx#stx-pair/null? _hd60106080_)
                                 (if (fx>= (gx#stx-length _hd60106080_) '0)
                                     (let ((_g30231_
                                            (gx#syntax-split-splice
                                             _hd60106080_
                                             '0)))
                                       (begin
                                         (let ((_g30232_
                                                (values-count _g30231_)))
                                           (if (not (fx= _g30232_ 2))
                                               (error "Context expects 2 values"
                                                      _g30232_)))
                                         (let ((_target60126086_
                                                (values-ref _g30231_ 0))
                                               (_tl60146089_
                                                (values-ref _g30231_ 1)))
                                           (if (gx#stx-null? _tl60146089_)
                                               (letrec ((_loop60156092_
                                                         (lambda (_hd60136096_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _opt60196099_)
                   (if (gx#stx-pair? _hd60136096_)
                       (let ((_e60166102_ (gx#syntax-e _hd60136096_)))
                         (let ((_lp-hd60176106_ (##car _e60166102_))
                               (_lp-tl60186109_ (##cdr _e60166102_)))
                           (_loop60156092_
                            _lp-tl60186109_
                            (cons _lp-hd60176106_ _opt60196099_))))
                       (let ((_opt60206112_ (reverse _opt60196099_)))
                         (if (gx#stx-pair? _tl60116083_)
                             (let ((_e60216116_ (gx#syntax-e _tl60116083_)))
                               (let ((_hd60226120_ (##car _e60216116_))
                                     (_tl60236123_ (##cdr _e60216116_)))
                                 (if (gx#stx-null? _tl60236123_)
                                     ((lambda (_L6126_ _L6128_ _L6129_)
                                        (let ()
                                          (gx#stx-wrap-source
                                           (cons _L6126_
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g61546159_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g61556162_)
                    (cons _g61546159_ _g61556162_))
                  (begin
                    '#!void
                    (foldr (lambda (_g61566165_ _g61576168_)
                             (cons _g61566165_ _g61576168_))
                           '()
                           _L6128_))
                  _L6129_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _stx4868_))))
                                      _hd60226120_
                                      _opt60206112_
                                      _pre60086072_)
                                     (_g59926029_ _g59936033_))))
                             (_g59926029_ _g59936033_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop60156092_
                                                  _target60126086_
                                                  '()))
                                               (_g59926029_ _g59936033_)))))
                                     (_g59926029_ _g59936033_))
                                 (_g59926029_ _g59936033_))))
                         (_g59926029_ _g59936033_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop60036052_
                                              _target60006046_
                                              '()))
                                           (_g59926029_ _g59936033_)))))
                                 (_g59926029_ _g59936033_))
                             (_g59926029_ _g59936033_))))
                     (_g59926029_ _g59936033_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g59916171_
                                                   (list _pre5875_
                                                         (reverse _right5883_)
                                                         _primary5873_))))))))
                                _recur5878_)
                              _opt5876_
                              '()))))
                      (let ((_generate-kw-primary4883_
                             (lambda (_kwvar5520_
                                      _kwargs5522_
                                      _args5523_
                                      _body5524_)
                               (let ((_absent5526_ (gx#genident 'absent)))
                                 (letrec ((_make-body5528_
                                           (lambda (_kwargs5692_ _body5694_)
                                             (if (pair? _kwargs5692_)
                                                 (let ((_next5696_
                                                        (car _kwargs5692_)))
                                                   (let ((_rest5699_
                                                          (cdr _kwargs5692_)))
                                                     (let ((_key5702_
                                                            (car _next5696_)))
                                                       (let ((_var5705_
                                                              (cadr _next5696_)))
                                                         (let ((_default5708_
                                                                (caddr _next5696_)))
                                                           (let ()
                                                             (let ((_g57135748_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g57145744_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g57145744_))))
                       (let ((_g57125869_
                              (lambda (_g57145752_)
                                (if (gx#stx-pair? _g57145752_)
                                    (let ((_e57225755_
                                           (gx#syntax-e _g57145752_)))
                                      (let ((_hd57235759_ (##car _e57225755_))
                                            (_tl57245762_ (##cdr _e57225755_)))
                                        (if (gx#stx-pair? _tl57245762_)
                                            (let ((_e57255765_
                                                   (gx#syntax-e _tl57245762_)))
                                              (let ((_hd57265769_
                                                     (##car _e57255765_))
                                                    (_tl57275772_
                                                     (##cdr _e57255765_)))
                                                (if (gx#stx-pair? _tl57275772_)
                                                    (let ((_e57285775_
                                                           (gx#syntax-e
                                                            _tl57275772_)))
                                                      (let ((_hd57295779_
                                                             (##car _e57285775_))
                                                            (_tl57305782_
                                                             (##cdr _e57285775_)))
                                                        (if (gx#stx-pair?
                                                             _tl57305782_)
                                                            (let ((_e57315785_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl57305782_)))
                      (let ((_hd57325789_ (##car _e57315785_))
                            (_tl57335792_ (##cdr _e57315785_)))
                        (if (gx#stx-pair? _tl57335792_)
                            (let ((_e57345795_ (gx#syntax-e _tl57335792_)))
                              (let ((_hd57355799_ (##car _e57345795_))
                                    (_tl57365802_ (##cdr _e57345795_)))
                                (if (gx#stx-pair? _tl57365802_)
                                    (let ((_e57375805_
                                           (gx#syntax-e _tl57365802_)))
                                      (let ((_hd57385809_ (##car _e57375805_))
                                            (_tl57395812_ (##cdr _e57375805_)))
                                        (if (gx#stx-pair? _tl57395812_)
                                            (let ((_e57405815_
                                                   (gx#syntax-e _tl57395812_)))
                                              (let ((_hd57415819_
                                                     (##car _e57405815_))
                                                    (_tl57425822_
                                                     (##cdr _e57405815_)))
                                                (if (gx#stx-null? _tl57425822_)
                                                    ((lambda (_L5825_
                                                              _L5827_
                                                              _L5828_
                                                              _L5829_
                                                              _L5830_
                                                              _L5831_
                                                              _L5832_)
                                                       (let ()
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'let-values)
                                                               (cons (cons (cons (cons _L5829_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                               '())
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'hash-ref)
                                                     (cons _L5832_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote)
                               (cons _L5831_ '()))
                         (cons _L5825_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '())
                             (cons (cons (gx#datum->syntax '#f 'let-values)
                                         (cons (cons (cons (cons _L5830_ '())
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'if)
                               (cons (cons (gx#datum->syntax '#f 'eq?)
                                           (cons _L5829_ (cons _L5825_ '())))
                                     (cons _L5828_ (cons _L5829_ '()))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (cons _L5827_ '())))
                                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd57415819_
                                                     _hd57385809_
                                                     _hd57355799_
                                                     _hd57325789_
                                                     _hd57295779_
                                                     _hd57265769_
                                                     _hd57235759_)
                                                    (_g57135748_
                                                     _g57145752_))))
                                            (_g57135748_ _g57145752_))))
                                    (_g57135748_ _g57145752_))))
                            (_g57135748_ _g57145752_))))
                    (_g57135748_ _g57145752_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g57135748_
                                                     _g57145752_))))
                                            (_g57135748_ _g57145752_))))
                                    (_g57135748_ _g57145752_)))))
                         (_g57125869_
                          (list _kwvar5520_
                                _key5702_
                                _var5705_
                                (gx#genident _var5705_)
                                _default5708_
                                (_make-body5528_ _rest5699_ _body5694_)
                                _absent5526_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons 'begin _body5694_)))))
                                   (let ((_g55305538_
                                          (lambda (_g55315534_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g55315534_))))
                                     (let ((_g55295688_
                                            (lambda (_g55315542_)
                                              ((lambda (_L5545_)
                                                 (let ()
                                                   (let ((_g55585566_
                                                          (lambda (_g55595562_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g55595562_))))
                                                     (let ((_g55575684_
                                                            (lambda (_g55595570_)
                                                              ((lambda (_L5573_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((_g55865594_
                                  (lambda (_g55875590_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g55875590_))))
                             (let ((_g55855680_
                                    (lambda (_g55875598_)
                                      ((lambda (_L5601_)
                                         (let ()
                                           (let ((_g56145622_
                                                  (lambda (_g56155618_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g56155618_))))
                                             (let ((_g56135676_
                                                    (lambda (_g56155626_)
                                                      ((lambda (_L5629_)
                                                         (let ()
                                                           (let ((_g56425650_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g56435646_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g56435646_))))
                     (let ((_g56415672_
                            (lambda (_g56435654_)
                              ((lambda (_L5657_)
                                 (let ()
                                   (let ()
                                     (cons (gx#datum->syntax '#f 'let-values)
                                           (cons (cons (cons (cons _L5657_ '())
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'make-vector)
                                 (cons '0 '()))
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _L5629_ '()))))))
                               _g56435654_))))
                       (_g56415672_ _absent5526_)))))
               _g56155626_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g56135676_
                                                (gx#stx-wrap-source
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'lambda)
                                                       (cons (cons _L5545_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L5573_)
                     (cons _L5601_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (gx#stx-source
                                                  _stx4868_)))))))
                                       _g55875598_))))
                               (_g55855680_
                                (_make-body5528_ _kwargs5522_ _body5524_))))))
                       _g55595570_))))
               (_g55575684_ _args5523_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _g55315542_))))
                                       (_g55295688_ _kwvar5520_))))))))
                        (let ((_generate-kw-table4885_
                               (lambda (_kws5407_)
                                 ((letrec ((_rehash5410_
                                            (lambda (_pht5413_)
                                              ((letrec ((_lp5416_
                                                         (lambda (_rest5419_)
                                                           (if (pair? _rest5419_)
                                                               (let ((_key5422_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _rest5419_)))
                         (let ((_rest5425_ (cdr _rest5419_)))
                           (let ((_pos5428_
                                  (fxmodulo
                                   (keyword-hash _key5422_)
                                   (vector-length _pht5413_))))
                             (let ()
                               (if (vector-ref _pht5413_ _pos5428_)
                                   (if (fx< (vector-length _pht5413_) '8192)
                                       (_rehash5410_
                                        (make-vector
                                         (fx1+ (* '2
                                                  (vector-length _pht5413_)))
                                         '#f))
                                       (error '"Unresolvable keyword collision"
                                              _kws5407_))
                                   (begin
                                     (vector-set!
                                      _pht5413_
                                      _pos5428_
                                      _key5422_)
                                     (_lp5416_ _rest5425_)))))))
                       _pht5413_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _lp5416_)
                                               _kws5407_))))
                                    _rehash5410_)
                                  (make-vector (length _kws5407_) '#f)))))
                          (let ((_opt-lambda-split4874_
                                 (lambda (_hd7725_)
                                   ((letrec ((_lp7728_
                                              (lambda (_rest7731_
                                                       _pre7733_
                                                       _opt7734_)
                                                (let ((_g77377749_
                                                       (lambda (_g77387745_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g77387745_))))
                                                  (let ((_g77367760_
                                                         (lambda (_g77387753_)
                                                           ((lambda ()
                                                              (values (reverse _pre7733_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (reverse _opt7734_)
                              (if (gx#identifier? _rest7731_)
                                  (_generate-bind4877_ _rest7731_)
                                  _rest7731_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g77357869_
                                                           (lambda (_g77387764_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g77387764_)
                         (let ((_e77417767_ (gx#syntax-e _g77387764_)))
                           (let ((_hd77427771_ (##car _e77417767_))
                                 (_tl77437774_ (##cdr _e77417767_)))
                             ((lambda (_L7777_ _L7779_)
                                (let ((_g77957810_
                                       (lambda (_g77967806_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g77967806_))))
                                  (let ((_g77947821_
                                         (lambda (_g77967814_)
                                           ((lambda ()
                                              (_lp7728_
                                               _L7777_
                                               (cons (_generate-bind4877_
                                                      _L7779_)
                                                     _pre7733_)
                                               _opt7734_))))))
                                    (let ((_g77937865_
                                           (lambda (_g77967825_)
                                             (if (gx#stx-pair? _g77967825_)
                                                 (let ((_e77997828_
                                                        (gx#syntax-e
                                                         _g77967825_)))
                                                   (let ((_hd78007832_
                                                          (##car _e77997828_))
                                                         (_tl78017835_
                                                          (##cdr _e77997828_)))
                                                     (if (gx#stx-pair?
                                                          _tl78017835_)
                                                         (let ((_e78027838_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl78017835_)))
                   (let ((_hd78037842_ (##car _e78027838_))
                         (_tl78047845_ (##cdr _e78027838_)))
                     (if (gx#stx-null? _tl78047845_)
                         ((lambda (_L7848_ _L7850_)
                            (_lp7728_
                             _L7777_
                             _pre7733_
                             (cons (cons (_generate-bind4877_ _L7850_) _L7848_)
                                   _opt7734_)))
                          _hd78037842_
                          _hd78007832_)
                         (_g77947821_ _g77967825_))))
                 (_g77947821_ _g77967825_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g77947821_ _g77967825_)))))
                                      (_g77937865_ _L7779_)))))
                              _tl77437774_
                              _hd77427771_)))
                         (_g77367760_ _g77387764_)))))
              (_g77357869_ _rest7731_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _lp7728_)
                                    _hd7725_
                                    '()
                                    '()))))
                            (let ((_kw-lambda-split4876_
                                   (lambda (_hd7138_)
                                     ((letrec ((_lp7141_
                                                (lambda (_rest7144_
                                                         _kwvar7146_
                                                         _kwargs7147_
                                                         _args7148_)
                                                  (let ((_g71537182_
                                                         (lambda (_g71547178_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g71547178_))))
                                                    (let ((_g71527193_
                                                           (lambda (_g71547186_)
                                                             ((lambda ()
                                                                (values _kwvar7146_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse _kwargs7147_)
                                (foldl cons _rest7144_ _args7148_)))))))
              (let ((_g71517227_
                     (lambda (_g71547197_)
                       (if (gx#stx-pair? _g71547197_)
                           (let ((_e71747200_ (gx#syntax-e _g71547197_)))
                             (let ((_hd71757204_ (##car _e71747200_))
                                   (_tl71767207_ (##cdr _e71747200_)))
                               ((lambda (_L7210_ _L7212_)
                                  (_lp7141_
                                   _L7210_
                                   _kwvar7146_
                                   _kwargs7147_
                                   (cons _L7212_ _args7148_)))
                                _tl71767207_
                                _hd71757204_)))
                           (_g71527193_ _g71547197_)))))
                (let ((_g71507269_
                       (lambda (_g71547231_)
                         (if (gx#stx-pair? _g71547231_)
                             (let ((_e71667234_ (gx#syntax-e _g71547231_)))
                               (let ((_hd71677238_ (##car _e71667234_))
                                     (_tl71687241_ (##cdr _e71667234_)))
                                 (if (gx#stx-datum? _hd71677238_)
                                     (if (equal? (gx#stx-e _hd71677238_)
                                                 '#!key)
                                         (if (gx#stx-pair? _tl71687241_)
                                             (let ((_e71697244_
                                                    (gx#syntax-e
                                                     _tl71687241_)))
                                               (let ((_hd71707248_
                                                      (##car _e71697244_))
                                                     (_tl71717251_
                                                      (##cdr _e71697244_)))
                                                 ((lambda (_L7254_ _L7256_)
                                                    (if _kwvar7146_
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; duplicate #!key argument"
                                                         _stx4868_
                                                         _hd7138_
                                                         _L7256_)
                                                        (_lp7141_
                                                         _L7254_
                                                         (_generate-bind4877_
                                                          _L7256_)
                                                         _kwargs7147_
                                                         _args7148_)))
                                                  _tl71717251_
                                                  _hd71707248_)))
                                             (_g71517227_ _g71547231_))
                                         (_g71517227_ _g71547231_))
                                     (_g71517227_ _g71547231_))))
                             (_g71517227_ _g71547231_)))))
                  (let ((_g71497395_
                         (lambda (_g71547273_)
                           (if (gx#stx-pair? _g71547273_)
                               (let ((_e71587276_ (gx#syntax-e _g71547273_)))
                                 (let ((_hd71597280_ (##car _e71587276_))
                                       (_tl71607283_ (##cdr _e71587276_)))
                                   (if (gx#stx-pair? _tl71607283_)
                                       (let ((_e71617286_
                                              (gx#syntax-e _tl71607283_)))
                                         (let ((_hd71627290_
                                                (##car _e71617286_))
                                               (_tl71637293_
                                                (##cdr _e71617286_)))
                                           ((lambda (_L7296_ _L7298_ _L7299_)
                                              (if (gx#stx-keyword? _L7299_)
                                                  (let ((_key7313_
                                                         (gx#stx-e _L7299_)))
                                                    (if (find (lambda (_kwarg7316_)
                                                                (eq? _key7313_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _kwarg7316_)))
                      _kwargs7147_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; duplicate keyword argument"
                 _stx4868_
                 _hd7138_
                 _key7313_)
                (let ((_g73207335_
                       (lambda (_g73217331_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g73217331_))))
                  (let ((_g73197346_
                         (lambda (_g73217339_)
                           ((lambda ()
                              (_lp7141_
                               _L7296_
                               _kwvar7146_
                               (cons (list _key7313_
                                           (_generate-bind4877_ _L7298_)
                                           (cons (gx#datum->syntax '#f 'error)
                                                 (cons '"Missing required keyword argument"
                                                       (cons _L7299_ '()))))
                                     _kwargs7147_)
                               _args7148_))))))
                    (let ((_g73187391_
                           (lambda (_g73217350_)
                             (if (gx#stx-pair? _g73217350_)
                                 (let ((_e73247353_ (gx#syntax-e _g73217350_)))
                                   (let ((_hd73257357_ (##car _e73247353_))
                                         (_tl73267360_ (##cdr _e73247353_)))
                                     (if (gx#stx-pair? _tl73267360_)
                                         (let ((_e73277363_
                                                (gx#syntax-e _tl73267360_)))
                                           (let ((_hd73287367_
                                                  (##car _e73277363_))
                                                 (_tl73297370_
                                                  (##cdr _e73277363_)))
                                             (if (gx#stx-null? _tl73297370_)
                                                 ((lambda (_L7373_ _L7375_)
                                                    (_lp7141_
                                                     _L7296_
                                                     _kwvar7146_
                                                     (cons (list _key7313_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_generate-bind4877_ _L7375_)
                         _L7373_)
                   _kwargs7147_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _args7148_))
                                                  _hd73287367_
                                                  _hd73257357_)
                                                 (_g73197346_ _g73217350_))))
                                         (_g73197346_ _g73217350_))))
                                 (_g73197346_ _g73217350_)))))
                      (_g73187391_ _L7298_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g71507269_ _g71547273_)))
                                            _tl71637293_
                                            _hd71627290_
                                            _hd71597280_)))
                                       (_g71507269_ _g71547273_))))
                               (_g71507269_ _g71547273_)))))
                    (_g71497395_ _rest7144_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _lp7141_)
                                      _hd7138_
                                      '#f
                                      '()
                                      '()))))
                              (let ((_generate-opt-dispatch*4881_
                                     (lambda (_primary6175_
                                              _pre6177_
                                              _opt6178_
                                              _tail6179_)
                                       ((letrec ((_recur6181_
                                                  (lambda (_opt-rest6184_
                                                           _right6186_)
                                                    (if (pair? _opt-rest6184_)
                                                        (let ((_hd6188_
                                                               (caar _opt-rest6184_)))
                                                          (let ((_rest6191_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cdr _opt-rest6184_)))
                    (let ((_right*6194_ (cons _hd6188_ _right6186_)))
                      (let ((_g61976214_
                             (lambda (_g61986210_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g61986210_))))
                        (let ((_g61966397_
                               (lambda (_g61986218_)
                                 (if (gx#stx-pair/null? _g61986218_)
                                     (if (fx>= (gx#stx-length _g61986218_) '0)
                                         (let ((_g30221_
                                                (gx#syntax-split-splice
                                                 _g61986218_
                                                 '0)))
                                           (begin
                                             (let ((_g30222_
                                                    (values-count _g30221_)))
                                               (if (not (fx= _g30222_ 2))
                                                   (error "Context expects 2 values"
                                                          _g30222_)))
                                             (let ((_target62006221_
                                                    (values-ref _g30221_ 0))
                                                   (_tl62026224_
                                                    (values-ref _g30221_ 1)))
                                               (if (gx#stx-null? _tl62026224_)
                                                   (letrec ((_loop62036227_
                                                             (lambda (_hd62016231_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _pre-bind62076234_)
                       (if (gx#stx-pair? _hd62016231_)
                           (let ((_e62046237_ (gx#syntax-e _hd62016231_)))
                             (let ((_lp-hd62056241_ (##car _e62046237_))
                                   (_lp-tl62066244_ (##cdr _e62046237_)))
                               (_loop62036227_
                                _lp-tl62066244_
                                (cons _lp-hd62056241_ _pre-bind62076234_))))
                           (let ((_pre-bind62086247_
                                  (reverse _pre-bind62076234_)))
                             ((lambda (_L6251_)
                                (let ()
                                  (let ((_g62726289_
                                         (lambda (_g62736285_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g62736285_))))
                                    (let ((_g62716393_
                                           (lambda (_g62736293_)
                                             (if (gx#stx-pair/null?
                                                  _g62736293_)
                                                 (if (fx>= (gx#stx-length
                                                            _g62736293_)
                                                           '0)
                                                     (let ((_g30223_
                                                            (gx#syntax-split-splice
                                                             _g62736293_
                                                             '0)))
                                                       (begin
                                                         (let ((_g30224_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g30223_)))
                   (if (not (fx= _g30224_ 2))
                       (error "Context expects 2 values" _g30224_)))
                 (let ((_target62756296_ (values-ref _g30223_ 0))
                       (_tl62776299_ (values-ref _g30223_ 1)))
                   (if (gx#stx-null? _tl62776299_)
                       (letrec ((_loop62786302_
                                 (lambda (_hd62766306_ _opt-bind62826309_)
                                   (if (gx#stx-pair? _hd62766306_)
                                       (let ((_e62796312_
                                              (gx#syntax-e _hd62766306_)))
                                         (let ((_lp-hd62806316_
                                                (##car _e62796312_))
                                               (_lp-tl62816319_
                                                (##cdr _e62796312_)))
                                           (_loop62786302_
                                            _lp-tl62816319_
                                            (cons _lp-hd62806316_
                                                  _opt-bind62826309_))))
                                       (let ((_opt-bind62836322_
                                              (reverse _opt-bind62826309_)))
                                         ((lambda (_L6326_)
                                            (let ()
                                              (let ((_g63436351_
                                                     (lambda (_g63446347_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g63446347_))))
                                                (let ((_g63426389_
                                                       (lambda (_g63446355_)
                                                         ((lambda (_L6358_)
                                                            (let ()
                                                              (let ()
                                                                (cons (list (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '#!void
                                      (foldr (lambda (_g63726377_ _g63736380_)
                                               (cons _g63726377_ _g63736380_))
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g63746383_
                                                               _g63756386_)
                                                        (cons _g63746383_
                                                              _g63756386_))
                                                      (cons _L6358_ '())
                                                      _L6326_))
                                             _L6251_))
                                    (_generate-opt-clause4882_
                                     _primary6175_
                                     (foldr cons
                                            (reverse _right*6194_)
                                            _pre6177_)
                                     _rest6191_))
                              (_recur6181_ _rest6191_ _right*6194_)))))
                  _g63446355_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g63426389_ _hd6188_)))))
                                          _opt-bind62836322_))))))
                         (_loop62786302_ _target62756296_ '()))
                       (_g62726289_ _g62736293_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g62726289_ _g62736293_))
                                                 (_g62726289_ _g62736293_)))))
                                      (_g62716393_ (reverse _right6186_))))))
                              _pre-bind62086247_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop62036227_
                                                      _target62006221_
                                                      '()))
                                                   (_g61976214_
                                                    _g61986218_)))))
                                         (_g61976214_ _g61986218_))
                                     (_g61976214_ _g61986218_)))))
                          (_g61966397_ _pre6177_))))))
                (if (gx#stx-null? _tail6179_)
                    '()
                    (let ((_g64016442_
                           (lambda (_g64026438_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g64026438_))))
                      (let ((_g64006614_
                             (lambda (_g64026446_)
                               (if (gx#stx-pair? _g64026446_)
                                   (let ((_e64076449_
                                          (gx#syntax-e _g64026446_)))
                                     (let ((_hd64086453_ (##car _e64076449_))
                                           (_tl64096456_ (##cdr _e64076449_)))
                                       (if (gx#stx-pair/null? _hd64086453_)
                                           (if (fx>= (gx#stx-length
                                                      _hd64086453_)
                                                     '0)
                                               (let ((_g30225_
                                                      (gx#syntax-split-splice
                                                       _hd64086453_
                                                       '0)))
                                                 (begin
                                                   (let ((_g30226_
                                                          (values-count
                                                           _g30225_)))
                                                     (if (not (fx= _g30226_ 2))
                                                         (error "Context expects 2 values"
                                                                _g30226_)))
                                                   (let ((_target64106459_
                                                          (values-ref
                                                           _g30225_
                                                           0))
                                                         (_tl64126462_
                                                          (values-ref
                                                           _g30225_
                                                           1)))
                                                     (if (gx#stx-null?
                                                          _tl64126462_)
                                                         (letrec ((_loop64136465_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd64116469_ _pre64176472_)
                             (if (gx#stx-pair? _hd64116469_)
                                 (let ((_e64146475_
                                        (gx#syntax-e _hd64116469_)))
                                   (let ((_lp-hd64156479_ (##car _e64146475_))
                                         (_lp-tl64166482_ (##cdr _e64146475_)))
                                     (_loop64136465_
                                      _lp-tl64166482_
                                      (cons _lp-hd64156479_ _pre64176472_))))
                                 (let ((_pre64186485_ (reverse _pre64176472_)))
                                   (if (gx#stx-pair? _tl64096456_)
                                       (let ((_e64196489_
                                              (gx#syntax-e _tl64096456_)))
                                         (let ((_hd64206493_
                                                (##car _e64196489_))
                                               (_tl64216496_
                                                (##cdr _e64196489_)))
                                           (if (gx#stx-pair/null? _hd64206493_)
                                               (if (fx>= (gx#stx-length
                                                          _hd64206493_)
                                                         '0)
                                                   (let ((_g30227_
                                                          (gx#syntax-split-splice
                                                           _hd64206493_
                                                           '0)))
                                                     (begin
                                                       (let ((_g30228_
                                                              (values-count
                                                               _g30227_)))
                                                         (if (not (fx= _g30228_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g30228_)))
               (let ((_target64226499_ (values-ref _g30227_ 0))
                     (_tl64246502_ (values-ref _g30227_ 1)))
                 (if (gx#stx-null? _tl64246502_)
                     (letrec ((_loop64256505_
                               (lambda (_hd64236509_ _opt64296512_)
                                 (if (gx#stx-pair? _hd64236509_)
                                     (let ((_e64266515_
                                            (gx#syntax-e _hd64236509_)))
                                       (let ((_lp-hd64276519_
                                              (##car _e64266515_))
                                             (_lp-tl64286522_
                                              (##cdr _e64266515_)))
                                         (_loop64256505_
                                          _lp-tl64286522_
                                          (cons _lp-hd64276519_
                                                _opt64296512_))))
                                     (let ((_opt64306525_
                                            (reverse _opt64296512_)))
                                       (if (gx#stx-pair? _tl64216496_)
                                           (let ((_e64316529_
                                                  (gx#syntax-e _tl64216496_)))
                                             (let ((_hd64326533_
                                                    (##car _e64316529_))
                                                   (_tl64336536_
                                                    (##cdr _e64316529_)))
                                               (if (gx#stx-pair? _tl64336536_)
                                                   (let ((_e64346539_
                                                          (gx#syntax-e
                                                           _tl64336536_)))
                                                     (let ((_hd64356543_
                                                            (##car _e64346539_))
                                                           (_tl64366546_
                                                            (##cdr _e64346539_)))
                                                       (if (gx#stx-null?
                                                            _tl64366546_)
                                                           ((lambda (_L6549_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L6551_
                             _L6552_
                             _L6553_)
                      (let ()
                        (list (list (begin
                                      '#!void
                                      (foldr (lambda (_g65816586_ _g65826589_)
                                               (cons _g65816586_ _g65826589_))
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g65836592_
                                                               _g65846595_)
                                                        (cons _g65836592_
                                                              _g65846595_))
                                                      _L6551_
                                                      _L6552_))
                                             _L6553_))
                                    (gx#stx-wrap-source
                                     (cons (gx#datum->syntax '#f 'apply)
                                           (cons _L6549_
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g65976602_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g65986605_)
                    (cons _g65976602_ _g65986605_))
                  (begin
                    '#!void
                    (foldr (lambda (_g65996608_ _g66006611_)
                             (cons _g65996608_ _g66006611_))
                           (cons _L6551_ '())
                           _L6552_))
                  _L6553_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (gx#stx-source _stx4868_))))))
                    _hd64356543_
                    _hd64326533_
                    _opt64306525_
                    _pre64186485_)
                   (_g64016442_ _g64026446_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g64016442_ _g64026446_))))
                                           (_g64016442_ _g64026446_)))))))
                       (_loop64256505_ _target64226499_ '()))
                     (_g64016442_ _g64026446_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g64016442_ _g64026446_))
                                               (_g64016442_ _g64026446_))))
                                       (_g64016442_ _g64026446_)))))))
                   (_loop64136465_ _target64106459_ '()))
                 (_g64016442_ _g64026446_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g64016442_ _g64026446_))
                                           (_g64016442_ _g64026446_))))
                                   (_g64016442_ _g64026446_)))))
                        (_g64006614_
                         (list _pre6177_
                               (reverse _right6186_)
                               _tail6179_
                               _primary6175_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _recur6181_)
                                        _opt6178_
                                        '()))))
                                (let ((_generate-kw-dispatch4884_
                                       (lambda (_primary5433_
                                                _kwargs5435_
                                                _strict?5436_)
                                         (let ((_g54385457_
                                                (lambda (_g54395453_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g54395453_))))
                                           (let ((_g54375516_
                                                  (lambda (_g54395461_)
                                                    (if (gx#stx-pair?
                                                         _g54395461_)
                                                        (let ((_e54435464_
                                                               (gx#syntax-e
                                                                _g54395461_)))
                                                          (let ((_hd54445468_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e54435464_))
                        (_tl54455471_ (##cdr _e54435464_)))
                    (if (gx#stx-pair? _tl54455471_)
                        (let ((_e54465474_ (gx#syntax-e _tl54455471_)))
                          (let ((_hd54475478_ (##car _e54465474_))
                                (_tl54485481_ (##cdr _e54465474_)))
                            (if (gx#stx-pair? _tl54485481_)
                                (let ((_e54495484_ (gx#syntax-e _tl54485481_)))
                                  (let ((_hd54505488_ (##car _e54495484_))
                                        (_tl54515491_ (##cdr _e54495484_)))
                                    (if (gx#stx-null? _tl54515491_)
                                        ((lambda (_L5494_ _L5496_ _L5497_)
                                           (let ()
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda%)
                                                   (cons _L5494_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'apply)
                             (cons (gx#datum->syntax '#f 'keyword-dispatch)
                                   (cons (cons (gx#datum->syntax '#f 'quote)
                                               (cons _L5497_ '()))
                                         (cons _L5496_ (cons _L5494_ '())))))
                       '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _hd54505488_
                                         _hd54475478_
                                         _hd54445468_)
                                        (_g54385457_ _g54395461_))))
                                (_g54385457_ _g54395461_))))
                        (_g54385457_ _g54395461_))))
                (_g54385457_ _g54395461_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g54375516_
                                              (list (if _strict?5436_
                                                        (_generate-kw-table4885_
                                                         (map car
                                                              _kwargs5435_))
                                                        '#f)
                                                    _primary5433_
                                                    (gx#genident 'args))))))))
                                  (let ((_generate-opt-dispatch4880_
                                         (lambda (_primary6618_
                                                  _pre6620_
                                                  _opt6621_
                                                  _tail6622_)
                                           (cons (list _pre6620_
                                                       (_generate-opt-clause4882_
                                                        _primary6618_
                                                        _pre6620_
                                                        _opt6621_))
                                                 (_generate-opt-dispatch*4881_
                                                  _primary6618_
                                                  _pre6620_
                                                  _opt6621_
                                                  _tail6622_)))))
                                    (let ((_g48894920_
                                           (lambda (_g48904916_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g48904916_))))
                                      (let ((_g48885133_
                                             (lambda (_g48904924_)
                                               (if (gx#stx-pair? _g48904924_)
                                                   (let ((_e49094927_
                                                          (gx#syntax-e
                                                           _g48904924_)))
                                                     (let ((_hd49104931_
                                                            (##car _e49094927_))
                                                           (_tl49114934_
                                                            (##cdr _e49094927_)))
                                                       (if (gx#stx-pair?
                                                            _tl49114934_)
                                                           (let ((_e49124937_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl49114934_)))
                     (let ((_hd49134941_ (##car _e49124937_))
                           (_tl49144944_ (##cdr _e49124937_)))
                       ((lambda (_L4947_ _L4949_)
                          (if (_kw-lambda?4875_ _L4949_)
                              (let ((_g49654972_
                                     (lambda (_g49664968_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g49664968_))))
                                (let ((_g49645129_
                                       (lambda (_g49664976_)
                                         ((lambda ()
                                            (let ()
                                              (let ((_g30215_
                                                     (_kw-lambda-split4876_
                                                      _L4949_)))
                                                (begin
                                                  (let ((_g30216_
                                                         (values-count
                                                          _g30215_)))
                                                    (if (not (fx= _g30216_ 3))
                                                        (error "Context expects 3 values"
                                                               _g30216_)))
                                                  (let ((_key4985_
                                                         (values-ref
                                                          _g30215_
                                                          0))
                                                        (_kwargs4987_
                                                         (values-ref
                                                          _g30215_
                                                          1))
                                                        (_args4988_
                                                         (values-ref
                                                          _g30215_
                                                          2)))
                                                    (let ((_g49904998_
                                                           (lambda (_g49914994_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g49914994_))))
                                                      (let ((_g49895121_
                                                             (lambda (_g49915002_)
                                                               ((lambda (_L5005_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (let ((_g50235031_
                                   (lambda (_g50245027_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g50245027_))))
                              (let ((_g50225117_
                                     (lambda (_g50245035_)
                                       ((lambda (_L5038_)
                                          (let ()
                                            (let ((_g50515059_
                                                   (lambda (_g50525055_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g50525055_))))
                                              (let ((_g50505113_
                                                     (lambda (_g50525063_)
                                                       ((lambda (_L5066_)
                                                          (let ()
                                                            (let ((_g50795087_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g50805083_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g50805083_))))
                      (let ((_g50785109_
                             (lambda (_g50805091_)
                               ((lambda (_L5094_)
                                  (let ()
                                    (let ()
                                      (cons (gx#datum->syntax '#f 'let-values)
                                            (cons (cons (cons (cons _L5038_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons _L5066_ '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _L5094_ '()))))))
                                _g50805091_))))
                        (_g50785109_
                         (gx#stx-wrap-source
                          (_generate-kw-dispatch4884_
                           _L5038_
                           _kwargs4987_
                           (not _key4985_))
                          (gx#stx-source _stx4868_)))))))
                _g50525063_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g50505113_
                                                 (gx#stx-wrap-source
                                                  (_generate-kw-primary4883_
                                                   _L5005_
                                                   _kwargs4987_
                                                   _args4988_
                                                   _L4947_)
                                                  (gx#stx-source
                                                   _stx4868_)))))))
                                        _g50245035_))))
                                (_g50225117_ (gx#genident 'kw-lambda))))))
                        _g49915002_))))
                (_g49895121_
                 (let ((_$e5125_ _key4985_))
                   (if _$e5125_ _$e5125_ (gx#genident 'key)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_g49645129_
                                   (_check-duplicate-bindings4878_ _L4949_))))
                              (_g48894920_ _g48904924_)))
                        _tl49144944_
                        _hd49134941_)))
                   (_g48894920_ _g48904924_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g48894920_
                                                    _g48904924_)))))
                                        (let ((_g48875361_
                                               (lambda (_g48905137_)
                                                 (if (gx#stx-pair? _g48905137_)
                                                     (let ((_e49015140_
                                                            (gx#syntax-e
                                                             _g48905137_)))
                                                       (let ((_hd49025144_
                                                              (##car _e49015140_))
                                                             (_tl49035147_
                                                              (##cdr _e49015140_)))
                                                         (if (gx#stx-pair?
                                                              _tl49035147_)
                                                             (let ((_e49045150_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl49035147_)))
                       (let ((_hd49055154_ (##car _e49045150_))
                             (_tl49065157_ (##cdr _e49045150_)))
                         ((lambda (_L5160_ _L5162_)
                            (if (_opt-lambda?4873_ _L5162_)
                                (let ((_g30217_
                                       (_opt-lambda-split4874_ _L5162_)))
                                  (begin
                                    (let ((_g30218_ (values-count _g30217_)))
                                      (if (not (fx= _g30218_ 3))
                                          (error "Context expects 3 values"
                                                 _g30218_)))
                                    (let ((_pre5175_ (values-ref _g30217_ 0))
                                          (_opt5177_ (values-ref _g30217_ 1))
                                          (_tail5178_ (values-ref _g30217_ 2)))
                                      (let ((_g51805188_
                                             (lambda (_g51815184_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g51815184_))))
                                        (let ((_g51795357_
                                               (lambda (_g51815192_)
                                                 ((lambda (_L5195_)
                                                    (let ()
                                                      (let ((_g52085216_
                                                             (lambda (_g52095212_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g52095212_))))
                                                        (let ((_g52075353_
                                                               (lambda (_g52095220_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda (_L5223_)
                            (let ()
                              (let ((_g52365253_
                                     (lambda (_g52375249_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g52375249_))))
                                (let ((_g52355349_
                                       (lambda (_g52375257_)
                                         (if (gx#stx-pair/null? _g52375257_)
                                             (if (fx>= (gx#stx-length
                                                        _g52375257_)
                                                       '0)
                                                 (let ((_g30219_
                                                        (gx#syntax-split-splice
                                                         _g52375257_
                                                         '0)))
                                                   (begin
                                                     (let ((_g30220_
                                                            (values-count
                                                             _g30219_)))
                                                       (if (not (fx= _g30220_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g30220_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target52395260_
                                                            (values-ref
                                                             _g30219_
                                                             0))
                                                           (_tl52415263_
                                                            (values-ref
                                                             _g30219_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl52415263_)
                                                           (letrec ((_loop52425266_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd52405270_ _clause52465273_)
                               (if (gx#stx-pair? _hd52405270_)
                                   (let ((_e52435276_
                                          (gx#syntax-e _hd52405270_)))
                                     (let ((_lp-hd52445280_
                                            (##car _e52435276_))
                                           (_lp-tl52455283_
                                            (##cdr _e52435276_)))
                                       (_loop52425266_
                                        _lp-tl52455283_
                                        (cons _lp-hd52445280_
                                              _clause52465273_))))
                                   (let ((_clause52475286_
                                          (reverse _clause52465273_)))
                                     ((lambda (_L5290_)
                                        (let ()
                                          (let ((_g53075315_
                                                 (lambda (_g53085311_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g53085311_))))
                                            (let ((_g53065337_
                                                   (lambda (_g53085319_)
                                                     ((lambda (_L5322_)
                                                        (let ()
                                                          (let ()
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'let-values)
                          (cons (cons (cons (cons _L5195_ '())
                                            (cons _L5223_ '()))
                                      '())
                                (cons _L5322_ '()))))))
              _g53085319_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g53065337_
                                               (gx#stx-wrap-source
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'case-lambda)
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g53405343_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g53415346_)
                         (cons _g53405343_ _g53415346_))
                       '()
                       _L5290_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#stx-source _stx4868_)))))))
                                      _clause52475286_))))))
                     (_loop52425266_ _target52395260_ '()))
                   (_g52365253_ _g52375257_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g52365253_ _g52375257_))
                                             (_g52365253_ _g52375257_)))))
                                  (_g52355349_
                                   (_generate-opt-dispatch4880_
                                    _L5195_
                                    _pre5175_
                                    _opt5177_
                                    _tail5178_))))))
                          _g52095220_))))
                  (_g52075353_
                   (gx#stx-wrap-source
                    (_generate-opt-primary4879_
                     _pre5175_
                     _opt5177_
                     _tail5178_
                     _L5160_)
                    (gx#stx-source _stx4868_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g51815192_))))
                                          (_g51795357_
                                           (gx#genident 'opt-lambda)))))))
                                (_g48885133_ _g48905137_)))
                          _tl49065157_
                          _hd49055154_)))
                     (_g48885133_ _g48905137_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g48885133_
                                                      _g48905137_)))))
                                          (let ((_g48865403_
                                                 (lambda (_g48905365_)
                                                   (if (gx#stx-pair?
                                                        _g48905365_)
                                                       (let ((_e48935368_
                                                              (gx#syntax-e
                                                               _g48905365_)))
                                                         (let ((_hd48945372_
                                                                (##car _e48935368_))
                                                               (_tl48955375_
                                                                (##cdr _e48935368_)))
                                                           (if (gx#stx-pair?
                                                                _tl48955375_)
                                                               (let ((_e48965378_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl48955375_)))
                         (let ((_hd48975382_ (##car _e48965378_))
                               (_tl48985385_ (##cdr _e48965378_)))
                           ((lambda (_L5388_ _L5390_)
                              (if (_simple-lambda?4871_ _L5390_)
                                  (cons (gx#datum->syntax '#f 'lambda%)
                                        (cons _L5390_ _L5388_))
                                  (_g48875361_ _g48905365_)))
                            _tl48985385_
                            _hd48975382_)))
                       (_g48875361_ _g48905365_))))
               (_g48875361_ _g48905365_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g48865403_
                                             _stx4868_)))))))))))))))))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#def|
      (lambda (_$stx8035_)
        (let ((_g80408079_
               (lambda (_g80418075_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g80418075_))))
          (let ((_g80398134_
                 (lambda (_g80418083_)
                   (if (gx#stx-pair? _g80418083_)
                       (let ((_e80658086_ (gx#syntax-e _g80418083_)))
                         (let ((_hd80668090_ (##car _e80658086_))
                               (_tl80678093_ (##cdr _e80658086_)))
                           (if (gx#stx-pair? _tl80678093_)
                               (let ((_e80688096_ (gx#syntax-e _tl80678093_)))
                                 (let ((_hd80698100_ (##car _e80688096_))
                                       (_tl80708103_ (##cdr _e80688096_)))
                                   (if (gx#stx-pair? _tl80708103_)
                                       (let ((_e80718106_
                                              (gx#syntax-e _tl80708103_)))
                                         (let ((_hd80728110_
                                                (##car _e80718106_))
                                               (_tl80738113_
                                                (##cdr _e80718106_)))
                                           (if (gx#stx-null? _tl80738113_)
                                               ((lambda (_L8116_ _L8118_)
                                                  (if (gx#identifier? _L8118_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'define-values)
                                                            (cons (cons _L8118_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons _L8116_ '())))
              (_g80408079_ _g80418083_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd80728110_
                                                _hd80698100_)
                                               (_g80408079_ _g80418083_))))
                                       (_g80408079_ _g80418083_))))
                               (_g80408079_ _g80418083_))))
                       (_g80408079_ _g80418083_)))))
            (let ((_g80388232_
                   (lambda (_g80418138_)
                     (if (gx#stx-pair? _g80418138_)
                         (let ((_e80458141_ (gx#syntax-e _g80418138_)))
                           (let ((_hd80468145_ (##car _e80458141_))
                                 (_tl80478148_ (##cdr _e80458141_)))
                             (if (gx#stx-pair? _tl80478148_)
                                 (let ((_e80488151_
                                        (gx#syntax-e _tl80478148_)))
                                   (let ((_hd80498155_ (##car _e80488151_))
                                         (_tl80508158_ (##cdr _e80488151_)))
                                     (if (gx#stx-pair? _hd80498155_)
                                         (let ((_e80518161_
                                                (gx#syntax-e _hd80498155_)))
                                           (let ((_hd80528165_
                                                  (##car _e80518161_))
                                                 (_tl80538168_
                                                  (##cdr _e80518161_)))
                                             (if (gx#stx-pair/null?
                                                  _tl80508158_)
                                                 (if (fx>= (gx#stx-length
                                                            _tl80508158_)
                                                           '0)
                                                     (let ((_g30237_
                                                            (gx#syntax-split-splice
                                                             _tl80508158_
                                                             '0)))
                                                       (begin
                                                         (let ((_g30238_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g30237_)))
                   (if (not (fx= _g30238_ 2))
                       (error "Context expects 2 values" _g30238_)))
                 (let ((_target80548171_ (values-ref _g30237_ 0))
                       (_tl80568174_ (values-ref _g30237_ 1)))
                   (if (gx#stx-null? _tl80568174_)
                       (letrec ((_loop80578177_
                                 (lambda (_hd80558181_ _body80618184_)
                                   (if (gx#stx-pair? _hd80558181_)
                                       (let ((_e80588187_
                                              (gx#syntax-e _hd80558181_)))
                                         (let ((_lp-hd80598191_
                                                (##car _e80588187_))
                                               (_lp-tl80608194_
                                                (##cdr _e80588187_)))
                                           (_loop80578177_
                                            _lp-tl80608194_
                                            (cons _lp-hd80598191_
                                                  _body80618184_))))
                                       (let ((_body80628197_
                                              (reverse _body80618184_)))
                                         ((lambda (_L8201_ _L8203_ _L8204_)
                                            (if (gx#identifier? _L8204_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'define-values)
                                                      (cons (cons _L8204_ '())
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'lambda)
                                (cons _L8203_
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g82238226_
                                                        _g82248229_)
                                                 (cons _g82238226_
                                                       _g82248229_))
                                               '()
                                               _L8201_))))
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g80398134_ _g80418138_)))
                                          _body80628197_
                                          _tl80538168_
                                          _hd80528165_))))))
                         (_loop80578177_ _target80548171_ '()))
                       (_g80398134_ _g80418138_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g80398134_ _g80418138_))
                                                 (_g80398134_ _g80418138_))))
                                         (_g80398134_ _g80418138_))))
                                 (_g80398134_ _g80418138_))))
                         (_g80398134_ _g80418138_)))))
              (_g80388232_ _$stx8035_))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#def*|
      (lambda (_$stx8237_)
        (let ((_g82418265_
               (lambda (_g82428261_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g82428261_))))
          (let ((_g82408350_
                 (lambda (_g82428269_)
                   (if (gx#stx-pair? _g82428269_)
                       (let ((_e82458272_ (gx#syntax-e _g82428269_)))
                         (let ((_hd82468276_ (##car _e82458272_))
                               (_tl82478279_ (##cdr _e82458272_)))
                           (if (gx#stx-pair? _tl82478279_)
                               (let ((_e82488282_ (gx#syntax-e _tl82478279_)))
                                 (let ((_hd82498286_ (##car _e82488282_))
                                       (_tl82508289_ (##cdr _e82488282_)))
                                   (if (gx#stx-pair/null? _tl82508289_)
                                       (if (fx>= (gx#stx-length _tl82508289_)
                                                 '0)
                                           (let ((_g30239_
                                                  (gx#syntax-split-splice
                                                   _tl82508289_
                                                   '0)))
                                             (begin
                                               (let ((_g30240_
                                                      (values-count _g30239_)))
                                                 (if (not (fx= _g30240_ 2))
                                                     (error "Context expects 2 values"
                                                            _g30240_)))
                                               (let ((_target82518292_
                                                      (values-ref _g30239_ 0))
                                                     (_tl82538295_
                                                      (values-ref _g30239_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl82538295_)
                                                     (letrec ((_loop82548298_
                                                               (lambda (_hd82528302_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _clauses82588305_)
                         (if (gx#stx-pair? _hd82528302_)
                             (let ((_e82558308_ (gx#syntax-e _hd82528302_)))
                               (let ((_lp-hd82568312_ (##car _e82558308_))
                                     (_lp-tl82578315_ (##cdr _e82558308_)))
                                 (_loop82548298_
                                  _lp-tl82578315_
                                  (cons _lp-hd82568312_ _clauses82588305_))))
                             (let ((_clauses82598318_
                                    (reverse _clauses82588305_)))
                               ((lambda (_L8322_ _L8324_)
                                  (if (gx#identifier? _L8324_)
                                      (cons (gx#datum->syntax
                                             '#f
                                             'define-values)
                                            (cons (cons _L8324_ '())
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'case-lambda)
                                                              (begin
                                                                '#!void
                                                                (foldr (lambda (_g83418344_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g83428347_)
                                 (cons _g83418344_ _g83428347_))
                               '()
                               _L8322_)))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_g82418265_ _g82428269_)))
                                _clauses82598318_
                                _hd82498286_))))))
               (_loop82548298_ _target82518292_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g82418265_
                                                      _g82428269_)))))
                                           (_g82418265_ _g82428269_))
                                       (_g82418265_ _g82428269_))))
                               (_g82418265_ _g82428269_))))
                       (_g82418265_ _g82428269_)))))
            (_g82408350_ _$stx8237_)))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#defvalues|
      (lambda (_$stx8355_)
        (let ((_g83598377_
               (lambda (_g83608373_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g83608373_))))
          (let ((_g83588432_
                 (lambda (_g83608381_)
                   (if (gx#stx-pair? _g83608381_)
                       (let ((_e83638384_ (gx#syntax-e _g83608381_)))
                         (let ((_hd83648388_ (##car _e83638384_))
                               (_tl83658391_ (##cdr _e83638384_)))
                           (if (gx#stx-pair? _tl83658391_)
                               (let ((_e83668394_ (gx#syntax-e _tl83658391_)))
                                 (let ((_hd83678398_ (##car _e83668394_))
                                       (_tl83688401_ (##cdr _e83668394_)))
                                   (if (gx#stx-pair? _tl83688401_)
                                       (let ((_e83698404_
                                              (gx#syntax-e _tl83688401_)))
                                         (let ((_hd83708408_
                                                (##car _e83698404_))
                                               (_tl83718411_
                                                (##cdr _e83698404_)))
                                           (if (gx#stx-null? _tl83718411_)
                                               ((lambda (_L8414_ _L8416_)
                                                  (if (gx#identifier-list?
                                                       _L8416_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'define-values)
                                                            (cons _L8416_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L8414_ '())))
              (_g83598377_ _g83608381_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd83708408_
                                                _hd83678398_)
                                               (_g83598377_ _g83608381_))))
                                       (_g83598377_ _g83608381_))))
                               (_g83598377_ _g83608381_))))
                       (_g83598377_ _g83608381_)))))
            (_g83588432_ _$stx8355_)))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#case|
      (lambda (_$stx8436_)
        (let ((_g84408464_
               (lambda (_g84418460_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g84418460_))))
          (let ((_g84398549_
                 (lambda (_g84418468_)
                   (if (gx#stx-pair? _g84418468_)
                       (let ((_e84448471_ (gx#syntax-e _g84418468_)))
                         (let ((_hd84458475_ (##car _e84448471_))
                               (_tl84468478_ (##cdr _e84448471_)))
                           (if (gx#stx-pair? _tl84468478_)
                               (let ((_e84478481_ (gx#syntax-e _tl84468478_)))
                                 (let ((_hd84488485_ (##car _e84478481_))
                                       (_tl84498488_ (##cdr _e84478481_)))
                                   (if (gx#stx-pair/null? _tl84498488_)
                                       (if (fx>= (gx#stx-length _tl84498488_)
                                                 '0)
                                           (let ((_g30241_
                                                  (gx#syntax-split-splice
                                                   _tl84498488_
                                                   '0)))
                                             (begin
                                               (let ((_g30242_
                                                      (values-count _g30241_)))
                                                 (if (not (fx= _g30242_ 2))
                                                     (error "Context expects 2 values"
                                                            _g30242_)))
                                               (let ((_target84508491_
                                                      (values-ref _g30241_ 0))
                                                     (_tl84528494_
                                                      (values-ref _g30241_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl84528494_)
                                                     (letrec ((_loop84538497_
                                                               (lambda (_hd84518501_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _clause84578504_)
                         (if (gx#stx-pair? _hd84518501_)
                             (let ((_e84548507_ (gx#syntax-e _hd84518501_)))
                               (let ((_lp-hd84558511_ (##car _e84548507_))
                                     (_lp-tl84568514_ (##cdr _e84548507_)))
                                 (_loop84538497_
                                  _lp-tl84568514_
                                  (cons _lp-hd84558511_ _clause84578504_))))
                             (let ((_clause84588517_
                                    (reverse _clause84578504_)))
                               ((lambda (_L8521_ _L8523_)
                                  (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f '$e)
                                                    (cons _L8523_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '~case)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '$e)
                        (begin
                          '#!void
                          (foldr (lambda (_g85408543_ _g85418546_)
                                   (cons _g85408543_ _g85418546_))
                                 '()
                                 _L8521_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))
                                _clause84588517_
                                _hd84488485_))))))
               (_loop84538497_ _target84508491_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g84408464_
                                                      _g84418468_)))))
                                           (_g84408464_ _g84418468_))
                                       (_g84408464_ _g84418468_))))
                               (_g84408464_ _g84418468_))))
                       (_g84408464_ _g84418468_)))))
            (_g84398549_ _$stx8436_)))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#~case|
      (lambda (_$stx8554_)
        (let ((_g85628660_
               (lambda (_g85638656_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g85638656_))))
          (let ((_g85618775_
                 (lambda (_g85638664_)
                   (if (gx#stx-pair? _g85638664_)
                       (let ((_e86348667_ (gx#syntax-e _g85638664_)))
                         (let ((_hd86358671_ (##car _e86348667_))
                               (_tl86368674_ (##cdr _e86348667_)))
                           (if (gx#stx-pair? _tl86368674_)
                               (let ((_e86378677_ (gx#syntax-e _tl86368674_)))
                                 (let ((_hd86388681_ (##car _e86378677_))
                                       (_tl86398684_ (##cdr _e86378677_)))
                                   (if (gx#stx-pair? _tl86398684_)
                                       (let ((_e86408687_
                                              (gx#syntax-e _tl86398684_)))
                                         (let ((_hd86418691_
                                                (##car _e86408687_))
                                               (_tl86428694_
                                                (##cdr _e86408687_)))
                                           (if (gx#stx-pair? _hd86418691_)
                                               (let ((_e86438697_
                                                      (gx#syntax-e
                                                       _hd86418691_)))
                                                 (let ((_hd86448701_
                                                        (##car _e86438697_))
                                                       (_tl86458704_
                                                        (##cdr _e86438697_)))
                                                   (if (gx#stx-pair/null?
                                                        _tl86458704_)
                                                       (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl86458704_)
                         '0)
                   (let ((_g30243_ (gx#syntax-split-splice _tl86458704_ '0)))
                     (begin
                       (let ((_g30244_ (values-count _g30243_)))
                         (if (not (fx= _g30244_ 2))
                             (error "Context expects 2 values" _g30244_)))
                       (let ((_target86468707_ (values-ref _g30243_ 0))
                             (_tl86488710_ (values-ref _g30243_ 1)))
                         (if (gx#stx-null? _tl86488710_)
                             (letrec ((_loop86498713_
                                       (lambda (_hd86478717_ _body86538720_)
                                         (if (gx#stx-pair? _hd86478717_)
                                             (let ((_e86508723_
                                                    (gx#syntax-e
                                                     _hd86478717_)))
                                               (let ((_lp-hd86518727_
                                                      (##car _e86508723_))
                                                     (_lp-tl86528730_
                                                      (##cdr _e86508723_)))
                                                 (_loop86498713_
                                                  _lp-tl86528730_
                                                  (cons _lp-hd86518727_
                                                        _body86538720_))))
                                             (let ((_body86548733_
                                                    (reverse _body86538720_)))
                                               ((lambda (_L8737_
                                                         _L8739_
                                                         _L8740_
                                                         _L8741_
                                                         _L8742_)
                                                  (if (gx#stx-list? _L8740_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'if)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 '~case-test)
                                (cons _L8741_ (cons _L8740_ '())))
                          (cons (cons (gx#datum->syntax '#f 'begin)
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g87668769_
                                                        _g87678772_)
                                                 (cons _g87668769_
                                                       _g87678772_))
                                               '()
                                               _L8739_)))
                                (cons (cons _L8742_ (cons _L8741_ _L8737_))
                                      '()))))
              (_g85628660_ _g85638664_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _tl86428694_
                                                _body86548733_
                                                _hd86448701_
                                                _hd86388681_
                                                _hd86358671_))))))
                               (_loop86498713_ _target86468707_ '()))
                             (_g85628660_ _g85638664_)))))
                   (_g85628660_ _g85638664_))
               (_g85628660_ _g85638664_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g85628660_ _g85638664_))))
                                       (_g85628660_ _g85638664_))))
                               (_g85628660_ _g85638664_))))
                       (_g85628660_ _g85638664_)))))
            (let ((_g85608871_
                   (lambda (_g85638779_)
                     (if (gx#stx-pair? _g85638779_)
                         (let ((_e86118782_ (gx#syntax-e _g85638779_)))
                           (let ((_hd86128786_ (##car _e86118782_))
                                 (_tl86138789_ (##cdr _e86118782_)))
                             (if (gx#stx-pair? _tl86138789_)
                                 (let ((_e86148792_
                                        (gx#syntax-e _tl86138789_)))
                                   (let ((_hd86158796_ (##car _e86148792_))
                                         (_tl86168799_ (##cdr _e86148792_)))
                                     (if (gx#stx-pair? _tl86168799_)
                                         (let ((_e86178802_
                                                (gx#syntax-e _tl86168799_)))
                                           (let ((_hd86188806_
                                                  (##car _e86178802_))
                                                 (_tl86198809_
                                                  (##cdr _e86178802_)))
                                             (if (gx#stx-pair? _hd86188806_)
                                                 (let ((_e86208812_
                                                        (gx#syntax-e
                                                         _hd86188806_)))
                                                   (let ((_hd86218816_
                                                          (##car _e86208812_))
                                                         (_tl86228819_
                                                          (##cdr _e86208812_)))
                                                     (if (gx#stx-pair?
                                                          _tl86228819_)
                                                         (let ((_e86238822_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl86228819_)))
                   (let ((_hd86248826_ (##car _e86238822_))
                         (_tl86258829_ (##cdr _e86238822_)))
                     (if (gx#identifier? _hd86248826_)
                         (if (gx#free-identifier=?
                              |gerbil/core::<sugar>::<sugar:2>[1]#_g30245_|
                              _hd86248826_)
                             (if (gx#stx-pair? _tl86258829_)
                                 (let ((_e86268832_
                                        (gx#syntax-e _tl86258829_)))
                                   (let ((_hd86278836_ (##car _e86268832_))
                                         (_tl86288839_ (##cdr _e86268832_)))
                                     (if (gx#stx-null? _tl86288839_)
                                         ((lambda (_L8842_
                                                   _L8844_
                                                   _L8845_
                                                   _L8846_
                                                   _L8847_)
                                            (if (gx#stx-list? _L8845_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'if)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '~case-test)
                          (cons _L8846_ (cons _L8845_ '())))
                    (cons (cons _L8844_ (cons _L8846_ '()))
                          (cons (cons _L8847_ (cons _L8846_ _L8842_)) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g85618775_ _g85638779_)))
                                          _tl86198809_
                                          _hd86278836_
                                          _hd86218816_
                                          _hd86158796_
                                          _hd86128786_)
                                         (_g85618775_ _g85638779_))))
                                 (_g85618775_ _g85638779_))
                             (_g85618775_ _g85638779_))
                         (_g85618775_ _g85638779_))))
                 (_g85618775_ _g85638779_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g85618775_ _g85638779_))))
                                         (_g85618775_ _g85638779_))))
                                 (_g85618775_ _g85638779_))))
                         (_g85618775_ _g85638779_)))))
              (let ((_g85598935_
                     (lambda (_g85638875_)
                       (if (gx#stx-pair? _g85638875_)
                           (let ((_e85948878_ (gx#syntax-e _g85638875_)))
                             (let ((_hd85958882_ (##car _e85948878_))
                                   (_tl85968885_ (##cdr _e85948878_)))
                               (if (gx#stx-pair? _tl85968885_)
                                   (let ((_e85978888_
                                          (gx#syntax-e _tl85968885_)))
                                     (let ((_hd85988892_ (##car _e85978888_))
                                           (_tl85998895_ (##cdr _e85978888_)))
                                       (if (gx#stx-pair? _tl85998895_)
                                           (let ((_e86008898_
                                                  (gx#syntax-e _tl85998895_)))
                                             (let ((_hd86018902_
                                                    (##car _e86008898_))
                                                   (_tl86028905_
                                                    (##cdr _e86008898_)))
                                               (if (gx#stx-pair? _hd86018902_)
                                                   (let ((_e86038908_
                                                          (gx#syntax-e
                                                           _hd86018902_)))
                                                     (let ((_hd86048912_
                                                            (##car _e86038908_))
                                                           (_tl86058915_
                                                            (##cdr _e86038908_)))
                                                       (if (gx#identifier?
                                                            _hd86048912_)
                                                           (if (gx#free-identifier=?
                                                                |gerbil/core::<sugar>::<sugar:2>[1]#_g30246_|
                                                                _hd86048912_)
                                                               ((lambda (_L8918_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'syntax-error)
                                (cons '"Bad syntax; misplaced else" '())))
                        _hd85988892_)
                       (_g85608871_ _g85638875_))
                   (_g85608871_ _g85638875_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g85608871_ _g85638875_))))
                                           (_g85608871_ _g85638875_))))
                                   (_g85608871_ _g85638875_))))
                           (_g85608871_ _g85638875_)))))
                (let ((_g85589043_
                       (lambda (_g85638939_)
                         (if (gx#stx-pair? _g85638939_)
                             (let ((_e85728942_ (gx#syntax-e _g85638939_)))
                               (let ((_hd85738946_ (##car _e85728942_))
                                     (_tl85748949_ (##cdr _e85728942_)))
                                 (if (gx#stx-pair? _tl85748949_)
                                     (let ((_e85758952_
                                            (gx#syntax-e _tl85748949_)))
                                       (let ((_hd85768956_ (##car _e85758952_))
                                             (_tl85778959_
                                              (##cdr _e85758952_)))
                                         (if (gx#stx-pair? _tl85778959_)
                                             (let ((_e85788962_
                                                    (gx#syntax-e
                                                     _tl85778959_)))
                                               (let ((_hd85798966_
                                                      (##car _e85788962_))
                                                     (_tl85808969_
                                                      (##cdr _e85788962_)))
                                                 (if (gx#stx-pair?
                                                      _hd85798966_)
                                                     (let ((_e85818972_
                                                            (gx#syntax-e
                                                             _hd85798966_)))
                                                       (let ((_hd85828976_
                                                              (##car _e85818972_))
                                                             (_tl85838979_
                                                              (##cdr _e85818972_)))
                                                         (if (gx#identifier?
                                                              _hd85828976_)
                                                             (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          |gerbil/core::<sugar>::<sugar:2>[1]#_g30247_|
                          _hd85828976_)
                         (if (gx#stx-pair/null? _tl85838979_)
                             (if (fx>= (gx#stx-length _tl85838979_) '0)
                                 (let ((_g30248_
                                        (gx#syntax-split-splice
                                         _tl85838979_
                                         '0)))
                                   (begin
                                     (let ((_g30249_ (values-count _g30248_)))
                                       (if (not (fx= _g30249_ 2))
                                           (error "Context expects 2 values"
                                                  _g30249_)))
                                     (let ((_target85848982_
                                            (values-ref _g30248_ 0))
                                           (_tl85868985_
                                            (values-ref _g30248_ 1)))
                                       (if (gx#stx-null? _tl85868985_)
                                           (letrec ((_loop85878988_
                                                     (lambda (_hd85858992_
                                                              _body85918995_)
                                                       (if (gx#stx-pair?
                                                            _hd85858992_)
                                                           (let ((_e85888998_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd85858992_)))
                     (let ((_lp-hd85899002_ (##car _e85888998_))
                           (_lp-tl85909005_ (##cdr _e85888998_)))
                       (_loop85878988_
                        _lp-tl85909005_
                        (cons _lp-hd85899002_ _body85918995_))))
                   (let ((_body85929008_ (reverse _body85918995_)))
                     (if (gx#stx-null? _tl85808969_)
                         ((lambda (_L9012_ _L9014_)
                            (cons (gx#datum->syntax '#f 'begin)
                                  (begin
                                    '#!void
                                    (foldr (lambda (_g90349037_ _g90359040_)
                                             (cons _g90349037_ _g90359040_))
                                           '()
                                           _L9012_))))
                          _body85929008_
                          _hd85768956_)
                         (_g85598935_ _g85638939_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop85878988_
                                              _target85848982_
                                              '()))
                                           (_g85598935_ _g85638939_)))))
                                 (_g85598935_ _g85638939_))
                             (_g85598935_ _g85638939_))
                         (_g85598935_ _g85638939_))
                     (_g85598935_ _g85638939_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g85598935_
                                                      _g85638939_))))
                                             (_g85598935_ _g85638939_))))
                                     (_g85598935_ _g85638939_))))
                             (_g85598935_ _g85638939_)))))
                  (let ((_g85579074_
                         (lambda (_g85639047_)
                           (if (gx#stx-pair? _g85639047_)
                               (let ((_e85649050_ (gx#syntax-e _g85639047_)))
                                 (let ((_hd85659054_ (##car _e85649050_))
                                       (_tl85669057_ (##cdr _e85649050_)))
                                   (if (gx#stx-pair? _tl85669057_)
                                       (let ((_e85679060_
                                              (gx#syntax-e _tl85669057_)))
                                         (let ((_hd85689064_
                                                (##car _e85679060_))
                                               (_tl85699067_
                                                (##cdr _e85679060_)))
                                           (if (gx#stx-null? _tl85699067_)
                                               ((lambda () '#!void))
                                               (_g85589043_ _g85639047_))))
                                       (_g85589043_ _g85639047_))))
                               (_g85589043_ _g85639047_)))))
                    (_g85579074_ _$stx8554_)))))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#~case-test|
      (lambda (_stx9080_)
        (let ((_memq-datum?9083_
               (lambda (_x9445_)
                 (let ((_e9448_ (gx#stx-e _x9445_)))
                   (let ((_$e9451_ (symbol? _e9448_)))
                     (if _$e9451_
                         _$e9451_
                         (let ((_$e9455_ (keyword? _e9448_)))
                           (if _$e9455_ _$e9455_ (immediate? _e9448_)))))))))
          (let ((_memv-datum?9085_
                 (lambda (_x9438_)
                   (let ((_$e9441_ (_memq-datum?9083_ _x9438_)))
                     (if _$e9441_ _$e9441_ (gx#stx-number? _x9438_))))))
            (let ((_g90899140_
                   (lambda (_g90909136_)
                     (gx#raise-syntax-error '#f '"Bad syntax" _g90909136_))))
              (let ((_g90889285_
                     (lambda (_g90909144_)
                       (if (gx#stx-pair? _g90909144_)
                           (let ((_e91179147_ (gx#syntax-e _g90909144_)))
                             (let ((_hd91189151_ (##car _e91179147_))
                                   (_tl91199154_ (##cdr _e91179147_)))
                               (if (gx#stx-pair? _tl91199154_)
                                   (let ((_e91209157_
                                          (gx#syntax-e _tl91199154_)))
                                     (let ((_hd91219161_ (##car _e91209157_))
                                           (_tl91229164_ (##cdr _e91209157_)))
                                       (if (gx#stx-pair? _tl91229164_)
                                           (let ((_e91239167_
                                                  (gx#syntax-e _tl91229164_)))
                                             (let ((_hd91249171_
                                                    (##car _e91239167_))
                                                   (_tl91259174_
                                                    (##cdr _e91239167_)))
                                               (if (gx#stx-pair/null?
                                                    _hd91249171_)
                                                   (if (fx>= (gx#stx-length
                                                              _hd91249171_)
                                                             '0)
                                                       (let ((_g30250_
                                                              (gx#syntax-split-splice
                                                               _hd91249171_
                                                               '0)))
                                                         (begin
                                                           (let ((_g30251_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (values-count _g30250_)))
                     (if (not (fx= _g30251_ 2))
                         (error "Context expects 2 values" _g30251_)))
                   (let ((_target91269177_ (values-ref _g30250_ 0))
                         (_tl91289180_ (values-ref _g30250_ 1)))
                     (if (gx#stx-null? _tl91289180_)
                         (letrec ((_loop91299183_
                                   (lambda (_hd91279187_ _datum91339190_)
                                     (if (gx#stx-pair? _hd91279187_)
                                         (let ((_e91309193_
                                                (gx#syntax-e _hd91279187_)))
                                           (let ((_lp-hd91319197_
                                                  (##car _e91309193_))
                                                 (_lp-tl91329200_
                                                  (##cdr _e91309193_)))
                                             (_loop91299183_
                                              _lp-tl91329200_
                                              (cons _lp-hd91319197_
                                                    _datum91339190_))))
                                         (let ((_datum91349203_
                                                (reverse _datum91339190_)))
                                           (if (gx#stx-null? _tl91259174_)
                                               ((lambda (_L9207_ _L9209_)
                                                  (let ((_g92309238_
                                                         (lambda (_g92319234_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g92319234_))))
                                                    (let ((_g92299265_
                                                           (lambda (_g92319242_)
                                                             ((lambda (_L9245_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L9245_
                                (cons _L9209_
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons (begin
                                                          '#!void
                                                          (foldr (lambda (_g92569259_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g92579262_)
                           (cons _g92569259_ _g92579262_))
                         '()
                         _L9207_))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                      _g92319242_))))
              (_g92299265_
               (if (gx#stx-andmap
                    _memq-datum?9083_
                    (begin
                      '#!void
                      (foldr (lambda (_g92689271_ _g92699274_)
                               (cons _g92689271_ _g92699274_))
                             '()
                             _L9207_)))
                   (gx#datum->syntax '#f 'memq)
                   (if (gx#stx-andmap
                        _memv-datum?9085_
                        (begin
                          '#!void
                          (foldr (lambda (_g92769279_ _g92779282_)
                                   (cons _g92769279_ _g92779282_))
                                 '()
                                 _L9207_)))
                       (gx#datum->syntax '#f 'memv)
                       (gx#datum->syntax '#f 'member)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _datum91349203_
                                                _hd91219161_)
                                               (_g90899140_ _g90909144_)))))))
                           (_loop91299183_ _target91269177_ '()))
                         (_g90899140_ _g90909144_)))))
               (_g90899140_ _g90909144_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g90899140_ _g90909144_))))
                                           (_g90899140_ _g90909144_))))
                                   (_g90899140_ _g90909144_))))
                           (_g90899140_ _g90909144_)))))
                (let ((_g90879382_
                       (lambda (_g90909289_)
                         (if (gx#stx-pair? _g90909289_)
                             (let ((_e91039292_ (gx#syntax-e _g90909289_)))
                               (let ((_hd91049296_ (##car _e91039292_))
                                     (_tl91059299_ (##cdr _e91039292_)))
                                 (if (gx#stx-pair? _tl91059299_)
                                     (let ((_e91069302_
                                            (gx#syntax-e _tl91059299_)))
                                       (let ((_hd91079306_ (##car _e91069302_))
                                             (_tl91089309_
                                              (##cdr _e91069302_)))
                                         (if (gx#stx-pair? _tl91089309_)
                                             (let ((_e91099312_
                                                    (gx#syntax-e
                                                     _tl91089309_)))
                                               (let ((_hd91109316_
                                                      (##car _e91099312_))
                                                     (_tl91119319_
                                                      (##cdr _e91099312_)))
                                                 (if (gx#stx-pair?
                                                      _hd91109316_)
                                                     (let ((_e91129322_
                                                            (gx#syntax-e
                                                             _hd91109316_)))
                                                       (let ((_hd91139326_
                                                              (##car _e91129322_))
                                                             (_tl91149329_
                                                              (##cdr _e91129322_)))
                                                         (if (gx#stx-null?
                                                              _tl91149329_)
                                                             (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl91119319_)
                         ((lambda (_L9332_ _L9334_)
                            (let ((_g93519359_
                                   (lambda (_g93529355_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g93529355_))))
                              (let ((_g93509378_
                                     (lambda (_g93529363_)
                                       ((lambda (_L9366_)
                                          (let ()
                                            (cons _L9366_
                                                  (cons _L9334_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons _L9332_ '()))
                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _g93529363_))))
                                (_g93509378_
                                 (if (_memq-datum?9083_ _L9332_)
                                     (gx#datum->syntax '#f 'eq?)
                                     (if (_memv-datum?9085_ _L9332_)
                                         (gx#datum->syntax '#f 'eqv?)
                                         (gx#datum->syntax '#f 'equal?)))))))
                          _hd91139326_
                          _hd91079306_)
                         (_g90889285_ _g90909289_))
                     (_g90889285_ _g90909289_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g90889285_
                                                      _g90909289_))))
                                             (_g90889285_ _g90909289_))))
                                     (_g90889285_ _g90909289_))))
                             (_g90889285_ _g90909289_)))))
                  (let ((_g90869434_
                         (lambda (_g90909386_)
                           (if (gx#stx-pair? _g90909386_)
                               (let ((_e90929389_ (gx#syntax-e _g90909386_)))
                                 (let ((_hd90939393_ (##car _e90929389_))
                                       (_tl90949396_ (##cdr _e90929389_)))
                                   (if (gx#stx-pair? _tl90949396_)
                                       (let ((_e90959399_
                                              (gx#syntax-e _tl90949396_)))
                                         (let ((_hd90969403_
                                                (##car _e90959399_))
                                               (_tl90979406_
                                                (##cdr _e90959399_)))
                                           (if (gx#stx-pair? _tl90979406_)
                                               (let ((_e90989409_
                                                      (gx#syntax-e
                                                       _tl90979406_)))
                                                 (let ((_hd90999413_
                                                        (##car _e90989409_))
                                                       (_tl91009416_
                                                        (##cdr _e90989409_)))
                                                   (if (gx#stx-null?
                                                        _hd90999413_)
                                                       (if (gx#stx-null?
                                                            _tl91009416_)
                                                           ((lambda (_L9419_)
                                                              '#f)
                                                            _hd90969403_)
                                                           (_g90879382_
                                                            _g90909386_))
                                                       (_g90879382_
                                                        _g90909386_))))
                                               (_g90879382_ _g90909386_))))
                                       (_g90879382_ _g90909386_))))
                               (_g90879382_ _g90909386_)))))
                    (_g90869434_ _stx9080_)))))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#do|
      (lambda (_$stx9460_)
        (let ((_g94649535_
               (lambda (_g94659531_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g94659531_))))
          (let ((_g94639824_
                 (lambda (_g94659539_)
                   (if (gx#stx-pair? _g94659539_)
                       (let ((_e94729542_ (gx#syntax-e _g94659539_)))
                         (let ((_hd94739546_ (##car _e94729542_))
                               (_tl94749549_ (##cdr _e94729542_)))
                           (if (gx#stx-pair? _tl94749549_)
                               (let ((_e94759552_ (gx#syntax-e _tl94749549_)))
                                 (let ((_hd94769556_ (##car _e94759552_))
                                       (_tl94779559_ (##cdr _e94759552_)))
                                   (if (gx#stx-pair/null? _hd94769556_)
                                       (if (fx>= (gx#stx-length _hd94769556_)
                                                 '0)
                                           (let ((_g30252_
                                                  (gx#syntax-split-splice
                                                   _hd94769556_
                                                   '0)))
                                             (begin
                                               (let ((_g30253_
                                                      (values-count _g30252_)))
                                                 (if (not (fx= _g30253_ 2))
                                                     (error "Context expects 2 values"
                                                            _g30253_)))
                                               (let ((_target94789562_
                                                      (values-ref _g30252_ 0))
                                                     (_tl94809565_
                                                      (values-ref _g30252_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl94809565_)
                                                     (letrec ((_loop94819568_
                                                               (lambda (_hd94799572_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _step94859575_
                                _init94869577_
                                _var94879579_)
                         (if (gx#stx-pair? _hd94799572_)
                             (let ((_e94829582_ (gx#syntax-e _hd94799572_)))
                               (let ((_lp-hd94839586_ (##car _e94829582_))
                                     (_lp-tl94849589_ (##cdr _e94829582_)))
                                 (if (gx#stx-pair? _lp-hd94839586_)
                                     (let ((_e94919592_
                                            (gx#syntax-e _lp-hd94839586_)))
                                       (let ((_hd94929596_ (##car _e94919592_))
                                             (_tl94939599_
                                              (##cdr _e94919592_)))
                                         (if (gx#stx-pair? _tl94939599_)
                                             (let ((_e94949602_
                                                    (gx#syntax-e
                                                     _tl94939599_)))
                                               (let ((_hd94959606_
                                                      (##car _e94949602_))
                                                     (_tl94969609_
                                                      (##cdr _e94949602_)))
                                                 (if (gx#stx-pair/null?
                                                      _tl94969609_)
                                                     (if (fx>= (gx#stx-length
                                                                _tl94969609_)
                                                               '0)
                                                         (let ((_g30254_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl94969609_
                         '0)))
                   (begin
                     (let ((_g30255_ (values-count _g30254_)))
                       (if (not (fx= _g30255_ 2))
                           (error "Context expects 2 values" _g30255_)))
                     (let ((_target94979612_ (values-ref _g30254_ 0))
                           (_tl94999615_ (values-ref _g30254_ 1)))
                       (if (gx#stx-null? _tl94999615_)
                           (letrec ((_loop95009618_
                                     (lambda (_hd94989622_ _step95049625_)
                                       (if (gx#stx-pair? _hd94989622_)
                                           (let ((_e95019628_
                                                  (gx#syntax-e _hd94989622_)))
                                             (let ((_lp-hd95029632_
                                                    (##car _e95019628_))
                                                   (_lp-tl95039635_
                                                    (##cdr _e95019628_)))
                                               (_loop95009618_
                                                _lp-tl95039635_
                                                (cons _lp-hd95029632_
                                                      _step95049625_))))
                                           (let ((_step95059638_
                                                  (reverse _step95049625_)))
                                             (_loop94819568_
                                              _lp-tl94849589_
                                              (cons _step95059638_
                                                    _step94859575_)
                                              (cons _hd94959606_
                                                    _init94869577_)
                                              (cons _hd94929596_
                                                    _var94879579_)))))))
                             (_loop95009618_ _target94979612_ '()))
                           (_g94649535_ _g94659539_)))))
                 (_g94649535_ _g94659539_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g94649535_
                                                      _g94659539_))))
                                             (_g94649535_ _g94659539_))))
                                     (_g94649535_ _g94659539_))))
                             (let ((_step94889642_ (reverse _step94859575_))
                                   (_init94899645_ (reverse _init94869577_))
                                   (_var94909647_ (reverse _var94879579_)))
                               (if (gx#stx-pair? _tl94779559_)
                                   (let ((_e95069650_
                                          (gx#syntax-e _tl94779559_)))
                                     (let ((_hd95079654_ (##car _e95069650_))
                                           (_tl95089657_ (##cdr _e95069650_)))
                                       (if (gx#stx-pair? _hd95079654_)
                                           (let ((_e95099660_
                                                  (gx#syntax-e _hd95079654_)))
                                             (let ((_hd95109664_
                                                    (##car _e95099660_))
                                                   (_tl95119667_
                                                    (##cdr _e95099660_)))
                                               (if (gx#stx-pair/null?
                                                    _tl95119667_)
                                                   (if (fx>= (gx#stx-length
                                                              _tl95119667_)
                                                             '0)
                                                       (let ((_g30256_
                                                              (gx#syntax-split-splice
                                                               _tl95119667_
                                                               '0)))
                                                         (begin
                                                           (let ((_g30257_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (values-count _g30256_)))
                     (if (not (fx= _g30257_ 2))
                         (error "Context expects 2 values" _g30257_)))
                   (let ((_target95129670_ (values-ref _g30256_ 0))
                         (_tl95149673_ (values-ref _g30256_ 1)))
                     (if (gx#stx-null? _tl95149673_)
                         (letrec ((_loop95159676_
                                   (lambda (_hd95139680_ _fini95199683_)
                                     (if (gx#stx-pair? _hd95139680_)
                                         (let ((_e95169686_
                                                (gx#syntax-e _hd95139680_)))
                                           (let ((_lp-hd95179690_
                                                  (##car _e95169686_))
                                                 (_lp-tl95189693_
                                                  (##cdr _e95169686_)))
                                             (_loop95159676_
                                              _lp-tl95189693_
                                              (cons _lp-hd95179690_
                                                    _fini95199683_))))
                                         (let ((_fini95209696_
                                                (reverse _fini95199683_)))
                                           (if (gx#stx-pair/null? _tl95089657_)
                                               (if (fx>= (gx#stx-length
                                                          _tl95089657_)
                                                         '0)
                                                   (let ((_g30258_
                                                          (gx#syntax-split-splice
                                                           _tl95089657_
                                                           '0)))
                                                     (begin
                                                       (let ((_g30259_
                                                              (values-count
                                                               _g30258_)))
                                                         (if (not (fx= _g30259_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g30259_)))
               (let ((_target95219700_ (values-ref _g30258_ 0))
                     (_tl95239703_ (values-ref _g30258_ 1)))
                 (if (gx#stx-null? _tl95239703_)
                     (letrec ((_loop95249706_
                               (lambda (_hd95229710_ _body95289713_)
                                 (if (gx#stx-pair? _hd95229710_)
                                     (let ((_e95259716_
                                            (gx#syntax-e _hd95229710_)))
                                       (let ((_lp-hd95269720_
                                              (##car _e95259716_))
                                             (_lp-tl95279723_
                                              (##cdr _e95259716_)))
                                         (_loop95249706_
                                          _lp-tl95279723_
                                          (cons _lp-hd95269720_
                                                _body95289713_))))
                                     (let ((_body95299726_
                                            (reverse _body95289713_)))
                                       ((lambda (_L9730_
                                                 _L9732_
                                                 _L9733_
                                                 _L9734_
                                                 _L9735_
                                                 _L9736_)
                                          (if (gx#stx-andmap
                                               gx#identifier?
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g97699772_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g97709775_)
                  (cons _g97699772_ _g97709775_))
                '()
                _L9736_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (gx#datum->syntax '#f 'let)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           '$loop)
                                                          (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-check-splice-targets _L9735_ _L9736_)
                          (foldr (lambda (_g97779790_ _g97789793_ _g97799795_)
                                   (cons (cons _g97789793_
                                               (cons _g97779790_ '()))
                                         _g97799795_))
                                 '()
                                 _L9735_
                                 _L9736_))
                        (cons (cons (gx#datum->syntax '#f 'if)
                                    (cons _L9733_
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'begin)
                                                      (cons '#!void
                                                            (begin
                                                              '#!void
                                                              (foldr (lambda (_g97809798_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g97819801_)
                               (cons _g97809798_ _g97819801_))
                             '()
                             _L9732_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'begin)
                                                            (begin
                                                              '#!void
                                                              (foldr (lambda (_g97829804_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g97839807_)
                               (cons _g97829804_ _g97839807_))
                             (cons (cons (gx#datum->syntax '#f '$loop)
                                         (begin
                                           (gx#syntax-check-splice-targets
                                            _L9734_
                                            _L9736_)
                                           (foldr (lambda (_g97849810_
                                                           _g97859813_
                                                           _g97869815_)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'begin)
                        (cons _g97859813_
                              (begin
                                '#!void
                                (foldr (lambda (_g97879818_ _g97889821_)
                                         (cons _g97879818_ _g97889821_))
                                       '()
                                       _g97849810_))))
                  _g97869815_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()
                                                  _L9734_
                                                  _L9736_)))
                                   '())
                             _L9730_)))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g94649535_ _g94659539_)))
                                        _body95299726_
                                        _fini95209696_
                                        _hd95109664_
                                        _step94889642_
                                        _init94899645_
                                        _var94909647_))))))
                       (_loop95249706_ _target95219700_ '()))
                     (_g94649535_ _g94659539_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g94649535_ _g94659539_))
                                               (_g94649535_ _g94659539_)))))))
                           (_loop95159676_ _target95129670_ '()))
                         (_g94649535_ _g94659539_)))))
               (_g94649535_ _g94659539_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g94649535_ _g94659539_))))
                                           (_g94649535_ _g94659539_))))
                                   (_g94649535_ _g94659539_)))))))
               (_loop94819568_ _target94789562_ '() '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g94649535_
                                                      _g94659539_)))))
                                           (_g94649535_ _g94659539_))
                                       (_g94649535_ _g94659539_))))
                               (_g94649535_ _g94659539_))))
                       (_g94649535_ _g94659539_)))))
            (_g94639824_ _$stx9460_)))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#do-while|
      (lambda (_$stx9832_)
        (let ((_g98369859_
               (lambda (_g98379855_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g98379855_))))
          (let ((_g98359930_
                 (lambda (_g98379863_)
                   (if (gx#stx-pair? _g98379863_)
                       (let ((_e98429866_ (gx#syntax-e _g98379863_)))
                         (let ((_hd98439870_ (##car _e98429866_))
                               (_tl98449873_ (##cdr _e98429866_)))
                           (if (gx#stx-pair? _tl98449873_)
                               (let ((_e98459876_ (gx#syntax-e _tl98449873_)))
                                 (let ((_hd98469880_ (##car _e98459876_))
                                       (_tl98479883_ (##cdr _e98459876_)))
                                   (if (gx#stx-pair? _tl98479883_)
                                       (let ((_e98489886_
                                              (gx#syntax-e _tl98479883_)))
                                         (let ((_hd98499890_
                                                (##car _e98489886_))
                                               (_tl98509893_
                                                (##cdr _e98489886_)))
                                           (if (gx#stx-pair? _hd98499890_)
                                               (let ((_e98519896_
                                                      (gx#syntax-e
                                                       _hd98499890_)))
                                                 (let ((_hd98529900_
                                                        (##car _e98519896_))
                                                       (_tl98539903_
                                                        (##cdr _e98519896_)))
                                                   ((lambda (_L9906_
                                                             _L9908_
                                                             _L9909_
                                                             _L9910_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'do)
                                                            (cons _L9910_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (cons (gx#datum->syntax '#f 'not)
                                            (cons _L9909_ '()))
                                      _L9908_)
                                _L9906_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl98509893_
                                                    _tl98539903_
                                                    _hd98529900_
                                                    _hd98469880_)))
                                               (_g98369859_ _g98379863_))))
                                       (_g98369859_ _g98379863_))))
                               (_g98369859_ _g98379863_))))
                       (_g98369859_ _g98379863_)))))
            (_g98359930_ _$stx9832_)))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#begin0|
      (lambda (_$stx9934_)
        (let ((_g99399970_
               (lambda (_g99409966_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g99409966_))))
          (let ((_g993810055_
                 (lambda (_g99409974_)
                   (if (gx#stx-pair? _g99409974_)
                       (let ((_e99509977_ (gx#syntax-e _g99409974_)))
                         (let ((_hd99519981_ (##car _e99509977_))
                               (_tl99529984_ (##cdr _e99509977_)))
                           (if (gx#stx-pair? _tl99529984_)
                               (let ((_e99539987_ (gx#syntax-e _tl99529984_)))
                                 (let ((_hd99549991_ (##car _e99539987_))
                                       (_tl99559994_ (##cdr _e99539987_)))
                                   (if (gx#stx-pair/null? _tl99559994_)
                                       (if (fx>= (gx#stx-length _tl99559994_)
                                                 '0)
                                           (let ((_g30260_
                                                  (gx#syntax-split-splice
                                                   _tl99559994_
                                                   '0)))
                                             (begin
                                               (let ((_g30261_
                                                      (values-count _g30260_)))
                                                 (if (not (fx= _g30261_ 2))
                                                     (error "Context expects 2 values"
                                                            _g30261_)))
                                               (let ((_target99569997_
                                                      (values-ref _g30260_ 0))
                                                     (_tl995810000_
                                                      (values-ref _g30260_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl995810000_)
                                                     (letrec ((_loop995910003_
                                                               (lambda (_hd995710007_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _rest996310010_)
                         (if (gx#stx-pair? _hd995710007_)
                             (let ((_e996010013_ (gx#syntax-e _hd995710007_)))
                               (let ((_lp-hd996110017_ (##car _e996010013_))
                                     (_lp-tl996210020_ (##cdr _e996010013_)))
                                 (_loop995910003_
                                  _lp-tl996210020_
                                  (cons _lp-hd996110017_ _rest996310010_))))
                             (let ((_rest996410023_ (reverse _rest996310010_)))
                               ((lambda (_L10027_ _L10029_)
                                  (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f '$r)
                                                    (cons _L10029_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '%#expression)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'begin)
                              (begin
                                '#!void
                                (foldr (lambda (_g1004610049_ _g1004710052_)
                                         (cons _g1004610049_ _g1004710052_))
                                       '()
                                       _L10027_)))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           '$r)
                                                          '())))))
                                _rest996410023_
                                _hd99549991_))))))
               (_loop995910003_ _target99569997_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g99399970_
                                                      _g99409974_)))))
                                           (_g99399970_ _g99409974_))
                                       (_g99399970_ _g99409974_))))
                               (_g99399970_ _g99409974_))))
                       (_g99399970_ _g99409974_)))))
            (let ((_g993710095_
                   (lambda (_g994010059_)
                     (if (gx#stx-pair? _g994010059_)
                         (let ((_e994210062_ (gx#syntax-e _g994010059_)))
                           (let ((_hd994310066_ (##car _e994210062_))
                                 (_tl994410069_ (##cdr _e994210062_)))
                             (if (gx#stx-pair? _tl994410069_)
                                 (let ((_e994510072_
                                        (gx#syntax-e _tl994410069_)))
                                   (let ((_hd994610076_ (##car _e994510072_))
                                         (_tl994710079_ (##cdr _e994510072_)))
                                     (if (gx#stx-null? _tl994710079_)
                                         ((lambda (_L10082_) _L10082_)
                                          _hd994610076_)
                                         (_g993810055_ _g994010059_))))
                                 (_g993810055_ _g994010059_))))
                         (_g993810055_ _g994010059_)))))
              (_g993710095_ _$stx9934_))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#rec|
      (lambda (_$stx10100_)
        (let ((_g1010610159_
               (lambda (_g1010710155_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1010710155_))))
          (let ((_g1010510258_
                 (lambda (_g1010710163_)
                   (if (gx#stx-pair? _g1010710163_)
                       (let ((_e1013610166_ (gx#syntax-e _g1010710163_)))
                         (let ((_hd1013710170_ (##car _e1013610166_))
                               (_tl1013810173_ (##cdr _e1013610166_)))
                           (if (gx#stx-pair? _tl1013810173_)
                               (let ((_e1013910176_
                                      (gx#syntax-e _tl1013810173_)))
                                 (let ((_hd1014010180_ (##car _e1013910176_))
                                       (_tl1014110183_ (##cdr _e1013910176_)))
                                   (if (gx#stx-pair? _hd1014010180_)
                                       (let ((_e1014210186_
                                              (gx#syntax-e _hd1014010180_)))
                                         (let ((_hd1014310190_
                                                (##car _e1014210186_))
                                               (_tl1014410193_
                                                (##cdr _e1014210186_)))
                                           (if (gx#stx-pair/null?
                                                _tl1014110183_)
                                               (if (fx>= (gx#stx-length
                                                          _tl1014110183_)
                                                         '0)
                                                   (let ((_g30262_
                                                          (gx#syntax-split-splice
                                                           _tl1014110183_
                                                           '0)))
                                                     (begin
                                                       (let ((_g30263_
                                                              (values-count
                                                               _g30262_)))
                                                         (if (not (fx= _g30263_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g30263_)))
               (let ((_target1014510196_ (values-ref _g30262_ 0))
                     (_tl1014710199_ (values-ref _g30262_ 1)))
                 (if (gx#stx-null? _tl1014710199_)
                     (letrec ((_loop1014810202_
                               (lambda (_hd1014610206_ _body1015210209_)
                                 (if (gx#stx-pair? _hd1014610206_)
                                     (let ((_e1014910212_
                                            (gx#syntax-e _hd1014610206_)))
                                       (let ((_lp-hd1015010216_
                                              (##car _e1014910212_))
                                             (_lp-tl1015110219_
                                              (##cdr _e1014910212_)))
                                         (_loop1014810202_
                                          _lp-tl1015110219_
                                          (cons _lp-hd1015010216_
                                                _body1015210209_))))
                                     (let ((_body1015310222_
                                            (reverse _body1015210209_)))
                                       ((lambda (_L10226_ _L10228_ _L10229_)
                                          (if (gx#identifier? _L10229_)
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'letrec)
                                                    (cons (cons (cons _L10229_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax '#f 'lambda)
                                          (cons _L10228_
                                                (begin
                                                  '#!void
                                                  (foldr (lambda (_g1024910252_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1025010255_)
                   (cons _g1024910252_ _g1025010255_))
                 '()
                 _L10226_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))
                        '())
                  (cons _L10229_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1010610159_ _g1010710163_)))
                                        _body1015310222_
                                        _tl1014410193_
                                        _hd1014310190_))))))
                       (_loop1014810202_ _target1014510196_ '()))
                     (_g1010610159_ _g1010710163_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1010610159_
                                                    _g1010710163_))
                                               (_g1010610159_ _g1010710163_))))
                                       (_g1010610159_ _g1010710163_))))
                               (_g1010610159_ _g1010710163_))))
                       (_g1010610159_ _g1010710163_)))))
            (let ((_g1010410324_
                   (lambda (_g1010710262_)
                     (if (gx#stx-pair? _g1010710262_)
                         (let ((_e1012110265_ (gx#syntax-e _g1010710262_)))
                           (let ((_hd1012210269_ (##car _e1012110265_))
                                 (_tl1012310272_ (##cdr _e1012110265_)))
                             (if (gx#stx-pair? _tl1012310272_)
                                 (let ((_e1012410275_
                                        (gx#syntax-e _tl1012310272_)))
                                   (let ((_hd1012510279_ (##car _e1012410275_))
                                         (_tl1012610282_
                                          (##cdr _e1012410275_)))
                                     (if (gx#stx-pair? _hd1012510279_)
                                         (let ((_e1012710285_
                                                (gx#syntax-e _hd1012510279_)))
                                           (let ((_hd1012810289_
                                                  (##car _e1012710285_))
                                                 (_tl1012910292_
                                                  (##cdr _e1012710285_)))
                                             (if (gx#identifier?
                                                  _hd1012810289_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core::<sugar>::<sugar:2>[1]#_g30264_|
                                                      _hd1012810289_)
                                                     (if (gx#stx-pair?
                                                          _tl1012610282_)
                                                         (let ((_e1013010295_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1012610282_)))
                   (let ((_hd1013110299_ (##car _e1013010295_))
                         (_tl1013210302_ (##cdr _e1013010295_)))
                     (if (gx#stx-null? _tl1013210302_)
                         ((lambda (_L10305_ _L10307_)
                            (if (gx#identifier-list? _L10307_)
                                (cons (gx#datum->syntax '#f 'letrec-values)
                                      (cons (cons (cons _L10307_
                                                        (cons _L10305_ '()))
                                                  '())
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'values)
                                                        _L10307_)
                                                  '())))
                                (_g1010510258_ _g1010710262_)))
                          _hd1013110299_
                          _tl1012910292_)
                         (_g1010510258_ _g1010710262_))))
                 (_g1010510258_ _g1010710262_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1010510258_
                                                      _g1010710262_))
                                                 (_g1010510258_
                                                  _g1010710262_))))
                                         (_g1010510258_ _g1010710262_))))
                                 (_g1010510258_ _g1010710262_))))
                         (_g1010510258_ _g1010710262_)))))
              (let ((_g1010310378_
                     (lambda (_g1010710328_)
                       (if (gx#stx-pair? _g1010710328_)
                           (let ((_e1011010331_ (gx#syntax-e _g1010710328_)))
                             (let ((_hd1011110335_ (##car _e1011010331_))
                                   (_tl1011210338_ (##cdr _e1011010331_)))
                               (if (gx#stx-pair? _tl1011210338_)
                                   (let ((_e1011310341_
                                          (gx#syntax-e _tl1011210338_)))
                                     (let ((_hd1011410345_
                                            (##car _e1011310341_))
                                           (_tl1011510348_
                                            (##cdr _e1011310341_)))
                                       (if (gx#stx-pair? _tl1011510348_)
                                           (let ((_e1011610351_
                                                  (gx#syntax-e
                                                   _tl1011510348_)))
                                             (let ((_hd1011710355_
                                                    (##car _e1011610351_))
                                                   (_tl1011810358_
                                                    (##cdr _e1011610351_)))
                                               (if (gx#stx-null?
                                                    _tl1011810358_)
                                                   ((lambda (_L10361_ _L10363_)
                                                      (if (gx#identifier?
                                                           _L10363_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'letrec)
                        (cons (cons (cons _L10363_ (cons _L10361_ '())) '())
                              (cons _L10363_ '())))
                  (_g1010410324_ _g1010710328_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1011710355_
                                                    _hd1011410345_)
                                                   (_g1010410324_
                                                    _g1010710328_))))
                                           (_g1010410324_ _g1010710328_))))
                                   (_g1010410324_ _g1010710328_))))
                           (_g1010410324_ _g1010710328_)))))
                (_g1010310378_ _$stx10100_)))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#alet|
      (lambda (_stx10383_)
        (let ((_let-head?10386_
               (lambda (_x10933_)
                 (let ((_g1093710948_
                        (lambda (_g1093810944_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1093810944_))))
                   (let ((_g1093610959_
                          (lambda (_g1093810952_)
                            ((lambda () (gx#identifier? _x10933_))))))
                     (let ((_g1093510989_
                            (lambda (_g1093810963_)
                              (if (gx#stx-pair? _g1093810963_)
                                  (let ((_e1094010966_
                                         (gx#syntax-e _g1093810963_)))
                                    (let ((_hd1094110970_
                                           (##car _e1094010966_))
                                          (_tl1094210973_
                                           (##cdr _e1094010966_)))
                                      (if (gx#identifier? _hd1094110970_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core::<sugar>::<sugar:2>[1]#_g30274_|
                                               _hd1094110970_)
                                              ((lambda (_L10976_)
                                                 (gx#stx-andmap
                                                  gx#identifier?
                                                  _L10976_))
                                               _tl1094210973_)
                                              (_g1093610959_ _g1093810963_))
                                          (_g1093610959_ _g1093810963_))))
                                  (_g1093610959_ _g1093810963_)))))
                       (_g1093510989_ _x10933_)))))))
          (let ((_let-head10388_
                 (lambda (_x10873_)
                   (let ((_g1087710888_
                          (lambda (_g1087810884_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g1087810884_))))
                     (let ((_g1087610899_
                            (lambda (_g1087810892_)
                              ((lambda () (list _x10873_))))))
                       (let ((_g1087510929_
                              (lambda (_g1087810903_)
                                (if (gx#stx-pair? _g1087810903_)
                                    (let ((_e1088010906_
                                           (gx#syntax-e _g1087810903_)))
                                      (let ((_hd1088110910_
                                             (##car _e1088010906_))
                                            (_tl1088210913_
                                             (##cdr _e1088010906_)))
                                        (if (gx#identifier? _hd1088110910_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core::<sugar>::<sugar:2>[1]#_g30273_|
                                                 _hd1088110910_)
                                                ((lambda (_L10916_) _L10916_)
                                                 _tl1088210913_)
                                                (_g1087610899_ _g1087810903_))
                                            (_g1087610899_ _g1087810903_))))
                                    (_g1087610899_ _g1087810903_)))))
                         (_g1087510929_ _x10873_)))))))
            (let ((_g1039110449_
                   (lambda (_g1039210445_)
                     (gx#raise-syntax-error '#f '"Bad syntax" _g1039210445_))))
              (let ((_g1039010799_
                     (lambda (_g1039210453_)
                       (if (gx#stx-pair? _g1039210453_)
                           (let ((_e1041210456_ (gx#syntax-e _g1039210453_)))
                             (let ((_hd1041310460_ (##car _e1041210456_))
                                   (_tl1041410463_ (##cdr _e1041210456_)))
                               (if (gx#stx-pair? _tl1041410463_)
                                   (let ((_e1041510466_
                                          (gx#syntax-e _tl1041410463_)))
                                     (let ((_hd1041610470_
                                            (##car _e1041510466_))
                                           (_tl1041710473_
                                            (##cdr _e1041510466_)))
                                       (if (gx#stx-pair/null? _hd1041610470_)
                                           (if (fx>= (gx#stx-length
                                                      _hd1041610470_)
                                                     '0)
                                               (let ((_g30265_
                                                      (gx#syntax-split-splice
                                                       _hd1041610470_
                                                       '0)))
                                                 (begin
                                                   (let ((_g30266_
                                                          (values-count
                                                           _g30265_)))
                                                     (if (not (fx= _g30266_ 2))
                                                         (error "Context expects 2 values"
                                                                _g30266_)))
                                                   (let ((_target1041810476_
                                                          (values-ref
                                                           _g30265_
                                                           0))
                                                         (_tl1042010479_
                                                          (values-ref
                                                           _g30265_
                                                           1)))
                                                     (if (gx#stx-null?
                                                          _tl1042010479_)
                                                         (letrec ((_loop1042110482_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd1041910486_
                                    _e1042510489_
                                    _hd1042610491_)
                             (if (gx#stx-pair? _hd1041910486_)
                                 (let ((_e1042210494_
                                        (gx#syntax-e _hd1041910486_)))
                                   (let ((_lp-hd1042310498_
                                          (##car _e1042210494_))
                                         (_lp-tl1042410501_
                                          (##cdr _e1042210494_)))
                                     (if (gx#stx-pair? _lp-hd1042310498_)
                                         (let ((_e1042910504_
                                                (gx#syntax-e
                                                 _lp-hd1042310498_)))
                                           (let ((_hd1043010508_
                                                  (##car _e1042910504_))
                                                 (_tl1043110511_
                                                  (##cdr _e1042910504_)))
                                             (if (gx#stx-pair? _tl1043110511_)
                                                 (let ((_e1043210514_
                                                        (gx#syntax-e
                                                         _tl1043110511_)))
                                                   (let ((_hd1043310518_
                                                          (##car _e1043210514_))
                                                         (_tl1043410521_
                                                          (##cdr _e1043210514_)))
                                                     (if (gx#stx-null?
                                                          _tl1043410521_)
                                                         (_loop1042110482_
                                                          _lp-tl1042410501_
                                                          (cons _hd1043310518_
                                                                _e1042510489_)
                                                          (cons _hd1043010508_
                                                                _hd1042610491_))
                                                         (_g1039110449_
                                                          _g1039210453_))))
                                                 (_g1039110449_
                                                  _g1039210453_))))
                                         (_g1039110449_ _g1039210453_))))
                                 (let ((_e1042710524_ (reverse _e1042510489_))
                                       (_hd1042810527_
                                        (reverse _hd1042610491_)))
                                   (if (gx#stx-pair/null? _tl1041710473_)
                                       (if (fx>= (gx#stx-length _tl1041710473_)
                                                 '0)
                                           (let ((_g30267_
                                                  (gx#syntax-split-splice
                                                   _tl1041710473_
                                                   '0)))
                                             (begin
                                               (let ((_g30268_
                                                      (values-count _g30267_)))
                                                 (if (not (fx= _g30268_ 2))
                                                     (error "Context expects 2 values"
                                                            _g30268_)))
                                               (let ((_target1043510530_
                                                      (values-ref _g30267_ 0))
                                                     (_tl1043710533_
                                                      (values-ref _g30267_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl1043710533_)
                                                     (letrec ((_loop1043810536_
                                                               (lambda (_hd1043610540_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _body1044210543_)
                         (if (gx#stx-pair? _hd1043610540_)
                             (let ((_e1043910546_
                                    (gx#syntax-e _hd1043610540_)))
                               (let ((_lp-hd1044010550_ (##car _e1043910546_))
                                     (_lp-tl1044110553_ (##cdr _e1043910546_)))
                                 (_loop1043810536_
                                  _lp-tl1044110553_
                                  (cons _lp-hd1044010550_ _body1044210543_))))
                             (let ((_body1044310556_
                                    (reverse _body1044210543_)))
                               ((lambda (_L10560_ _L10562_ _L10563_)
                                  (if (gx#stx-andmap
                                       _let-head?10386_
                                       (begin
                                         '#!void
                                         (foldr (lambda (_g1058610589_
                                                         _g1058710592_)
                                                  (cons _g1058610589_
                                                        _g1058710592_))
                                                '()
                                                _L10563_)))
                                      (let ((_g1059510628_
                                             (lambda (_g1059610624_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1059610624_))))
                                        (let ((_g1059410779_
                                               (lambda (_g1059610632_)
                                                 (if (gx#stx-pair?
                                                      _g1059610632_)
                                                     (let ((_e1059910635_
                                                            (gx#syntax-e
                                                             _g1059610632_)))
                                                       (let ((_hd1060010639_
                                                              (##car _e1059910635_))
                                                             (_tl1060110642_
                                                              (##cdr _e1059910635_)))
                                                         (if (gx#stx-pair/null?
                                                              _hd1060010639_)
                                                             (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _hd1060010639_)
                               '0)
                         (let ((_g30269_
                                (gx#syntax-split-splice _hd1060010639_ '0)))
                           (begin
                             (let ((_g30270_ (values-count _g30269_)))
                               (if (not (fx= _g30270_ 2))
                                   (error "Context expects 2 values"
                                          _g30270_)))
                             (let ((_target1060210645_ (values-ref _g30269_ 0))
                                   (_tl1060410648_ (values-ref _g30269_ 1)))
                               (if (gx#stx-null? _tl1060410648_)
                                   (letrec ((_loop1060510651_
                                             (lambda (_hd1060310655_
                                                      _$e1060910658_)
                                               (if (gx#stx-pair?
                                                    _hd1060310655_)
                                                   (let ((_e1060610661_
                                                          (gx#syntax-e
                                                           _hd1060310655_)))
                                                     (let ((_lp-hd1060710665_
                                                            (##car _e1060610661_))
                                                           (_lp-tl1060810668_
                                                            (##cdr _e1060610661_)))
                                                       (_loop1060510651_
                                                        _lp-tl1060810668_
                                                        (cons _lp-hd1060710665_
                                                              _$e1060910658_))))
                                                   (let ((_$e1061010671_
                                                          (reverse _$e1060910658_)))
                                                     (if (gx#stx-pair?
                                                          _tl1060110642_)
                                                         (let ((_e1061110675_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1060110642_)))
                   (let ((_hd1061210679_ (##car _e1061110675_))
                         (_tl1061310682_ (##cdr _e1061110675_)))
                     (if (gx#stx-pair/null? _hd1061210679_)
                         (if (fx>= (gx#stx-length _hd1061210679_) '0)
                             (let ((_g30271_
                                    (gx#syntax-split-splice
                                     _hd1061210679_
                                     '0)))
                               (begin
                                 (let ((_g30272_ (values-count _g30271_)))
                                   (if (not (fx= _g30272_ 2))
                                       (error "Context expects 2 values"
                                              _g30272_)))
                                 (let ((_target1061410685_
                                        (values-ref _g30271_ 0))
                                       (_tl1061610688_
                                        (values-ref _g30271_ 1)))
                                   (if (gx#stx-null? _tl1061610688_)
                                       (letrec ((_loop1061710691_
                                                 (lambda (_hd1061510695_
                                                          _hd-bind1062110698_)
                                                   (if (gx#stx-pair?
                                                        _hd1061510695_)
                                                       (let ((_e1061810701_
                                                              (gx#syntax-e
                                                               _hd1061510695_)))
                                                         (let ((_lp-hd1061910705_
                                                                (##car _e1061810701_))
                                                               (_lp-tl1062010708_
                                                                (##cdr _e1061810701_)))
                                                           (_loop1061710691_
                                                            _lp-tl1062010708_
                                                            (cons _lp-hd1061910705_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd-bind1062110698_))))
               (let ((_hd-bind1062210711_ (reverse _hd-bind1062110698_)))
                 (if (gx#stx-null? _tl1061310682_)
                     ((lambda (_L10715_ _L10717_)
                        (let ()
                          (cons (gx#datum->syntax '#f 'let-values)
                                (cons (begin
                                        (gx#syntax-check-splice-targets
                                         _L10562_
                                         _L10717_)
                                        (foldr (lambda (_g1074010751_
                                                        _g1074110754_
                                                        _g1074210756_)
                                                 (cons (cons (cons _g1074110754_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons _g1074010751_ '()))
               _g1074210756_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()
                                               _L10562_
                                               _L10717_))
                                      (cons (cons (gx#datum->syntax '#f 'and)
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g1074310759_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1074410762_)
                     (cons _g1074310759_ _g1074410762_))
                   (cons (cons (gx#datum->syntax '#f 'let-values)
                               (cons (begin
                                       (gx#syntax-check-splice-targets
                                        _L10717_
                                        _L10715_)
                                       (foldr (lambda (_g1074510765_
                                                       _g1074610768_
                                                       _g1074710770_)
                                                (cons (cons _g1074610768_
                                                            (cons _g1074510765_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _g1074710770_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()
                                              _L10717_
                                              _L10715_))
                                     (begin
                                       '#!void
                                       (foldr (lambda (_g1074810773_
                                                       _g1074910776_)
                                                (cons _g1074810773_
                                                      _g1074910776_))
                                              '()
                                              _L10560_))))
                         '())
                   _L10717_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                      _hd-bind1062210711_
                      _$e1061010671_)
                     (_g1059510628_ _g1059610632_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop1061710691_
                                          _target1061410685_
                                          '()))
                                       (_g1059510628_ _g1059610632_)))))
                             (_g1059510628_ _g1059610632_))
                         (_g1059510628_ _g1059610632_))))
                 (_g1059510628_ _g1059610632_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop1060510651_ _target1060210645_ '()))
                                   (_g1059510628_ _g1059610632_)))))
                         (_g1059510628_ _g1059610632_))
                     (_g1059510628_ _g1059610632_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1059510628_
                                                      _g1059610632_)))))
                                          (_g1059410779_
                                           (list (gx#gentemps
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g1078210785_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1078310788_)
                     (cons _g1078210785_ _g1078310788_))
                   '()
                   _L10563_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (gx#stx-map
                                                  _let-head10388_
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g1079010793_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1079110796_)
                     (cons _g1079010793_ _g1079110796_))
                   '()
                   _L10563_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_g1039110449_ _g1039210453_)))
                                _body1044310556_
                                _e1042710524_
                                _hd1042810527_))))))
               (_loop1043810536_ _target1043510530_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1039110449_
                                                      _g1039210453_)))))
                                           (_g1039110449_ _g1039210453_))
                                       (_g1039110449_ _g1039210453_)))))))
                   (_loop1042110482_ _target1041810476_ '() '()))
                 (_g1039110449_ _g1039210453_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1039110449_ _g1039210453_))
                                           (_g1039110449_ _g1039210453_))))
                                   (_g1039110449_ _g1039210453_))))
                           (_g1039110449_ _g1039210453_)))))
                (let ((_g1038910869_
                       (lambda (_g1039210803_)
                         (if (gx#stx-pair? _g1039210803_)
                             (let ((_e1039710806_ (gx#syntax-e _g1039210803_)))
                               (let ((_hd1039810810_ (##car _e1039710806_))
                                     (_tl1039910813_ (##cdr _e1039710806_)))
                                 (if (gx#stx-pair? _tl1039910813_)
                                     (let ((_e1040010816_
                                            (gx#syntax-e _tl1039910813_)))
                                       (let ((_hd1040110820_
                                              (##car _e1040010816_))
                                             (_tl1040210823_
                                              (##cdr _e1040010816_)))
                                         (if (gx#stx-pair? _hd1040110820_)
                                             (let ((_e1040310826_
                                                    (gx#syntax-e
                                                     _hd1040110820_)))
                                               (let ((_hd1040410830_
                                                      (##car _e1040310826_))
                                                     (_tl1040510833_
                                                      (##cdr _e1040310826_)))
                                                 (if (gx#stx-pair?
                                                      _tl1040510833_)
                                                     (let ((_e1040610836_
                                                            (gx#syntax-e
                                                             _tl1040510833_)))
                                                       (let ((_hd1040710840_
                                                              (##car _e1040610836_))
                                                             (_tl1040810843_
                                                              (##cdr _e1040610836_)))
                                                         (if (gx#stx-null?
                                                              _tl1040810843_)
                                                             ((lambda (_L10846_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L10848_
                               _L10849_
                               _L10850_)
                        (if (_let-head?10386_ _L10849_)
                            (cons _L10850_
                                  (cons (cons (cons _L10849_
                                                    (cons _L10848_ '()))
                                              '())
                                        _L10846_))
                            (_g1039010799_ _g1039210803_)))
                      _tl1040210823_
                      _hd1040710840_
                      _hd1040410830_
                      _hd1039810810_)
                     (_g1039010799_ _g1039210803_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1039010799_
                                                      _g1039210803_))))
                                             (_g1039010799_ _g1039210803_))))
                                     (_g1039010799_ _g1039210803_))))
                             (_g1039010799_ _g1039210803_)))))
                  (_g1038910869_ _stx10383_))))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#alet*|
      (lambda (_$stx10997_)
        (let ((_g1100211047_
               (lambda (_g1100311043_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1100311043_))))
          (let ((_g1100111148_
                 (lambda (_g1100311051_)
                   (if (gx#stx-pair? _g1100311051_)
                       (let ((_e1102411054_ (gx#syntax-e _g1100311051_)))
                         (let ((_hd1102511058_ (##car _e1102411054_))
                               (_tl1102611061_ (##cdr _e1102411054_)))
                           (if (gx#stx-pair? _tl1102611061_)
                               (let ((_e1102711064_
                                      (gx#syntax-e _tl1102611061_)))
                                 (let ((_hd1102811068_ (##car _e1102711064_))
                                       (_tl1102911071_ (##cdr _e1102711064_)))
                                   (if (gx#stx-pair? _hd1102811068_)
                                       (let ((_e1103011074_
                                              (gx#syntax-e _hd1102811068_)))
                                         (let ((_hd1103111078_
                                                (##car _e1103011074_))
                                               (_tl1103211081_
                                                (##cdr _e1103011074_)))
                                           (if (gx#stx-pair/null?
                                                _tl1102911071_)
                                               (if (fx>= (gx#stx-length
                                                          _tl1102911071_)
                                                         '0)
                                                   (let ((_g30275_
                                                          (gx#syntax-split-splice
                                                           _tl1102911071_
                                                           '0)))
                                                     (begin
                                                       (let ((_g30276_
                                                              (values-count
                                                               _g30275_)))
                                                         (if (not (fx= _g30276_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g30276_)))
               (let ((_target1103311084_ (values-ref _g30275_ 0))
                     (_tl1103511087_ (values-ref _g30275_ 1)))
                 (if (gx#stx-null? _tl1103511087_)
                     (letrec ((_loop1103611090_
                               (lambda (_hd1103411094_ _body1104011097_)
                                 (if (gx#stx-pair? _hd1103411094_)
                                     (let ((_e1103711100_
                                            (gx#syntax-e _hd1103411094_)))
                                       (let ((_lp-hd1103811104_
                                              (##car _e1103711100_))
                                             (_lp-tl1103911107_
                                              (##cdr _e1103711100_)))
                                         (_loop1103611090_
                                          _lp-tl1103911107_
                                          (cons _lp-hd1103811104_
                                                _body1104011097_))))
                                     (let ((_body1104111110_
                                            (reverse _body1104011097_)))
                                       ((lambda (_L11114_
                                                 _L11116_
                                                 _L11117_
                                                 _L11118_)
                                          (cons (gx#datum->syntax '#f 'alet)
                                                (cons (cons _L11117_ '())
                                                      (cons (cons _L11118_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L11116_
                                (begin
                                  '#!void
                                  (foldr (lambda (_g1113911142_ _g1114011145_)
                                           (cons _g1113911142_ _g1114011145_))
                                         '()
                                         _L11114_))))
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _body1104111110_
                                        _tl1103211081_
                                        _hd1103111078_
                                        _hd1102511058_))))))
                       (_loop1103611090_ _target1103311084_ '()))
                     (_g1100211047_ _g1100311051_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1100211047_
                                                    _g1100311051_))
                                               (_g1100211047_ _g1100311051_))))
                                       (_g1100211047_ _g1100311051_))))
                               (_g1100211047_ _g1100311051_))))
                       (_g1100211047_ _g1100311051_)))))
            (let ((_g1100011230_
                   (lambda (_g1100311152_)
                     (if (gx#stx-pair? _g1100311152_)
                         (let ((_e1100511155_ (gx#syntax-e _g1100311152_)))
                           (let ((_hd1100611159_ (##car _e1100511155_))
                                 (_tl1100711162_ (##cdr _e1100511155_)))
                             (if (gx#stx-pair? _tl1100711162_)
                                 (let ((_e1100811165_
                                        (gx#syntax-e _tl1100711162_)))
                                   (let ((_hd1100911169_ (##car _e1100811165_))
                                         (_tl1101011172_
                                          (##cdr _e1100811165_)))
                                     (if (gx#stx-null? _hd1100911169_)
                                         (if (gx#stx-pair/null? _tl1101011172_)
                                             (if (fx>= (gx#stx-length
                                                        _tl1101011172_)
                                                       '0)
                                                 (let ((_g30277_
                                                        (gx#syntax-split-splice
                                                         _tl1101011172_
                                                         '0)))
                                                   (begin
                                                     (let ((_g30278_
                                                            (values-count
                                                             _g30277_)))
                                                       (if (not (fx= _g30278_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g30278_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target1101111175_
                                                            (values-ref
                                                             _g30277_
                                                             0))
                                                           (_tl1101311178_
                                                            (values-ref
                                                             _g30277_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl1101311178_)
                                                           (letrec ((_loop1101411181_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd1101211185_ _body1101811188_)
                               (if (gx#stx-pair? _hd1101211185_)
                                   (let ((_e1101511191_
                                          (gx#syntax-e _hd1101211185_)))
                                     (let ((_lp-hd1101611195_
                                            (##car _e1101511191_))
                                           (_lp-tl1101711198_
                                            (##cdr _e1101511191_)))
                                       (_loop1101411181_
                                        _lp-tl1101711198_
                                        (cons _lp-hd1101611195_
                                              _body1101811188_))))
                                   (let ((_body1101911201_
                                          (reverse _body1101811188_)))
                                     ((lambda (_L11205_)
                                        (cons (gx#datum->syntax '#f 'let)
                                              (cons '()
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g1122111224_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1122211227_)
                       (cons _g1122111224_ _g1122211227_))
                     '()
                     _L11205_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _body1101911201_))))))
                     (_loop1101411181_ _target1101111175_ '()))
                   (_g1100111148_ _g1100311152_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1100111148_ _g1100311152_))
                                             (_g1100111148_ _g1100311152_))
                                         (_g1100111148_ _g1100311152_))))
                                 (_g1100111148_ _g1100311152_))))
                         (_g1100111148_ _g1100311152_)))))
              (_g1100011230_ _$stx10997_))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#@list|
      (lambda (_$stx11236_)
        (let ((_g1124511302_
               (lambda (_g1124611298_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1124611298_))))
          (let ((_g1124411331_
                 (lambda (_g1124611306_)
                   (if (gx#stx-pair? _g1124611306_)
                       (let ((_e1129411309_ (gx#syntax-e _g1124611306_)))
                         (let ((_hd1129511313_ (##car _e1129411309_))
                               (_tl1129611316_ (##cdr _e1129411309_)))
                           ((lambda (_L11319_) _L11319_) _tl1129611316_)))
                       (_g1124511302_ _g1124611306_)))))
            (let ((_g1124311375_
                   (lambda (_g1124611335_)
                     (if (gx#stx-pair? _g1124611335_)
                         (let ((_e1128711338_ (gx#syntax-e _g1124611335_)))
                           (let ((_hd1128811342_ (##car _e1128711338_))
                                 (_tl1128911345_ (##cdr _e1128711338_)))
                             (if (gx#stx-pair? _tl1128911345_)
                                 (let ((_e1129011348_
                                        (gx#syntax-e _tl1128911345_)))
                                   (let ((_hd1129111352_ (##car _e1129011348_))
                                         (_tl1129211355_
                                          (##cdr _e1129011348_)))
                                     ((lambda (_L11358_ _L11360_ _L11361_)
                                        (cons (gx#datum->syntax '#f 'cons)
                                              (cons _L11360_
                                                    (cons (cons _L11361_
                                                                _L11358_)
                                                          '()))))
                                      _tl1129211355_
                                      _hd1129111352_
                                      _hd1128811342_)))
                                 (_g1124411331_ _g1124611335_))))
                         (_g1124411331_ _g1124611335_)))))
              (let ((_g1124211433_
                     (lambda (_g1124611379_)
                       (if (gx#stx-pair? _g1124611379_)
                           (let ((_e1127511382_ (gx#syntax-e _g1124611379_)))
                             (let ((_hd1127611386_ (##car _e1127511382_))
                                   (_tl1127711389_ (##cdr _e1127511382_)))
                               (if (gx#stx-pair? _tl1127711389_)
                                   (let ((_e1127811392_
                                          (gx#syntax-e _tl1127711389_)))
                                     (let ((_hd1127911396_
                                            (##car _e1127811392_))
                                           (_tl1128011399_
                                            (##cdr _e1127811392_)))
                                       (if (gx#stx-pair? _tl1128011399_)
                                           (let ((_e1128111402_
                                                  (gx#syntax-e
                                                   _tl1128011399_)))
                                             (let ((_hd1128211406_
                                                    (##car _e1128111402_))
                                                   (_tl1128311409_
                                                    (##cdr _e1128111402_)))
                                               ((lambda (_L11412_
                                                         _L11414_
                                                         _L11415_
                                                         _L11416_)
                                                  (if (gx#ellipsis? _L11414_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'foldr)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'cons)
                          (cons (cons _L11416_ _L11412_) (cons _L11415_ '()))))
              (_g1124311375_ _g1124611379_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _tl1128311409_
                                                _hd1128211406_
                                                _hd1127911396_
                                                _hd1127611386_)))
                                           (_g1124311375_ _g1124611379_))))
                                   (_g1124311375_ _g1124611379_))))
                           (_g1124311375_ _g1124611379_)))))
                (let ((_g1124111487_
                       (lambda (_g1124611437_)
                         (if (gx#stx-pair? _g1124611437_)
                             (let ((_e1126211440_ (gx#syntax-e _g1124611437_)))
                               (let ((_hd1126311444_ (##car _e1126211440_))
                                     (_tl1126411447_ (##cdr _e1126211440_)))
                                 (if (gx#stx-pair? _tl1126411447_)
                                     (let ((_e1126511450_
                                            (gx#syntax-e _tl1126411447_)))
                                       (let ((_hd1126611454_
                                              (##car _e1126511450_))
                                             (_tl1126711457_
                                              (##cdr _e1126511450_)))
                                         (if (gx#stx-pair? _tl1126711457_)
                                             (let ((_e1126811460_
                                                    (gx#syntax-e
                                                     _tl1126711457_)))
                                               (let ((_hd1126911464_
                                                      (##car _e1126811460_))
                                                     (_tl1127011467_
                                                      (##cdr _e1126811460_)))
                                                 (if (gx#stx-null?
                                                      _tl1127011467_)
                                                     ((lambda (_L11470_
                                                               _L11472_)
                                                        (if (gx#ellipsis?
                                                             _L11470_)
                                                            _L11472_
                                                            (_g1124211433_
                                                             _g1124611437_)))
                                                      _hd1126911464_
                                                      _hd1126611454_)
                                                     (_g1124211433_
                                                      _g1124611437_))))
                                             (_g1124211433_ _g1124611437_))))
                                     (_g1124211433_ _g1124611437_))))
                             (_g1124211433_ _g1124611437_)))))
                  (let ((_g1124011539_
                         (lambda (_g1124611491_)
                           (if (gx#stx-pair? _g1124611491_)
                               (let ((_e1125111494_
                                      (gx#syntax-e _g1124611491_)))
                                 (let ((_hd1125211498_ (##car _e1125111494_))
                                       (_tl1125311501_ (##cdr _e1125111494_)))
                                   (if (gx#stx-pair? _tl1125311501_)
                                       (let ((_e1125411504_
                                              (gx#syntax-e _tl1125311501_)))
                                         (let ((_hd1125511508_
                                                (##car _e1125411504_))
                                               (_tl1125611511_
                                                (##cdr _e1125411504_)))
                                           (if (gx#stx-datum? _hd1125511508_)
                                               (if (equal? (gx#stx-e
                                                            _hd1125511508_)
                                                           '::)
                                                   (if (gx#stx-pair?
                                                        _tl1125611511_)
                                                       (let ((_e1125711514_
                                                              (gx#syntax-e
                                                               _tl1125611511_)))
                                                         (let ((_hd1125811518_
                                                                (##car _e1125711514_))
                                                               (_tl1125911521_
                                                                (##cdr _e1125711514_)))
                                                           (if (gx#stx-null?
                                                                _tl1125911521_)
                                                               ((lambda (_L11524_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L11524_)
                        _hd1125811518_)
                       (_g1124111487_ _g1124611491_))))
               (_g1124111487_ _g1124611491_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1124111487_
                                                    _g1124611491_))
                                               (_g1124111487_ _g1124611491_))))
                                       (_g1124111487_ _g1124611491_))))
                               (_g1124111487_ _g1124611491_)))))
                    (let ((_g1123911560_
                           (lambda (_g1124611543_)
                             (if (gx#stx-pair? _g1124611543_)
                                 (let ((_e1124711546_
                                        (gx#syntax-e _g1124611543_)))
                                   (let ((_hd1124811550_ (##car _e1124711546_))
                                         (_tl1124911553_
                                          (##cdr _e1124711546_)))
                                     (if (gx#stx-null? _tl1124911553_)
                                         ((lambda ()
                                            (cons (gx#datum->syntax '#f 'quote)
                                                  (cons '() '()))))
                                         (_g1124011539_ _g1124611543_))))
                                 (_g1124011539_ _g1124611543_)))))
                      (_g1123911560_ _$stx11236_))))))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#quasiquote|
      (lambda (_stx11564_)
        (letrec ((_simple-quote?11567_
                  (lambda (_e12259_)
                    (let ((_g1226712304_
                           (lambda (_g1226812300_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1226812300_))))
                      (let ((_g1226612315_
                             (lambda (_g1226812308_) ((lambda () '#t)))))
                        (let ((_g1226512338_
                               (lambda (_g1226812319_)
                                 (if (gx#stx-box? _g1226812319_)
                                     (let ((_e1229812322_
                                            (unbox (gx#syntax-e
                                                    _g1226812319_))))
                                       ((lambda (_L12326_)
                                          (_simple-quote?11567_ _L12326_))
                                        _e1229812322_))
                                     (_g1226612315_ _g1226812319_)))))
                          (let ((_g1226412401_
                                 (lambda (_g1226812342_)
                                   (if (gx#stx-vector? _g1226812342_)
                                       (let ((_e1228712345_
                                              (vector->list
                                               (gx#syntax-e _g1226812342_))))
                                         (if (gx#stx-pair/null? _e1228712345_)
                                             (if (fx>= (gx#stx-length
                                                        _e1228712345_)
                                                       '0)
                                                 (let ((_g30279_
                                                        (gx#syntax-split-splice
                                                         _e1228712345_
                                                         '0)))
                                                   (begin
                                                     (let ((_g30280_
                                                            (values-count
                                                             _g30279_)))
                                                       (if (not (fx= _g30280_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g30280_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target1228812349_
                                                            (values-ref
                                                             _g30279_
                                                             0))
                                                           (_tl1229012352_
                                                            (values-ref
                                                             _g30279_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl1229012352_)
                                                           (letrec ((_loop1229112355_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd1228912359_ _e1229512362_)
                               (if (gx#stx-pair? _hd1228912359_)
                                   (let ((_e1229212365_
                                          (gx#syntax-e _hd1228912359_)))
                                     (let ((_lp-hd1229312369_
                                            (##car _e1229212365_))
                                           (_lp-tl1229412372_
                                            (##cdr _e1229212365_)))
                                       (_loop1229112355_
                                        _lp-tl1229412372_
                                        (cons _lp-hd1229312369_
                                              _e1229512362_))))
                                   (let ((_e1229612375_
                                          (reverse _e1229512362_)))
                                     ((lambda (_L12379_)
                                        (_simple-quote?11567_
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g1239212395_
                                                           _g1239312398_)
                                                    (cons _g1239212395_
                                                          _g1239312398_))
                                                  '()
                                                  _L12379_))))
                                      _e1229612375_))))))
                     (_loop1229112355_ _target1228812349_ '()))
                   (_g1226512338_ _g1226812342_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1226512338_ _g1226812342_))
                                             (_g1226512338_ _g1226812342_)))
                                       (_g1226512338_ _g1226812342_)))))
                            (let ((_g1226312431_
                                   (lambda (_g1226812405_)
                                     (if (gx#stx-pair? _g1226812405_)
                                         (let ((_e1228312408_
                                                (gx#syntax-e _g1226812405_)))
                                           (let ((_hd1228412412_
                                                  (##car _e1228312408_))
                                                 (_tl1228512415_
                                                  (##cdr _e1228312408_)))
                                             ((lambda (_L12418_ _L12420_)
                                                (if (_simple-quote?11567_
                                                     _L12420_)
                                                    (_simple-quote?11567_
                                                     _L12418_)
                                                    '#f))
                                              _tl1228512415_
                                              _hd1228412412_)))
                                         (_g1226412401_ _g1226812405_)))))
                              (let ((_g1226212462_
                                     (lambda (_g1226812435_)
                                       (if (gx#stx-pair? _g1226812435_)
                                           (let ((_e1227512438_
                                                  (gx#syntax-e _g1226812435_)))
                                             (let ((_hd1227612442_
                                                    (##car _e1227512438_))
                                                   (_tl1227712445_
                                                    (##cdr _e1227512438_)))
                                               (if (gx#identifier?
                                                    _hd1227612442_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core::<sugar>::<sugar:2>[1]#_g30281_|
                                                        _hd1227612442_)
                                                       (if (gx#stx-pair?
                                                            _tl1227712445_)
                                                           (let ((_e1227812448_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl1227712445_)))
                     (let ((_hd1227912452_ (##car _e1227812448_))
                           (_tl1228012455_ (##cdr _e1227812448_)))
                       (if (gx#stx-null? _tl1228012455_)
                           ((lambda () '#f))
                           (_g1226312431_ _g1226812435_))))
                   (_g1226312431_ _g1226812435_))
               (_g1226312431_ _g1226812435_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1226312431_
                                                    _g1226812435_))))
                                           (_g1226312431_ _g1226812435_)))))
                                (let ((_g1226112493_
                                       (lambda (_g1226812466_)
                                         (if (gx#stx-pair? _g1226812466_)
                                             (let ((_e1226912469_
                                                    (gx#syntax-e
                                                     _g1226812466_)))
                                               (let ((_hd1227012473_
                                                      (##car _e1226912469_))
                                                     (_tl1227112476_
                                                      (##cdr _e1226912469_)))
                                                 (if (gx#identifier?
                                                      _hd1227012473_)
                                                     (if (gx#free-identifier=?
                                                          |gerbil/core::<sugar>::<sugar:2>[1]#_g30282_|
                                                          _hd1227012473_)
                                                         (if (gx#stx-pair?
                                                              _tl1227112476_)
                                                             (let ((_e1227212479_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl1227112476_)))
                       (let ((_hd1227312483_ (##car _e1227212479_))
                             (_tl1227412486_ (##cdr _e1227212479_)))
                         (if (gx#stx-null? _tl1227412486_)
                             ((lambda () '#f))
                             (_g1226212462_ _g1226812466_))))
                     (_g1226212462_ _g1226812466_))
                 (_g1226212462_ _g1226812466_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1226212462_
                                                      _g1226812466_))))
                                             (_g1226212462_ _g1226812466_)))))
                                  (_g1226112493_ _e12259_))))))))))
                 (_generate11569_
                  (lambda (_e11631_ _d11633_)
                    (let ((_g1164211700_
                           (lambda (_g1164311696_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1164311696_))))
                      (let ((_g1164111717_
                             (lambda (_g1164311704_)
                               ((lambda (_L11707_)
                                  (cons (gx#datum->syntax '#f 'quote)
                                        (cons _L11707_ '())))
                                _g1164311704_))))
                        (let ((_g1164011769_
                               (lambda (_g1164311721_)
                                 (if (gx#stx-box? _g1164311721_)
                                     (let ((_e1169311724_
                                            (unbox (gx#syntax-e
                                                    _g1164311721_))))
                                       ((lambda (_L11728_)
                                          (let ((_g1173811746_
                                                 (lambda (_g1173911742_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1173911742_))))
                                            (let ((_g1173711765_
                                                   (lambda (_g1173911750_)
                                                     ((lambda (_L11753_)
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'box)
                        (cons _L11753_ '()))))
              _g1173911750_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1173711765_
                                               (_generate11569_
                                                _L11728_
                                                _d11633_)))))
                                        _e1169311724_))
                                     (_g1164111717_ _g1164311721_)))))
                          (let ((_g1163911863_
                                 (lambda (_g1164311773_)
                                   (if (gx#stx-vector? _g1164311773_)
                                       (let ((_e1168211776_
                                              (vector->list
                                               (gx#syntax-e _g1164311773_))))
                                         (if (gx#stx-pair/null? _e1168211776_)
                                             (if (fx>= (gx#stx-length
                                                        _e1168211776_)
                                                       '0)
                                                 (let ((_g30283_
                                                        (gx#syntax-split-splice
                                                         _e1168211776_
                                                         '0)))
                                                   (begin
                                                     (let ((_g30284_
                                                            (values-count
                                                             _g30283_)))
                                                       (if (not (fx= _g30284_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g30284_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target1168311780_
                                                            (values-ref
                                                             _g30283_
                                                             0))
                                                           (_tl1168511783_
                                                            (values-ref
                                                             _g30283_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl1168511783_)
                                                           (letrec ((_loop1168611786_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd1168411790_ _e1169011793_)
                               (if (gx#stx-pair? _hd1168411790_)
                                   (let ((_e1168711796_
                                          (gx#syntax-e _hd1168411790_)))
                                     (let ((_lp-hd1168811800_
                                            (##car _e1168711796_))
                                           (_lp-tl1168911803_
                                            (##cdr _e1168711796_)))
                                       (_loop1168611786_
                                        _lp-tl1168911803_
                                        (cons _lp-hd1168811800_
                                              _e1169011793_))))
                                   (let ((_e1169111806_
                                          (reverse _e1169011793_)))
                                     ((lambda (_L11810_)
                                        (let ((_g1182411832_
                                               (lambda (_g1182511828_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1182511828_))))
                                          (let ((_g1182311851_
                                                 (lambda (_g1182511836_)
                                                   ((lambda (_L11839_)
                                                      (let ()
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'list->vector)
                                                              (cons _L11839_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1182511836_))))
                                            (_g1182311851_
                                             (_generate11569_
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g1185411857_
                                                                _g1185511860_)
                                                         (cons _g1185411857_
                                                               _g1185511860_))
                                                       '()
                                                       _L11810_))
                                              _d11633_)))))
                                      _e1169111806_))))))
                     (_loop1168611786_ _target1168311780_ '()))
                   (_g1164011769_ _g1164311773_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1164011769_ _g1164311773_))
                                             (_g1164011769_ _g1164311773_)))
                                       (_g1164011769_ _g1164311773_)))))
                            (let ((_g1163811957_
                                   (lambda (_g1164311867_)
                                     (if (gx#stx-pair? _g1164311867_)
                                         (let ((_e1167811870_
                                                (gx#syntax-e _g1164311867_)))
                                           (let ((_hd1167911874_
                                                  (##car _e1167811870_))
                                                 (_tl1168011877_
                                                  (##cdr _e1167811870_)))
                                             ((lambda (_L11880_ _L11882_)
                                                (let ((_g1189311908_
                                                       (lambda (_g1189411904_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1189411904_))))
                                                  (let ((_g1189211953_
                                                         (lambda (_g1189411912_)
                                                           (if (gx#stx-pair?
                                                                _g1189411912_)
                                                               (let ((_e1189711915_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _g1189411912_)))
                         (let ((_hd1189811919_ (##car _e1189711915_))
                               (_tl1189911922_ (##cdr _e1189711915_)))
                           (if (gx#stx-pair? _tl1189911922_)
                               (let ((_e1190011925_
                                      (gx#syntax-e _tl1189911922_)))
                                 (let ((_hd1190111929_ (##car _e1190011925_))
                                       (_tl1190211932_ (##cdr _e1190011925_)))
                                   (if (gx#stx-null? _tl1190211932_)
                                       ((lambda (_L11935_ _L11937_)
                                          (let ()
                                            (cons (gx#datum->syntax '#f 'cons)
                                                  (cons _L11937_
                                                        (cons _L11935_ '())))))
                                        _hd1190111929_
                                        _hd1189811919_)
                                       (_g1189311908_ _g1189411912_))))
                               (_g1189311908_ _g1189411912_))))
                       (_g1189311908_ _g1189411912_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1189211953_
                                                     (list (_generate11569_
                                                            _L11882_
                                                            _d11633_)
                                                           (_generate11569_
                                                            _L11880_
                                                            _d11633_))))))
                                              _tl1168011877_
                                              _hd1167911874_)))
                                         (_g1163911863_ _g1164311867_)))))
                              (let ((_g1163712042_
                                     (lambda (_g1164311961_)
                                       (if (gx#stx-pair? _g1164311961_)
                                           (let ((_e1166711964_
                                                  (gx#syntax-e _g1164311961_)))
                                             (let ((_hd1166811968_
                                                    (##car _e1166711964_))
                                                   (_tl1166911971_
                                                    (##cdr _e1166711964_)))
                                               (if (gx#stx-pair?
                                                    _hd1166811968_)
                                                   (let ((_e1167011974_
                                                          (gx#syntax-e
                                                           _hd1166811968_)))
                                                     (let ((_hd1167111978_
                                                            (##car _e1167011974_))
                                                           (_tl1167211981_
                                                            (##cdr _e1167011974_)))
                                                       (if (gx#identifier?
                                                            _hd1167111978_)
                                                           (if (gx#free-identifier=?
                                                                |gerbil/core::<sugar>::<sugar:2>[1]#_g30285_|
                                                                _hd1167111978_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1167211981_)
                           (let ((_e1167311984_ (gx#syntax-e _tl1167211981_)))
                             (let ((_hd1167411988_ (##car _e1167311984_))
                                   (_tl1167511991_ (##cdr _e1167311984_)))
                               (if (gx#stx-null? _tl1167511991_)
                                   ((lambda (_L11994_ _L11996_)
                                      (if (fxzero? _d11633_)
                                          (let ((_g1201112019_
                                                 (lambda (_g1201212015_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1201212015_))))
                                            (let ((_g1201012038_
                                                   (lambda (_g1201212023_)
                                                     ((lambda (_L12026_)
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'foldr)
                        (cons (gx#datum->syntax '#f 'cons)
                              (cons _L12026_ (cons _L11996_ '()))))))
              _g1201212023_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1201012038_
                                               (_generate11569_
                                                _L11994_
                                                _d11633_))))
                                          (_g1163811957_ _g1164311961_)))
                                    _tl1166911971_
                                    _hd1167411988_)
                                   (_g1163811957_ _g1164311961_))))
                           (_g1163811957_ _g1164311961_))
                       (_g1163811957_ _g1164311961_))
                   (_g1163811957_ _g1164311961_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1163811957_
                                                    _g1164311961_))))
                                           (_g1163811957_ _g1164311961_)))))
                                (let ((_g1163612113_
                                       (lambda (_g1164312046_)
                                         (if (gx#stx-pair? _g1164312046_)
                                             (let ((_e1165912049_
                                                    (gx#syntax-e
                                                     _g1164312046_)))
                                               (let ((_hd1166012053_
                                                      (##car _e1165912049_))
                                                     (_tl1166112056_
                                                      (##cdr _e1165912049_)))
                                                 (if (gx#identifier?
                                                      _hd1166012053_)
                                                     (if (gx#free-identifier=?
                                                          |gerbil/core::<sugar>::<sugar:2>[1]#_g30286_|
                                                          _hd1166012053_)
                                                         (if (gx#stx-pair?
                                                              _tl1166112056_)
                                                             (let ((_e1166212059_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl1166112056_)))
                       (let ((_hd1166312063_ (##car _e1166212059_))
                             (_tl1166412066_ (##cdr _e1166212059_)))
                         (if (gx#stx-null? _tl1166412066_)
                             ((lambda (_L12069_)
                                (if (fxzero? _d11633_)
                                    (cons (gx#datum->syntax '#f 'foldr)
                                          (cons (gx#datum->syntax '#f 'cons)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons '() '()))
                                                      (cons _L12069_ '()))))
                                    (let ((_g1208212090_
                                           (lambda (_g1208312086_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1208312086_))))
                                      (let ((_g1208112109_
                                             (lambda (_g1208312094_)
                                               ((lambda (_L12097_)
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
                        (cons _L12097_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1208312094_))))
                                        (_g1208112109_
                                         (_generate11569_
                                          _L12069_
                                          (fx1- _d11633_)))))))
                              _hd1166312063_)
                             (_g1163712042_ _g1164312046_))))
                     (_g1163712042_ _g1164312046_))
                 (_g1163712042_ _g1164312046_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1163712042_
                                                      _g1164312046_))))
                                             (_g1163712042_ _g1164312046_)))))
                                  (let ((_g1163512184_
                                         (lambda (_g1164312117_)
                                           (if (gx#stx-pair? _g1164312117_)
                                               (let ((_e1165212120_
                                                      (gx#syntax-e
                                                       _g1164312117_)))
                                                 (let ((_hd1165312124_
                                                        (##car _e1165212120_))
                                                       (_tl1165412127_
                                                        (##cdr _e1165212120_)))
                                                   (if (gx#identifier?
                                                        _hd1165312124_)
                                                       (if (gx#free-identifier=?
                                                            |gerbil/core::<sugar>::<sugar:2>[1]#_g30287_|
                                                            _hd1165312124_)
                                                           (if (gx#stx-pair?
                                                                _tl1165412127_)
                                                               (let ((_e1165512130_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl1165412127_)))
                         (let ((_hd1165612134_ (##car _e1165512130_))
                               (_tl1165712137_ (##cdr _e1165512130_)))
                           (if (gx#stx-null? _tl1165712137_)
                               ((lambda (_L12140_)
                                  (if (fxzero? _d11633_)
                                      _L12140_
                                      (let ((_g1215312161_
                                             (lambda (_g1215412157_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1215412157_))))
                                        (let ((_g1215212180_
                                               (lambda (_g1215412165_)
                                                 ((lambda (_L12168_)
                                                    (let ()
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'list)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons (gx#datum->syntax '#f 'unquote) '()))
                          (cons _L12168_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g1215412165_))))
                                          (_g1215212180_
                                           (_generate11569_
                                            _L12140_
                                            (fx1- _d11633_)))))))
                                _hd1165612134_)
                               (_g1163612113_ _g1164312117_))))
                       (_g1163612113_ _g1164312117_))
                   (_g1163612113_ _g1164312117_))
               (_g1163612113_ _g1164312117_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1163612113_
                                                _g1164312117_)))))
                                    (let ((_g1163412255_
                                           (lambda (_g1164312188_)
                                             (if (gx#stx-pair? _g1164312188_)
                                                 (let ((_e1164512191_
                                                        (gx#syntax-e
                                                         _g1164312188_)))
                                                   (let ((_hd1164612195_
                                                          (##car _e1164512191_))
                                                         (_tl1164712198_
                                                          (##cdr _e1164512191_)))
                                                     (if (gx#identifier?
                                                          _hd1164612195_)
                                                         (if (gx#free-identifier=?
                                                              |gerbil/core::<sugar>::<sugar:2>[1]#_g30288_|
                                                              _hd1164612195_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1164712198_)
                         (let ((_e1164812201_ (gx#syntax-e _tl1164712198_)))
                           (let ((_hd1164912205_ (##car _e1164812201_))
                                 (_tl1165012208_ (##cdr _e1164812201_)))
                             (if (gx#stx-null? _tl1165012208_)
                                 ((lambda (_L12211_)
                                    (let ((_g1222412232_
                                           (lambda (_g1222512228_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1222512228_))))
                                      (let ((_g1222312251_
                                             (lambda (_g1222512236_)
                                               ((lambda (_L12239_)
                                                  (let ()
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'list)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote)
                              (cons (gx#datum->syntax '#f 'quasiquote) '()))
                        (cons _L12239_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1222512236_))))
                                        (_g1222312251_
                                         (_generate11569_
                                          _L12211_
                                          (fx1+ _d11633_))))))
                                  _hd1164912205_)
                                 (_g1163512184_ _g1164312188_))))
                         (_g1163512184_ _g1164312188_))
                     (_g1163512184_ _g1164312188_))
                 (_g1163512184_ _g1164312188_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1163512184_
                                                  _g1164312188_)))))
                                      (_g1163412255_ _e11631_)))))))))))))
          (let ((_g1157111585_
                 (lambda (_g1157211581_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g1157211581_))))
            (let ((_g1157011627_
                   (lambda (_g1157211589_)
                     (if (gx#stx-pair? _g1157211589_)
                         (let ((_e1157411592_ (gx#syntax-e _g1157211589_)))
                           (let ((_hd1157511596_ (##car _e1157411592_))
                                 (_tl1157611599_ (##cdr _e1157411592_)))
                             (if (gx#stx-pair? _tl1157611599_)
                                 (let ((_e1157711602_
                                        (gx#syntax-e _tl1157611599_)))
                                   (let ((_hd1157811606_ (##car _e1157711602_))
                                         (_tl1157911609_
                                          (##cdr _e1157711602_)))
                                     (if (gx#stx-null? _tl1157911609_)
                                         ((lambda (_L11612_)
                                            (if (_simple-quote?11567_ _L11612_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'quote)
                                                      (cons _L11612_ '()))
                                                (_generate11569_ _L11612_ '0)))
                                          _hd1157811606_)
                                         (_g1157111585_ _g1157211589_))))
                                 (_g1157111585_ _g1157211589_))))
                         (_g1157111585_ _g1157211589_)))))
              (_g1157011627_ _stx11564_))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#delay|
      (lambda (_$stx12499_)
        (let ((_g1250412525_
               (lambda (_g1250512521_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1250512521_))))
          (let ((_g1250312566_
                 (lambda (_g1250512529_)
                   (if (gx#stx-pair? _g1250512529_)
                       (let ((_e1251412532_ (gx#syntax-e _g1250512529_)))
                         (let ((_hd1251512536_ (##car _e1251412532_))
                               (_tl1251612539_ (##cdr _e1251412532_)))
                           (if (gx#stx-pair? _tl1251612539_)
                               (let ((_e1251712542_
                                      (gx#syntax-e _tl1251612539_)))
                                 (let ((_hd1251812546_ (##car _e1251712542_))
                                       (_tl1251912549_ (##cdr _e1251712542_)))
                                   (if (gx#stx-null? _tl1251912549_)
                                       ((lambda (_L12552_)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'make-promise)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'lambda%)
                                                            (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L12552_ '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _hd1251812546_)
                                       (_g1250412525_ _g1250512529_))))
                               (_g1250412525_ _g1250512529_))))
                       (_g1250412525_ _g1250512529_)))))
            (let ((_g1250212606_
                   (lambda (_g1250512570_)
                     (if (gx#stx-pair? _g1250512570_)
                         (let ((_e1250712573_ (gx#syntax-e _g1250512570_)))
                           (let ((_hd1250812577_ (##car _e1250712573_))
                                 (_tl1250912580_ (##cdr _e1250712573_)))
                             (if (gx#stx-pair? _tl1250912580_)
                                 (let ((_e1251012583_
                                        (gx#syntax-e _tl1250912580_)))
                                   (let ((_hd1251112587_ (##car _e1251012583_))
                                         (_tl1251212590_
                                          (##cdr _e1251012583_)))
                                     (if (gx#stx-null? _tl1251212590_)
                                         ((lambda (_L12593_)
                                            (if (gx#stx-datum? _L12593_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'quote)
                                                      (cons _L12593_ '()))
                                                (_g1250312566_ _g1250512570_)))
                                          _hd1251112587_)
                                         (_g1250312566_ _g1250512570_))))
                                 (_g1250312566_ _g1250512570_))))
                         (_g1250312566_ _g1250512570_)))))
              (_g1250212606_ _$stx12499_))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#cut|
      (lambda (_stx12610_)
        (let ((_generate12613_
               (lambda (_rest12732_)
                 ((letrec ((_lp12735_
                            (lambda (_rest12738_ _hd12740_ _body12741_)
                              (let ((_g1274412756_
                                     (lambda (_g1274512752_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1274512752_))))
                                (let ((_g1274312767_
                                       (lambda (_g1274512760_)
                                         ((lambda ()
                                            (values (reverse _hd12740_)
                                                    (reverse _body12741_)
                                                    '#f))))))
                                  (let ((_g1274212853_
                                         (lambda (_g1274512771_)
                                           (if (gx#stx-pair? _g1274512771_)
                                               (let ((_e1274812774_
                                                      (gx#syntax-e
                                                       _g1274512771_)))
                                                 (let ((_hd1274912778_
                                                        (##car _e1274812774_))
                                                       (_tl1275012781_
                                                        (##cdr _e1274812774_)))
                                                   ((lambda (_L12784_ _L12786_)
                                                      (let ((_g1280312810_
                                                             (lambda (_g1280412806_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1280412806_))))
                                                        (let ((_g1280212821_
                                                               (lambda (_g1280412814_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda ()
                            (_lp12735_
                             _L12784_
                             _hd12740_
                             (cons _L12786_ _body12741_)))))))
                  (let ((_g1280112835_
                         (lambda (_g1280412825_)
                           (if (gx#identifier? _g1280412825_)
                               (if (gx#free-identifier=?
                                    |gerbil/core::<sugar>::<sugar:2>[1]#_g30291_|
                                    _g1280412825_)
                                   ((lambda ()
                                      (if (gx#stx-null? _L12784_)
                                          (let ((_tail12832_ (gx#genident)))
                                            (values (foldl cons
                                                           _tail12832_
                                                           _hd12740_)
                                                    (foldl cons
                                                           (list _tail12832_)
                                                           _body12741_)
                                                    '#t))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _stx12610_
                                           _L12786_))))
                                   (_g1280212821_ _g1280412825_))
                               (_g1280212821_ _g1280412825_)))))
                    (let ((_g1280012849_
                           (lambda (_g1280412839_)
                             (if (gx#identifier? _g1280412839_)
                                 (if (gx#free-identifier=?
                                      |gerbil/core::<sugar>::<sugar:2>[1]#_g30292_|
                                      _g1280412839_)
                                     ((lambda ()
                                        (let ((_arg12846_ (gx#genident)))
                                          (_lp12735_
                                           _L12784_
                                           (cons _arg12846_ _hd12740_)
                                           (cons _arg12846_ _body12741_)))))
                                     (_g1280112835_ _g1280412839_))
                                 (_g1280112835_ _g1280412839_)))))
                      (_g1280012849_ _L12786_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl1275012781_
                                                    _hd1274912778_)))
                                               (_g1274312767_
                                                _g1274512771_)))))
                                    (_g1274212853_ _rest12738_)))))))
                    _lp12735_)
                  _rest12732_
                  '()
                  '()))))
          (let ((_g1261612627_
                 (lambda (_g1261712623_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g1261712623_))))
            (let ((_g1261512728_
                   (lambda (_g1261712631_)
                     (if (gx#stx-pair? _g1261712631_)
                         (let ((_e1261912634_ (gx#syntax-e _g1261712631_)))
                           (let ((_hd1262012638_ (##car _e1261912634_))
                                 (_tl1262112641_ (##cdr _e1261912634_)))
                             ((lambda (_L12644_)
                                (if (if (gx#stx-list? _L12644_)
                                        (not (gx#stx-null? _L12644_))
                                        '#f)
                                    (let ((_g30289_
                                           (_generate12613_ _L12644_)))
                                      (begin
                                        (let ((_g30290_
                                               (values-count _g30289_)))
                                          (if (not (fx= _g30290_ 3))
                                              (error "Context expects 3 values"
                                                     _g30290_)))
                                        (let ((_hd12657_
                                               (values-ref _g30289_ 0))
                                              (_body12659_
                                               (values-ref _g30289_ 1))
                                              (_tail?12660_
                                               (values-ref _g30289_ 2)))
                                          (let ((_g1266212670_
                                                 (lambda (_g1266312666_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1266312666_))))
                                            (let ((_g1266112724_
                                                   (lambda (_g1266312674_)
                                                     ((lambda (_L12677_)
                                                        (let ()
                                                          (let ((_g1269012698_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1269112694_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1269112694_))))
                    (let ((_g1268912720_
                           (lambda (_g1269112702_)
                             ((lambda (_L12705_)
                                (let ()
                                  (let ()
                                    (if _tail?12660_
                                        (cons (gx#datum->syntax '#f 'lambda%)
                                              (cons _L12677_
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'apply)
                        _L12705_)
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons (gx#datum->syntax '#f 'lambda%)
                                              (cons _L12677_
                                                    (cons _L12705_ '())))))))
                              _g1269112702_))))
                      (_g1268912720_ _body12659_)))))
              _g1266312674_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1266112724_ _hd12657_))))))
                                    (_g1261612627_ _g1261712631_)))
                              _tl1262112641_)))
                         (_g1261612627_ _g1261712631_)))))
              (_g1261512728_ _stx12610_))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#<>|
      (lambda (_$stx12858_)
        (let ((_g1286112868_
               (lambda (_g1286212864_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1286212864_))))
          (_g1286112868_ _$stx12858_))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#<...>|
      (lambda (_$stx12872_)
        (let ((_g1287512882_
               (lambda (_g1287612878_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1287612878_))))
          (_g1287512882_ _$stx12872_))))))
