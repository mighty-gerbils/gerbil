(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx48975_)
      (let* ((_g4897948997_
              (lambda (_g4898048993_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4898048993_)))
             (_g4897849052_
              (lambda (_g4898049001_)
                (if (gx#stx-pair? _g4898049001_)
                    (let ((_e4898349004_ (gx#syntax-e _g4898049001_)))
                      (let ((_hd4898449008_ (##car _e4898349004_))
                            (_tl4898549011_ (##cdr _e4898349004_)))
                        (if (gx#stx-pair? _tl4898549011_)
                            (let ((_e4898649014_ (gx#syntax-e _tl4898549011_)))
                              (let ((_hd4898749018_ (##car _e4898649014_))
                                    (_tl4898849021_ (##cdr _e4898649014_)))
                                (if (gx#stx-pair? _tl4898849021_)
                                    (let ((_e4898949024_
                                           (gx#syntax-e _tl4898849021_)))
                                      (let ((_hd4899049028_
                                             (##car _e4898949024_))
                                            (_tl4899149031_
                                             (##cdr _e4898949024_)))
                                        (if (gx#stx-null? _tl4899149031_)
                                            ((lambda (_L49034_ _L49036_)
                                               (if (gx#identifier? _L49036_)
                                                   (cons (gx#datum->syntax__0
                                                          '#f
                                                          'optimizer-declare-type!)
                                                         (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'quote)
                             (cons _L49036_ '()))
                       (cons _L49034_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g4897948997_
                                                    _g4898049001_)))
                                             _hd4899049028_
                                             _hd4898749018_)
                                            (_g4897948997_ _g4898049001_))))
                                    (_g4897948997_ _g4898049001_))))
                            (_g4897948997_ _g4898049001_))))
                    (_g4897948997_ _g4898049001_)))))
        (_g4897849052_ _$stx48975_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx49056_)
      (let* ((_g4906049089_
              (lambda (_g4906149085_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4906149085_)))
             (_g4905949189_
              (lambda (_g4906149093_)
                (if (gx#stx-pair? _g4906149093_)
                    (let ((_e4906449096_ (gx#syntax-e _g4906149093_)))
                      (let ((_hd4906549100_ (##car _e4906449096_))
                            (_tl4906649103_ (##cdr _e4906449096_)))
                        (if (gx#stx-pair/null? _tl4906649103_)
                            (let ((_g51797_
                                   (gx#syntax-split-splice _tl4906649103_ '0)))
                              (begin
                                (let ((_g51798_
                                       (if (##values? _g51797_)
                                           (##vector-length _g51797_)
                                           1)))
                                  (if (not (##fx= _g51798_ 2))
                                      (error "Context expects 2 values"
                                             _g51798_)))
                                (let ((_target4906749106_
                                       (##vector-ref _g51797_ 0))
                                      (_tl4906949109_
                                       (##vector-ref _g51797_ 1)))
                                  (if (gx#stx-null? _tl4906949109_)
                                      (letrec ((_loop4907049112_
                                                (lambda (_hd4906849116_
                                                         _type4907449119_
                                                         _symbol4907549121_)
                                                  (if (gx#stx-pair?
                                                       _hd4906849116_)
                                                      (let ((_e4907149124_
                                                             (gx#syntax-e
                                                              _hd4906849116_)))
                                                        (let ((_lp-hd4907249128_
                                                               (##car _e4907149124_))
                                                              (_lp-tl4907349131_
                                                               (##cdr _e4907149124_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd4907249128_)
                                                              (let ((_e4907849134_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _lp-hd4907249128_)))
                        (let ((_hd4907949138_ (##car _e4907849134_))
                              (_tl4908049141_ (##cdr _e4907849134_)))
                          (if (gx#stx-pair? _tl4908049141_)
                              (let ((_e4908149144_
                                     (gx#syntax-e _tl4908049141_)))
                                (let ((_hd4908249148_ (##car _e4908149144_))
                                      (_tl4908349151_ (##cdr _e4908149144_)))
                                  (if (gx#stx-null? _tl4908349151_)
                                      (_loop4907049112_
                                       _lp-tl4907349131_
                                       (cons _hd4908249148_ _type4907449119_)
                                       (cons _hd4907949138_
                                             _symbol4907549121_))
                                      (_g4906049089_ _g4906149093_))))
                              (_g4906049089_ _g4906149093_))))
                      (_g4906049089_ _g4906149093_))))
              (let ((_type4907649154_ (reverse _type4907449119_))
                    (_symbol4907749157_ (reverse _symbol4907549121_)))
                ((lambda (_L49160_ _L49162_)
                   (cons (gx#datum->syntax__0 '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets _L49160_ _L49162_)
                           (foldr2 (lambda (_g4917749181_
                                            _g4917849184_
                                            _g4917949186_)
                                     (cons (cons (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type)
                                                 (cons _g4917849184_
                                                       (cons _g4917749181_
                                                             '())))
                                           _g4917949186_))
                                   '()
                                   _L49160_
                                   _L49162_))))
                 _type4907649154_
                 _symbol4907749157_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop4907049112_
                                         _target4906749106_
                                         '()
                                         '()))
                                      (_g4906049089_ _g4906149093_)))))
                            (_g4906049089_ _g4906149093_))))
                    (_g4906049089_ _g4906149093_)))))
        (_g4905949189_ _$stx49056_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx49194_)
      (let* ((___stx5134051341_ _$stx49194_)
             (_g4919949241_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5134051341_))))
        (let ((___kont5134351344_
               (lambda (_L49369_ _L49371_ _L49372_ _L49373_)
                 (cons (gx#datum->syntax__0 '#f 'optimizer-declare-method!)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L49373_ '()))
                             (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                         (cons _L49372_ '()))
                                   (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                               (cons _L49371_ '()))
                                         (cons _L49369_ '())))))))
              (___kont5134551346_
               (lambda (_L49288_ _L49290_ _L49291_ _L49292_)
                 (cons _L49292_
                       (cons _L49291_
                             (cons _L49290_
                                   (cons _L49288_
                                         (cons (gx#datum->syntax__0
                                                '#f
                                                'rebind?)
                                               '()))))))))
          (let ((___match5137951380_
                 (lambda (_e4920549319_
                          _hd4920649323_
                          _tl4920749326_
                          _e4920849329_
                          _hd4920949333_
                          _tl4921049336_
                          _e4921149339_
                          _hd4921249343_
                          _tl4921349346_
                          _e4921449349_
                          _hd4921549353_
                          _tl4921649356_
                          _e4921749359_
                          _hd4921849363_
                          _tl4921949366_)
                   (let ((_L49369_ _hd4921849363_)
                         (_L49371_ _hd4921549353_)
                         (_L49372_ _hd4921249343_)
                         (_L49373_ _hd4920949333_))
                     (if (if (gx#identifier? _L49373_)
                             (if (gx#identifier? _L49372_)
                                 (gx#identifier? _L49371_)
                                 '#f)
                             '#f)
                         (___kont5134351344_
                          _L49369_
                          _L49371_
                          _L49372_
                          _L49373_)
                         (_g4919949241_))))))
            (if (gx#stx-pair? ___stx5134051341_)
                (let ((_e4920549319_ (gx#syntax-e ___stx5134051341_)))
                  (let ((_tl4920749326_ (##cdr _e4920549319_))
                        (_hd4920649323_ (##car _e4920549319_)))
                    (if (gx#stx-pair? _tl4920749326_)
                        (let ((_e4920849329_ (gx#syntax-e _tl4920749326_)))
                          (let ((_tl4921049336_ (##cdr _e4920849329_))
                                (_hd4920949333_ (##car _e4920849329_)))
                            (if (gx#stx-pair? _tl4921049336_)
                                (let ((_e4921149339_
                                       (gx#syntax-e _tl4921049336_)))
                                  (let ((_tl4921349346_ (##cdr _e4921149339_))
                                        (_hd4921249343_ (##car _e4921149339_)))
                                    (if (gx#stx-pair? _tl4921349346_)
                                        (let ((_e4921449349_
                                               (gx#syntax-e _tl4921349346_)))
                                          (let ((_tl4921649356_
                                                 (##cdr _e4921449349_))
                                                (_hd4921549353_
                                                 (##car _e4921449349_)))
                                            (if (gx#stx-pair? _tl4921649356_)
                                                (let ((_e4921749359_
                                                       (gx#syntax-e
                                                        _tl4921649356_)))
                                                  (let ((_tl4921949366_
                                                         (##cdr _e4921749359_))
                                                        (_hd4921849363_
                                                         (##car _e4921749359_)))
                                                    (if (gx#stx-null?
                                                         _tl4921949366_)
                                                        (___match5137951380_
                                                         _e4920549319_
                                                         _hd4920649323_
                                                         _tl4920749326_
                                                         _e4920849329_
                                                         _hd4920949333_
                                                         _tl4921049336_
                                                         _e4921149339_
                                                         _hd4921249343_
                                                         _tl4921349346_
                                                         _e4921449349_
                                                         _hd4921549353_
                                                         _tl4921649356_
                                                         _e4921749359_
                                                         _hd4921849363_
                                                         _tl4921949366_)
                                                        (_g4919949241_))))
                                                (if (gx#stx-null?
                                                     _tl4921649356_)
                                                    (___kont5134551346_
                                                     _hd4921549353_
                                                     _hd4921249343_
                                                     _hd4920949333_
                                                     _hd4920649323_)
                                                    (_g4919949241_)))))
                                        (_g4919949241_))))
                                (_g4919949241_))))
                        (_g4919949241_))))
                (_g4919949241_)))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx49398_)
      (let* ((_g4940249437_
              (lambda (_g4940349433_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4940349433_)))
             (_g4940149556_
              (lambda (_g4940349441_)
                (if (gx#stx-pair? _g4940349441_)
                    (let ((_e4940749444_ (gx#syntax-e _g4940349441_)))
                      (let ((_hd4940849448_ (##car _e4940749444_))
                            (_tl4940949451_ (##cdr _e4940749444_)))
                        (if (gx#stx-pair/null? _tl4940949451_)
                            (let ((_g51799_
                                   (gx#syntax-split-splice _tl4940949451_ '0)))
                              (begin
                                (let ((_g51800_
                                       (if (##values? _g51799_)
                                           (##vector-length _g51799_)
                                           1)))
                                  (if (not (##fx= _g51800_ 2))
                                      (error "Context expects 2 values"
                                             _g51800_)))
                                (let ((_target4941049454_
                                       (##vector-ref _g51799_ 0))
                                      (_tl4941249457_
                                       (##vector-ref _g51799_ 1)))
                                  (if (gx#stx-null? _tl4941249457_)
                                      (letrec ((_loop4941349460_
                                                (lambda (_hd4941149464_
                                                         _symbol4941749467_
                                                         _method4941849469_
                                                         _type-t4941949471_)
                                                  (if (gx#stx-pair?
                                                       _hd4941149464_)
                                                      (let ((_e4941449474_
                                                             (gx#syntax-e
                                                              _hd4941149464_)))
                                                        (let ((_lp-hd4941549478_
                                                               (##car _e4941449474_))
                                                              (_lp-tl4941649481_
                                                               (##cdr _e4941449474_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd4941549478_)
                                                              (let ((_e4942349484_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _lp-hd4941549478_)))
                        (let ((_hd4942449488_ (##car _e4942349484_))
                              (_tl4942549491_ (##cdr _e4942349484_)))
                          (if (gx#stx-pair? _tl4942549491_)
                              (let ((_e4942649494_
                                     (gx#syntax-e _tl4942549491_)))
                                (let ((_hd4942749498_ (##car _e4942649494_))
                                      (_tl4942849501_ (##cdr _e4942649494_)))
                                  (if (gx#stx-pair? _tl4942849501_)
                                      (let ((_e4942949504_
                                             (gx#syntax-e _tl4942849501_)))
                                        (let ((_hd4943049508_
                                               (##car _e4942949504_))
                                              (_tl4943149511_
                                               (##cdr _e4942949504_)))
                                          (if (gx#stx-null? _tl4943149511_)
                                              (_loop4941349460_
                                               _lp-tl4941649481_
                                               (cons _hd4943049508_
                                                     _symbol4941749467_)
                                               (cons _hd4942749498_
                                                     _method4941849469_)
                                               (cons _hd4942449488_
                                                     _type-t4941949471_))
                                              (_g4940249437_ _g4940349441_))))
                                      (_g4940249437_ _g4940349441_))))
                              (_g4940249437_ _g4940349441_))))
                      (_g4940249437_ _g4940349441_))))
              (let ((_symbol4942049514_ (reverse _symbol4941749467_))
                    (_method4942149517_ (reverse _method4941849469_))
                    (_type-t4942249519_ (reverse _type-t4941949471_)))
                ((lambda (_L49522_ _L49524_ _L49525_)
                   (cons (gx#datum->syntax__0 '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _L49522_
                            _L49524_
                            _L49525_)
                           (foldr (lambda (_g4954149546_
                                           _g4954249549_
                                           _g4954349551_
                                           _g4954449553_)
                                    (cons (cons (gx#datum->syntax__0
                                                 '#f
                                                 'declare-method)
                                                (cons _g4954349551_
                                                      (cons _g4954249549_
                                                            (cons _g4954149546_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _g4954449553_))
                                  '()
                                  _L49522_
                                  _L49524_
                                  _L49525_))))
                 _symbol4942049514_
                 _method4942149517_
                 _type-t4942249519_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop4941349460_
                                         _target4941049454_
                                         '()
                                         '()
                                         '()))
                                      (_g4940249437_ _g4940349441_)))))
                            (_g4940249437_ _g4940349441_))))
                    (_g4940249437_ _g4940349441_)))))
        (_g4940149556_ _$stx49398_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx49561_)
      (let* ((_g4956549598_
              (lambda (_g4956649594_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4956649594_)))
             (_g4956449712_
              (lambda (_g4956649602_)
                (if (gx#stx-pair? _g4956649602_)
                    (let ((_e4957049605_ (gx#syntax-e _g4956649602_)))
                      (let ((_hd4957149609_ (##car _e4957049605_))
                            (_tl4957249612_ (##cdr _e4957049605_)))
                        (if (gx#stx-pair? _tl4957249612_)
                            (let ((_e4957349615_ (gx#syntax-e _tl4957249612_)))
                              (let ((_hd4957449619_ (##car _e4957349615_))
                                    (_tl4957549622_ (##cdr _e4957349615_)))
                                (if (gx#stx-pair/null? _tl4957549622_)
                                    (let ((_g51801_
                                           (gx#syntax-split-splice
                                            _tl4957549622_
                                            '0)))
                                      (begin
                                        (let ((_g51802_
                                               (if (##values? _g51801_)
                                                   (##vector-length _g51801_)
                                                   1)))
                                          (if (not (##fx= _g51802_ 2))
                                              (error "Context expects 2 values"
                                                     _g51802_)))
                                        (let ((_target4957649625_
                                               (##vector-ref _g51801_ 0))
                                              (_tl4957849628_
                                               (##vector-ref _g51801_ 1)))
                                          (if (gx#stx-null? _tl4957849628_)
                                              (letrec ((_loop4957949631_
                                                        (lambda (_hd4957749635_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol4958349638_
                         _method4958449640_)
                  (if (gx#stx-pair? _hd4957749635_)
                      (let ((_e4958049643_ (gx#syntax-e _hd4957749635_)))
                        (let ((_lp-hd4958149647_ (##car _e4958049643_))
                              (_lp-tl4958249650_ (##cdr _e4958049643_)))
                          (if (gx#stx-pair? _lp-hd4958149647_)
                              (let ((_e4958749653_
                                     (gx#syntax-e _lp-hd4958149647_)))
                                (let ((_hd4958849657_ (##car _e4958749653_))
                                      (_tl4958949660_ (##cdr _e4958749653_)))
                                  (if (gx#stx-pair? _tl4958949660_)
                                      (let ((_e4959049663_
                                             (gx#syntax-e _tl4958949660_)))
                                        (let ((_hd4959149667_
                                               (##car _e4959049663_))
                                              (_tl4959249670_
                                               (##cdr _e4959049663_)))
                                          (if (gx#stx-null? _tl4959249670_)
                                              (_loop4957949631_
                                               _lp-tl4958249650_
                                               (cons _hd4959149667_
                                                     _symbol4958349638_)
                                               (cons _hd4958849657_
                                                     _method4958449640_))
                                              (_g4956549598_ _g4956649602_))))
                                      (_g4956549598_ _g4956649602_))))
                              (_g4956549598_ _g4956649602_))))
                      (let ((_symbol4958549673_ (reverse _symbol4958349638_))
                            (_method4958649676_ (reverse _method4958449640_)))
                        ((lambda (_L49679_ _L49681_ _L49682_)
                           (cons (gx#datum->syntax__0 '#f 'begin)
                                 (begin
                                   (gx#syntax-check-splice-targets
                                    _L49679_
                                    _L49681_)
                                   (foldr2 (lambda (_g4970049704_
                                                    _g4970149707_
                                                    _g4970249709_)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'declare-method)
                                                         (cons _L49682_
                                                               (cons _g4970149707_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _g4970049704_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g4970249709_))
                                           '()
                                           _L49679_
                                           _L49681_))))
                         _symbol4958549673_
                         _method4958649676_
                         _hd4957449619_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop4957949631_
                                                 _target4957649625_
                                                 '()
                                                 '()))
                                              (_g4956549598_ _g4956649602_)))))
                                    (_g4956549598_ _g4956649602_))))
                            (_g4956549598_ _g4956649602_))))
                    (_g4956549598_ _g4956649602_)))))
        (_g4956449712_ _$stx49561_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx49717_)
      (let* ((_g4972149735_
              (lambda (_g4972249731_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4972249731_)))
             (_g4972049776_
              (lambda (_g4972249739_)
                (if (gx#stx-pair? _g4972249739_)
                    (let ((_e4972449742_ (gx#syntax-e _g4972249739_)))
                      (let ((_hd4972549746_ (##car _e4972449742_))
                            (_tl4972649749_ (##cdr _e4972449742_)))
                        (if (gx#stx-pair? _tl4972649749_)
                            (let ((_e4972749752_ (gx#syntax-e _tl4972649749_)))
                              (let ((_hd4972849756_ (##car _e4972749752_))
                                    (_tl4972949759_ (##cdr _e4972749752_)))
                                (if (gx#stx-null? _tl4972949759_)
                                    ((lambda (_L49762_)
                                       (cons (gx#datum->syntax__0
                                              '#f
                                              'make-!alias)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'quote)
                                                         (cons _L49762_ '()))
                                                   '())))
                                     _hd4972849756_)
                                    (_g4972149735_ _g4972249739_))))
                            (_g4972149735_ _g4972249739_))))
                    (_g4972149735_ _g4972249739_)))))
        (_g4972049776_ _$stx49717_))))
  (define |gxc[:0:]#@struct-type|
    (lambda (_$stx49780_)
      (let* ((___stx5140851409_ _$stx49780_)
             (_g4978649852_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5140851409_))))
        (let ((___kont5141151412_
               (lambda (_L50074_ _L50076_ _L50077_ _L50078_ _L50079_)
                 (cons (gx#datum->syntax__0 '#f '@make-struct-type)
                       (cons _L50079_
                             (cons _L50078_
                                   (cons _L50077_
                                         (cons _L50076_
                                               (cons _L50074_ '()))))))))
              (___kont5141351414_
               (lambda (_L49984_ _L49986_ _L49987_ _L49988_)
                 (cons _L49988_
                       (cons _L49987_
                             (cons _L49986_
                                   (cons _L49984_
                                         (cons '#f (cons '#f '()))))))))
              (___kont5141551416_
               (lambda (_L49909_ _L49911_ _L49912_ _L49913_ _L49914_)
                 (cons _L49914_
                       (cons (gx#datum->syntax__0 '#f 'type)
                             (cons _L49912_
                                   (cons _L49911_
                                         (cons _L49909_ (cons '#f '())))))))))
          (if (gx#stx-pair? ___stx5140851409_)
              (let ((_e4979350014_ (gx#syntax-e ___stx5140851409_)))
                (let ((_tl4979550021_ (##cdr _e4979350014_))
                      (_hd4979450018_ (##car _e4979350014_)))
                  (if (gx#stx-pair? _tl4979550021_)
                      (let ((_e4979650024_ (gx#syntax-e _tl4979550021_)))
                        (let ((_tl4979850031_ (##cdr _e4979650024_))
                              (_hd4979750028_ (##car _e4979650024_)))
                          (if (gx#stx-pair? _tl4979850031_)
                              (let ((_e4979950034_
                                     (gx#syntax-e _tl4979850031_)))
                                (let ((_tl4980150041_ (##cdr _e4979950034_))
                                      (_hd4980050038_ (##car _e4979950034_)))
                                  (if (gx#stx-pair? _tl4980150041_)
                                      (let ((_e4980250044_
                                             (gx#syntax-e _tl4980150041_)))
                                        (let ((_tl4980450051_
                                               (##cdr _e4980250044_))
                                              (_hd4980350048_
                                               (##car _e4980250044_)))
                                          (if (gx#stx-pair? _tl4980450051_)
                                              (let ((_e4980550054_
                                                     (gx#syntax-e
                                                      _tl4980450051_)))
                                                (let ((_tl4980750061_
                                                       (##cdr _e4980550054_))
                                                      (_hd4980650058_
                                                       (##car _e4980550054_)))
                                                  (if (gx#stx-pair?
                                                       _tl4980750061_)
                                                      (let ((_e4980850064_
                                                             (gx#syntax-e
                                                              _tl4980750061_)))
                                                        (let ((_tl4981050071_
                                                               (##cdr _e4980850064_))
                                                              (_hd4980950068_
                                                               (##car _e4980850064_)))
                                                          (if (gx#stx-null?
                                                               _tl4981050071_)
                                                              (___kont5141151412_
                                                               _hd4980950068_
                                                               _hd4980650058_
                                                               _hd4980350048_
                                                               _hd4980050038_
                                                               _hd4979750028_)
                                                              (_g4978649852_))))
                                                      (if (gx#stx-null?
                                                           _tl4980750061_)
                                                          (___kont5141551416_
                                                           _hd4980650058_
                                                           _hd4980350048_
                                                           _hd4980050038_
                                                           _hd4979750028_
                                                           _hd4979450018_)
                                                          (_g4978649852_)))))
                                              (if (gx#stx-null? _tl4980450051_)
                                                  (___kont5141351414_
                                                   _hd4980350048_
                                                   _hd4980050038_
                                                   _hd4979750028_
                                                   _hd4979450018_)
                                                  (_g4978649852_)))))
                                      (_g4978649852_))))
                              (_g4978649852_))))
                      (_g4978649852_))))
              (_g4978649852_))))))
  (define |gxc[:0:]#@make-struct-type|
    (lambda (_$stx50107_)
      (let* ((___stx5151651517_ _$stx50107_)
             (_g5011250165_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5151651517_))))
        (let ((___kont5151951520_
               (lambda (_L50333_ _L50335_ _L50336_ _L50337_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-type)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L50337_ '()))
                             (cons '#f
                                   (cons _L50336_
                                         (cons '0
                                               (cons (cons (gx#datum->syntax__0
                                                            '#f
                                                            'quote)
                                                           (cons _L50335_ '()))
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _L50333_ '()))
                   '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              (___kont5152151522_
               (lambda (_L50232_ _L50234_ _L50235_ _L50236_ _L50237_)
                 (cons (gx#datum->syntax__0 '#f 'let*)
                       (cons (cons (cons (gx#datum->syntax__0 '#f 'super-type)
                                         (cons (cons (gx#datum->syntax__0
                                                      '#f
                                                      'optimizer-resolve-type)
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _L50236_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (cons (cons (gx#datum->syntax__0
                                                '#f
                                                'xfields)
                                               (cons (cons (gx#datum->syntax__0
                                                            '#f
                                                            'and)
                                                           (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'super-type)
                         (cons (cons (gx#datum->syntax__0 '#f 'alet)
                                     (cons (cons (gx#datum->syntax__0
                                                  '#f
                                                  'xfields)
                                                 (cons (cons (gx#datum->syntax__0
                                                              '#f
                                                              '!struct-type-xfields)
                                                             (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'super-type)
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (cons (gx#datum->syntax__0
                                                        '#f
                                                        'fx+)
                                                       (cons (gx#datum->syntax__0
                                                              '#f
                                                              'xfields)
                                                             (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '!struct-type-fields)
                                 (cons (gx#datum->syntax__0 '#f 'super-type)
                                       '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (gx#datum->syntax__0
                                                      '#f
                                                      'xtor)
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'or)
                         (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                     (cons _L50234_ '()))
                               (cons (cons (gx#datum->syntax__0 '#f 'if)
                                           (cons (gx#datum->syntax__0
                                                  '#f
                                                  'super-type)
                                                 (cons (cons (gx#datum->syntax__0
                                                              '#f
                                                              '!struct-type-ctor)
                                                             (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'super-type)
                           '()))
               (cons '#!void '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))
                             (cons (cons (gx#datum->syntax__0
                                          '#f
                                          'make-!struct-type)
                                         (cons (cons (gx#datum->syntax__0
                                                      '#f
                                                      'quote)
                                                     (cons _L50237_ '()))
                                               (cons (cons (gx#datum->syntax__0
                                                            '#f
                                                            'quote)
                                                           (cons _L50236_ '()))
                                                     (cons _L50235_
                                                           (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'xfields)
                         (cons (gx#datum->syntax__0 '#f 'xtor)
                               (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                           (cons _L50232_ '()))
                                     '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   '()))))))
          (if (gx#stx-pair? ___stx5151651517_)
              (let ((_e5011850269_ (gx#syntax-e ___stx5151651517_)))
                (let ((_tl5012050276_ (##cdr _e5011850269_))
                      (_hd5011950273_ (##car _e5011850269_)))
                  (if (gx#stx-pair? _tl5012050276_)
                      (let ((_e5012150279_ (gx#syntax-e _tl5012050276_)))
                        (let ((_tl5012350286_ (##cdr _e5012150279_))
                              (_hd5012250283_ (##car _e5012150279_)))
                          (if (gx#stx-pair? _tl5012350286_)
                              (let ((_e5012450289_
                                     (gx#syntax-e _tl5012350286_)))
                                (let ((_tl5012650296_ (##cdr _e5012450289_))
                                      (_hd5012550293_ (##car _e5012450289_)))
                                  (if (gx#stx-datum? _hd5012550293_)
                                      (let ((_e5012750299_
                                             (gx#stx-e _hd5012550293_)))
                                        (if (equal? _e5012750299_ '#f)
                                            (if (gx#stx-pair? _tl5012650296_)
                                                (let ((_e5012850303_
                                                       (gx#syntax-e
                                                        _tl5012650296_)))
                                                  (let ((_tl5013050310_
                                                         (##cdr _e5012850303_))
                                                        (_hd5012950307_
                                                         (##car _e5012850303_)))
                                                    (if (gx#stx-pair?
                                                         _tl5013050310_)
                                                        (let ((_e5013150313_
                                                               (gx#syntax-e
                                                                _tl5013050310_)))
                                                          (let ((_tl5013350320_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e5013150313_))
                        (_hd5013250317_ (##car _e5013150313_)))
                    (if (gx#stx-pair? _tl5013350320_)
                        (let ((_e5013450323_ (gx#syntax-e _tl5013350320_)))
                          (let ((_tl5013650330_ (##cdr _e5013450323_))
                                (_hd5013550327_ (##car _e5013450323_)))
                            (if (gx#stx-null? _tl5013650330_)
                                (___kont5151951520_
                                 _hd5013550327_
                                 _hd5013250317_
                                 _hd5012950307_
                                 _hd5012250283_)
                                (_g5011250165_))))
                        (_g5011250165_))))
                (_g5011250165_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g5011250165_))
                                            (if (gx#stx-pair? _tl5012650296_)
                                                (let ((_e5015150202_
                                                       (gx#syntax-e
                                                        _tl5012650296_)))
                                                  (let ((_tl5015350209_
                                                         (##cdr _e5015150202_))
                                                        (_hd5015250206_
                                                         (##car _e5015150202_)))
                                                    (if (gx#stx-pair?
                                                         _tl5015350209_)
                                                        (let ((_e5015450212_
                                                               (gx#syntax-e
                                                                _tl5015350209_)))
                                                          (let ((_tl5015650219_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e5015450212_))
                        (_hd5015550216_ (##car _e5015450212_)))
                    (if (gx#stx-pair? _tl5015650219_)
                        (let ((_e5015750222_ (gx#syntax-e _tl5015650219_)))
                          (let ((_tl5015950229_ (##cdr _e5015750222_))
                                (_hd5015850226_ (##car _e5015750222_)))
                            (if (gx#stx-null? _tl5015950229_)
                                (___kont5152151522_
                                 _hd5015850226_
                                 _hd5015550216_
                                 _hd5015250206_
                                 _hd5012550293_
                                 _hd5012250283_)
                                (_g5011250165_))))
                        (_g5011250165_))))
                (_g5011250165_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g5011250165_))))
                                      (if (gx#stx-pair? _tl5012650296_)
                                          (let ((_e5015150202_
                                                 (gx#syntax-e _tl5012650296_)))
                                            (let ((_tl5015350209_
                                                   (##cdr _e5015150202_))
                                                  (_hd5015250206_
                                                   (##car _e5015150202_)))
                                              (if (gx#stx-pair? _tl5015350209_)
                                                  (let ((_e5015450212_
                                                         (gx#syntax-e
                                                          _tl5015350209_)))
                                                    (let ((_tl5015650219_
                                                           (##cdr _e5015450212_))
                                                          (_hd5015550216_
                                                           (##car _e5015450212_)))
                                                      (if (gx#stx-pair?
                                                           _tl5015650219_)
                                                          (let ((_e5015750222_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl5015650219_)))
                    (let ((_tl5015950229_ (##cdr _e5015750222_))
                          (_hd5015850226_ (##car _e5015750222_)))
                      (if (gx#stx-null? _tl5015950229_)
                          (___kont5152151522_
                           _hd5015850226_
                           _hd5015550216_
                           _hd5015250206_
                           _hd5012550293_
                           _hd5012250283_)
                          (_g5011250165_))))
                  (_g5011250165_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g5011250165_))))
                                          (_g5011250165_)))))
                              (_g5011250165_))))
                      (_g5011250165_))))
              (_g5011250165_))))))
  (define |gxc[:0:]#@struct-pred|
    (lambda (_$stx50365_)
      (let* ((_g5036950383_
              (lambda (_g5037050379_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5037050379_)))
             (_g5036850424_
              (lambda (_g5037050387_)
                (if (gx#stx-pair? _g5037050387_)
                    (let ((_e5037250390_ (gx#syntax-e _g5037050387_)))
                      (let ((_hd5037350394_ (##car _e5037250390_))
                            (_tl5037450397_ (##cdr _e5037250390_)))
                        (if (gx#stx-pair? _tl5037450397_)
                            (let ((_e5037550400_ (gx#syntax-e _tl5037450397_)))
                              (let ((_hd5037650404_ (##car _e5037550400_))
                                    (_tl5037750407_ (##cdr _e5037550400_)))
                                (if (gx#stx-null? _tl5037750407_)
                                    ((lambda (_L50410_)
                                       (cons (gx#datum->syntax__0
                                              '#f
                                              'make-!struct-pred)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'quote)
                                                         (cons _L50410_ '()))
                                                   '())))
                                     _hd5037650404_)
                                    (_g5036950383_ _g5037050387_))))
                            (_g5036950383_ _g5037050387_))))
                    (_g5036950383_ _g5037050387_)))))
        (_g5036850424_ _$stx50365_))))
  (define |gxc[:0:]#@struct-cons|
    (lambda (_$stx50428_)
      (let* ((_g5043250446_
              (lambda (_g5043350442_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5043350442_)))
             (_g5043150487_
              (lambda (_g5043350450_)
                (if (gx#stx-pair? _g5043350450_)
                    (let ((_e5043550453_ (gx#syntax-e _g5043350450_)))
                      (let ((_hd5043650457_ (##car _e5043550453_))
                            (_tl5043750460_ (##cdr _e5043550453_)))
                        (if (gx#stx-pair? _tl5043750460_)
                            (let ((_e5043850463_ (gx#syntax-e _tl5043750460_)))
                              (let ((_hd5043950467_ (##car _e5043850463_))
                                    (_tl5044050470_ (##cdr _e5043850463_)))
                                (if (gx#stx-null? _tl5044050470_)
                                    ((lambda (_L50473_)
                                       (cons (gx#datum->syntax__0
                                              '#f
                                              'make-!struct-cons)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'quote)
                                                         (cons _L50473_ '()))
                                                   '())))
                                     _hd5043950467_)
                                    (_g5043250446_ _g5043350450_))))
                            (_g5043250446_ _g5043350450_))))
                    (_g5043250446_ _g5043350450_)))))
        (_g5043150487_ _$stx50428_))))
  (define |gxc[:0:]#@struct-getf|
    (lambda (_$stx50491_)
      (let* ((___stx5160851609_ _$stx50491_)
             (_g5049650529_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5160851609_))))
        (let ((___kont5161151612_
               (lambda (_L50631_ _L50633_ _L50634_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-getf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L50634_ '()))
                             (cons _L50633_ (cons _L50631_ '()))))))
              (___kont5161351614_
               (lambda (_L50566_ _L50568_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-getf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L50568_ '()))
                             (cons _L50566_ (cons '#f '())))))))
          (if (gx#stx-pair? ___stx5160851609_)
              (let ((_e5050150591_ (gx#syntax-e ___stx5160851609_)))
                (let ((_tl5050350598_ (##cdr _e5050150591_))
                      (_hd5050250595_ (##car _e5050150591_)))
                  (if (gx#stx-pair? _tl5050350598_)
                      (let ((_e5050450601_ (gx#syntax-e _tl5050350598_)))
                        (let ((_tl5050650608_ (##cdr _e5050450601_))
                              (_hd5050550605_ (##car _e5050450601_)))
                          (if (gx#stx-pair? _tl5050650608_)
                              (let ((_e5050750611_
                                     (gx#syntax-e _tl5050650608_)))
                                (let ((_tl5050950618_ (##cdr _e5050750611_))
                                      (_hd5050850615_ (##car _e5050750611_)))
                                  (if (gx#stx-pair? _tl5050950618_)
                                      (let ((_e5051050621_
                                             (gx#syntax-e _tl5050950618_)))
                                        (let ((_tl5051250628_
                                               (##cdr _e5051050621_))
                                              (_hd5051150625_
                                               (##car _e5051050621_)))
                                          (if (gx#stx-null? _tl5051250628_)
                                              (___kont5161151612_
                                               _hd5051150625_
                                               _hd5050850615_
                                               _hd5050550605_)
                                              (_g5049650529_))))
                                      (if (gx#stx-null? _tl5050950618_)
                                          (___kont5161351614_
                                           _hd5050850615_
                                           _hd5050550605_)
                                          (_g5049650529_)))))
                              (_g5049650529_))))
                      (_g5049650529_))))
              (_g5049650529_))))))
  (define |gxc[:0:]#@struct-setf|
    (lambda (_$stx50656_)
      (let* ((___stx5166451665_ _$stx50656_)
             (_g5066150694_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5166451665_))))
        (let ((___kont5166751668_
               (lambda (_L50796_ _L50798_ _L50799_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-setf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L50799_ '()))
                             (cons _L50798_ (cons _L50796_ '()))))))
              (___kont5166951670_
               (lambda (_L50731_ _L50733_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-setf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L50733_ '()))
                             (cons _L50731_ (cons '#f '())))))))
          (if (gx#stx-pair? ___stx5166451665_)
              (let ((_e5066650756_ (gx#syntax-e ___stx5166451665_)))
                (let ((_tl5066850763_ (##cdr _e5066650756_))
                      (_hd5066750760_ (##car _e5066650756_)))
                  (if (gx#stx-pair? _tl5066850763_)
                      (let ((_e5066950766_ (gx#syntax-e _tl5066850763_)))
                        (let ((_tl5067150773_ (##cdr _e5066950766_))
                              (_hd5067050770_ (##car _e5066950766_)))
                          (if (gx#stx-pair? _tl5067150773_)
                              (let ((_e5067250776_
                                     (gx#syntax-e _tl5067150773_)))
                                (let ((_tl5067450783_ (##cdr _e5067250776_))
                                      (_hd5067350780_ (##car _e5067250776_)))
                                  (if (gx#stx-pair? _tl5067450783_)
                                      (let ((_e5067550786_
                                             (gx#syntax-e _tl5067450783_)))
                                        (let ((_tl5067750793_
                                               (##cdr _e5067550786_))
                                              (_hd5067650790_
                                               (##car _e5067550786_)))
                                          (if (gx#stx-null? _tl5067750793_)
                                              (___kont5166751668_
                                               _hd5067650790_
                                               _hd5067350780_
                                               _hd5067050770_)
                                              (_g5066150694_))))
                                      (if (gx#stx-null? _tl5067450783_)
                                          (___kont5166951670_
                                           _hd5067350780_
                                           _hd5067050770_)
                                          (_g5066150694_)))))
                              (_g5066150694_))))
                      (_g5066150694_))))
              (_g5066150694_))))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx50821_)
      (let* ((___stx5172051721_ _$stx50821_)
             (_g5082750868_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5172051721_))))
        (let ((___kont5172351724_
               (lambda (_L51016_ _L51018_)
                 (cons (gx#datum->syntax__0 '#f 'make-!lambda)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons (gx#datum->syntax__0 '#f 'lambda)
                                         '()))
                             (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                         (cons _L51018_ '()))
                                   (cons '#f
                                         (cons _L51016_
                                               (cons (cons (gx#datum->syntax__0
                                                            '#f
                                                            'quote)
                                                           (cons _L51016_ '()))
                                                     '()))))))))
              (___kont5172551726_
               (lambda (_L50948_ _L50950_)
                 (cons (gx#datum->syntax__0 '#f 'make-!lambda)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons (gx#datum->syntax__0 '#f 'lambda)
                                         '()))
                             (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                         (cons _L50950_ '()))
                                   (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                               (cons _L50948_ '()))
                                         '()))))))
              (___kont5172751728_
               (lambda (_L50895_ _L50897_)
                 (cons _L50897_ (cons _L50895_ (cons '#f '()))))))
          (if (gx#stx-pair? ___stx5172051721_)
              (let ((_e5083150972_ (gx#syntax-e ___stx5172051721_)))
                (let ((_tl5083350979_ (##cdr _e5083150972_))
                      (_hd5083250976_ (##car _e5083150972_)))
                  (if (gx#stx-pair? _tl5083350979_)
                      (let ((_e5083450982_ (gx#syntax-e _tl5083350979_)))
                        (let ((_tl5083650989_ (##cdr _e5083450982_))
                              (_hd5083550986_ (##car _e5083450982_)))
                          (if (gx#stx-pair? _tl5083650989_)
                              (let ((_e5083750992_
                                     (gx#syntax-e _tl5083650989_)))
                                (let ((_tl5083950999_ (##cdr _e5083750992_))
                                      (_hd5083850996_ (##car _e5083750992_)))
                                  (if (gx#stx-datum? _hd5083850996_)
                                      (let ((_e5084051002_
                                             (gx#stx-e _hd5083850996_)))
                                        (if (equal? _e5084051002_ 'inline:)
                                            (if (gx#stx-pair? _tl5083950999_)
                                                (let ((_e5084151006_
                                                       (gx#syntax-e
                                                        _tl5083950999_)))
                                                  (let ((_tl5084351013_
                                                         (##cdr _e5084151006_))
                                                        (_hd5084251010_
                                                         (##car _e5084151006_)))
                                                    (if (gx#stx-null?
                                                         _tl5084351013_)
                                                        (___kont5172351724_
                                                         _hd5084251010_
                                                         _hd5083550986_)
                                                        (_g5082750868_))))
                                                (if (gx#stx-null?
                                                     _tl5083950999_)
                                                    (___kont5172551726_
                                                     _hd5083850996_
                                                     _hd5083550986_)
                                                    (_g5082750868_)))
                                            (if (gx#stx-null? _tl5083950999_)
                                                (___kont5172551726_
                                                 _hd5083850996_
                                                 _hd5083550986_)
                                                (_g5082750868_))))
                                      (if (gx#stx-null? _tl5083950999_)
                                          (___kont5172551726_
                                           _hd5083850996_
                                           _hd5083550986_)
                                          (_g5082750868_)))))
                              (if (gx#stx-null? _tl5083650989_)
                                  (___kont5172751728_
                                   _hd5083550986_
                                   _hd5083250976_)
                                  (_g5082750868_)))))
                      (_g5082750868_))))
              (_g5082750868_))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx51040_)
      (let* ((_g5104451073_
              (lambda (_g5104551069_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5104551069_)))
             (_g5104351173_
              (lambda (_g5104551077_)
                (if (gx#stx-pair? _g5104551077_)
                    (let ((_e5104851080_ (gx#syntax-e _g5104551077_)))
                      (let ((_hd5104951084_ (##car _e5104851080_))
                            (_tl5105051087_ (##cdr _e5104851080_)))
                        (if (gx#stx-pair/null? _tl5105051087_)
                            (let ((_g51803_
                                   (gx#syntax-split-splice _tl5105051087_ '0)))
                              (begin
                                (let ((_g51804_
                                       (if (##values? _g51803_)
                                           (##vector-length _g51803_)
                                           1)))
                                  (if (not (##fx= _g51804_ 2))
                                      (error "Context expects 2 values"
                                             _g51804_)))
                                (let ((_target5105151090_
                                       (##vector-ref _g51803_ 0))
                                      (_tl5105351093_
                                       (##vector-ref _g51803_ 1)))
                                  (if (gx#stx-null? _tl5105351093_)
                                      (letrec ((_loop5105451096_
                                                (lambda (_hd5105251100_
                                                         _dispatch5105851103_
                                                         _arity5105951105_)
                                                  (if (gx#stx-pair?
                                                       _hd5105251100_)
                                                      (let ((_e5105551108_
                                                             (gx#syntax-e
                                                              _hd5105251100_)))
                                                        (let ((_lp-hd5105651112_
                                                               (##car _e5105551108_))
                                                              (_lp-tl5105751115_
                                                               (##cdr _e5105551108_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd5105651112_)
                                                              (let ((_e5106251118_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _lp-hd5105651112_)))
                        (let ((_hd5106351122_ (##car _e5106251118_))
                              (_tl5106451125_ (##cdr _e5106251118_)))
                          (if (gx#stx-pair? _tl5106451125_)
                              (let ((_e5106551128_
                                     (gx#syntax-e _tl5106451125_)))
                                (let ((_hd5106651132_ (##car _e5106551128_))
                                      (_tl5106751135_ (##cdr _e5106551128_)))
                                  (if (gx#stx-null? _tl5106751135_)
                                      (_loop5105451096_
                                       _lp-tl5105751115_
                                       (cons _hd5106651132_
                                             _dispatch5105851103_)
                                       (cons _hd5106351122_ _arity5105951105_))
                                      (_g5104451073_ _g5104551077_))))
                              (_g5104451073_ _g5104551077_))))
                      (_g5104451073_ _g5104551077_))))
              (let ((_dispatch5106051138_ (reverse _dispatch5105851103_))
                    (_arity5106151141_ (reverse _arity5105951105_)))
                ((lambda (_L51144_ _L51146_)
                   (cons (gx#datum->syntax__0 '#f 'make-!case-lambda)
                         (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                     (cons (gx#datum->syntax__0
                                            '#f
                                            'case-lambda)
                                           '()))
                               (cons (cons (gx#datum->syntax__0 '#f '@list)
                                           (begin
                                             (gx#syntax-check-splice-targets
                                              _L51144_
                                              _L51146_)
                                             (foldr2 (lambda (_g5116151165_
                                                              _g5116251168_
                                                              _g5116351170_)
                                                       (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@lambda)
                           (cons _g5116251168_ (cons _g5116151165_ '())))
                     _g5116351170_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()
                                                     _L51144_
                                                     _L51146_)))
                                     '()))))
                 _dispatch5106051138_
                 _arity5106151141_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop5105451096_
                                         _target5105151090_
                                         '()
                                         '()))
                                      (_g5104451073_ _g5104551077_)))))
                            (_g5104451073_ _g5104551077_))))
                    (_g5104451073_ _g5104551077_)))))
        (_g5104351173_ _$stx51040_))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx51178_)
      (let* ((_g5118251200_
              (lambda (_g5118351196_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5118351196_)))
             (_g5118151255_
              (lambda (_g5118351204_)
                (if (gx#stx-pair? _g5118351204_)
                    (let ((_e5118651207_ (gx#syntax-e _g5118351204_)))
                      (let ((_hd5118751211_ (##car _e5118651207_))
                            (_tl5118851214_ (##cdr _e5118651207_)))
                        (if (gx#stx-pair? _tl5118851214_)
                            (let ((_e5118951217_ (gx#syntax-e _tl5118851214_)))
                              (let ((_hd5119051221_ (##car _e5118951217_))
                                    (_tl5119151224_ (##cdr _e5118951217_)))
                                (if (gx#stx-pair? _tl5119151224_)
                                    (let ((_e5119251227_
                                           (gx#syntax-e _tl5119151224_)))
                                      (let ((_hd5119351231_
                                             (##car _e5119251227_))
                                            (_tl5119451234_
                                             (##cdr _e5119251227_)))
                                        (if (gx#stx-null? _tl5119451234_)
                                            ((lambda (_L51237_ _L51239_)
                                               (cons (gx#datum->syntax__0
                                                      '#f
                                                      'make-!kw-lambda)
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons (gx#datum->syntax__0 '#f 'kw-lambda) '()))
                   (cons (cons (gx#datum->syntax__0 '#f 'quote)
                               (cons _L51239_ '()))
                         (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                     (cons _L51237_ '()))
                               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd5119351231_
                                             _hd5119051221_)
                                            (_g5118251200_ _g5118351204_))))
                                    (_g5118251200_ _g5118351204_))))
                            (_g5118251200_ _g5118351204_))))
                    (_g5118251200_ _g5118351204_)))))
        (_g5118151255_ _$stx51178_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx51259_)
      (let* ((_g5126351281_
              (lambda (_g5126451277_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5126451277_)))
             (_g5126251336_
              (lambda (_g5126451285_)
                (if (gx#stx-pair? _g5126451285_)
                    (let ((_e5126751288_ (gx#syntax-e _g5126451285_)))
                      (let ((_hd5126851292_ (##car _e5126751288_))
                            (_tl5126951295_ (##cdr _e5126751288_)))
                        (if (gx#stx-pair? _tl5126951295_)
                            (let ((_e5127051298_ (gx#syntax-e _tl5126951295_)))
                              (let ((_hd5127151302_ (##car _e5127051298_))
                                    (_tl5127251305_ (##cdr _e5127051298_)))
                                (if (gx#stx-pair? _tl5127251305_)
                                    (let ((_e5127351308_
                                           (gx#syntax-e _tl5127251305_)))
                                      (let ((_hd5127451312_
                                             (##car _e5127351308_))
                                            (_tl5127551315_
                                             (##cdr _e5127351308_)))
                                        (if (gx#stx-null? _tl5127551315_)
                                            ((lambda (_L51318_ _L51320_)
                                               (cons (gx#datum->syntax__0
                                                      '#f
                                                      'make-!kw-lambda-primary)
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons (gx#datum->syntax__0 '#f 'kw-lambda-dispatch)
                               '()))
                   (cons (cons (gx#datum->syntax__0 '#f 'quote)
                               (cons _L51320_ '()))
                         (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                     (cons _L51318_ '()))
                               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd5127451312_
                                             _hd5127151302_)
                                            (_g5126351281_ _g5126451285_))))
                                    (_g5126351281_ _g5126451285_))))
                            (_g5126351281_ _g5126451285_))))
                    (_g5126351281_ _g5126451285_)))))
        (_g5126251336_ _$stx51259_)))))
