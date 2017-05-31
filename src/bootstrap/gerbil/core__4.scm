(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g29363_|
    (gx#core-quote-syntax '=>))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g29364_|
    (gx#core-quote-syntax 'else))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g29365_|
    (gx#core-quote-syntax 'else))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g29382_|
    (gx#core-quote-syntax 'values))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g29391_|
    (gx#core-quote-syntax 'values))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g29392_|
    (gx#core-quote-syntax 'values))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g29399_|
    (gx#core-quote-syntax 'unquote-splicing))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g29400_|
    (gx#core-quote-syntax 'unquote))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g29403_|
    (gx#core-quote-syntax 'unquote-splicing))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g29404_|
    (gx#core-quote-syntax 'unquote-splicing))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g29405_|
    (gx#core-quote-syntax 'unquote))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g29406_|
    (gx#core-quote-syntax 'quasiquote))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g29409_|
    (gx#core-quote-syntax '<...>))
  (define |gerbil/core::<sugar>::<sugar:2>[1]#_g29410_|
    (gx#core-quote-syntax '<>))
  (begin
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#lambda|
      (lambda (_stx4782_)
        (let ((_simple-lambda?4785_
               (lambda (_hd7935_) (gx#stx-andmap gx#identifier? _hd7935_))))
          (let ((_opt-lambda?4787_
                 (lambda (_hd7787_)
                   ((letrec ((_lp7790_
                              (lambda (_rest7793_ _opt?7795_)
                                (let ((_g77987810_
                                       (lambda (_g77997806_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g77997806_))))
                                  (let ((_g77977825_
                                         (lambda (_g77997814_)
                                           ((lambda ()
                                              (if _opt?7795_
                                                  (let ((_$e7821_
                                                         (gx#stx-null?
                                                          _rest7793_)))
                                                    (if _$e7821_
                                                        _$e7821_
                                                        (gx#identifier?
                                                         _rest7793_)))
                                                  '#f))))))
                                    (let ((_g77967931_
                                           (lambda (_g77997829_)
                                             (if (gx#stx-pair? _g77997829_)
                                                 (let ((_e78027832_
                                                        (gx#syntax-e
                                                         _g77997829_)))
                                                   (let ((_hd78037836_
                                                          (##car _e78027832_))
                                                         (_tl78047839_
                                                          (##cdr _e78027832_)))
                                                     ((lambda (_L7842_ _L7844_)
                                                        (let ((_g78607874_
                                                               (lambda (_g78617870_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g78617870_))))
                  (let ((_g78597885_
                         (lambda (_g78617878_)
                           ((lambda ()
                              (if (gx#identifier? _L7844_)
                                  (if (not _opt?7795_)
                                      (_lp7790_ _L7842_ '#f)
                                      '#f)
                                  '#f))))))
                    (let ((_g78587927_
                           (lambda (_g78617889_)
                             (if (gx#stx-pair? _g78617889_)
                                 (let ((_e78637892_ (gx#syntax-e _g78617889_)))
                                   (let ((_hd78647896_ (##car _e78637892_))
                                         (_tl78657899_ (##cdr _e78637892_)))
                                     (if (gx#stx-pair? _tl78657899_)
                                         (let ((_e78667902_
                                                (gx#syntax-e _tl78657899_)))
                                           (let ((_hd78677906_
                                                  (##car _e78667902_))
                                                 (_tl78687909_
                                                  (##cdr _e78667902_)))
                                             (if (gx#stx-null? _tl78687909_)
                                                 ((lambda (_L7912_)
                                                    (if (gx#identifier?
                                                         _L7912_)
                                                        (_lp7790_ _L7842_ '#t)
                                                        (_g78597885_
                                                         _g78617889_)))
                                                  _hd78647896_)
                                                 (_g78597885_ _g78617889_))))
                                         (_g78597885_ _g78617889_))))
                                 (_g78597885_ _g78617889_)))))
                      (_g78587927_ _L7844_)))))
              _tl78047839_
              _hd78037836_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g77977825_ _g77997829_)))))
                                      (_g77967931_ _rest7793_)))))))
                      _lp7790_)
                    _hd7787_
                    '#f))))
            (let ((_kw-lambda?4789_
                   (lambda (_hd7313_)
                     ((letrec ((_lp7316_
                                (lambda (_rest7319_ _opt?7321_ _key?7322_)
                                  (let ((_g73277356_
                                         (lambda (_g73287352_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g73287352_))))
                                    (let ((_g73267371_
                                           (lambda (_g73287360_)
                                             ((lambda ()
                                                (if _key?7322_
                                                    (let ((_$e7367_
                                                           (gx#stx-null?
                                                            _rest7319_)))
                                                      (if _$e7367_
                                                          _$e7367_
                                                          (gx#identifier?
                                                           _rest7319_)))
                                                    '#f))))))
                                      (let ((_g73257477_
                                             (lambda (_g73287375_)
                                               (if (gx#stx-pair? _g73287375_)
                                                   (let ((_e73487378_
                                                          (gx#syntax-e
                                                           _g73287375_)))
                                                     (let ((_hd73497382_
                                                            (##car _e73487378_))
                                                           (_tl73507385_
                                                            (##cdr _e73487378_)))
                                                       ((lambda (_L7388_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L7390_)
                  (let ((_g74067420_
                         (lambda (_g74077416_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g74077416_))))
                    (let ((_g74057431_
                           (lambda (_g74077424_)
                             ((lambda ()
                                (if (gx#identifier? _L7390_)
                                    (if (not _opt?7321_)
                                        (_lp7316_ _L7388_ '#f _key?7322_)
                                        '#f)
                                    '#f))))))
                      (let ((_g74047473_
                             (lambda (_g74077435_)
                               (if (gx#stx-pair? _g74077435_)
                                   (let ((_e74097438_
                                          (gx#syntax-e _g74077435_)))
                                     (let ((_hd74107442_ (##car _e74097438_))
                                           (_tl74117445_ (##cdr _e74097438_)))
                                       (if (gx#stx-pair? _tl74117445_)
                                           (let ((_e74127448_
                                                  (gx#syntax-e _tl74117445_)))
                                             (let ((_hd74137452_
                                                    (##car _e74127448_))
                                                   (_tl74147455_
                                                    (##cdr _e74127448_)))
                                               (if (gx#stx-null? _tl74147455_)
                                                   ((lambda (_L7458_)
                                                      (if (gx#identifier?
                                                           _L7458_)
                                                          (_lp7316_
                                                           _L7388_
                                                           '#t
                                                           _key?7322_)
                                                          '#f))
                                                    _hd74107442_)
                                                   (_g74057431_ _g74077435_))))
                                           (_g74057431_ _g74077435_))))
                                   (_g74057431_ _g74077435_)))))
                        (_g74047473_ _L7390_)))))
                _tl73507385_
                _hd73497382_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g73267371_
                                                    _g73287375_)))))
                                        (let ((_g73247519_
                                               (lambda (_g73287481_)
                                                 (if (gx#stx-pair? _g73287481_)
                                                     (let ((_e73407484_
                                                            (gx#syntax-e
                                                             _g73287481_)))
                                                       (let ((_hd73417488_
                                                              (##car _e73407484_))
                                                             (_tl73427491_
                                                              (##cdr _e73407484_)))
                                                         (if (gx#stx-datum?
                                                              _hd73417488_)
                                                             (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _hd73417488_)
                                 '#!key)
                         (if (gx#stx-pair? _tl73427491_)
                             (let ((_e73437494_ (gx#syntax-e _tl73427491_)))
                               (let ((_hd73447498_ (##car _e73437494_))
                                     (_tl73457501_ (##cdr _e73437494_)))
                                 ((lambda (_L7504_ _L7506_)
                                    (if (gx#identifier? _L7506_)
                                        (_lp7316_ _L7504_ _opt?7321_ '#t)
                                        '#f))
                                  _tl73457501_
                                  _hd73447498_)))
                             (_g73257477_ _g73287481_))
                         (_g73257477_ _g73287481_))
                     (_g73257477_ _g73287481_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g73257477_
                                                      _g73287481_)))))
                                          (let ((_g73237635_
                                                 (lambda (_g73287523_)
                                                   (if (gx#stx-pair?
                                                        _g73287523_)
                                                       (let ((_e73327526_
                                                              (gx#syntax-e
                                                               _g73287523_)))
                                                         (let ((_hd73337530_
                                                                (##car _e73327526_))
                                                               (_tl73347533_
                                                                (##cdr _e73327526_)))
                                                           (if (gx#stx-pair?
                                                                _tl73347533_)
                                                               (let ((_e73357536_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl73347533_)))
                         (let ((_hd73367540_ (##car _e73357536_))
                               (_tl73377543_ (##cdr _e73357536_)))
                           ((lambda (_L7546_ _L7548_ _L7549_)
                              (if (gx#stx-keyword? _L7549_)
                                  (let ((_g75647578_
                                         (lambda (_g75657574_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g75657574_))))
                                    (let ((_g75637589_
                                           (lambda (_g75657582_)
                                             ((lambda ()
                                                (if (gx#identifier? _L7548_)
                                                    (_lp7316_
                                                     _L7546_
                                                     _opt?7321_
                                                     '#t)
                                                    '#f))))))
                                      (let ((_g75627631_
                                             (lambda (_g75657593_)
                                               (if (gx#stx-pair? _g75657593_)
                                                   (let ((_e75677596_
                                                          (gx#syntax-e
                                                           _g75657593_)))
                                                     (let ((_hd75687600_
                                                            (##car _e75677596_))
                                                           (_tl75697603_
                                                            (##cdr _e75677596_)))
                                                       (if (gx#stx-pair?
                                                            _tl75697603_)
                                                           (let ((_e75707606_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl75697603_)))
                     (let ((_hd75717610_ (##car _e75707606_))
                           (_tl75727613_ (##cdr _e75707606_)))
                       (if (gx#stx-null? _tl75727613_)
                           ((lambda (_L7616_)
                              (if (gx#identifier? _L7616_)
                                  (_lp7316_ _L7546_ _opt?7321_ '#t)
                                  '#f))
                            _hd75687600_)
                           (_g75637589_ _g75657593_))))
                   (_g75637589_ _g75657593_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g75637589_
                                                    _g75657593_)))))
                                        (_g75627631_ _L7548_))))
                                  (_g73247519_ _g73287523_)))
                            _tl73377543_
                            _hd73367540_
                            _hd73337530_)))
                       (_g73247519_ _g73287523_))))
               (_g73247519_ _g73287523_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g73237635_ _rest7319_)))))))))
                        _lp7316_)
                      _hd7313_
                      '#f
                      '#f))))
              (let ((_generate-bind4791_
                     (lambda (_e7049_)
                       (if (gx#underscore? _e7049_)
                           (gx#genident _e7049_)
                           _e7049_))))
                (let ((_check-duplicate-bindings4792_
                       (lambda (_hd6746_)
                         (let ((_cons-id6749_
                                (lambda (_id7045_ _ids7047_)
                                  (if (gx#underscore? _id7045_)
                                      _ids7047_
                                      (cons _id7045_ _ids7047_)))))
                           ((letrec ((_lp6752_
                                      (lambda (_rest6755_ _ids6757_)
                                        (let ((_g67606772_
                                               (lambda (_g67616768_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g67616768_))))
                                          (let ((_g67596783_
                                                 (lambda (_g67616776_)
                                                   ((lambda ()
                                                      (gx#check-duplicate-identifiers
                                                       (if (gx#stx-null?
                                                            _rest6755_)
                                                           _ids6757_
                                                           (_cons-id6749_
                                                            _rest6755_
                                                            _ids6757_))
                                                       _stx4782_))))))
                                            (let ((_g67587041_
                                                   (lambda (_g67616787_)
                                                     (if (gx#stx-pair?
                                                          _g67616787_)
                                                         (let ((_e67646790_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g67616787_)))
                   (let ((_hd67656794_ (##car _e67646790_))
                         (_tl67666797_ (##cdr _e67646790_)))
                     ((lambda (_L6800_ _L6802_)
                        (if (gx#identifier? _L6802_)
                            (_lp6752_
                             _L6800_
                             (_cons-id6749_ _L6802_ _ids6757_))
                            (if (gx#stx-pair? _L6802_)
                                (let ((_g68186832_
                                       (lambda (_g68196828_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g68196828_))))
                                  (let ((_g68176873_
                                         (lambda (_g68196836_)
                                           (if (gx#stx-pair? _g68196836_)
                                               (let ((_e68216839_
                                                      (gx#syntax-e
                                                       _g68196836_)))
                                                 (let ((_hd68226843_
                                                        (##car _e68216839_))
                                                       (_tl68236846_
                                                        (##cdr _e68216839_)))
                                                   (if (gx#stx-pair?
                                                        _tl68236846_)
                                                       (let ((_e68246849_
                                                              (gx#syntax-e
                                                               _tl68236846_)))
                                                         (let ((_hd68256853_
                                                                (##car _e68246849_))
                                                               (_tl68266856_
                                                                (##cdr _e68246849_)))
                                                           (if (gx#stx-null?
                                                                _tl68266856_)
                                                               ((lambda (_L6859_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_lp6752_ _L6800_ (_cons-id6749_ _L6859_ _ids6757_)))
                        _hd68226843_)
                       (_g68186832_ _g68196836_))))
               (_g68186832_ _g68196836_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g68186832_ _g68196836_)))))
                                    (_g68176873_ _L6802_)))
                                (if (gx#stx-keyword? _L6802_)
                                    (let ((_g68776889_
                                           (lambda (_g68786885_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g68786885_))))
                                      (let ((_g68766991_
                                             (lambda (_g68786893_)
                                               (if (gx#stx-pair? _g68786893_)
                                                   (let ((_e68816896_
                                                          (gx#syntax-e
                                                           _g68786893_)))
                                                     (let ((_hd68826900_
                                                            (##car _e68816896_))
                                                           (_tl68836903_
                                                            (##cdr _e68816896_)))
                                                       ((lambda (_L6906_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L6908_)
                  (let ((_g69206934_
                         (lambda (_g69216930_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g69216930_))))
                    (let ((_g69196945_
                           (lambda (_g69216938_)
                             ((lambda ()
                                (_lp6752_
                                 _L6906_
                                 (_cons-id6749_ _L6908_ _ids6757_)))))))
                      (let ((_g69186987_
                             (lambda (_g69216949_)
                               (if (gx#stx-pair? _g69216949_)
                                   (let ((_e69236952_
                                          (gx#syntax-e _g69216949_)))
                                     (let ((_hd69246956_ (##car _e69236952_))
                                           (_tl69256959_ (##cdr _e69236952_)))
                                       (if (gx#stx-pair? _tl69256959_)
                                           (let ((_e69266962_
                                                  (gx#syntax-e _tl69256959_)))
                                             (let ((_hd69276966_
                                                    (##car _e69266962_))
                                                   (_tl69286969_
                                                    (##cdr _e69266962_)))
                                               (if (gx#stx-null? _tl69286969_)
                                                   ((lambda (_L6972_)
                                                      (_lp6752_
                                                       _L6906_
                                                       (_cons-id6749_
                                                        _L6972_
                                                        _ids6757_)))
                                                    _hd69246956_)
                                                   (_g69196945_ _g69216949_))))
                                           (_g69196945_ _g69216949_))))
                                   (_g69196945_ _g69216949_)))))
                        (_g69186987_ _L6908_)))))
                _tl68836903_
                _hd68826900_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g68776889_
                                                    _g68786893_)))))
                                        (_g68766991_ _L6800_)))
                                    (if (eq? (gx#stx-e _L6802_) '#!key)
                                        (let ((_g69957007_
                                               (lambda (_g69967003_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g69967003_))))
                                          (let ((_g69947037_
                                                 (lambda (_g69967011_)
                                                   (if (gx#stx-pair?
                                                        _g69967011_)
                                                       (let ((_e69997014_
                                                              (gx#syntax-e
                                                               _g69967011_)))
                                                         (let ((_hd70007018_
                                                                (##car _e69997014_))
                                                               (_tl70017021_
                                                                (##cdr _e69997014_)))
                                                           ((lambda (_L7024_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L7026_)
                      (_lp6752_ _L7024_ (_cons-id6749_ _L7026_ _ids6757_)))
                    _tl70017021_
                    _hd70007018_)))
               (_g69957007_ _g69967011_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g69947037_ _L6800_)))
                                        (error '"BUG: check-duplicate-bindings"
                                               _stx4782_
                                               _rest6755_))))))
                      _tl67666797_
                      _hd67656794_)))
                 (_g67596783_ _g67616787_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g67587041_ _rest6755_)))))))
                              _lp6752_)
                            _hd6746_
                            '())))))
                  (let ((_generate-opt-primary4793_
                         (lambda (_pre6538_ _opt6540_ _tail6541_ _body6542_)
                           (let ((_g65446585_
                                  (lambda (_g65456581_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g65456581_))))
                             (let ((_g65436742_
                                    (lambda (_g65456589_)
                                      (if (gx#stx-pair? _g65456589_)
                                          (let ((_e65506592_
                                                 (gx#syntax-e _g65456589_)))
                                            (let ((_hd65516596_
                                                   (##car _e65506592_))
                                                  (_tl65526599_
                                                   (##cdr _e65506592_)))
                                              (if (gx#stx-pair/null?
                                                   _hd65516596_)
                                                  (if (fx>= (gx#stx-length
                                                             _hd65516596_)
                                                            '0)
                                                      (let ((_g29351_
                                                             (gx#syntax-split-splice
                                                              _hd65516596_
                                                              '0)))
                                                        (begin
                                                          (let ((_g29352_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (values-count _g29351_)))
                    (if (not (fx= _g29352_ 2))
                        (error "Context expects 2 values" _g29352_)))
                  (let ((_target65536602_ (values-ref _g29351_ 0))
                        (_tl65556605_ (values-ref _g29351_ 1)))
                    (if (gx#stx-null? _tl65556605_)
                        (letrec ((_loop65566608_
                                  (lambda (_hd65546612_ _pre65606615_)
                                    (if (gx#stx-pair? _hd65546612_)
                                        (let ((_e65576618_
                                               (gx#syntax-e _hd65546612_)))
                                          (let ((_lp-hd65586622_
                                                 (##car _e65576618_))
                                                (_lp-tl65596625_
                                                 (##cdr _e65576618_)))
                                            (_loop65566608_
                                             _lp-tl65596625_
                                             (cons _lp-hd65586622_
                                                   _pre65606615_))))
                                        (let ((_pre65616628_
                                               (reverse _pre65606615_)))
                                          (if (gx#stx-pair? _tl65526599_)
                                              (let ((_e65626632_
                                                     (gx#syntax-e
                                                      _tl65526599_)))
                                                (let ((_hd65636636_
                                                       (##car _e65626632_))
                                                      (_tl65646639_
                                                       (##cdr _e65626632_)))
                                                  (if (gx#stx-pair/null?
                                                       _hd65636636_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd65636636_)
                        '0)
                  (let ((_g29353_ (gx#syntax-split-splice _hd65636636_ '0)))
                    (begin
                      (let ((_g29354_ (values-count _g29353_)))
                        (if (not (fx= _g29354_ 2))
                            (error "Context expects 2 values" _g29354_)))
                      (let ((_target65656642_ (values-ref _g29353_ 0))
                            (_tl65676645_ (values-ref _g29353_ 1)))
                        (if (gx#stx-null? _tl65676645_)
                            (letrec ((_loop65686648_
                                      (lambda (_hd65666652_ _opt65726655_)
                                        (if (gx#stx-pair? _hd65666652_)
                                            (let ((_e65696658_
                                                   (gx#syntax-e _hd65666652_)))
                                              (let ((_lp-hd65706662_
                                                     (##car _e65696658_))
                                                    (_lp-tl65716665_
                                                     (##cdr _e65696658_)))
                                                (_loop65686648_
                                                 _lp-tl65716665_
                                                 (cons _lp-hd65706662_
                                                       _opt65726655_))))
                                            (let ((_opt65736668_
                                                   (reverse _opt65726655_)))
                                              (if (gx#stx-pair? _tl65646639_)
                                                  (let ((_e65746672_
                                                         (gx#syntax-e
                                                          _tl65646639_)))
                                                    (let ((_hd65756676_
                                                           (##car _e65746672_))
                                                          (_tl65766679_
                                                           (##cdr _e65746672_)))
                                                      (if (gx#stx-pair?
                                                           _tl65766679_)
                                                          (let ((_e65776682_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl65766679_)))
                    (let ((_hd65786686_ (##car _e65776682_))
                          (_tl65796689_ (##cdr _e65776682_)))
                      (if (gx#stx-null? _tl65796689_)
                          ((lambda (_L6692_ _L6694_ _L6695_ _L6696_)
                             (let ()
                               (cons (gx#datum->syntax '#f 'lambda%)
                                     (cons (begin
                                             '#!void
                                             (foldr (lambda (_g67256730_
                                                             _g67266733_)
                                                      (cons _g67256730_
                                                            _g67266733_))
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g67276736_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g67286739_)
                       (cons _g67276736_ _g67286739_))
                     _L6694_
                     _L6695_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _L6696_))
                                           _L6692_))))
                           _hd65786686_
                           _hd65756676_
                           _opt65736668_
                           _pre65616628_)
                          (_g65446585_ _g65456589_))))
                  (_g65446585_ _g65456589_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g65446585_
                                                   _g65456589_)))))))
                              (_loop65686648_ _target65656642_ '()))
                            (_g65446585_ _g65456589_)))))
                  (_g65446585_ _g65456589_))
              (_g65446585_ _g65456589_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g65446585_ _g65456589_)))))))
                          (_loop65566608_ _target65536602_ '()))
                        (_g65446585_ _g65456589_)))))
              (_g65446585_ _g65456589_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g65446585_ _g65456589_))))
                                          (_g65446585_ _g65456589_)))))
                               (_g65436742_
                                (list _pre6538_
                                      (map car _opt6540_)
                                      _tail6541_
                                      _body6542_)))))))
                    (let ((_generate-opt-clause4796_
                           (lambda (_primary5787_ _pre5789_ _opt5790_)
                             ((letrec ((_recur5792_
                                        (lambda (_opt-rest5795_ _right5797_)
                                          (if (pair? _opt-rest5795_)
                                              (let ((_hd5799_
                                                     (car _opt-rest5795_)))
                                                (let ((_rest5802_
                                                       (cdr _opt-rest5795_)))
                                                  (let ((_g58055813_
                                                         (lambda (_g58065809_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g58065809_))))
                                                    (let ((_g58045902_
                                                           (lambda (_g58065817_)
                                                             ((lambda (_L5820_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_g58365844_
                                 (lambda (_g58375840_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g58375840_))))
                            (let ((_g58355898_
                                   (lambda (_g58375848_)
                                     ((lambda (_L5851_)
                                        (let ()
                                          (let ((_g58645872_
                                                 (lambda (_g58655868_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g58655868_))))
                                            (let ((_g58635894_
                                                   (lambda (_g58655876_)
                                                     ((lambda (_L5879_)
                                                        (let ()
                                                          (let ()
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'let-values)
                          (cons (cons (cons (cons _L5820_ '())
                                            (cons _L5851_ '()))
                                      '())
                                (cons _L5879_ '()))))))
              _g58655876_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g58635894_
                                               (_recur5792_
                                                _rest5802_
                                                (cons _L5820_
                                                      _right5797_)))))))
                                      _g58375848_))))
                              (_g58355898_ (cdr _hd5799_))))))
                      _g58065817_))))
              (_g58045902_ (car _hd5799_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_g59065943_
                                                     (lambda (_g59075939_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g59075939_))))
                                                (let ((_g59056085_
                                                       (lambda (_g59075947_)
                                                         (if (gx#stx-pair?
                                                              _g59075947_)
                                                             (let ((_e59115950_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _g59075947_)))
                       (let ((_hd59125954_ (##car _e59115950_))
                             (_tl59135957_ (##cdr _e59115950_)))
                         (if (gx#stx-pair/null? _hd59125954_)
                             (if (fx>= (gx#stx-length _hd59125954_) '0)
                                 (let ((_g29347_
                                        (gx#syntax-split-splice
                                         _hd59125954_
                                         '0)))
                                   (begin
                                     (let ((_g29348_ (values-count _g29347_)))
                                       (if (not (fx= _g29348_ 2))
                                           (error "Context expects 2 values"
                                                  _g29348_)))
                                     (let ((_target59145960_
                                            (values-ref _g29347_ 0))
                                           (_tl59165963_
                                            (values-ref _g29347_ 1)))
                                       (if (gx#stx-null? _tl59165963_)
                                           (letrec ((_loop59175966_
                                                     (lambda (_hd59155970_
                                                              _pre59215973_)
                                                       (if (gx#stx-pair?
                                                            _hd59155970_)
                                                           (let ((_e59185976_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd59155970_)))
                     (let ((_lp-hd59195980_ (##car _e59185976_))
                           (_lp-tl59205983_ (##cdr _e59185976_)))
                       (_loop59175966_
                        _lp-tl59205983_
                        (cons _lp-hd59195980_ _pre59215973_))))
                   (let ((_pre59225986_ (reverse _pre59215973_)))
                     (if (gx#stx-pair? _tl59135957_)
                         (let ((_e59235990_ (gx#syntax-e _tl59135957_)))
                           (let ((_hd59245994_ (##car _e59235990_))
                                 (_tl59255997_ (##cdr _e59235990_)))
                             (if (gx#stx-pair/null? _hd59245994_)
                                 (if (fx>= (gx#stx-length _hd59245994_) '0)
                                     (let ((_g29349_
                                            (gx#syntax-split-splice
                                             _hd59245994_
                                             '0)))
                                       (begin
                                         (let ((_g29350_
                                                (values-count _g29349_)))
                                           (if (not (fx= _g29350_ 2))
                                               (error "Context expects 2 values"
                                                      _g29350_)))
                                         (let ((_target59266000_
                                                (values-ref _g29349_ 0))
                                               (_tl59286003_
                                                (values-ref _g29349_ 1)))
                                           (if (gx#stx-null? _tl59286003_)
                                               (letrec ((_loop59296006_
                                                         (lambda (_hd59276010_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _opt59336013_)
                   (if (gx#stx-pair? _hd59276010_)
                       (let ((_e59306016_ (gx#syntax-e _hd59276010_)))
                         (let ((_lp-hd59316020_ (##car _e59306016_))
                               (_lp-tl59326023_ (##cdr _e59306016_)))
                           (_loop59296006_
                            _lp-tl59326023_
                            (cons _lp-hd59316020_ _opt59336013_))))
                       (let ((_opt59346026_ (reverse _opt59336013_)))
                         (if (gx#stx-pair? _tl59255997_)
                             (let ((_e59356030_ (gx#syntax-e _tl59255997_)))
                               (let ((_hd59366034_ (##car _e59356030_))
                                     (_tl59376037_ (##cdr _e59356030_)))
                                 (if (gx#stx-null? _tl59376037_)
                                     ((lambda (_L6040_ _L6042_ _L6043_)
                                        (let ()
                                          (gx#stx-wrap-source
                                           (cons _L6040_
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g60686073_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g60696076_)
                    (cons _g60686073_ _g60696076_))
                  (begin
                    '#!void
                    (foldr (lambda (_g60706079_ _g60716082_)
                             (cons _g60706079_ _g60716082_))
                           '()
                           _L6042_))
                  _L6043_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _stx4782_))))
                                      _hd59366034_
                                      _opt59346026_
                                      _pre59225986_)
                                     (_g59065943_ _g59075947_))))
                             (_g59065943_ _g59075947_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop59296006_
                                                  _target59266000_
                                                  '()))
                                               (_g59065943_ _g59075947_)))))
                                     (_g59065943_ _g59075947_))
                                 (_g59065943_ _g59075947_))))
                         (_g59065943_ _g59075947_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop59175966_
                                              _target59145960_
                                              '()))
                                           (_g59065943_ _g59075947_)))))
                                 (_g59065943_ _g59075947_))
                             (_g59065943_ _g59075947_))))
                     (_g59065943_ _g59075947_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g59056085_
                                                   (list _pre5789_
                                                         (reverse _right5797_)
                                                         _primary5787_))))))))
                                _recur5792_)
                              _opt5790_
                              '()))))
                      (let ((_generate-kw-primary4797_
                             (lambda (_kwvar5434_
                                      _kwargs5436_
                                      _args5437_
                                      _body5438_)
                               (let ((_absent5440_ (gx#genident 'absent)))
                                 (letrec ((_make-body5442_
                                           (lambda (_kwargs5606_ _body5608_)
                                             (if (pair? _kwargs5606_)
                                                 (let ((_next5610_
                                                        (car _kwargs5606_)))
                                                   (let ((_rest5613_
                                                          (cdr _kwargs5606_)))
                                                     (let ((_key5616_
                                                            (car _next5610_)))
                                                       (let ((_var5619_
                                                              (cadr _next5610_)))
                                                         (let ((_default5622_
                                                                (caddr _next5610_)))
                                                           (let ()
                                                             (let ((_g56275662_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g56285658_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g56285658_))))
                       (let ((_g56265783_
                              (lambda (_g56285666_)
                                (if (gx#stx-pair? _g56285666_)
                                    (let ((_e56365669_
                                           (gx#syntax-e _g56285666_)))
                                      (let ((_hd56375673_ (##car _e56365669_))
                                            (_tl56385676_ (##cdr _e56365669_)))
                                        (if (gx#stx-pair? _tl56385676_)
                                            (let ((_e56395679_
                                                   (gx#syntax-e _tl56385676_)))
                                              (let ((_hd56405683_
                                                     (##car _e56395679_))
                                                    (_tl56415686_
                                                     (##cdr _e56395679_)))
                                                (if (gx#stx-pair? _tl56415686_)
                                                    (let ((_e56425689_
                                                           (gx#syntax-e
                                                            _tl56415686_)))
                                                      (let ((_hd56435693_
                                                             (##car _e56425689_))
                                                            (_tl56445696_
                                                             (##cdr _e56425689_)))
                                                        (if (gx#stx-pair?
                                                             _tl56445696_)
                                                            (let ((_e56455699_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl56445696_)))
                      (let ((_hd56465703_ (##car _e56455699_))
                            (_tl56475706_ (##cdr _e56455699_)))
                        (if (gx#stx-pair? _tl56475706_)
                            (let ((_e56485709_ (gx#syntax-e _tl56475706_)))
                              (let ((_hd56495713_ (##car _e56485709_))
                                    (_tl56505716_ (##cdr _e56485709_)))
                                (if (gx#stx-pair? _tl56505716_)
                                    (let ((_e56515719_
                                           (gx#syntax-e _tl56505716_)))
                                      (let ((_hd56525723_ (##car _e56515719_))
                                            (_tl56535726_ (##cdr _e56515719_)))
                                        (if (gx#stx-pair? _tl56535726_)
                                            (let ((_e56545729_
                                                   (gx#syntax-e _tl56535726_)))
                                              (let ((_hd56555733_
                                                     (##car _e56545729_))
                                                    (_tl56565736_
                                                     (##cdr _e56545729_)))
                                                (if (gx#stx-null? _tl56565736_)
                                                    ((lambda (_L5739_
                                                              _L5741_
                                                              _L5742_
                                                              _L5743_
                                                              _L5744_
                                                              _L5745_
                                                              _L5746_)
                                                       (let ()
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'let-values)
                                                               (cons (cons (cons (cons _L5743_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                               '())
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'hash-ref)
                                                     (cons _L5746_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote)
                               (cons _L5745_ '()))
                         (cons _L5739_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '())
                             (cons (cons (gx#datum->syntax '#f 'let-values)
                                         (cons (cons (cons (cons _L5744_ '())
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'if)
                               (cons (cons (gx#datum->syntax '#f 'eq?)
                                           (cons _L5743_ (cons _L5739_ '())))
                                     (cons _L5742_ (cons _L5743_ '()))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (cons _L5741_ '())))
                                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd56555733_
                                                     _hd56525723_
                                                     _hd56495713_
                                                     _hd56465703_
                                                     _hd56435693_
                                                     _hd56405683_
                                                     _hd56375673_)
                                                    (_g56275662_
                                                     _g56285666_))))
                                            (_g56275662_ _g56285666_))))
                                    (_g56275662_ _g56285666_))))
                            (_g56275662_ _g56285666_))))
                    (_g56275662_ _g56285666_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g56275662_
                                                     _g56285666_))))
                                            (_g56275662_ _g56285666_))))
                                    (_g56275662_ _g56285666_)))))
                         (_g56265783_
                          (list _kwvar5434_
                                _key5616_
                                _var5619_
                                (gx#genident _var5619_)
                                _default5622_
                                (_make-body5442_ _rest5613_ _body5608_)
                                _absent5440_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons 'begin _body5608_)))))
                                   (let ((_g54445452_
                                          (lambda (_g54455448_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g54455448_))))
                                     (let ((_g54435602_
                                            (lambda (_g54455456_)
                                              ((lambda (_L5459_)
                                                 (let ()
                                                   (let ((_g54725480_
                                                          (lambda (_g54735476_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g54735476_))))
                                                     (let ((_g54715598_
                                                            (lambda (_g54735484_)
                                                              ((lambda (_L5487_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((_g55005508_
                                  (lambda (_g55015504_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g55015504_))))
                             (let ((_g54995594_
                                    (lambda (_g55015512_)
                                      ((lambda (_L5515_)
                                         (let ()
                                           (let ((_g55285536_
                                                  (lambda (_g55295532_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g55295532_))))
                                             (let ((_g55275590_
                                                    (lambda (_g55295540_)
                                                      ((lambda (_L5543_)
                                                         (let ()
                                                           (let ((_g55565564_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g55575560_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g55575560_))))
                     (let ((_g55555586_
                            (lambda (_g55575568_)
                              ((lambda (_L5571_)
                                 (let ()
                                   (let ()
                                     (cons (gx#datum->syntax '#f 'let-values)
                                           (cons (cons (cons (cons _L5571_ '())
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'make-vector)
                                 (cons '0 '()))
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _L5543_ '()))))))
                               _g55575568_))))
                       (_g55555586_ _absent5440_)))))
               _g55295540_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g55275590_
                                                (gx#stx-wrap-source
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'lambda)
                                                       (cons (cons _L5459_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L5487_)
                     (cons _L5515_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (gx#stx-source
                                                  _stx4782_)))))))
                                       _g55015512_))))
                               (_g54995594_
                                (_make-body5442_ _kwargs5436_ _body5438_))))))
                       _g54735484_))))
               (_g54715598_ _args5437_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _g54455456_))))
                                       (_g54435602_ _kwvar5434_))))))))
                        (let ((_generate-kw-table4799_
                               (lambda (_kws5321_)
                                 ((letrec ((_rehash5324_
                                            (lambda (_pht5327_)
                                              ((letrec ((_lp5330_
                                                         (lambda (_rest5333_)
                                                           (if (pair? _rest5333_)
                                                               (let ((_key5336_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _rest5333_)))
                         (let ((_rest5339_ (cdr _rest5333_)))
                           (let ((_pos5342_
                                  (fxmodulo
                                   (keyword-hash _key5336_)
                                   (vector-length _pht5327_))))
                             (let ()
                               (if (vector-ref _pht5327_ _pos5342_)
                                   (if (fx< (vector-length _pht5327_) '8192)
                                       (_rehash5324_
                                        (make-vector
                                         (fx1+ (* '2
                                                  (vector-length _pht5327_)))
                                         '#f))
                                       (error '"Unresolvable keyword collision"
                                              _kws5321_))
                                   (begin
                                     (vector-set!
                                      _pht5327_
                                      _pos5342_
                                      _key5336_)
                                     (_lp5330_ _rest5339_)))))))
                       _pht5327_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _lp5330_)
                                               _kws5321_))))
                                    _rehash5324_)
                                  (make-vector (length _kws5321_) '#f)))))
                          (let ((_opt-lambda-split4788_
                                 (lambda (_hd7639_)
                                   ((letrec ((_lp7642_
                                              (lambda (_rest7645_
                                                       _pre7647_
                                                       _opt7648_)
                                                (let ((_g76517663_
                                                       (lambda (_g76527659_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g76527659_))))
                                                  (let ((_g76507674_
                                                         (lambda (_g76527667_)
                                                           ((lambda ()
                                                              (values (reverse _pre7647_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (reverse _opt7648_)
                              (if (gx#identifier? _rest7645_)
                                  (_generate-bind4791_ _rest7645_)
                                  _rest7645_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g76497783_
                                                           (lambda (_g76527678_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g76527678_)
                         (let ((_e76557681_ (gx#syntax-e _g76527678_)))
                           (let ((_hd76567685_ (##car _e76557681_))
                                 (_tl76577688_ (##cdr _e76557681_)))
                             ((lambda (_L7691_ _L7693_)
                                (let ((_g77097724_
                                       (lambda (_g77107720_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g77107720_))))
                                  (let ((_g77087735_
                                         (lambda (_g77107728_)
                                           ((lambda ()
                                              (_lp7642_
                                               _L7691_
                                               (cons (_generate-bind4791_
                                                      _L7693_)
                                                     _pre7647_)
                                               _opt7648_))))))
                                    (let ((_g77077779_
                                           (lambda (_g77107739_)
                                             (if (gx#stx-pair? _g77107739_)
                                                 (let ((_e77137742_
                                                        (gx#syntax-e
                                                         _g77107739_)))
                                                   (let ((_hd77147746_
                                                          (##car _e77137742_))
                                                         (_tl77157749_
                                                          (##cdr _e77137742_)))
                                                     (if (gx#stx-pair?
                                                          _tl77157749_)
                                                         (let ((_e77167752_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl77157749_)))
                   (let ((_hd77177756_ (##car _e77167752_))
                         (_tl77187759_ (##cdr _e77167752_)))
                     (if (gx#stx-null? _tl77187759_)
                         ((lambda (_L7762_ _L7764_)
                            (_lp7642_
                             _L7691_
                             _pre7647_
                             (cons (cons (_generate-bind4791_ _L7764_) _L7762_)
                                   _opt7648_)))
                          _hd77177756_
                          _hd77147746_)
                         (_g77087735_ _g77107739_))))
                 (_g77087735_ _g77107739_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g77087735_ _g77107739_)))))
                                      (_g77077779_ _L7693_)))))
                              _tl76577688_
                              _hd76567685_)))
                         (_g76507674_ _g76527678_)))))
              (_g76497783_ _rest7645_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _lp7642_)
                                    _hd7639_
                                    '()
                                    '()))))
                            (let ((_kw-lambda-split4790_
                                   (lambda (_hd7052_)
                                     ((letrec ((_lp7055_
                                                (lambda (_rest7058_
                                                         _kwvar7060_
                                                         _kwargs7061_
                                                         _args7062_)
                                                  (let ((_g70677096_
                                                         (lambda (_g70687092_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g70687092_))))
                                                    (let ((_g70667107_
                                                           (lambda (_g70687100_)
                                                             ((lambda ()
                                                                (values _kwvar7060_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse _kwargs7061_)
                                (foldl cons _rest7058_ _args7062_)))))))
              (let ((_g70657141_
                     (lambda (_g70687111_)
                       (if (gx#stx-pair? _g70687111_)
                           (let ((_e70887114_ (gx#syntax-e _g70687111_)))
                             (let ((_hd70897118_ (##car _e70887114_))
                                   (_tl70907121_ (##cdr _e70887114_)))
                               ((lambda (_L7124_ _L7126_)
                                  (_lp7055_
                                   _L7124_
                                   _kwvar7060_
                                   _kwargs7061_
                                   (cons _L7126_ _args7062_)))
                                _tl70907121_
                                _hd70897118_)))
                           (_g70667107_ _g70687111_)))))
                (let ((_g70647183_
                       (lambda (_g70687145_)
                         (if (gx#stx-pair? _g70687145_)
                             (let ((_e70807148_ (gx#syntax-e _g70687145_)))
                               (let ((_hd70817152_ (##car _e70807148_))
                                     (_tl70827155_ (##cdr _e70807148_)))
                                 (if (gx#stx-datum? _hd70817152_)
                                     (if (equal? (gx#stx-e _hd70817152_)
                                                 '#!key)
                                         (if (gx#stx-pair? _tl70827155_)
                                             (let ((_e70837158_
                                                    (gx#syntax-e
                                                     _tl70827155_)))
                                               (let ((_hd70847162_
                                                      (##car _e70837158_))
                                                     (_tl70857165_
                                                      (##cdr _e70837158_)))
                                                 ((lambda (_L7168_ _L7170_)
                                                    (if _kwvar7060_
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; duplicate #!key argument"
                                                         _stx4782_
                                                         _hd7052_
                                                         _L7170_)
                                                        (_lp7055_
                                                         _L7168_
                                                         (_generate-bind4791_
                                                          _L7170_)
                                                         _kwargs7061_
                                                         _args7062_)))
                                                  _tl70857165_
                                                  _hd70847162_)))
                                             (_g70657141_ _g70687145_))
                                         (_g70657141_ _g70687145_))
                                     (_g70657141_ _g70687145_))))
                             (_g70657141_ _g70687145_)))))
                  (let ((_g70637309_
                         (lambda (_g70687187_)
                           (if (gx#stx-pair? _g70687187_)
                               (let ((_e70727190_ (gx#syntax-e _g70687187_)))
                                 (let ((_hd70737194_ (##car _e70727190_))
                                       (_tl70747197_ (##cdr _e70727190_)))
                                   (if (gx#stx-pair? _tl70747197_)
                                       (let ((_e70757200_
                                              (gx#syntax-e _tl70747197_)))
                                         (let ((_hd70767204_
                                                (##car _e70757200_))
                                               (_tl70777207_
                                                (##cdr _e70757200_)))
                                           ((lambda (_L7210_ _L7212_ _L7213_)
                                              (if (gx#stx-keyword? _L7213_)
                                                  (let ((_key7227_
                                                         (gx#stx-e _L7213_)))
                                                    (if (find (lambda (_kwarg7230_)
                                                                (eq? _key7227_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _kwarg7230_)))
                      _kwargs7061_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; duplicate keyword argument"
                 _stx4782_
                 _hd7052_
                 _key7227_)
                (let ((_g72347249_
                       (lambda (_g72357245_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g72357245_))))
                  (let ((_g72337260_
                         (lambda (_g72357253_)
                           ((lambda ()
                              (_lp7055_
                               _L7210_
                               _kwvar7060_
                               (cons (list _key7227_
                                           (_generate-bind4791_ _L7212_)
                                           (cons (gx#datum->syntax '#f 'error)
                                                 (cons '"Missing required keyword argument"
                                                       (cons _L7213_ '()))))
                                     _kwargs7061_)
                               _args7062_))))))
                    (let ((_g72327305_
                           (lambda (_g72357264_)
                             (if (gx#stx-pair? _g72357264_)
                                 (let ((_e72387267_ (gx#syntax-e _g72357264_)))
                                   (let ((_hd72397271_ (##car _e72387267_))
                                         (_tl72407274_ (##cdr _e72387267_)))
                                     (if (gx#stx-pair? _tl72407274_)
                                         (let ((_e72417277_
                                                (gx#syntax-e _tl72407274_)))
                                           (let ((_hd72427281_
                                                  (##car _e72417277_))
                                                 (_tl72437284_
                                                  (##cdr _e72417277_)))
                                             (if (gx#stx-null? _tl72437284_)
                                                 ((lambda (_L7287_ _L7289_)
                                                    (_lp7055_
                                                     _L7210_
                                                     _kwvar7060_
                                                     (cons (list _key7227_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_generate-bind4791_ _L7289_)
                         _L7287_)
                   _kwargs7061_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _args7062_))
                                                  _hd72427281_
                                                  _hd72397271_)
                                                 (_g72337260_ _g72357264_))))
                                         (_g72337260_ _g72357264_))))
                                 (_g72337260_ _g72357264_)))))
                      (_g72327305_ _L7212_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g70647183_ _g70687187_)))
                                            _tl70777207_
                                            _hd70767204_
                                            _hd70737194_)))
                                       (_g70647183_ _g70687187_))))
                               (_g70647183_ _g70687187_)))))
                    (_g70637309_ _rest7058_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _lp7055_)
                                      _hd7052_
                                      '#f
                                      '()
                                      '()))))
                              (let ((_generate-opt-dispatch*4795_
                                     (lambda (_primary6089_
                                              _pre6091_
                                              _opt6092_
                                              _tail6093_)
                                       ((letrec ((_recur6095_
                                                  (lambda (_opt-rest6098_
                                                           _right6100_)
                                                    (if (pair? _opt-rest6098_)
                                                        (let ((_hd6102_
                                                               (caar _opt-rest6098_)))
                                                          (let ((_rest6105_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cdr _opt-rest6098_)))
                    (let ((_right*6108_ (cons _hd6102_ _right6100_)))
                      (let ((_g61116128_
                             (lambda (_g61126124_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g61126124_))))
                        (let ((_g61106311_
                               (lambda (_g61126132_)
                                 (if (gx#stx-pair/null? _g61126132_)
                                     (if (fx>= (gx#stx-length _g61126132_) '0)
                                         (let ((_g29339_
                                                (gx#syntax-split-splice
                                                 _g61126132_
                                                 '0)))
                                           (begin
                                             (let ((_g29340_
                                                    (values-count _g29339_)))
                                               (if (not (fx= _g29340_ 2))
                                                   (error "Context expects 2 values"
                                                          _g29340_)))
                                             (let ((_target61146135_
                                                    (values-ref _g29339_ 0))
                                                   (_tl61166138_
                                                    (values-ref _g29339_ 1)))
                                               (if (gx#stx-null? _tl61166138_)
                                                   (letrec ((_loop61176141_
                                                             (lambda (_hd61156145_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _pre-bind61216148_)
                       (if (gx#stx-pair? _hd61156145_)
                           (let ((_e61186151_ (gx#syntax-e _hd61156145_)))
                             (let ((_lp-hd61196155_ (##car _e61186151_))
                                   (_lp-tl61206158_ (##cdr _e61186151_)))
                               (_loop61176141_
                                _lp-tl61206158_
                                (cons _lp-hd61196155_ _pre-bind61216148_))))
                           (let ((_pre-bind61226161_
                                  (reverse _pre-bind61216148_)))
                             ((lambda (_L6165_)
                                (let ()
                                  (let ((_g61866203_
                                         (lambda (_g61876199_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g61876199_))))
                                    (let ((_g61856307_
                                           (lambda (_g61876207_)
                                             (if (gx#stx-pair/null?
                                                  _g61876207_)
                                                 (if (fx>= (gx#stx-length
                                                            _g61876207_)
                                                           '0)
                                                     (let ((_g29341_
                                                            (gx#syntax-split-splice
                                                             _g61876207_
                                                             '0)))
                                                       (begin
                                                         (let ((_g29342_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g29341_)))
                   (if (not (fx= _g29342_ 2))
                       (error "Context expects 2 values" _g29342_)))
                 (let ((_target61896210_ (values-ref _g29341_ 0))
                       (_tl61916213_ (values-ref _g29341_ 1)))
                   (if (gx#stx-null? _tl61916213_)
                       (letrec ((_loop61926216_
                                 (lambda (_hd61906220_ _opt-bind61966223_)
                                   (if (gx#stx-pair? _hd61906220_)
                                       (let ((_e61936226_
                                              (gx#syntax-e _hd61906220_)))
                                         (let ((_lp-hd61946230_
                                                (##car _e61936226_))
                                               (_lp-tl61956233_
                                                (##cdr _e61936226_)))
                                           (_loop61926216_
                                            _lp-tl61956233_
                                            (cons _lp-hd61946230_
                                                  _opt-bind61966223_))))
                                       (let ((_opt-bind61976236_
                                              (reverse _opt-bind61966223_)))
                                         ((lambda (_L6240_)
                                            (let ()
                                              (let ((_g62576265_
                                                     (lambda (_g62586261_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g62586261_))))
                                                (let ((_g62566303_
                                                       (lambda (_g62586269_)
                                                         ((lambda (_L6272_)
                                                            (let ()
                                                              (let ()
                                                                (cons (list (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '#!void
                                      (foldr (lambda (_g62866291_ _g62876294_)
                                               (cons _g62866291_ _g62876294_))
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g62886297_
                                                               _g62896300_)
                                                        (cons _g62886297_
                                                              _g62896300_))
                                                      (cons _L6272_ '())
                                                      _L6240_))
                                             _L6165_))
                                    (_generate-opt-clause4796_
                                     _primary6089_
                                     (foldr cons
                                            (reverse _right*6108_)
                                            _pre6091_)
                                     _rest6105_))
                              (_recur6095_ _rest6105_ _right*6108_)))))
                  _g62586269_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g62566303_ _hd6102_)))))
                                          _opt-bind61976236_))))))
                         (_loop61926216_ _target61896210_ '()))
                       (_g61866203_ _g61876207_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g61866203_ _g61876207_))
                                                 (_g61866203_ _g61876207_)))))
                                      (_g61856307_ (reverse _right6100_))))))
                              _pre-bind61226161_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop61176141_
                                                      _target61146135_
                                                      '()))
                                                   (_g61116128_
                                                    _g61126132_)))))
                                         (_g61116128_ _g61126132_))
                                     (_g61116128_ _g61126132_)))))
                          (_g61106311_ _pre6091_))))))
                (if (gx#stx-null? _tail6093_)
                    '()
                    (let ((_g63156356_
                           (lambda (_g63166352_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g63166352_))))
                      (let ((_g63146528_
                             (lambda (_g63166360_)
                               (if (gx#stx-pair? _g63166360_)
                                   (let ((_e63216363_
                                          (gx#syntax-e _g63166360_)))
                                     (let ((_hd63226367_ (##car _e63216363_))
                                           (_tl63236370_ (##cdr _e63216363_)))
                                       (if (gx#stx-pair/null? _hd63226367_)
                                           (if (fx>= (gx#stx-length
                                                      _hd63226367_)
                                                     '0)
                                               (let ((_g29343_
                                                      (gx#syntax-split-splice
                                                       _hd63226367_
                                                       '0)))
                                                 (begin
                                                   (let ((_g29344_
                                                          (values-count
                                                           _g29343_)))
                                                     (if (not (fx= _g29344_ 2))
                                                         (error "Context expects 2 values"
                                                                _g29344_)))
                                                   (let ((_target63246373_
                                                          (values-ref
                                                           _g29343_
                                                           0))
                                                         (_tl63266376_
                                                          (values-ref
                                                           _g29343_
                                                           1)))
                                                     (if (gx#stx-null?
                                                          _tl63266376_)
                                                         (letrec ((_loop63276379_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd63256383_ _pre63316386_)
                             (if (gx#stx-pair? _hd63256383_)
                                 (let ((_e63286389_
                                        (gx#syntax-e _hd63256383_)))
                                   (let ((_lp-hd63296393_ (##car _e63286389_))
                                         (_lp-tl63306396_ (##cdr _e63286389_)))
                                     (_loop63276379_
                                      _lp-tl63306396_
                                      (cons _lp-hd63296393_ _pre63316386_))))
                                 (let ((_pre63326399_ (reverse _pre63316386_)))
                                   (if (gx#stx-pair? _tl63236370_)
                                       (let ((_e63336403_
                                              (gx#syntax-e _tl63236370_)))
                                         (let ((_hd63346407_
                                                (##car _e63336403_))
                                               (_tl63356410_
                                                (##cdr _e63336403_)))
                                           (if (gx#stx-pair/null? _hd63346407_)
                                               (if (fx>= (gx#stx-length
                                                          _hd63346407_)
                                                         '0)
                                                   (let ((_g29345_
                                                          (gx#syntax-split-splice
                                                           _hd63346407_
                                                           '0)))
                                                     (begin
                                                       (let ((_g29346_
                                                              (values-count
                                                               _g29345_)))
                                                         (if (not (fx= _g29346_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g29346_)))
               (let ((_target63366413_ (values-ref _g29345_ 0))
                     (_tl63386416_ (values-ref _g29345_ 1)))
                 (if (gx#stx-null? _tl63386416_)
                     (letrec ((_loop63396419_
                               (lambda (_hd63376423_ _opt63436426_)
                                 (if (gx#stx-pair? _hd63376423_)
                                     (let ((_e63406429_
                                            (gx#syntax-e _hd63376423_)))
                                       (let ((_lp-hd63416433_
                                              (##car _e63406429_))
                                             (_lp-tl63426436_
                                              (##cdr _e63406429_)))
                                         (_loop63396419_
                                          _lp-tl63426436_
                                          (cons _lp-hd63416433_
                                                _opt63436426_))))
                                     (let ((_opt63446439_
                                            (reverse _opt63436426_)))
                                       (if (gx#stx-pair? _tl63356410_)
                                           (let ((_e63456443_
                                                  (gx#syntax-e _tl63356410_)))
                                             (let ((_hd63466447_
                                                    (##car _e63456443_))
                                                   (_tl63476450_
                                                    (##cdr _e63456443_)))
                                               (if (gx#stx-pair? _tl63476450_)
                                                   (let ((_e63486453_
                                                          (gx#syntax-e
                                                           _tl63476450_)))
                                                     (let ((_hd63496457_
                                                            (##car _e63486453_))
                                                           (_tl63506460_
                                                            (##cdr _e63486453_)))
                                                       (if (gx#stx-null?
                                                            _tl63506460_)
                                                           ((lambda (_L6463_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L6465_
                             _L6466_
                             _L6467_)
                      (let ()
                        (list (list (begin
                                      '#!void
                                      (foldr (lambda (_g64956500_ _g64966503_)
                                               (cons _g64956500_ _g64966503_))
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g64976506_
                                                               _g64986509_)
                                                        (cons _g64976506_
                                                              _g64986509_))
                                                      _L6465_
                                                      _L6466_))
                                             _L6467_))
                                    (gx#stx-wrap-source
                                     (cons (gx#datum->syntax '#f 'apply)
                                           (cons _L6463_
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g65116516_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g65126519_)
                    (cons _g65116516_ _g65126519_))
                  (begin
                    '#!void
                    (foldr (lambda (_g65136522_ _g65146525_)
                             (cons _g65136522_ _g65146525_))
                           (cons _L6465_ '())
                           _L6466_))
                  _L6467_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (gx#stx-source _stx4782_))))))
                    _hd63496457_
                    _hd63466447_
                    _opt63446439_
                    _pre63326399_)
                   (_g63156356_ _g63166360_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g63156356_ _g63166360_))))
                                           (_g63156356_ _g63166360_)))))))
                       (_loop63396419_ _target63366413_ '()))
                     (_g63156356_ _g63166360_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g63156356_ _g63166360_))
                                               (_g63156356_ _g63166360_))))
                                       (_g63156356_ _g63166360_)))))))
                   (_loop63276379_ _target63246373_ '()))
                 (_g63156356_ _g63166360_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g63156356_ _g63166360_))
                                           (_g63156356_ _g63166360_))))
                                   (_g63156356_ _g63166360_)))))
                        (_g63146528_
                         (list _pre6091_
                               (reverse _right6100_)
                               _tail6093_
                               _primary6089_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _recur6095_)
                                        _opt6092_
                                        '()))))
                                (let ((_generate-kw-dispatch4798_
                                       (lambda (_primary5347_
                                                _kwargs5349_
                                                _strict?5350_)
                                         (let ((_g53525371_
                                                (lambda (_g53535367_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g53535367_))))
                                           (let ((_g53515430_
                                                  (lambda (_g53535375_)
                                                    (if (gx#stx-pair?
                                                         _g53535375_)
                                                        (let ((_e53575378_
                                                               (gx#syntax-e
                                                                _g53535375_)))
                                                          (let ((_hd53585382_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e53575378_))
                        (_tl53595385_ (##cdr _e53575378_)))
                    (if (gx#stx-pair? _tl53595385_)
                        (let ((_e53605388_ (gx#syntax-e _tl53595385_)))
                          (let ((_hd53615392_ (##car _e53605388_))
                                (_tl53625395_ (##cdr _e53605388_)))
                            (if (gx#stx-pair? _tl53625395_)
                                (let ((_e53635398_ (gx#syntax-e _tl53625395_)))
                                  (let ((_hd53645402_ (##car _e53635398_))
                                        (_tl53655405_ (##cdr _e53635398_)))
                                    (if (gx#stx-null? _tl53655405_)
                                        ((lambda (_L5408_ _L5410_ _L5411_)
                                           (let ()
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda%)
                                                   (cons _L5408_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'apply)
                             (cons (gx#datum->syntax '#f 'keyword-dispatch)
                                   (cons (cons (gx#datum->syntax '#f 'quote)
                                               (cons _L5411_ '()))
                                         (cons _L5410_ (cons _L5408_ '())))))
                       '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _hd53645402_
                                         _hd53615392_
                                         _hd53585382_)
                                        (_g53525371_ _g53535375_))))
                                (_g53525371_ _g53535375_))))
                        (_g53525371_ _g53535375_))))
                (_g53525371_ _g53535375_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g53515430_
                                              (list (if _strict?5350_
                                                        (_generate-kw-table4799_
                                                         (map car
                                                              _kwargs5349_))
                                                        '#f)
                                                    _primary5347_
                                                    (gx#genident 'args))))))))
                                  (let ((_generate-opt-dispatch4794_
                                         (lambda (_primary6532_
                                                  _pre6534_
                                                  _opt6535_
                                                  _tail6536_)
                                           (cons (list _pre6534_
                                                       (_generate-opt-clause4796_
                                                        _primary6532_
                                                        _pre6534_
                                                        _opt6535_))
                                                 (_generate-opt-dispatch*4795_
                                                  _primary6532_
                                                  _pre6534_
                                                  _opt6535_
                                                  _tail6536_)))))
                                    (let ((_g48034834_
                                           (lambda (_g48044830_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g48044830_))))
                                      (let ((_g48025047_
                                             (lambda (_g48044838_)
                                               (if (gx#stx-pair? _g48044838_)
                                                   (let ((_e48234841_
                                                          (gx#syntax-e
                                                           _g48044838_)))
                                                     (let ((_hd48244845_
                                                            (##car _e48234841_))
                                                           (_tl48254848_
                                                            (##cdr _e48234841_)))
                                                       (if (gx#stx-pair?
                                                            _tl48254848_)
                                                           (let ((_e48264851_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl48254848_)))
                     (let ((_hd48274855_ (##car _e48264851_))
                           (_tl48284858_ (##cdr _e48264851_)))
                       ((lambda (_L4861_ _L4863_)
                          (if (_kw-lambda?4789_ _L4863_)
                              (let ((_g48794886_
                                     (lambda (_g48804882_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g48804882_))))
                                (let ((_g48785043_
                                       (lambda (_g48804890_)
                                         ((lambda ()
                                            (let ()
                                              (let ((_g29333_
                                                     (_kw-lambda-split4790_
                                                      _L4863_)))
                                                (begin
                                                  (let ((_g29334_
                                                         (values-count
                                                          _g29333_)))
                                                    (if (not (fx= _g29334_ 3))
                                                        (error "Context expects 3 values"
                                                               _g29334_)))
                                                  (let ((_key4899_
                                                         (values-ref
                                                          _g29333_
                                                          0))
                                                        (_kwargs4901_
                                                         (values-ref
                                                          _g29333_
                                                          1))
                                                        (_args4902_
                                                         (values-ref
                                                          _g29333_
                                                          2)))
                                                    (let ((_g49044912_
                                                           (lambda (_g49054908_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g49054908_))))
                                                      (let ((_g49035035_
                                                             (lambda (_g49054916_)
                                                               ((lambda (_L4919_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (let ((_g49374945_
                                   (lambda (_g49384941_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g49384941_))))
                              (let ((_g49365031_
                                     (lambda (_g49384949_)
                                       ((lambda (_L4952_)
                                          (let ()
                                            (let ((_g49654973_
                                                   (lambda (_g49664969_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g49664969_))))
                                              (let ((_g49645027_
                                                     (lambda (_g49664977_)
                                                       ((lambda (_L4980_)
                                                          (let ()
                                                            (let ((_g49935001_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g49944997_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g49944997_))))
                      (let ((_g49925023_
                             (lambda (_g49945005_)
                               ((lambda (_L5008_)
                                  (let ()
                                    (let ()
                                      (cons (gx#datum->syntax '#f 'let-values)
                                            (cons (cons (cons (cons _L4952_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons _L4980_ '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _L5008_ '()))))))
                                _g49945005_))))
                        (_g49925023_
                         (gx#stx-wrap-source
                          (_generate-kw-dispatch4798_
                           _L4952_
                           _kwargs4901_
                           (not _key4899_))
                          (gx#stx-source _stx4782_)))))))
                _g49664977_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g49645027_
                                                 (gx#stx-wrap-source
                                                  (_generate-kw-primary4797_
                                                   _L4919_
                                                   _kwargs4901_
                                                   _args4902_
                                                   _L4861_)
                                                  (gx#stx-source
                                                   _stx4782_)))))))
                                        _g49384949_))))
                                (_g49365031_ (gx#genident 'kw-lambda))))))
                        _g49054916_))))
                (_g49035035_
                 (let ((_$e5039_ _key4899_))
                   (if _$e5039_ _$e5039_ (gx#genident 'key)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_g48785043_
                                   (_check-duplicate-bindings4792_ _L4863_))))
                              (_g48034834_ _g48044838_)))
                        _tl48284858_
                        _hd48274855_)))
                   (_g48034834_ _g48044838_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g48034834_
                                                    _g48044838_)))))
                                        (let ((_g48015275_
                                               (lambda (_g48045051_)
                                                 (if (gx#stx-pair? _g48045051_)
                                                     (let ((_e48155054_
                                                            (gx#syntax-e
                                                             _g48045051_)))
                                                       (let ((_hd48165058_
                                                              (##car _e48155054_))
                                                             (_tl48175061_
                                                              (##cdr _e48155054_)))
                                                         (if (gx#stx-pair?
                                                              _tl48175061_)
                                                             (let ((_e48185064_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl48175061_)))
                       (let ((_hd48195068_ (##car _e48185064_))
                             (_tl48205071_ (##cdr _e48185064_)))
                         ((lambda (_L5074_ _L5076_)
                            (if (_opt-lambda?4787_ _L5076_)
                                (let ((_g29335_
                                       (_opt-lambda-split4788_ _L5076_)))
                                  (begin
                                    (let ((_g29336_ (values-count _g29335_)))
                                      (if (not (fx= _g29336_ 3))
                                          (error "Context expects 3 values"
                                                 _g29336_)))
                                    (let ((_pre5089_ (values-ref _g29335_ 0))
                                          (_opt5091_ (values-ref _g29335_ 1))
                                          (_tail5092_ (values-ref _g29335_ 2)))
                                      (let ((_g50945102_
                                             (lambda (_g50955098_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g50955098_))))
                                        (let ((_g50935271_
                                               (lambda (_g50955106_)
                                                 ((lambda (_L5109_)
                                                    (let ()
                                                      (let ((_g51225130_
                                                             (lambda (_g51235126_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g51235126_))))
                                                        (let ((_g51215267_
                                                               (lambda (_g51235134_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda (_L5137_)
                            (let ()
                              (let ((_g51505167_
                                     (lambda (_g51515163_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g51515163_))))
                                (let ((_g51495263_
                                       (lambda (_g51515171_)
                                         (if (gx#stx-pair/null? _g51515171_)
                                             (if (fx>= (gx#stx-length
                                                        _g51515171_)
                                                       '0)
                                                 (let ((_g29337_
                                                        (gx#syntax-split-splice
                                                         _g51515171_
                                                         '0)))
                                                   (begin
                                                     (let ((_g29338_
                                                            (values-count
                                                             _g29337_)))
                                                       (if (not (fx= _g29338_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g29338_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target51535174_
                                                            (values-ref
                                                             _g29337_
                                                             0))
                                                           (_tl51555177_
                                                            (values-ref
                                                             _g29337_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl51555177_)
                                                           (letrec ((_loop51565180_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd51545184_ _clause51605187_)
                               (if (gx#stx-pair? _hd51545184_)
                                   (let ((_e51575190_
                                          (gx#syntax-e _hd51545184_)))
                                     (let ((_lp-hd51585194_
                                            (##car _e51575190_))
                                           (_lp-tl51595197_
                                            (##cdr _e51575190_)))
                                       (_loop51565180_
                                        _lp-tl51595197_
                                        (cons _lp-hd51585194_
                                              _clause51605187_))))
                                   (let ((_clause51615200_
                                          (reverse _clause51605187_)))
                                     ((lambda (_L5204_)
                                        (let ()
                                          (let ((_g52215229_
                                                 (lambda (_g52225225_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g52225225_))))
                                            (let ((_g52205251_
                                                   (lambda (_g52225233_)
                                                     ((lambda (_L5236_)
                                                        (let ()
                                                          (let ()
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'let-values)
                          (cons (cons (cons (cons _L5109_ '())
                                            (cons _L5137_ '()))
                                      '())
                                (cons _L5236_ '()))))))
              _g52225233_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g52205251_
                                               (gx#stx-wrap-source
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'case-lambda)
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g52545257_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g52555260_)
                         (cons _g52545257_ _g52555260_))
                       '()
                       _L5204_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#stx-source _stx4782_)))))))
                                      _clause51615200_))))))
                     (_loop51565180_ _target51535174_ '()))
                   (_g51505167_ _g51515171_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g51505167_ _g51515171_))
                                             (_g51505167_ _g51515171_)))))
                                  (_g51495263_
                                   (_generate-opt-dispatch4794_
                                    _L5109_
                                    _pre5089_
                                    _opt5091_
                                    _tail5092_))))))
                          _g51235134_))))
                  (_g51215267_
                   (gx#stx-wrap-source
                    (_generate-opt-primary4793_
                     _pre5089_
                     _opt5091_
                     _tail5092_
                     _L5074_)
                    (gx#stx-source _stx4782_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g50955106_))))
                                          (_g50935271_
                                           (gx#genident 'opt-lambda)))))))
                                (_g48025047_ _g48045051_)))
                          _tl48205071_
                          _hd48195068_)))
                     (_g48025047_ _g48045051_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g48025047_
                                                      _g48045051_)))))
                                          (let ((_g48005317_
                                                 (lambda (_g48045279_)
                                                   (if (gx#stx-pair?
                                                        _g48045279_)
                                                       (let ((_e48075282_
                                                              (gx#syntax-e
                                                               _g48045279_)))
                                                         (let ((_hd48085286_
                                                                (##car _e48075282_))
                                                               (_tl48095289_
                                                                (##cdr _e48075282_)))
                                                           (if (gx#stx-pair?
                                                                _tl48095289_)
                                                               (let ((_e48105292_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl48095289_)))
                         (let ((_hd48115296_ (##car _e48105292_))
                               (_tl48125299_ (##cdr _e48105292_)))
                           ((lambda (_L5302_ _L5304_)
                              (if (_simple-lambda?4785_ _L5304_)
                                  (cons (gx#datum->syntax '#f 'lambda%)
                                        (cons _L5304_ _L5302_))
                                  (_g48015275_ _g48045279_)))
                            _tl48125299_
                            _hd48115296_)))
                       (_g48015275_ _g48045279_))))
               (_g48015275_ _g48045279_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g48005317_
                                             _stx4782_)))))))))))))))))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#def|
      (lambda (_$stx7949_)
        (let ((_g79547993_
               (lambda (_g79557989_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g79557989_))))
          (let ((_g79538048_
                 (lambda (_g79557997_)
                   (if (gx#stx-pair? _g79557997_)
                       (let ((_e79798000_ (gx#syntax-e _g79557997_)))
                         (let ((_hd79808004_ (##car _e79798000_))
                               (_tl79818007_ (##cdr _e79798000_)))
                           (if (gx#stx-pair? _tl79818007_)
                               (let ((_e79828010_ (gx#syntax-e _tl79818007_)))
                                 (let ((_hd79838014_ (##car _e79828010_))
                                       (_tl79848017_ (##cdr _e79828010_)))
                                   (if (gx#stx-pair? _tl79848017_)
                                       (let ((_e79858020_
                                              (gx#syntax-e _tl79848017_)))
                                         (let ((_hd79868024_
                                                (##car _e79858020_))
                                               (_tl79878027_
                                                (##cdr _e79858020_)))
                                           (if (gx#stx-null? _tl79878027_)
                                               ((lambda (_L8030_ _L8032_)
                                                  (if (gx#identifier? _L8032_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'define-values)
                                                            (cons (cons _L8032_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons _L8030_ '())))
              (_g79547993_ _g79557997_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd79868024_
                                                _hd79838014_)
                                               (_g79547993_ _g79557997_))))
                                       (_g79547993_ _g79557997_))))
                               (_g79547993_ _g79557997_))))
                       (_g79547993_ _g79557997_)))))
            (let ((_g79528146_
                   (lambda (_g79558052_)
                     (if (gx#stx-pair? _g79558052_)
                         (let ((_e79598055_ (gx#syntax-e _g79558052_)))
                           (let ((_hd79608059_ (##car _e79598055_))
                                 (_tl79618062_ (##cdr _e79598055_)))
                             (if (gx#stx-pair? _tl79618062_)
                                 (let ((_e79628065_
                                        (gx#syntax-e _tl79618062_)))
                                   (let ((_hd79638069_ (##car _e79628065_))
                                         (_tl79648072_ (##cdr _e79628065_)))
                                     (if (gx#stx-pair? _hd79638069_)
                                         (let ((_e79658075_
                                                (gx#syntax-e _hd79638069_)))
                                           (let ((_hd79668079_
                                                  (##car _e79658075_))
                                                 (_tl79678082_
                                                  (##cdr _e79658075_)))
                                             (if (gx#stx-pair/null?
                                                  _tl79648072_)
                                                 (if (fx>= (gx#stx-length
                                                            _tl79648072_)
                                                           '0)
                                                     (let ((_g29355_
                                                            (gx#syntax-split-splice
                                                             _tl79648072_
                                                             '0)))
                                                       (begin
                                                         (let ((_g29356_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g29355_)))
                   (if (not (fx= _g29356_ 2))
                       (error "Context expects 2 values" _g29356_)))
                 (let ((_target79688085_ (values-ref _g29355_ 0))
                       (_tl79708088_ (values-ref _g29355_ 1)))
                   (if (gx#stx-null? _tl79708088_)
                       (letrec ((_loop79718091_
                                 (lambda (_hd79698095_ _body79758098_)
                                   (if (gx#stx-pair? _hd79698095_)
                                       (let ((_e79728101_
                                              (gx#syntax-e _hd79698095_)))
                                         (let ((_lp-hd79738105_
                                                (##car _e79728101_))
                                               (_lp-tl79748108_
                                                (##cdr _e79728101_)))
                                           (_loop79718091_
                                            _lp-tl79748108_
                                            (cons _lp-hd79738105_
                                                  _body79758098_))))
                                       (let ((_body79768111_
                                              (reverse _body79758098_)))
                                         ((lambda (_L8115_ _L8117_ _L8118_)
                                            (if (gx#identifier? _L8118_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'define-values)
                                                      (cons (cons _L8118_ '())
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'lambda)
                                (cons _L8117_
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g81378140_
                                                        _g81388143_)
                                                 (cons _g81378140_
                                                       _g81388143_))
                                               '()
                                               _L8115_))))
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g79538048_ _g79558052_)))
                                          _body79768111_
                                          _tl79678082_
                                          _hd79668079_))))))
                         (_loop79718091_ _target79688085_ '()))
                       (_g79538048_ _g79558052_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g79538048_ _g79558052_))
                                                 (_g79538048_ _g79558052_))))
                                         (_g79538048_ _g79558052_))))
                                 (_g79538048_ _g79558052_))))
                         (_g79538048_ _g79558052_)))))
              (_g79528146_ _$stx7949_))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#def*|
      (lambda (_$stx8151_)
        (let ((_g81558179_
               (lambda (_g81568175_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g81568175_))))
          (let ((_g81548264_
                 (lambda (_g81568183_)
                   (if (gx#stx-pair? _g81568183_)
                       (let ((_e81598186_ (gx#syntax-e _g81568183_)))
                         (let ((_hd81608190_ (##car _e81598186_))
                               (_tl81618193_ (##cdr _e81598186_)))
                           (if (gx#stx-pair? _tl81618193_)
                               (let ((_e81628196_ (gx#syntax-e _tl81618193_)))
                                 (let ((_hd81638200_ (##car _e81628196_))
                                       (_tl81648203_ (##cdr _e81628196_)))
                                   (if (gx#stx-pair/null? _tl81648203_)
                                       (if (fx>= (gx#stx-length _tl81648203_)
                                                 '0)
                                           (let ((_g29357_
                                                  (gx#syntax-split-splice
                                                   _tl81648203_
                                                   '0)))
                                             (begin
                                               (let ((_g29358_
                                                      (values-count _g29357_)))
                                                 (if (not (fx= _g29358_ 2))
                                                     (error "Context expects 2 values"
                                                            _g29358_)))
                                               (let ((_target81658206_
                                                      (values-ref _g29357_ 0))
                                                     (_tl81678209_
                                                      (values-ref _g29357_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl81678209_)
                                                     (letrec ((_loop81688212_
                                                               (lambda (_hd81668216_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _clauses81728219_)
                         (if (gx#stx-pair? _hd81668216_)
                             (let ((_e81698222_ (gx#syntax-e _hd81668216_)))
                               (let ((_lp-hd81708226_ (##car _e81698222_))
                                     (_lp-tl81718229_ (##cdr _e81698222_)))
                                 (_loop81688212_
                                  _lp-tl81718229_
                                  (cons _lp-hd81708226_ _clauses81728219_))))
                             (let ((_clauses81738232_
                                    (reverse _clauses81728219_)))
                               ((lambda (_L8236_ _L8238_)
                                  (if (gx#identifier? _L8238_)
                                      (cons (gx#datum->syntax
                                             '#f
                                             'define-values)
                                            (cons (cons _L8238_ '())
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'case-lambda)
                                                              (begin
                                                                '#!void
                                                                (foldr (lambda (_g82558258_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g82568261_)
                                 (cons _g82558258_ _g82568261_))
                               '()
                               _L8236_)))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_g81558179_ _g81568183_)))
                                _clauses81738232_
                                _hd81638200_))))))
               (_loop81688212_ _target81658206_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g81558179_
                                                      _g81568183_)))))
                                           (_g81558179_ _g81568183_))
                                       (_g81558179_ _g81568183_))))
                               (_g81558179_ _g81568183_))))
                       (_g81558179_ _g81568183_)))))
            (_g81548264_ _$stx8151_)))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#defvalues|
      (lambda (_$stx8269_)
        (let ((_g82738291_
               (lambda (_g82748287_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g82748287_))))
          (let ((_g82728346_
                 (lambda (_g82748295_)
                   (if (gx#stx-pair? _g82748295_)
                       (let ((_e82778298_ (gx#syntax-e _g82748295_)))
                         (let ((_hd82788302_ (##car _e82778298_))
                               (_tl82798305_ (##cdr _e82778298_)))
                           (if (gx#stx-pair? _tl82798305_)
                               (let ((_e82808308_ (gx#syntax-e _tl82798305_)))
                                 (let ((_hd82818312_ (##car _e82808308_))
                                       (_tl82828315_ (##cdr _e82808308_)))
                                   (if (gx#stx-pair? _tl82828315_)
                                       (let ((_e82838318_
                                              (gx#syntax-e _tl82828315_)))
                                         (let ((_hd82848322_
                                                (##car _e82838318_))
                                               (_tl82858325_
                                                (##cdr _e82838318_)))
                                           (if (gx#stx-null? _tl82858325_)
                                               ((lambda (_L8328_ _L8330_)
                                                  (if (gx#identifier-list?
                                                       _L8330_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'define-values)
                                                            (cons _L8330_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L8328_ '())))
              (_g82738291_ _g82748295_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd82848322_
                                                _hd82818312_)
                                               (_g82738291_ _g82748295_))))
                                       (_g82738291_ _g82748295_))))
                               (_g82738291_ _g82748295_))))
                       (_g82738291_ _g82748295_)))))
            (_g82728346_ _$stx8269_)))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#case|
      (lambda (_$stx8350_)
        (let ((_g83548378_
               (lambda (_g83558374_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g83558374_))))
          (let ((_g83538463_
                 (lambda (_g83558382_)
                   (if (gx#stx-pair? _g83558382_)
                       (let ((_e83588385_ (gx#syntax-e _g83558382_)))
                         (let ((_hd83598389_ (##car _e83588385_))
                               (_tl83608392_ (##cdr _e83588385_)))
                           (if (gx#stx-pair? _tl83608392_)
                               (let ((_e83618395_ (gx#syntax-e _tl83608392_)))
                                 (let ((_hd83628399_ (##car _e83618395_))
                                       (_tl83638402_ (##cdr _e83618395_)))
                                   (if (gx#stx-pair/null? _tl83638402_)
                                       (if (fx>= (gx#stx-length _tl83638402_)
                                                 '0)
                                           (let ((_g29359_
                                                  (gx#syntax-split-splice
                                                   _tl83638402_
                                                   '0)))
                                             (begin
                                               (let ((_g29360_
                                                      (values-count _g29359_)))
                                                 (if (not (fx= _g29360_ 2))
                                                     (error "Context expects 2 values"
                                                            _g29360_)))
                                               (let ((_target83648405_
                                                      (values-ref _g29359_ 0))
                                                     (_tl83668408_
                                                      (values-ref _g29359_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl83668408_)
                                                     (letrec ((_loop83678411_
                                                               (lambda (_hd83658415_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _clause83718418_)
                         (if (gx#stx-pair? _hd83658415_)
                             (let ((_e83688421_ (gx#syntax-e _hd83658415_)))
                               (let ((_lp-hd83698425_ (##car _e83688421_))
                                     (_lp-tl83708428_ (##cdr _e83688421_)))
                                 (_loop83678411_
                                  _lp-tl83708428_
                                  (cons _lp-hd83698425_ _clause83718418_))))
                             (let ((_clause83728431_
                                    (reverse _clause83718418_)))
                               ((lambda (_L8435_ _L8437_)
                                  (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f '$e)
                                                    (cons _L8437_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '~case)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '$e)
                        (begin
                          '#!void
                          (foldr (lambda (_g84548457_ _g84558460_)
                                   (cons _g84548457_ _g84558460_))
                                 '()
                                 _L8435_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))
                                _clause83728431_
                                _hd83628399_))))))
               (_loop83678411_ _target83648405_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g83548378_
                                                      _g83558382_)))))
                                           (_g83548378_ _g83558382_))
                                       (_g83548378_ _g83558382_))))
                               (_g83548378_ _g83558382_))))
                       (_g83548378_ _g83558382_)))))
            (_g83538463_ _$stx8350_)))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#~case|
      (lambda (_$stx8468_)
        (let ((_g84768574_
               (lambda (_g84778570_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g84778570_))))
          (let ((_g84758689_
                 (lambda (_g84778578_)
                   (if (gx#stx-pair? _g84778578_)
                       (let ((_e85488581_ (gx#syntax-e _g84778578_)))
                         (let ((_hd85498585_ (##car _e85488581_))
                               (_tl85508588_ (##cdr _e85488581_)))
                           (if (gx#stx-pair? _tl85508588_)
                               (let ((_e85518591_ (gx#syntax-e _tl85508588_)))
                                 (let ((_hd85528595_ (##car _e85518591_))
                                       (_tl85538598_ (##cdr _e85518591_)))
                                   (if (gx#stx-pair? _tl85538598_)
                                       (let ((_e85548601_
                                              (gx#syntax-e _tl85538598_)))
                                         (let ((_hd85558605_
                                                (##car _e85548601_))
                                               (_tl85568608_
                                                (##cdr _e85548601_)))
                                           (if (gx#stx-pair? _hd85558605_)
                                               (let ((_e85578611_
                                                      (gx#syntax-e
                                                       _hd85558605_)))
                                                 (let ((_hd85588615_
                                                        (##car _e85578611_))
                                                       (_tl85598618_
                                                        (##cdr _e85578611_)))
                                                   (if (gx#stx-pair/null?
                                                        _tl85598618_)
                                                       (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl85598618_)
                         '0)
                   (let ((_g29361_ (gx#syntax-split-splice _tl85598618_ '0)))
                     (begin
                       (let ((_g29362_ (values-count _g29361_)))
                         (if (not (fx= _g29362_ 2))
                             (error "Context expects 2 values" _g29362_)))
                       (let ((_target85608621_ (values-ref _g29361_ 0))
                             (_tl85628624_ (values-ref _g29361_ 1)))
                         (if (gx#stx-null? _tl85628624_)
                             (letrec ((_loop85638627_
                                       (lambda (_hd85618631_ _body85678634_)
                                         (if (gx#stx-pair? _hd85618631_)
                                             (let ((_e85648637_
                                                    (gx#syntax-e
                                                     _hd85618631_)))
                                               (let ((_lp-hd85658641_
                                                      (##car _e85648637_))
                                                     (_lp-tl85668644_
                                                      (##cdr _e85648637_)))
                                                 (_loop85638627_
                                                  _lp-tl85668644_
                                                  (cons _lp-hd85658641_
                                                        _body85678634_))))
                                             (let ((_body85688647_
                                                    (reverse _body85678634_)))
                                               ((lambda (_L8651_
                                                         _L8653_
                                                         _L8654_
                                                         _L8655_
                                                         _L8656_)
                                                  (if (gx#stx-list? _L8654_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'if)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 '~case-test)
                                (cons _L8655_ (cons _L8654_ '())))
                          (cons (cons (gx#datum->syntax '#f 'begin)
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g86808683_
                                                        _g86818686_)
                                                 (cons _g86808683_
                                                       _g86818686_))
                                               '()
                                               _L8653_)))
                                (cons (cons _L8656_ (cons _L8655_ _L8651_))
                                      '()))))
              (_g84768574_ _g84778578_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _tl85568608_
                                                _body85688647_
                                                _hd85588615_
                                                _hd85528595_
                                                _hd85498585_))))))
                               (_loop85638627_ _target85608621_ '()))
                             (_g84768574_ _g84778578_)))))
                   (_g84768574_ _g84778578_))
               (_g84768574_ _g84778578_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g84768574_ _g84778578_))))
                                       (_g84768574_ _g84778578_))))
                               (_g84768574_ _g84778578_))))
                       (_g84768574_ _g84778578_)))))
            (let ((_g84748785_
                   (lambda (_g84778693_)
                     (if (gx#stx-pair? _g84778693_)
                         (let ((_e85258696_ (gx#syntax-e _g84778693_)))
                           (let ((_hd85268700_ (##car _e85258696_))
                                 (_tl85278703_ (##cdr _e85258696_)))
                             (if (gx#stx-pair? _tl85278703_)
                                 (let ((_e85288706_
                                        (gx#syntax-e _tl85278703_)))
                                   (let ((_hd85298710_ (##car _e85288706_))
                                         (_tl85308713_ (##cdr _e85288706_)))
                                     (if (gx#stx-pair? _tl85308713_)
                                         (let ((_e85318716_
                                                (gx#syntax-e _tl85308713_)))
                                           (let ((_hd85328720_
                                                  (##car _e85318716_))
                                                 (_tl85338723_
                                                  (##cdr _e85318716_)))
                                             (if (gx#stx-pair? _hd85328720_)
                                                 (let ((_e85348726_
                                                        (gx#syntax-e
                                                         _hd85328720_)))
                                                   (let ((_hd85358730_
                                                          (##car _e85348726_))
                                                         (_tl85368733_
                                                          (##cdr _e85348726_)))
                                                     (if (gx#stx-pair?
                                                          _tl85368733_)
                                                         (let ((_e85378736_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl85368733_)))
                   (let ((_hd85388740_ (##car _e85378736_))
                         (_tl85398743_ (##cdr _e85378736_)))
                     (if (gx#identifier? _hd85388740_)
                         (if (gx#free-identifier=?
                              |gerbil/core::<sugar>::<sugar:2>[1]#_g29363_|
                              _hd85388740_)
                             (if (gx#stx-pair? _tl85398743_)
                                 (let ((_e85408746_
                                        (gx#syntax-e _tl85398743_)))
                                   (let ((_hd85418750_ (##car _e85408746_))
                                         (_tl85428753_ (##cdr _e85408746_)))
                                     (if (gx#stx-null? _tl85428753_)
                                         ((lambda (_L8756_
                                                   _L8758_
                                                   _L8759_
                                                   _L8760_
                                                   _L8761_)
                                            (if (gx#stx-list? _L8759_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'if)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '~case-test)
                          (cons _L8760_ (cons _L8759_ '())))
                    (cons (cons _L8758_ (cons _L8760_ '()))
                          (cons (cons _L8761_ (cons _L8760_ _L8756_)) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g84758689_ _g84778693_)))
                                          _tl85338723_
                                          _hd85418750_
                                          _hd85358730_
                                          _hd85298710_
                                          _hd85268700_)
                                         (_g84758689_ _g84778693_))))
                                 (_g84758689_ _g84778693_))
                             (_g84758689_ _g84778693_))
                         (_g84758689_ _g84778693_))))
                 (_g84758689_ _g84778693_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g84758689_ _g84778693_))))
                                         (_g84758689_ _g84778693_))))
                                 (_g84758689_ _g84778693_))))
                         (_g84758689_ _g84778693_)))))
              (let ((_g84738849_
                     (lambda (_g84778789_)
                       (if (gx#stx-pair? _g84778789_)
                           (let ((_e85088792_ (gx#syntax-e _g84778789_)))
                             (let ((_hd85098796_ (##car _e85088792_))
                                   (_tl85108799_ (##cdr _e85088792_)))
                               (if (gx#stx-pair? _tl85108799_)
                                   (let ((_e85118802_
                                          (gx#syntax-e _tl85108799_)))
                                     (let ((_hd85128806_ (##car _e85118802_))
                                           (_tl85138809_ (##cdr _e85118802_)))
                                       (if (gx#stx-pair? _tl85138809_)
                                           (let ((_e85148812_
                                                  (gx#syntax-e _tl85138809_)))
                                             (let ((_hd85158816_
                                                    (##car _e85148812_))
                                                   (_tl85168819_
                                                    (##cdr _e85148812_)))
                                               (if (gx#stx-pair? _hd85158816_)
                                                   (let ((_e85178822_
                                                          (gx#syntax-e
                                                           _hd85158816_)))
                                                     (let ((_hd85188826_
                                                            (##car _e85178822_))
                                                           (_tl85198829_
                                                            (##cdr _e85178822_)))
                                                       (if (gx#identifier?
                                                            _hd85188826_)
                                                           (if (gx#free-identifier=?
                                                                |gerbil/core::<sugar>::<sugar:2>[1]#_g29364_|
                                                                _hd85188826_)
                                                               ((lambda (_L8832_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'syntax-error)
                                (cons '"Bad syntax; misplaced else" '())))
                        _hd85128806_)
                       (_g84748785_ _g84778789_))
                   (_g84748785_ _g84778789_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g84748785_ _g84778789_))))
                                           (_g84748785_ _g84778789_))))
                                   (_g84748785_ _g84778789_))))
                           (_g84748785_ _g84778789_)))))
                (let ((_g84728957_
                       (lambda (_g84778853_)
                         (if (gx#stx-pair? _g84778853_)
                             (let ((_e84868856_ (gx#syntax-e _g84778853_)))
                               (let ((_hd84878860_ (##car _e84868856_))
                                     (_tl84888863_ (##cdr _e84868856_)))
                                 (if (gx#stx-pair? _tl84888863_)
                                     (let ((_e84898866_
                                            (gx#syntax-e _tl84888863_)))
                                       (let ((_hd84908870_ (##car _e84898866_))
                                             (_tl84918873_
                                              (##cdr _e84898866_)))
                                         (if (gx#stx-pair? _tl84918873_)
                                             (let ((_e84928876_
                                                    (gx#syntax-e
                                                     _tl84918873_)))
                                               (let ((_hd84938880_
                                                      (##car _e84928876_))
                                                     (_tl84948883_
                                                      (##cdr _e84928876_)))
                                                 (if (gx#stx-pair?
                                                      _hd84938880_)
                                                     (let ((_e84958886_
                                                            (gx#syntax-e
                                                             _hd84938880_)))
                                                       (let ((_hd84968890_
                                                              (##car _e84958886_))
                                                             (_tl84978893_
                                                              (##cdr _e84958886_)))
                                                         (if (gx#identifier?
                                                              _hd84968890_)
                                                             (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          |gerbil/core::<sugar>::<sugar:2>[1]#_g29365_|
                          _hd84968890_)
                         (if (gx#stx-pair/null? _tl84978893_)
                             (if (fx>= (gx#stx-length _tl84978893_) '0)
                                 (let ((_g29366_
                                        (gx#syntax-split-splice
                                         _tl84978893_
                                         '0)))
                                   (begin
                                     (let ((_g29367_ (values-count _g29366_)))
                                       (if (not (fx= _g29367_ 2))
                                           (error "Context expects 2 values"
                                                  _g29367_)))
                                     (let ((_target84988896_
                                            (values-ref _g29366_ 0))
                                           (_tl85008899_
                                            (values-ref _g29366_ 1)))
                                       (if (gx#stx-null? _tl85008899_)
                                           (letrec ((_loop85018902_
                                                     (lambda (_hd84998906_
                                                              _body85058909_)
                                                       (if (gx#stx-pair?
                                                            _hd84998906_)
                                                           (let ((_e85028912_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd84998906_)))
                     (let ((_lp-hd85038916_ (##car _e85028912_))
                           (_lp-tl85048919_ (##cdr _e85028912_)))
                       (_loop85018902_
                        _lp-tl85048919_
                        (cons _lp-hd85038916_ _body85058909_))))
                   (let ((_body85068922_ (reverse _body85058909_)))
                     (if (gx#stx-null? _tl84948883_)
                         ((lambda (_L8926_ _L8928_)
                            (cons (gx#datum->syntax '#f 'begin)
                                  (begin
                                    '#!void
                                    (foldr (lambda (_g89488951_ _g89498954_)
                                             (cons _g89488951_ _g89498954_))
                                           '()
                                           _L8926_))))
                          _body85068922_
                          _hd84908870_)
                         (_g84738849_ _g84778853_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop85018902_
                                              _target84988896_
                                              '()))
                                           (_g84738849_ _g84778853_)))))
                                 (_g84738849_ _g84778853_))
                             (_g84738849_ _g84778853_))
                         (_g84738849_ _g84778853_))
                     (_g84738849_ _g84778853_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g84738849_
                                                      _g84778853_))))
                                             (_g84738849_ _g84778853_))))
                                     (_g84738849_ _g84778853_))))
                             (_g84738849_ _g84778853_)))))
                  (let ((_g84718988_
                         (lambda (_g84778961_)
                           (if (gx#stx-pair? _g84778961_)
                               (let ((_e84788964_ (gx#syntax-e _g84778961_)))
                                 (let ((_hd84798968_ (##car _e84788964_))
                                       (_tl84808971_ (##cdr _e84788964_)))
                                   (if (gx#stx-pair? _tl84808971_)
                                       (let ((_e84818974_
                                              (gx#syntax-e _tl84808971_)))
                                         (let ((_hd84828978_
                                                (##car _e84818974_))
                                               (_tl84838981_
                                                (##cdr _e84818974_)))
                                           (if (gx#stx-null? _tl84838981_)
                                               ((lambda () '#!void))
                                               (_g84728957_ _g84778961_))))
                                       (_g84728957_ _g84778961_))))
                               (_g84728957_ _g84778961_)))))
                    (_g84718988_ _$stx8468_)))))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#~case-test|
      (lambda (_stx8994_)
        (let ((_memq-datum?8997_
               (lambda (_x9359_)
                 (let ((_e9362_ (gx#stx-e _x9359_)))
                   (let ((_$e9365_ (symbol? _e9362_)))
                     (if _$e9365_
                         _$e9365_
                         (let ((_$e9369_ (keyword? _e9362_)))
                           (if _$e9369_ _$e9369_ (immediate? _e9362_)))))))))
          (let ((_memv-datum?8999_
                 (lambda (_x9352_)
                   (let ((_$e9355_ (_memq-datum?8997_ _x9352_)))
                     (if _$e9355_ _$e9355_ (gx#stx-number? _x9352_))))))
            (let ((_g90039054_
                   (lambda (_g90049050_)
                     (gx#raise-syntax-error '#f '"Bad syntax" _g90049050_))))
              (let ((_g90029199_
                     (lambda (_g90049058_)
                       (if (gx#stx-pair? _g90049058_)
                           (let ((_e90319061_ (gx#syntax-e _g90049058_)))
                             (let ((_hd90329065_ (##car _e90319061_))
                                   (_tl90339068_ (##cdr _e90319061_)))
                               (if (gx#stx-pair? _tl90339068_)
                                   (let ((_e90349071_
                                          (gx#syntax-e _tl90339068_)))
                                     (let ((_hd90359075_ (##car _e90349071_))
                                           (_tl90369078_ (##cdr _e90349071_)))
                                       (if (gx#stx-pair? _tl90369078_)
                                           (let ((_e90379081_
                                                  (gx#syntax-e _tl90369078_)))
                                             (let ((_hd90389085_
                                                    (##car _e90379081_))
                                                   (_tl90399088_
                                                    (##cdr _e90379081_)))
                                               (if (gx#stx-pair/null?
                                                    _hd90389085_)
                                                   (if (fx>= (gx#stx-length
                                                              _hd90389085_)
                                                             '0)
                                                       (let ((_g29368_
                                                              (gx#syntax-split-splice
                                                               _hd90389085_
                                                               '0)))
                                                         (begin
                                                           (let ((_g29369_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (values-count _g29368_)))
                     (if (not (fx= _g29369_ 2))
                         (error "Context expects 2 values" _g29369_)))
                   (let ((_target90409091_ (values-ref _g29368_ 0))
                         (_tl90429094_ (values-ref _g29368_ 1)))
                     (if (gx#stx-null? _tl90429094_)
                         (letrec ((_loop90439097_
                                   (lambda (_hd90419101_ _datum90479104_)
                                     (if (gx#stx-pair? _hd90419101_)
                                         (let ((_e90449107_
                                                (gx#syntax-e _hd90419101_)))
                                           (let ((_lp-hd90459111_
                                                  (##car _e90449107_))
                                                 (_lp-tl90469114_
                                                  (##cdr _e90449107_)))
                                             (_loop90439097_
                                              _lp-tl90469114_
                                              (cons _lp-hd90459111_
                                                    _datum90479104_))))
                                         (let ((_datum90489117_
                                                (reverse _datum90479104_)))
                                           (if (gx#stx-null? _tl90399088_)
                                               ((lambda (_L9121_ _L9123_)
                                                  (let ((_g91449152_
                                                         (lambda (_g91459148_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g91459148_))))
                                                    (let ((_g91439179_
                                                           (lambda (_g91459156_)
                                                             ((lambda (_L9159_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L9159_
                                (cons _L9123_
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons (begin
                                                          '#!void
                                                          (foldr (lambda (_g91709173_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g91719176_)
                           (cons _g91709173_ _g91719176_))
                         '()
                         _L9121_))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                      _g91459156_))))
              (_g91439179_
               (if (gx#stx-andmap
                    _memq-datum?8997_
                    (begin
                      '#!void
                      (foldr (lambda (_g91829185_ _g91839188_)
                               (cons _g91829185_ _g91839188_))
                             '()
                             _L9121_)))
                   (gx#datum->syntax '#f 'memq)
                   (if (gx#stx-andmap
                        _memv-datum?8999_
                        (begin
                          '#!void
                          (foldr (lambda (_g91909193_ _g91919196_)
                                   (cons _g91909193_ _g91919196_))
                                 '()
                                 _L9121_)))
                       (gx#datum->syntax '#f 'memv)
                       (gx#datum->syntax '#f 'member)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _datum90489117_
                                                _hd90359075_)
                                               (_g90039054_ _g90049058_)))))))
                           (_loop90439097_ _target90409091_ '()))
                         (_g90039054_ _g90049058_)))))
               (_g90039054_ _g90049058_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g90039054_ _g90049058_))))
                                           (_g90039054_ _g90049058_))))
                                   (_g90039054_ _g90049058_))))
                           (_g90039054_ _g90049058_)))))
                (let ((_g90019296_
                       (lambda (_g90049203_)
                         (if (gx#stx-pair? _g90049203_)
                             (let ((_e90179206_ (gx#syntax-e _g90049203_)))
                               (let ((_hd90189210_ (##car _e90179206_))
                                     (_tl90199213_ (##cdr _e90179206_)))
                                 (if (gx#stx-pair? _tl90199213_)
                                     (let ((_e90209216_
                                            (gx#syntax-e _tl90199213_)))
                                       (let ((_hd90219220_ (##car _e90209216_))
                                             (_tl90229223_
                                              (##cdr _e90209216_)))
                                         (if (gx#stx-pair? _tl90229223_)
                                             (let ((_e90239226_
                                                    (gx#syntax-e
                                                     _tl90229223_)))
                                               (let ((_hd90249230_
                                                      (##car _e90239226_))
                                                     (_tl90259233_
                                                      (##cdr _e90239226_)))
                                                 (if (gx#stx-pair?
                                                      _hd90249230_)
                                                     (let ((_e90269236_
                                                            (gx#syntax-e
                                                             _hd90249230_)))
                                                       (let ((_hd90279240_
                                                              (##car _e90269236_))
                                                             (_tl90289243_
                                                              (##cdr _e90269236_)))
                                                         (if (gx#stx-null?
                                                              _tl90289243_)
                                                             (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl90259233_)
                         ((lambda (_L9246_ _L9248_)
                            (let ((_g92659273_
                                   (lambda (_g92669269_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g92669269_))))
                              (let ((_g92649292_
                                     (lambda (_g92669277_)
                                       ((lambda (_L9280_)
                                          (let ()
                                            (cons _L9280_
                                                  (cons _L9248_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons _L9246_ '()))
                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _g92669277_))))
                                (_g92649292_
                                 (if (_memq-datum?8997_ _L9246_)
                                     (gx#datum->syntax '#f 'eq?)
                                     (if (_memv-datum?8999_ _L9246_)
                                         (gx#datum->syntax '#f 'eqv?)
                                         (gx#datum->syntax '#f 'equal?)))))))
                          _hd90279240_
                          _hd90219220_)
                         (_g90029199_ _g90049203_))
                     (_g90029199_ _g90049203_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g90029199_
                                                      _g90049203_))))
                                             (_g90029199_ _g90049203_))))
                                     (_g90029199_ _g90049203_))))
                             (_g90029199_ _g90049203_)))))
                  (let ((_g90009348_
                         (lambda (_g90049300_)
                           (if (gx#stx-pair? _g90049300_)
                               (let ((_e90069303_ (gx#syntax-e _g90049300_)))
                                 (let ((_hd90079307_ (##car _e90069303_))
                                       (_tl90089310_ (##cdr _e90069303_)))
                                   (if (gx#stx-pair? _tl90089310_)
                                       (let ((_e90099313_
                                              (gx#syntax-e _tl90089310_)))
                                         (let ((_hd90109317_
                                                (##car _e90099313_))
                                               (_tl90119320_
                                                (##cdr _e90099313_)))
                                           (if (gx#stx-pair? _tl90119320_)
                                               (let ((_e90129323_
                                                      (gx#syntax-e
                                                       _tl90119320_)))
                                                 (let ((_hd90139327_
                                                        (##car _e90129323_))
                                                       (_tl90149330_
                                                        (##cdr _e90129323_)))
                                                   (if (gx#stx-null?
                                                        _hd90139327_)
                                                       (if (gx#stx-null?
                                                            _tl90149330_)
                                                           ((lambda (_L9333_)
                                                              '#f)
                                                            _hd90109317_)
                                                           (_g90019296_
                                                            _g90049300_))
                                                       (_g90019296_
                                                        _g90049300_))))
                                               (_g90019296_ _g90049300_))))
                                       (_g90019296_ _g90049300_))))
                               (_g90019296_ _g90049300_)))))
                    (_g90009348_ _stx8994_)))))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#do|
      (lambda (_$stx9374_)
        (let ((_g93789449_
               (lambda (_g93799445_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g93799445_))))
          (let ((_g93779738_
                 (lambda (_g93799453_)
                   (if (gx#stx-pair? _g93799453_)
                       (let ((_e93869456_ (gx#syntax-e _g93799453_)))
                         (let ((_hd93879460_ (##car _e93869456_))
                               (_tl93889463_ (##cdr _e93869456_)))
                           (if (gx#stx-pair? _tl93889463_)
                               (let ((_e93899466_ (gx#syntax-e _tl93889463_)))
                                 (let ((_hd93909470_ (##car _e93899466_))
                                       (_tl93919473_ (##cdr _e93899466_)))
                                   (if (gx#stx-pair/null? _hd93909470_)
                                       (if (fx>= (gx#stx-length _hd93909470_)
                                                 '0)
                                           (let ((_g29370_
                                                  (gx#syntax-split-splice
                                                   _hd93909470_
                                                   '0)))
                                             (begin
                                               (let ((_g29371_
                                                      (values-count _g29370_)))
                                                 (if (not (fx= _g29371_ 2))
                                                     (error "Context expects 2 values"
                                                            _g29371_)))
                                               (let ((_target93929476_
                                                      (values-ref _g29370_ 0))
                                                     (_tl93949479_
                                                      (values-ref _g29370_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl93949479_)
                                                     (letrec ((_loop93959482_
                                                               (lambda (_hd93939486_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _step93999489_
                                _init94009491_
                                _var94019493_)
                         (if (gx#stx-pair? _hd93939486_)
                             (let ((_e93969496_ (gx#syntax-e _hd93939486_)))
                               (let ((_lp-hd93979500_ (##car _e93969496_))
                                     (_lp-tl93989503_ (##cdr _e93969496_)))
                                 (if (gx#stx-pair? _lp-hd93979500_)
                                     (let ((_e94059506_
                                            (gx#syntax-e _lp-hd93979500_)))
                                       (let ((_hd94069510_ (##car _e94059506_))
                                             (_tl94079513_
                                              (##cdr _e94059506_)))
                                         (if (gx#stx-pair? _tl94079513_)
                                             (let ((_e94089516_
                                                    (gx#syntax-e
                                                     _tl94079513_)))
                                               (let ((_hd94099520_
                                                      (##car _e94089516_))
                                                     (_tl94109523_
                                                      (##cdr _e94089516_)))
                                                 (if (gx#stx-pair/null?
                                                      _tl94109523_)
                                                     (if (fx>= (gx#stx-length
                                                                _tl94109523_)
                                                               '0)
                                                         (let ((_g29372_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl94109523_
                         '0)))
                   (begin
                     (let ((_g29373_ (values-count _g29372_)))
                       (if (not (fx= _g29373_ 2))
                           (error "Context expects 2 values" _g29373_)))
                     (let ((_target94119526_ (values-ref _g29372_ 0))
                           (_tl94139529_ (values-ref _g29372_ 1)))
                       (if (gx#stx-null? _tl94139529_)
                           (letrec ((_loop94149532_
                                     (lambda (_hd94129536_ _step94189539_)
                                       (if (gx#stx-pair? _hd94129536_)
                                           (let ((_e94159542_
                                                  (gx#syntax-e _hd94129536_)))
                                             (let ((_lp-hd94169546_
                                                    (##car _e94159542_))
                                                   (_lp-tl94179549_
                                                    (##cdr _e94159542_)))
                                               (_loop94149532_
                                                _lp-tl94179549_
                                                (cons _lp-hd94169546_
                                                      _step94189539_))))
                                           (let ((_step94199552_
                                                  (reverse _step94189539_)))
                                             (_loop93959482_
                                              _lp-tl93989503_
                                              (cons _step94199552_
                                                    _step93999489_)
                                              (cons _hd94099520_
                                                    _init94009491_)
                                              (cons _hd94069510_
                                                    _var94019493_)))))))
                             (_loop94149532_ _target94119526_ '()))
                           (_g93789449_ _g93799453_)))))
                 (_g93789449_ _g93799453_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g93789449_
                                                      _g93799453_))))
                                             (_g93789449_ _g93799453_))))
                                     (_g93789449_ _g93799453_))))
                             (let ((_step94029556_ (reverse _step93999489_))
                                   (_init94039559_ (reverse _init94009491_))
                                   (_var94049561_ (reverse _var94019493_)))
                               (if (gx#stx-pair? _tl93919473_)
                                   (let ((_e94209564_
                                          (gx#syntax-e _tl93919473_)))
                                     (let ((_hd94219568_ (##car _e94209564_))
                                           (_tl94229571_ (##cdr _e94209564_)))
                                       (if (gx#stx-pair? _hd94219568_)
                                           (let ((_e94239574_
                                                  (gx#syntax-e _hd94219568_)))
                                             (let ((_hd94249578_
                                                    (##car _e94239574_))
                                                   (_tl94259581_
                                                    (##cdr _e94239574_)))
                                               (if (gx#stx-pair/null?
                                                    _tl94259581_)
                                                   (if (fx>= (gx#stx-length
                                                              _tl94259581_)
                                                             '0)
                                                       (let ((_g29374_
                                                              (gx#syntax-split-splice
                                                               _tl94259581_
                                                               '0)))
                                                         (begin
                                                           (let ((_g29375_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (values-count _g29374_)))
                     (if (not (fx= _g29375_ 2))
                         (error "Context expects 2 values" _g29375_)))
                   (let ((_target94269584_ (values-ref _g29374_ 0))
                         (_tl94289587_ (values-ref _g29374_ 1)))
                     (if (gx#stx-null? _tl94289587_)
                         (letrec ((_loop94299590_
                                   (lambda (_hd94279594_ _fini94339597_)
                                     (if (gx#stx-pair? _hd94279594_)
                                         (let ((_e94309600_
                                                (gx#syntax-e _hd94279594_)))
                                           (let ((_lp-hd94319604_
                                                  (##car _e94309600_))
                                                 (_lp-tl94329607_
                                                  (##cdr _e94309600_)))
                                             (_loop94299590_
                                              _lp-tl94329607_
                                              (cons _lp-hd94319604_
                                                    _fini94339597_))))
                                         (let ((_fini94349610_
                                                (reverse _fini94339597_)))
                                           (if (gx#stx-pair/null? _tl94229571_)
                                               (if (fx>= (gx#stx-length
                                                          _tl94229571_)
                                                         '0)
                                                   (let ((_g29376_
                                                          (gx#syntax-split-splice
                                                           _tl94229571_
                                                           '0)))
                                                     (begin
                                                       (let ((_g29377_
                                                              (values-count
                                                               _g29376_)))
                                                         (if (not (fx= _g29377_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g29377_)))
               (let ((_target94359614_ (values-ref _g29376_ 0))
                     (_tl94379617_ (values-ref _g29376_ 1)))
                 (if (gx#stx-null? _tl94379617_)
                     (letrec ((_loop94389620_
                               (lambda (_hd94369624_ _body94429627_)
                                 (if (gx#stx-pair? _hd94369624_)
                                     (let ((_e94399630_
                                            (gx#syntax-e _hd94369624_)))
                                       (let ((_lp-hd94409634_
                                              (##car _e94399630_))
                                             (_lp-tl94419637_
                                              (##cdr _e94399630_)))
                                         (_loop94389620_
                                          _lp-tl94419637_
                                          (cons _lp-hd94409634_
                                                _body94429627_))))
                                     (let ((_body94439640_
                                            (reverse _body94429627_)))
                                       ((lambda (_L9644_
                                                 _L9646_
                                                 _L9647_
                                                 _L9648_
                                                 _L9649_
                                                 _L9650_)
                                          (if (gx#stx-andmap
                                               gx#identifier?
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g96839686_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g96849689_)
                  (cons _g96839686_ _g96849689_))
                '()
                _L9650_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (gx#datum->syntax '#f 'let)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           '$loop)
                                                          (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-check-splice-targets _L9649_ _L9650_)
                          (foldr (lambda (_g96919704_ _g96929707_ _g96939709_)
                                   (cons (cons _g96929707_
                                               (cons _g96919704_ '()))
                                         _g96939709_))
                                 '()
                                 _L9649_
                                 _L9650_))
                        (cons (cons (gx#datum->syntax '#f 'if)
                                    (cons (cons (gx#datum->syntax '#f 'not)
                                                (cons _L9647_ '()))
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'begin)
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g96949712_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g96959715_)
                         (cons _g96949712_ _g96959715_))
                       (cons (cons (gx#datum->syntax '#f '$loop)
                                   (begin
                                     (gx#syntax-check-splice-targets
                                      _L9648_
                                      _L9650_)
                                     (foldr (lambda (_g96969718_
                                                     _g96979721_
                                                     _g96989723_)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'begin)
                                                          (cons _g96979721_
                                                                (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (foldr (lambda (_g96999726_ _g97009729_)
                                   (cons _g96999726_ _g97009729_))
                                 '()
                                 _g96969718_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g96989723_))
                                            '()
                                            _L9648_
                                            _L9650_)))
                             '())
                       _L9644_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'begin)
                                                            (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (begin
                            '#!void
                            (foldr (lambda (_g97019732_ _g97029735_)
                                     (cons _g97019732_ _g97029735_))
                                   '()
                                   _L9646_))))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g93789449_ _g93799453_)))
                                        _body94439640_
                                        _fini94349610_
                                        _hd94249578_
                                        _step94029556_
                                        _init94039559_
                                        _var94049561_))))))
                       (_loop94389620_ _target94359614_ '()))
                     (_g93789449_ _g93799453_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g93789449_ _g93799453_))
                                               (_g93789449_ _g93799453_)))))))
                           (_loop94299590_ _target94269584_ '()))
                         (_g93789449_ _g93799453_)))))
               (_g93789449_ _g93799453_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g93789449_ _g93799453_))))
                                           (_g93789449_ _g93799453_))))
                                   (_g93789449_ _g93799453_)))))))
               (_loop93959482_ _target93929476_ '() '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g93789449_
                                                      _g93799453_)))))
                                           (_g93789449_ _g93799453_))
                                       (_g93789449_ _g93799453_))))
                               (_g93789449_ _g93799453_))))
                       (_g93789449_ _g93799453_)))))
            (_g93779738_ _$stx9374_)))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#do-while|
      (lambda (_$stx9746_)
        (let ((_g97509773_
               (lambda (_g97519769_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g97519769_))))
          (let ((_g97499844_
                 (lambda (_g97519777_)
                   (if (gx#stx-pair? _g97519777_)
                       (let ((_e97569780_ (gx#syntax-e _g97519777_)))
                         (let ((_hd97579784_ (##car _e97569780_))
                               (_tl97589787_ (##cdr _e97569780_)))
                           (if (gx#stx-pair? _tl97589787_)
                               (let ((_e97599790_ (gx#syntax-e _tl97589787_)))
                                 (let ((_hd97609794_ (##car _e97599790_))
                                       (_tl97619797_ (##cdr _e97599790_)))
                                   (if (gx#stx-pair? _tl97619797_)
                                       (let ((_e97629800_
                                              (gx#syntax-e _tl97619797_)))
                                         (let ((_hd97639804_
                                                (##car _e97629800_))
                                               (_tl97649807_
                                                (##cdr _e97629800_)))
                                           (if (gx#stx-pair? _hd97639804_)
                                               (let ((_e97659810_
                                                      (gx#syntax-e
                                                       _hd97639804_)))
                                                 (let ((_hd97669814_
                                                        (##car _e97659810_))
                                                       (_tl97679817_
                                                        (##cdr _e97659810_)))
                                                   ((lambda (_L9820_
                                                             _L9822_
                                                             _L9823_
                                                             _L9824_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'do)
                                                            (cons _L9824_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (cons (gx#datum->syntax '#f 'not)
                                            (cons _L9823_ '()))
                                      _L9822_)
                                _L9820_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl97649807_
                                                    _tl97679817_
                                                    _hd97669814_
                                                    _hd97609794_)))
                                               (_g97509773_ _g97519777_))))
                                       (_g97509773_ _g97519777_))))
                               (_g97509773_ _g97519777_))))
                       (_g97509773_ _g97519777_)))))
            (_g97499844_ _$stx9746_)))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#begin0|
      (lambda (_$stx9848_)
        (let ((_g98539884_
               (lambda (_g98549880_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g98549880_))))
          (let ((_g98529969_
                 (lambda (_g98549888_)
                   (if (gx#stx-pair? _g98549888_)
                       (let ((_e98649891_ (gx#syntax-e _g98549888_)))
                         (let ((_hd98659895_ (##car _e98649891_))
                               (_tl98669898_ (##cdr _e98649891_)))
                           (if (gx#stx-pair? _tl98669898_)
                               (let ((_e98679901_ (gx#syntax-e _tl98669898_)))
                                 (let ((_hd98689905_ (##car _e98679901_))
                                       (_tl98699908_ (##cdr _e98679901_)))
                                   (if (gx#stx-pair/null? _tl98699908_)
                                       (if (fx>= (gx#stx-length _tl98699908_)
                                                 '0)
                                           (let ((_g29378_
                                                  (gx#syntax-split-splice
                                                   _tl98699908_
                                                   '0)))
                                             (begin
                                               (let ((_g29379_
                                                      (values-count _g29378_)))
                                                 (if (not (fx= _g29379_ 2))
                                                     (error "Context expects 2 values"
                                                            _g29379_)))
                                               (let ((_target98709911_
                                                      (values-ref _g29378_ 0))
                                                     (_tl98729914_
                                                      (values-ref _g29378_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl98729914_)
                                                     (letrec ((_loop98739917_
                                                               (lambda (_hd98719921_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _rest98779924_)
                         (if (gx#stx-pair? _hd98719921_)
                             (let ((_e98749927_ (gx#syntax-e _hd98719921_)))
                               (let ((_lp-hd98759931_ (##car _e98749927_))
                                     (_lp-tl98769934_ (##cdr _e98749927_)))
                                 (_loop98739917_
                                  _lp-tl98769934_
                                  (cons _lp-hd98759931_ _rest98779924_))))
                             (let ((_rest98789937_ (reverse _rest98779924_)))
                               ((lambda (_L9941_ _L9943_)
                                  (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f '$r)
                                                    (cons _L9943_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '%#expression)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'begin)
                              (begin
                                '#!void
                                (foldr (lambda (_g99609963_ _g99619966_)
                                         (cons _g99609963_ _g99619966_))
                                       '()
                                       _L9941_)))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           '$r)
                                                          '())))))
                                _rest98789937_
                                _hd98689905_))))))
               (_loop98739917_ _target98709911_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g98539884_
                                                      _g98549888_)))))
                                           (_g98539884_ _g98549888_))
                                       (_g98539884_ _g98549888_))))
                               (_g98539884_ _g98549888_))))
                       (_g98539884_ _g98549888_)))))
            (let ((_g985110009_
                   (lambda (_g98549973_)
                     (if (gx#stx-pair? _g98549973_)
                         (let ((_e98569976_ (gx#syntax-e _g98549973_)))
                           (let ((_hd98579980_ (##car _e98569976_))
                                 (_tl98589983_ (##cdr _e98569976_)))
                             (if (gx#stx-pair? _tl98589983_)
                                 (let ((_e98599986_
                                        (gx#syntax-e _tl98589983_)))
                                   (let ((_hd98609990_ (##car _e98599986_))
                                         (_tl98619993_ (##cdr _e98599986_)))
                                     (if (gx#stx-null? _tl98619993_)
                                         ((lambda (_L9996_) _L9996_)
                                          _hd98609990_)
                                         (_g98529969_ _g98549973_))))
                                 (_g98529969_ _g98549973_))))
                         (_g98529969_ _g98549973_)))))
              (_g985110009_ _$stx9848_))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#rec|
      (lambda (_$stx10014_)
        (let ((_g1002010073_
               (lambda (_g1002110069_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1002110069_))))
          (let ((_g1001910172_
                 (lambda (_g1002110077_)
                   (if (gx#stx-pair? _g1002110077_)
                       (let ((_e1005010080_ (gx#syntax-e _g1002110077_)))
                         (let ((_hd1005110084_ (##car _e1005010080_))
                               (_tl1005210087_ (##cdr _e1005010080_)))
                           (if (gx#stx-pair? _tl1005210087_)
                               (let ((_e1005310090_
                                      (gx#syntax-e _tl1005210087_)))
                                 (let ((_hd1005410094_ (##car _e1005310090_))
                                       (_tl1005510097_ (##cdr _e1005310090_)))
                                   (if (gx#stx-pair? _hd1005410094_)
                                       (let ((_e1005610100_
                                              (gx#syntax-e _hd1005410094_)))
                                         (let ((_hd1005710104_
                                                (##car _e1005610100_))
                                               (_tl1005810107_
                                                (##cdr _e1005610100_)))
                                           (if (gx#stx-pair/null?
                                                _tl1005510097_)
                                               (if (fx>= (gx#stx-length
                                                          _tl1005510097_)
                                                         '0)
                                                   (let ((_g29380_
                                                          (gx#syntax-split-splice
                                                           _tl1005510097_
                                                           '0)))
                                                     (begin
                                                       (let ((_g29381_
                                                              (values-count
                                                               _g29380_)))
                                                         (if (not (fx= _g29381_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g29381_)))
               (let ((_target1005910110_ (values-ref _g29380_ 0))
                     (_tl1006110113_ (values-ref _g29380_ 1)))
                 (if (gx#stx-null? _tl1006110113_)
                     (letrec ((_loop1006210116_
                               (lambda (_hd1006010120_ _body1006610123_)
                                 (if (gx#stx-pair? _hd1006010120_)
                                     (let ((_e1006310126_
                                            (gx#syntax-e _hd1006010120_)))
                                       (let ((_lp-hd1006410130_
                                              (##car _e1006310126_))
                                             (_lp-tl1006510133_
                                              (##cdr _e1006310126_)))
                                         (_loop1006210116_
                                          _lp-tl1006510133_
                                          (cons _lp-hd1006410130_
                                                _body1006610123_))))
                                     (let ((_body1006710136_
                                            (reverse _body1006610123_)))
                                       ((lambda (_L10140_ _L10142_ _L10143_)
                                          (if (gx#identifier? _L10143_)
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'letrec)
                                                    (cons (cons (cons _L10143_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax '#f 'lambda)
                                          (cons _L10142_
                                                (begin
                                                  '#!void
                                                  (foldr (lambda (_g1016310166_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1016410169_)
                   (cons _g1016310166_ _g1016410169_))
                 '()
                 _L10140_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))
                        '())
                  (cons _L10143_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1002010073_ _g1002110077_)))
                                        _body1006710136_
                                        _tl1005810107_
                                        _hd1005710104_))))))
                       (_loop1006210116_ _target1005910110_ '()))
                     (_g1002010073_ _g1002110077_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1002010073_
                                                    _g1002110077_))
                                               (_g1002010073_ _g1002110077_))))
                                       (_g1002010073_ _g1002110077_))))
                               (_g1002010073_ _g1002110077_))))
                       (_g1002010073_ _g1002110077_)))))
            (let ((_g1001810238_
                   (lambda (_g1002110176_)
                     (if (gx#stx-pair? _g1002110176_)
                         (let ((_e1003510179_ (gx#syntax-e _g1002110176_)))
                           (let ((_hd1003610183_ (##car _e1003510179_))
                                 (_tl1003710186_ (##cdr _e1003510179_)))
                             (if (gx#stx-pair? _tl1003710186_)
                                 (let ((_e1003810189_
                                        (gx#syntax-e _tl1003710186_)))
                                   (let ((_hd1003910193_ (##car _e1003810189_))
                                         (_tl1004010196_
                                          (##cdr _e1003810189_)))
                                     (if (gx#stx-pair? _hd1003910193_)
                                         (let ((_e1004110199_
                                                (gx#syntax-e _hd1003910193_)))
                                           (let ((_hd1004210203_
                                                  (##car _e1004110199_))
                                                 (_tl1004310206_
                                                  (##cdr _e1004110199_)))
                                             (if (gx#identifier?
                                                  _hd1004210203_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core::<sugar>::<sugar:2>[1]#_g29382_|
                                                      _hd1004210203_)
                                                     (if (gx#stx-pair?
                                                          _tl1004010196_)
                                                         (let ((_e1004410209_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1004010196_)))
                   (let ((_hd1004510213_ (##car _e1004410209_))
                         (_tl1004610216_ (##cdr _e1004410209_)))
                     (if (gx#stx-null? _tl1004610216_)
                         ((lambda (_L10219_ _L10221_)
                            (if (gx#identifier-list? _L10221_)
                                (cons (gx#datum->syntax '#f 'letrec-values)
                                      (cons (cons (cons _L10221_
                                                        (cons _L10219_ '()))
                                                  '())
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'values)
                                                        _L10221_)
                                                  '())))
                                (_g1001910172_ _g1002110176_)))
                          _hd1004510213_
                          _tl1004310206_)
                         (_g1001910172_ _g1002110176_))))
                 (_g1001910172_ _g1002110176_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1001910172_
                                                      _g1002110176_))
                                                 (_g1001910172_
                                                  _g1002110176_))))
                                         (_g1001910172_ _g1002110176_))))
                                 (_g1001910172_ _g1002110176_))))
                         (_g1001910172_ _g1002110176_)))))
              (let ((_g1001710292_
                     (lambda (_g1002110242_)
                       (if (gx#stx-pair? _g1002110242_)
                           (let ((_e1002410245_ (gx#syntax-e _g1002110242_)))
                             (let ((_hd1002510249_ (##car _e1002410245_))
                                   (_tl1002610252_ (##cdr _e1002410245_)))
                               (if (gx#stx-pair? _tl1002610252_)
                                   (let ((_e1002710255_
                                          (gx#syntax-e _tl1002610252_)))
                                     (let ((_hd1002810259_
                                            (##car _e1002710255_))
                                           (_tl1002910262_
                                            (##cdr _e1002710255_)))
                                       (if (gx#stx-pair? _tl1002910262_)
                                           (let ((_e1003010265_
                                                  (gx#syntax-e
                                                   _tl1002910262_)))
                                             (let ((_hd1003110269_
                                                    (##car _e1003010265_))
                                                   (_tl1003210272_
                                                    (##cdr _e1003010265_)))
                                               (if (gx#stx-null?
                                                    _tl1003210272_)
                                                   ((lambda (_L10275_ _L10277_)
                                                      (if (gx#identifier?
                                                           _L10277_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'letrec)
                        (cons (cons (cons _L10277_ (cons _L10275_ '())) '())
                              (cons _L10277_ '())))
                  (_g1001810238_ _g1002110242_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1003110269_
                                                    _hd1002810259_)
                                                   (_g1001810238_
                                                    _g1002110242_))))
                                           (_g1001810238_ _g1002110242_))))
                                   (_g1001810238_ _g1002110242_))))
                           (_g1001810238_ _g1002110242_)))))
                (_g1001710292_ _$stx10014_)))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#alet|
      (lambda (_stx10297_)
        (let ((_let-head?10300_
               (lambda (_x10847_)
                 (let ((_g1085110862_
                        (lambda (_g1085210858_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1085210858_))))
                   (let ((_g1085010873_
                          (lambda (_g1085210866_)
                            ((lambda () (gx#identifier? _x10847_))))))
                     (let ((_g1084910903_
                            (lambda (_g1085210877_)
                              (if (gx#stx-pair? _g1085210877_)
                                  (let ((_e1085410880_
                                         (gx#syntax-e _g1085210877_)))
                                    (let ((_hd1085510884_
                                           (##car _e1085410880_))
                                          (_tl1085610887_
                                           (##cdr _e1085410880_)))
                                      (if (gx#identifier? _hd1085510884_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core::<sugar>::<sugar:2>[1]#_g29392_|
                                               _hd1085510884_)
                                              ((lambda (_L10890_)
                                                 (gx#stx-andmap
                                                  gx#identifier?
                                                  _L10890_))
                                               _tl1085610887_)
                                              (_g1085010873_ _g1085210877_))
                                          (_g1085010873_ _g1085210877_))))
                                  (_g1085010873_ _g1085210877_)))))
                       (_g1084910903_ _x10847_)))))))
          (let ((_let-head10302_
                 (lambda (_x10787_)
                   (let ((_g1079110802_
                          (lambda (_g1079210798_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g1079210798_))))
                     (let ((_g1079010813_
                            (lambda (_g1079210806_)
                              ((lambda () (list _x10787_))))))
                       (let ((_g1078910843_
                              (lambda (_g1079210817_)
                                (if (gx#stx-pair? _g1079210817_)
                                    (let ((_e1079410820_
                                           (gx#syntax-e _g1079210817_)))
                                      (let ((_hd1079510824_
                                             (##car _e1079410820_))
                                            (_tl1079610827_
                                             (##cdr _e1079410820_)))
                                        (if (gx#identifier? _hd1079510824_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core::<sugar>::<sugar:2>[1]#_g29391_|
                                                 _hd1079510824_)
                                                ((lambda (_L10830_) _L10830_)
                                                 _tl1079610827_)
                                                (_g1079010813_ _g1079210817_))
                                            (_g1079010813_ _g1079210817_))))
                                    (_g1079010813_ _g1079210817_)))))
                         (_g1078910843_ _x10787_)))))))
            (let ((_g1030510363_
                   (lambda (_g1030610359_)
                     (gx#raise-syntax-error '#f '"Bad syntax" _g1030610359_))))
              (let ((_g1030410713_
                     (lambda (_g1030610367_)
                       (if (gx#stx-pair? _g1030610367_)
                           (let ((_e1032610370_ (gx#syntax-e _g1030610367_)))
                             (let ((_hd1032710374_ (##car _e1032610370_))
                                   (_tl1032810377_ (##cdr _e1032610370_)))
                               (if (gx#stx-pair? _tl1032810377_)
                                   (let ((_e1032910380_
                                          (gx#syntax-e _tl1032810377_)))
                                     (let ((_hd1033010384_
                                            (##car _e1032910380_))
                                           (_tl1033110387_
                                            (##cdr _e1032910380_)))
                                       (if (gx#stx-pair/null? _hd1033010384_)
                                           (if (fx>= (gx#stx-length
                                                      _hd1033010384_)
                                                     '0)
                                               (let ((_g29383_
                                                      (gx#syntax-split-splice
                                                       _hd1033010384_
                                                       '0)))
                                                 (begin
                                                   (let ((_g29384_
                                                          (values-count
                                                           _g29383_)))
                                                     (if (not (fx= _g29384_ 2))
                                                         (error "Context expects 2 values"
                                                                _g29384_)))
                                                   (let ((_target1033210390_
                                                          (values-ref
                                                           _g29383_
                                                           0))
                                                         (_tl1033410393_
                                                          (values-ref
                                                           _g29383_
                                                           1)))
                                                     (if (gx#stx-null?
                                                          _tl1033410393_)
                                                         (letrec ((_loop1033510396_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd1033310400_
                                    _e1033910403_
                                    _hd1034010405_)
                             (if (gx#stx-pair? _hd1033310400_)
                                 (let ((_e1033610408_
                                        (gx#syntax-e _hd1033310400_)))
                                   (let ((_lp-hd1033710412_
                                          (##car _e1033610408_))
                                         (_lp-tl1033810415_
                                          (##cdr _e1033610408_)))
                                     (if (gx#stx-pair? _lp-hd1033710412_)
                                         (let ((_e1034310418_
                                                (gx#syntax-e
                                                 _lp-hd1033710412_)))
                                           (let ((_hd1034410422_
                                                  (##car _e1034310418_))
                                                 (_tl1034510425_
                                                  (##cdr _e1034310418_)))
                                             (if (gx#stx-pair? _tl1034510425_)
                                                 (let ((_e1034610428_
                                                        (gx#syntax-e
                                                         _tl1034510425_)))
                                                   (let ((_hd1034710432_
                                                          (##car _e1034610428_))
                                                         (_tl1034810435_
                                                          (##cdr _e1034610428_)))
                                                     (if (gx#stx-null?
                                                          _tl1034810435_)
                                                         (_loop1033510396_
                                                          _lp-tl1033810415_
                                                          (cons _hd1034710432_
                                                                _e1033910403_)
                                                          (cons _hd1034410422_
                                                                _hd1034010405_))
                                                         (_g1030510363_
                                                          _g1030610367_))))
                                                 (_g1030510363_
                                                  _g1030610367_))))
                                         (_g1030510363_ _g1030610367_))))
                                 (let ((_e1034110438_ (reverse _e1033910403_))
                                       (_hd1034210441_
                                        (reverse _hd1034010405_)))
                                   (if (gx#stx-pair/null? _tl1033110387_)
                                       (if (fx>= (gx#stx-length _tl1033110387_)
                                                 '0)
                                           (let ((_g29385_
                                                  (gx#syntax-split-splice
                                                   _tl1033110387_
                                                   '0)))
                                             (begin
                                               (let ((_g29386_
                                                      (values-count _g29385_)))
                                                 (if (not (fx= _g29386_ 2))
                                                     (error "Context expects 2 values"
                                                            _g29386_)))
                                               (let ((_target1034910444_
                                                      (values-ref _g29385_ 0))
                                                     (_tl1035110447_
                                                      (values-ref _g29385_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl1035110447_)
                                                     (letrec ((_loop1035210450_
                                                               (lambda (_hd1035010454_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _body1035610457_)
                         (if (gx#stx-pair? _hd1035010454_)
                             (let ((_e1035310460_
                                    (gx#syntax-e _hd1035010454_)))
                               (let ((_lp-hd1035410464_ (##car _e1035310460_))
                                     (_lp-tl1035510467_ (##cdr _e1035310460_)))
                                 (_loop1035210450_
                                  _lp-tl1035510467_
                                  (cons _lp-hd1035410464_ _body1035610457_))))
                             (let ((_body1035710470_
                                    (reverse _body1035610457_)))
                               ((lambda (_L10474_ _L10476_ _L10477_)
                                  (if (gx#stx-andmap
                                       _let-head?10300_
                                       (begin
                                         '#!void
                                         (foldr (lambda (_g1050010503_
                                                         _g1050110506_)
                                                  (cons _g1050010503_
                                                        _g1050110506_))
                                                '()
                                                _L10477_)))
                                      (let ((_g1050910542_
                                             (lambda (_g1051010538_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1051010538_))))
                                        (let ((_g1050810693_
                                               (lambda (_g1051010546_)
                                                 (if (gx#stx-pair?
                                                      _g1051010546_)
                                                     (let ((_e1051310549_
                                                            (gx#syntax-e
                                                             _g1051010546_)))
                                                       (let ((_hd1051410553_
                                                              (##car _e1051310549_))
                                                             (_tl1051510556_
                                                              (##cdr _e1051310549_)))
                                                         (if (gx#stx-pair/null?
                                                              _hd1051410553_)
                                                             (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _hd1051410553_)
                               '0)
                         (let ((_g29387_
                                (gx#syntax-split-splice _hd1051410553_ '0)))
                           (begin
                             (let ((_g29388_ (values-count _g29387_)))
                               (if (not (fx= _g29388_ 2))
                                   (error "Context expects 2 values"
                                          _g29388_)))
                             (let ((_target1051610559_ (values-ref _g29387_ 0))
                                   (_tl1051810562_ (values-ref _g29387_ 1)))
                               (if (gx#stx-null? _tl1051810562_)
                                   (letrec ((_loop1051910565_
                                             (lambda (_hd1051710569_
                                                      _$e1052310572_)
                                               (if (gx#stx-pair?
                                                    _hd1051710569_)
                                                   (let ((_e1052010575_
                                                          (gx#syntax-e
                                                           _hd1051710569_)))
                                                     (let ((_lp-hd1052110579_
                                                            (##car _e1052010575_))
                                                           (_lp-tl1052210582_
                                                            (##cdr _e1052010575_)))
                                                       (_loop1051910565_
                                                        _lp-tl1052210582_
                                                        (cons _lp-hd1052110579_
                                                              _$e1052310572_))))
                                                   (let ((_$e1052410585_
                                                          (reverse _$e1052310572_)))
                                                     (if (gx#stx-pair?
                                                          _tl1051510556_)
                                                         (let ((_e1052510589_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1051510556_)))
                   (let ((_hd1052610593_ (##car _e1052510589_))
                         (_tl1052710596_ (##cdr _e1052510589_)))
                     (if (gx#stx-pair/null? _hd1052610593_)
                         (if (fx>= (gx#stx-length _hd1052610593_) '0)
                             (let ((_g29389_
                                    (gx#syntax-split-splice
                                     _hd1052610593_
                                     '0)))
                               (begin
                                 (let ((_g29390_ (values-count _g29389_)))
                                   (if (not (fx= _g29390_ 2))
                                       (error "Context expects 2 values"
                                              _g29390_)))
                                 (let ((_target1052810599_
                                        (values-ref _g29389_ 0))
                                       (_tl1053010602_
                                        (values-ref _g29389_ 1)))
                                   (if (gx#stx-null? _tl1053010602_)
                                       (letrec ((_loop1053110605_
                                                 (lambda (_hd1052910609_
                                                          _hd-bind1053510612_)
                                                   (if (gx#stx-pair?
                                                        _hd1052910609_)
                                                       (let ((_e1053210615_
                                                              (gx#syntax-e
                                                               _hd1052910609_)))
                                                         (let ((_lp-hd1053310619_
                                                                (##car _e1053210615_))
                                                               (_lp-tl1053410622_
                                                                (##cdr _e1053210615_)))
                                                           (_loop1053110605_
                                                            _lp-tl1053410622_
                                                            (cons _lp-hd1053310619_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd-bind1053510612_))))
               (let ((_hd-bind1053610625_ (reverse _hd-bind1053510612_)))
                 (if (gx#stx-null? _tl1052710596_)
                     ((lambda (_L10629_ _L10631_)
                        (let ()
                          (cons (gx#datum->syntax '#f 'let-values)
                                (cons (begin
                                        (gx#syntax-check-splice-targets
                                         _L10476_
                                         _L10631_)
                                        (foldr (lambda (_g1065410665_
                                                        _g1065510668_
                                                        _g1065610670_)
                                                 (cons (cons (cons _g1065510668_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons _g1065410665_ '()))
               _g1065610670_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()
                                               _L10476_
                                               _L10631_))
                                      (cons (cons (gx#datum->syntax '#f 'and)
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g1065710673_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1065810676_)
                     (cons _g1065710673_ _g1065810676_))
                   (cons (cons (gx#datum->syntax '#f 'let-values)
                               (cons (begin
                                       (gx#syntax-check-splice-targets
                                        _L10631_
                                        _L10629_)
                                       (foldr (lambda (_g1065910679_
                                                       _g1066010682_
                                                       _g1066110684_)
                                                (cons (cons _g1066010682_
                                                            (cons _g1065910679_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _g1066110684_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()
                                              _L10631_
                                              _L10629_))
                                     (begin
                                       '#!void
                                       (foldr (lambda (_g1066210687_
                                                       _g1066310690_)
                                                (cons _g1066210687_
                                                      _g1066310690_))
                                              '()
                                              _L10474_))))
                         '())
                   _L10631_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                      _hd-bind1053610625_
                      _$e1052410585_)
                     (_g1050910542_ _g1051010546_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop1053110605_
                                          _target1052810599_
                                          '()))
                                       (_g1050910542_ _g1051010546_)))))
                             (_g1050910542_ _g1051010546_))
                         (_g1050910542_ _g1051010546_))))
                 (_g1050910542_ _g1051010546_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop1051910565_ _target1051610559_ '()))
                                   (_g1050910542_ _g1051010546_)))))
                         (_g1050910542_ _g1051010546_))
                     (_g1050910542_ _g1051010546_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1050910542_
                                                      _g1051010546_)))))
                                          (_g1050810693_
                                           (list (gx#gentemps
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g1069610699_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1069710702_)
                     (cons _g1069610699_ _g1069710702_))
                   '()
                   _L10477_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (gx#stx-map
                                                  _let-head10302_
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g1070410707_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1070510710_)
                     (cons _g1070410707_ _g1070510710_))
                   '()
                   _L10477_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_g1030510363_ _g1030610367_)))
                                _body1035710470_
                                _e1034110438_
                                _hd1034210441_))))))
               (_loop1035210450_ _target1034910444_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1030510363_
                                                      _g1030610367_)))))
                                           (_g1030510363_ _g1030610367_))
                                       (_g1030510363_ _g1030610367_)))))))
                   (_loop1033510396_ _target1033210390_ '() '()))
                 (_g1030510363_ _g1030610367_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1030510363_ _g1030610367_))
                                           (_g1030510363_ _g1030610367_))))
                                   (_g1030510363_ _g1030610367_))))
                           (_g1030510363_ _g1030610367_)))))
                (let ((_g1030310783_
                       (lambda (_g1030610717_)
                         (if (gx#stx-pair? _g1030610717_)
                             (let ((_e1031110720_ (gx#syntax-e _g1030610717_)))
                               (let ((_hd1031210724_ (##car _e1031110720_))
                                     (_tl1031310727_ (##cdr _e1031110720_)))
                                 (if (gx#stx-pair? _tl1031310727_)
                                     (let ((_e1031410730_
                                            (gx#syntax-e _tl1031310727_)))
                                       (let ((_hd1031510734_
                                              (##car _e1031410730_))
                                             (_tl1031610737_
                                              (##cdr _e1031410730_)))
                                         (if (gx#stx-pair? _hd1031510734_)
                                             (let ((_e1031710740_
                                                    (gx#syntax-e
                                                     _hd1031510734_)))
                                               (let ((_hd1031810744_
                                                      (##car _e1031710740_))
                                                     (_tl1031910747_
                                                      (##cdr _e1031710740_)))
                                                 (if (gx#stx-pair?
                                                      _tl1031910747_)
                                                     (let ((_e1032010750_
                                                            (gx#syntax-e
                                                             _tl1031910747_)))
                                                       (let ((_hd1032110754_
                                                              (##car _e1032010750_))
                                                             (_tl1032210757_
                                                              (##cdr _e1032010750_)))
                                                         (if (gx#stx-null?
                                                              _tl1032210757_)
                                                             ((lambda (_L10760_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L10762_
                               _L10763_
                               _L10764_)
                        (if (_let-head?10300_ _L10763_)
                            (cons _L10764_
                                  (cons (cons (cons _L10763_
                                                    (cons _L10762_ '()))
                                              '())
                                        _L10760_))
                            (_g1030410713_ _g1030610717_)))
                      _tl1031610737_
                      _hd1032110754_
                      _hd1031810744_
                      _hd1031210724_)
                     (_g1030410713_ _g1030610717_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1030410713_
                                                      _g1030610717_))))
                                             (_g1030410713_ _g1030610717_))))
                                     (_g1030410713_ _g1030610717_))))
                             (_g1030410713_ _g1030610717_)))))
                  (_g1030310783_ _stx10297_))))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#alet*|
      (lambda (_$stx10911_)
        (let ((_g1091610961_
               (lambda (_g1091710957_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1091710957_))))
          (let ((_g1091511062_
                 (lambda (_g1091710965_)
                   (if (gx#stx-pair? _g1091710965_)
                       (let ((_e1093810968_ (gx#syntax-e _g1091710965_)))
                         (let ((_hd1093910972_ (##car _e1093810968_))
                               (_tl1094010975_ (##cdr _e1093810968_)))
                           (if (gx#stx-pair? _tl1094010975_)
                               (let ((_e1094110978_
                                      (gx#syntax-e _tl1094010975_)))
                                 (let ((_hd1094210982_ (##car _e1094110978_))
                                       (_tl1094310985_ (##cdr _e1094110978_)))
                                   (if (gx#stx-pair? _hd1094210982_)
                                       (let ((_e1094410988_
                                              (gx#syntax-e _hd1094210982_)))
                                         (let ((_hd1094510992_
                                                (##car _e1094410988_))
                                               (_tl1094610995_
                                                (##cdr _e1094410988_)))
                                           (if (gx#stx-pair/null?
                                                _tl1094310985_)
                                               (if (fx>= (gx#stx-length
                                                          _tl1094310985_)
                                                         '0)
                                                   (let ((_g29393_
                                                          (gx#syntax-split-splice
                                                           _tl1094310985_
                                                           '0)))
                                                     (begin
                                                       (let ((_g29394_
                                                              (values-count
                                                               _g29393_)))
                                                         (if (not (fx= _g29394_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g29394_)))
               (let ((_target1094710998_ (values-ref _g29393_ 0))
                     (_tl1094911001_ (values-ref _g29393_ 1)))
                 (if (gx#stx-null? _tl1094911001_)
                     (letrec ((_loop1095011004_
                               (lambda (_hd1094811008_ _body1095411011_)
                                 (if (gx#stx-pair? _hd1094811008_)
                                     (let ((_e1095111014_
                                            (gx#syntax-e _hd1094811008_)))
                                       (let ((_lp-hd1095211018_
                                              (##car _e1095111014_))
                                             (_lp-tl1095311021_
                                              (##cdr _e1095111014_)))
                                         (_loop1095011004_
                                          _lp-tl1095311021_
                                          (cons _lp-hd1095211018_
                                                _body1095411011_))))
                                     (let ((_body1095511024_
                                            (reverse _body1095411011_)))
                                       ((lambda (_L11028_
                                                 _L11030_
                                                 _L11031_
                                                 _L11032_)
                                          (cons (gx#datum->syntax '#f 'alet)
                                                (cons (cons _L11031_ '())
                                                      (cons (cons _L11032_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L11030_
                                (begin
                                  '#!void
                                  (foldr (lambda (_g1105311056_ _g1105411059_)
                                           (cons _g1105311056_ _g1105411059_))
                                         '()
                                         _L11028_))))
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _body1095511024_
                                        _tl1094610995_
                                        _hd1094510992_
                                        _hd1093910972_))))))
                       (_loop1095011004_ _target1094710998_ '()))
                     (_g1091610961_ _g1091710965_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1091610961_
                                                    _g1091710965_))
                                               (_g1091610961_ _g1091710965_))))
                                       (_g1091610961_ _g1091710965_))))
                               (_g1091610961_ _g1091710965_))))
                       (_g1091610961_ _g1091710965_)))))
            (let ((_g1091411144_
                   (lambda (_g1091711066_)
                     (if (gx#stx-pair? _g1091711066_)
                         (let ((_e1091911069_ (gx#syntax-e _g1091711066_)))
                           (let ((_hd1092011073_ (##car _e1091911069_))
                                 (_tl1092111076_ (##cdr _e1091911069_)))
                             (if (gx#stx-pair? _tl1092111076_)
                                 (let ((_e1092211079_
                                        (gx#syntax-e _tl1092111076_)))
                                   (let ((_hd1092311083_ (##car _e1092211079_))
                                         (_tl1092411086_
                                          (##cdr _e1092211079_)))
                                     (if (gx#stx-null? _hd1092311083_)
                                         (if (gx#stx-pair/null? _tl1092411086_)
                                             (if (fx>= (gx#stx-length
                                                        _tl1092411086_)
                                                       '0)
                                                 (let ((_g29395_
                                                        (gx#syntax-split-splice
                                                         _tl1092411086_
                                                         '0)))
                                                   (begin
                                                     (let ((_g29396_
                                                            (values-count
                                                             _g29395_)))
                                                       (if (not (fx= _g29396_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g29396_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target1092511089_
                                                            (values-ref
                                                             _g29395_
                                                             0))
                                                           (_tl1092711092_
                                                            (values-ref
                                                             _g29395_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl1092711092_)
                                                           (letrec ((_loop1092811095_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd1092611099_ _body1093211102_)
                               (if (gx#stx-pair? _hd1092611099_)
                                   (let ((_e1092911105_
                                          (gx#syntax-e _hd1092611099_)))
                                     (let ((_lp-hd1093011109_
                                            (##car _e1092911105_))
                                           (_lp-tl1093111112_
                                            (##cdr _e1092911105_)))
                                       (_loop1092811095_
                                        _lp-tl1093111112_
                                        (cons _lp-hd1093011109_
                                              _body1093211102_))))
                                   (let ((_body1093311115_
                                          (reverse _body1093211102_)))
                                     ((lambda (_L11119_)
                                        (cons (gx#datum->syntax '#f 'let)
                                              (cons '()
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g1113511138_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1113611141_)
                       (cons _g1113511138_ _g1113611141_))
                     '()
                     _L11119_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _body1093311115_))))))
                     (_loop1092811095_ _target1092511089_ '()))
                   (_g1091511062_ _g1091711066_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1091511062_ _g1091711066_))
                                             (_g1091511062_ _g1091711066_))
                                         (_g1091511062_ _g1091711066_))))
                                 (_g1091511062_ _g1091711066_))))
                         (_g1091511062_ _g1091711066_)))))
              (_g1091411144_ _$stx10911_))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#@list|
      (lambda (_$stx11150_)
        (let ((_g1115911216_
               (lambda (_g1116011212_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1116011212_))))
          (let ((_g1115811245_
                 (lambda (_g1116011220_)
                   (if (gx#stx-pair? _g1116011220_)
                       (let ((_e1120811223_ (gx#syntax-e _g1116011220_)))
                         (let ((_hd1120911227_ (##car _e1120811223_))
                               (_tl1121011230_ (##cdr _e1120811223_)))
                           ((lambda (_L11233_) _L11233_) _tl1121011230_)))
                       (_g1115911216_ _g1116011220_)))))
            (let ((_g1115711289_
                   (lambda (_g1116011249_)
                     (if (gx#stx-pair? _g1116011249_)
                         (let ((_e1120111252_ (gx#syntax-e _g1116011249_)))
                           (let ((_hd1120211256_ (##car _e1120111252_))
                                 (_tl1120311259_ (##cdr _e1120111252_)))
                             (if (gx#stx-pair? _tl1120311259_)
                                 (let ((_e1120411262_
                                        (gx#syntax-e _tl1120311259_)))
                                   (let ((_hd1120511266_ (##car _e1120411262_))
                                         (_tl1120611269_
                                          (##cdr _e1120411262_)))
                                     ((lambda (_L11272_ _L11274_ _L11275_)
                                        (cons (gx#datum->syntax '#f 'cons)
                                              (cons _L11274_
                                                    (cons (cons _L11275_
                                                                _L11272_)
                                                          '()))))
                                      _tl1120611269_
                                      _hd1120511266_
                                      _hd1120211256_)))
                                 (_g1115811245_ _g1116011249_))))
                         (_g1115811245_ _g1116011249_)))))
              (let ((_g1115611347_
                     (lambda (_g1116011293_)
                       (if (gx#stx-pair? _g1116011293_)
                           (let ((_e1118911296_ (gx#syntax-e _g1116011293_)))
                             (let ((_hd1119011300_ (##car _e1118911296_))
                                   (_tl1119111303_ (##cdr _e1118911296_)))
                               (if (gx#stx-pair? _tl1119111303_)
                                   (let ((_e1119211306_
                                          (gx#syntax-e _tl1119111303_)))
                                     (let ((_hd1119311310_
                                            (##car _e1119211306_))
                                           (_tl1119411313_
                                            (##cdr _e1119211306_)))
                                       (if (gx#stx-pair? _tl1119411313_)
                                           (let ((_e1119511316_
                                                  (gx#syntax-e
                                                   _tl1119411313_)))
                                             (let ((_hd1119611320_
                                                    (##car _e1119511316_))
                                                   (_tl1119711323_
                                                    (##cdr _e1119511316_)))
                                               ((lambda (_L11326_
                                                         _L11328_
                                                         _L11329_
                                                         _L11330_)
                                                  (if (gx#ellipsis? _L11328_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'foldr)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'cons)
                          (cons (cons _L11330_ _L11326_) (cons _L11329_ '()))))
              (_g1115711289_ _g1116011293_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _tl1119711323_
                                                _hd1119611320_
                                                _hd1119311310_
                                                _hd1119011300_)))
                                           (_g1115711289_ _g1116011293_))))
                                   (_g1115711289_ _g1116011293_))))
                           (_g1115711289_ _g1116011293_)))))
                (let ((_g1115511401_
                       (lambda (_g1116011351_)
                         (if (gx#stx-pair? _g1116011351_)
                             (let ((_e1117611354_ (gx#syntax-e _g1116011351_)))
                               (let ((_hd1117711358_ (##car _e1117611354_))
                                     (_tl1117811361_ (##cdr _e1117611354_)))
                                 (if (gx#stx-pair? _tl1117811361_)
                                     (let ((_e1117911364_
                                            (gx#syntax-e _tl1117811361_)))
                                       (let ((_hd1118011368_
                                              (##car _e1117911364_))
                                             (_tl1118111371_
                                              (##cdr _e1117911364_)))
                                         (if (gx#stx-pair? _tl1118111371_)
                                             (let ((_e1118211374_
                                                    (gx#syntax-e
                                                     _tl1118111371_)))
                                               (let ((_hd1118311378_
                                                      (##car _e1118211374_))
                                                     (_tl1118411381_
                                                      (##cdr _e1118211374_)))
                                                 (if (gx#stx-null?
                                                      _tl1118411381_)
                                                     ((lambda (_L11384_
                                                               _L11386_)
                                                        (if (gx#ellipsis?
                                                             _L11384_)
                                                            _L11386_
                                                            (_g1115611347_
                                                             _g1116011351_)))
                                                      _hd1118311378_
                                                      _hd1118011368_)
                                                     (_g1115611347_
                                                      _g1116011351_))))
                                             (_g1115611347_ _g1116011351_))))
                                     (_g1115611347_ _g1116011351_))))
                             (_g1115611347_ _g1116011351_)))))
                  (let ((_g1115411453_
                         (lambda (_g1116011405_)
                           (if (gx#stx-pair? _g1116011405_)
                               (let ((_e1116511408_
                                      (gx#syntax-e _g1116011405_)))
                                 (let ((_hd1116611412_ (##car _e1116511408_))
                                       (_tl1116711415_ (##cdr _e1116511408_)))
                                   (if (gx#stx-pair? _tl1116711415_)
                                       (let ((_e1116811418_
                                              (gx#syntax-e _tl1116711415_)))
                                         (let ((_hd1116911422_
                                                (##car _e1116811418_))
                                               (_tl1117011425_
                                                (##cdr _e1116811418_)))
                                           (if (gx#stx-datum? _hd1116911422_)
                                               (if (equal? (gx#stx-e
                                                            _hd1116911422_)
                                                           '::)
                                                   (if (gx#stx-pair?
                                                        _tl1117011425_)
                                                       (let ((_e1117111428_
                                                              (gx#syntax-e
                                                               _tl1117011425_)))
                                                         (let ((_hd1117211432_
                                                                (##car _e1117111428_))
                                                               (_tl1117311435_
                                                                (##cdr _e1117111428_)))
                                                           (if (gx#stx-null?
                                                                _tl1117311435_)
                                                               ((lambda (_L11438_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L11438_)
                        _hd1117211432_)
                       (_g1115511401_ _g1116011405_))))
               (_g1115511401_ _g1116011405_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1115511401_
                                                    _g1116011405_))
                                               (_g1115511401_ _g1116011405_))))
                                       (_g1115511401_ _g1116011405_))))
                               (_g1115511401_ _g1116011405_)))))
                    (let ((_g1115311474_
                           (lambda (_g1116011457_)
                             (if (gx#stx-pair? _g1116011457_)
                                 (let ((_e1116111460_
                                        (gx#syntax-e _g1116011457_)))
                                   (let ((_hd1116211464_ (##car _e1116111460_))
                                         (_tl1116311467_
                                          (##cdr _e1116111460_)))
                                     (if (gx#stx-null? _tl1116311467_)
                                         ((lambda ()
                                            (cons (gx#datum->syntax '#f 'quote)
                                                  (cons '() '()))))
                                         (_g1115411453_ _g1116011457_))))
                                 (_g1115411453_ _g1116011457_)))))
                      (_g1115311474_ _$stx11150_))))))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#quasiquote|
      (lambda (_stx11478_)
        (letrec ((_simple-quote?11481_
                  (lambda (_e12173_)
                    (let ((_g1218112218_
                           (lambda (_g1218212214_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1218212214_))))
                      (let ((_g1218012229_
                             (lambda (_g1218212222_) ((lambda () '#t)))))
                        (let ((_g1217912252_
                               (lambda (_g1218212233_)
                                 (if (gx#stx-box? _g1218212233_)
                                     (let ((_e1221212236_
                                            (unbox (gx#syntax-e
                                                    _g1218212233_))))
                                       ((lambda (_L12240_)
                                          (_simple-quote?11481_ _L12240_))
                                        _e1221212236_))
                                     (_g1218012229_ _g1218212233_)))))
                          (let ((_g1217812315_
                                 (lambda (_g1218212256_)
                                   (if (gx#stx-vector? _g1218212256_)
                                       (let ((_e1220112259_
                                              (vector->list
                                               (gx#syntax-e _g1218212256_))))
                                         (if (gx#stx-pair/null? _e1220112259_)
                                             (if (fx>= (gx#stx-length
                                                        _e1220112259_)
                                                       '0)
                                                 (let ((_g29397_
                                                        (gx#syntax-split-splice
                                                         _e1220112259_
                                                         '0)))
                                                   (begin
                                                     (let ((_g29398_
                                                            (values-count
                                                             _g29397_)))
                                                       (if (not (fx= _g29398_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g29398_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target1220212263_
                                                            (values-ref
                                                             _g29397_
                                                             0))
                                                           (_tl1220412266_
                                                            (values-ref
                                                             _g29397_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl1220412266_)
                                                           (letrec ((_loop1220512269_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd1220312273_ _e1220912276_)
                               (if (gx#stx-pair? _hd1220312273_)
                                   (let ((_e1220612279_
                                          (gx#syntax-e _hd1220312273_)))
                                     (let ((_lp-hd1220712283_
                                            (##car _e1220612279_))
                                           (_lp-tl1220812286_
                                            (##cdr _e1220612279_)))
                                       (_loop1220512269_
                                        _lp-tl1220812286_
                                        (cons _lp-hd1220712283_
                                              _e1220912276_))))
                                   (let ((_e1221012289_
                                          (reverse _e1220912276_)))
                                     ((lambda (_L12293_)
                                        (_simple-quote?11481_
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g1230612309_
                                                           _g1230712312_)
                                                    (cons _g1230612309_
                                                          _g1230712312_))
                                                  '()
                                                  _L12293_))))
                                      _e1221012289_))))))
                     (_loop1220512269_ _target1220212263_ '()))
                   (_g1217912252_ _g1218212256_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1217912252_ _g1218212256_))
                                             (_g1217912252_ _g1218212256_)))
                                       (_g1217912252_ _g1218212256_)))))
                            (let ((_g1217712345_
                                   (lambda (_g1218212319_)
                                     (if (gx#stx-pair? _g1218212319_)
                                         (let ((_e1219712322_
                                                (gx#syntax-e _g1218212319_)))
                                           (let ((_hd1219812326_
                                                  (##car _e1219712322_))
                                                 (_tl1219912329_
                                                  (##cdr _e1219712322_)))
                                             ((lambda (_L12332_ _L12334_)
                                                (if (_simple-quote?11481_
                                                     _L12334_)
                                                    (_simple-quote?11481_
                                                     _L12332_)
                                                    '#f))
                                              _tl1219912329_
                                              _hd1219812326_)))
                                         (_g1217812315_ _g1218212319_)))))
                              (let ((_g1217612376_
                                     (lambda (_g1218212349_)
                                       (if (gx#stx-pair? _g1218212349_)
                                           (let ((_e1218912352_
                                                  (gx#syntax-e _g1218212349_)))
                                             (let ((_hd1219012356_
                                                    (##car _e1218912352_))
                                                   (_tl1219112359_
                                                    (##cdr _e1218912352_)))
                                               (if (gx#identifier?
                                                    _hd1219012356_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core::<sugar>::<sugar:2>[1]#_g29399_|
                                                        _hd1219012356_)
                                                       (if (gx#stx-pair?
                                                            _tl1219112359_)
                                                           (let ((_e1219212362_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl1219112359_)))
                     (let ((_hd1219312366_ (##car _e1219212362_))
                           (_tl1219412369_ (##cdr _e1219212362_)))
                       (if (gx#stx-null? _tl1219412369_)
                           ((lambda () '#f))
                           (_g1217712345_ _g1218212349_))))
                   (_g1217712345_ _g1218212349_))
               (_g1217712345_ _g1218212349_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1217712345_
                                                    _g1218212349_))))
                                           (_g1217712345_ _g1218212349_)))))
                                (let ((_g1217512407_
                                       (lambda (_g1218212380_)
                                         (if (gx#stx-pair? _g1218212380_)
                                             (let ((_e1218312383_
                                                    (gx#syntax-e
                                                     _g1218212380_)))
                                               (let ((_hd1218412387_
                                                      (##car _e1218312383_))
                                                     (_tl1218512390_
                                                      (##cdr _e1218312383_)))
                                                 (if (gx#identifier?
                                                      _hd1218412387_)
                                                     (if (gx#free-identifier=?
                                                          |gerbil/core::<sugar>::<sugar:2>[1]#_g29400_|
                                                          _hd1218412387_)
                                                         (if (gx#stx-pair?
                                                              _tl1218512390_)
                                                             (let ((_e1218612393_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl1218512390_)))
                       (let ((_hd1218712397_ (##car _e1218612393_))
                             (_tl1218812400_ (##cdr _e1218612393_)))
                         (if (gx#stx-null? _tl1218812400_)
                             ((lambda () '#f))
                             (_g1217612376_ _g1218212380_))))
                     (_g1217612376_ _g1218212380_))
                 (_g1217612376_ _g1218212380_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1217612376_
                                                      _g1218212380_))))
                                             (_g1217612376_ _g1218212380_)))))
                                  (_g1217512407_ _e12173_))))))))))
                 (_generate11483_
                  (lambda (_e11545_ _d11547_)
                    (let ((_g1155611614_
                           (lambda (_g1155711610_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1155711610_))))
                      (let ((_g1155511631_
                             (lambda (_g1155711618_)
                               ((lambda (_L11621_)
                                  (cons (gx#datum->syntax '#f 'quote)
                                        (cons _L11621_ '())))
                                _g1155711618_))))
                        (let ((_g1155411683_
                               (lambda (_g1155711635_)
                                 (if (gx#stx-box? _g1155711635_)
                                     (let ((_e1160711638_
                                            (unbox (gx#syntax-e
                                                    _g1155711635_))))
                                       ((lambda (_L11642_)
                                          (let ((_g1165211660_
                                                 (lambda (_g1165311656_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1165311656_))))
                                            (let ((_g1165111679_
                                                   (lambda (_g1165311664_)
                                                     ((lambda (_L11667_)
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'box)
                        (cons _L11667_ '()))))
              _g1165311664_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1165111679_
                                               (_generate11483_
                                                _L11642_
                                                _d11547_)))))
                                        _e1160711638_))
                                     (_g1155511631_ _g1155711635_)))))
                          (let ((_g1155311777_
                                 (lambda (_g1155711687_)
                                   (if (gx#stx-vector? _g1155711687_)
                                       (let ((_e1159611690_
                                              (vector->list
                                               (gx#syntax-e _g1155711687_))))
                                         (if (gx#stx-pair/null? _e1159611690_)
                                             (if (fx>= (gx#stx-length
                                                        _e1159611690_)
                                                       '0)
                                                 (let ((_g29401_
                                                        (gx#syntax-split-splice
                                                         _e1159611690_
                                                         '0)))
                                                   (begin
                                                     (let ((_g29402_
                                                            (values-count
                                                             _g29401_)))
                                                       (if (not (fx= _g29402_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g29402_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target1159711694_
                                                            (values-ref
                                                             _g29401_
                                                             0))
                                                           (_tl1159911697_
                                                            (values-ref
                                                             _g29401_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl1159911697_)
                                                           (letrec ((_loop1160011700_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd1159811704_ _e1160411707_)
                               (if (gx#stx-pair? _hd1159811704_)
                                   (let ((_e1160111710_
                                          (gx#syntax-e _hd1159811704_)))
                                     (let ((_lp-hd1160211714_
                                            (##car _e1160111710_))
                                           (_lp-tl1160311717_
                                            (##cdr _e1160111710_)))
                                       (_loop1160011700_
                                        _lp-tl1160311717_
                                        (cons _lp-hd1160211714_
                                              _e1160411707_))))
                                   (let ((_e1160511720_
                                          (reverse _e1160411707_)))
                                     ((lambda (_L11724_)
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
                                                               '#f
                                                               'list->vector)
                                                              (cons _L11753_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1173911750_))))
                                            (_g1173711765_
                                             (_generate11483_
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g1176811771_
                                                                _g1176911774_)
                                                         (cons _g1176811771_
                                                               _g1176911774_))
                                                       '()
                                                       _L11724_))
                                              _d11547_)))))
                                      _e1160511720_))))))
                     (_loop1160011700_ _target1159711694_ '()))
                   (_g1155411683_ _g1155711687_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1155411683_ _g1155711687_))
                                             (_g1155411683_ _g1155711687_)))
                                       (_g1155411683_ _g1155711687_)))))
                            (let ((_g1155211871_
                                   (lambda (_g1155711781_)
                                     (if (gx#stx-pair? _g1155711781_)
                                         (let ((_e1159211784_
                                                (gx#syntax-e _g1155711781_)))
                                           (let ((_hd1159311788_
                                                  (##car _e1159211784_))
                                                 (_tl1159411791_
                                                  (##cdr _e1159211784_)))
                                             ((lambda (_L11794_ _L11796_)
                                                (let ((_g1180711822_
                                                       (lambda (_g1180811818_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1180811818_))))
                                                  (let ((_g1180611867_
                                                         (lambda (_g1180811826_)
                                                           (if (gx#stx-pair?
                                                                _g1180811826_)
                                                               (let ((_e1181111829_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _g1180811826_)))
                         (let ((_hd1181211833_ (##car _e1181111829_))
                               (_tl1181311836_ (##cdr _e1181111829_)))
                           (if (gx#stx-pair? _tl1181311836_)
                               (let ((_e1181411839_
                                      (gx#syntax-e _tl1181311836_)))
                                 (let ((_hd1181511843_ (##car _e1181411839_))
                                       (_tl1181611846_ (##cdr _e1181411839_)))
                                   (if (gx#stx-null? _tl1181611846_)
                                       ((lambda (_L11849_ _L11851_)
                                          (let ()
                                            (cons (gx#datum->syntax '#f 'cons)
                                                  (cons _L11851_
                                                        (cons _L11849_ '())))))
                                        _hd1181511843_
                                        _hd1181211833_)
                                       (_g1180711822_ _g1180811826_))))
                               (_g1180711822_ _g1180811826_))))
                       (_g1180711822_ _g1180811826_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1180611867_
                                                     (list (_generate11483_
                                                            _L11796_
                                                            _d11547_)
                                                           (_generate11483_
                                                            _L11794_
                                                            _d11547_))))))
                                              _tl1159411791_
                                              _hd1159311788_)))
                                         (_g1155311777_ _g1155711781_)))))
                              (let ((_g1155111956_
                                     (lambda (_g1155711875_)
                                       (if (gx#stx-pair? _g1155711875_)
                                           (let ((_e1158111878_
                                                  (gx#syntax-e _g1155711875_)))
                                             (let ((_hd1158211882_
                                                    (##car _e1158111878_))
                                                   (_tl1158311885_
                                                    (##cdr _e1158111878_)))
                                               (if (gx#stx-pair?
                                                    _hd1158211882_)
                                                   (let ((_e1158411888_
                                                          (gx#syntax-e
                                                           _hd1158211882_)))
                                                     (let ((_hd1158511892_
                                                            (##car _e1158411888_))
                                                           (_tl1158611895_
                                                            (##cdr _e1158411888_)))
                                                       (if (gx#identifier?
                                                            _hd1158511892_)
                                                           (if (gx#free-identifier=?
                                                                |gerbil/core::<sugar>::<sugar:2>[1]#_g29403_|
                                                                _hd1158511892_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1158611895_)
                           (let ((_e1158711898_ (gx#syntax-e _tl1158611895_)))
                             (let ((_hd1158811902_ (##car _e1158711898_))
                                   (_tl1158911905_ (##cdr _e1158711898_)))
                               (if (gx#stx-null? _tl1158911905_)
                                   ((lambda (_L11908_ _L11910_)
                                      (if (fxzero? _d11547_)
                                          (let ((_g1192511933_
                                                 (lambda (_g1192611929_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1192611929_))))
                                            (let ((_g1192411952_
                                                   (lambda (_g1192611937_)
                                                     ((lambda (_L11940_)
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'foldr)
                        (cons (gx#datum->syntax '#f 'cons)
                              (cons _L11940_ (cons _L11910_ '()))))))
              _g1192611937_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1192411952_
                                               (_generate11483_
                                                _L11908_
                                                _d11547_))))
                                          (_g1155211871_ _g1155711875_)))
                                    _tl1158311885_
                                    _hd1158811902_)
                                   (_g1155211871_ _g1155711875_))))
                           (_g1155211871_ _g1155711875_))
                       (_g1155211871_ _g1155711875_))
                   (_g1155211871_ _g1155711875_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1155211871_
                                                    _g1155711875_))))
                                           (_g1155211871_ _g1155711875_)))))
                                (let ((_g1155012027_
                                       (lambda (_g1155711960_)
                                         (if (gx#stx-pair? _g1155711960_)
                                             (let ((_e1157311963_
                                                    (gx#syntax-e
                                                     _g1155711960_)))
                                               (let ((_hd1157411967_
                                                      (##car _e1157311963_))
                                                     (_tl1157511970_
                                                      (##cdr _e1157311963_)))
                                                 (if (gx#identifier?
                                                      _hd1157411967_)
                                                     (if (gx#free-identifier=?
                                                          |gerbil/core::<sugar>::<sugar:2>[1]#_g29404_|
                                                          _hd1157411967_)
                                                         (if (gx#stx-pair?
                                                              _tl1157511970_)
                                                             (let ((_e1157611973_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl1157511970_)))
                       (let ((_hd1157711977_ (##car _e1157611973_))
                             (_tl1157811980_ (##cdr _e1157611973_)))
                         (if (gx#stx-null? _tl1157811980_)
                             ((lambda (_L11983_)
                                (if (fxzero? _d11547_)
                                    (cons (gx#datum->syntax '#f 'foldr)
                                          (cons (gx#datum->syntax '#f 'cons)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons '() '()))
                                                      (cons _L11983_ '()))))
                                    (let ((_g1199612004_
                                           (lambda (_g1199712000_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1199712000_))))
                                      (let ((_g1199512023_
                                             (lambda (_g1199712008_)
                                               ((lambda (_L12011_)
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
                        (cons _L12011_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1199712008_))))
                                        (_g1199512023_
                                         (_generate11483_
                                          _L11983_
                                          (fx1- _d11547_)))))))
                              _hd1157711977_)
                             (_g1155111956_ _g1155711960_))))
                     (_g1155111956_ _g1155711960_))
                 (_g1155111956_ _g1155711960_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1155111956_
                                                      _g1155711960_))))
                                             (_g1155111956_ _g1155711960_)))))
                                  (let ((_g1154912098_
                                         (lambda (_g1155712031_)
                                           (if (gx#stx-pair? _g1155712031_)
                                               (let ((_e1156612034_
                                                      (gx#syntax-e
                                                       _g1155712031_)))
                                                 (let ((_hd1156712038_
                                                        (##car _e1156612034_))
                                                       (_tl1156812041_
                                                        (##cdr _e1156612034_)))
                                                   (if (gx#identifier?
                                                        _hd1156712038_)
                                                       (if (gx#free-identifier=?
                                                            |gerbil/core::<sugar>::<sugar:2>[1]#_g29405_|
                                                            _hd1156712038_)
                                                           (if (gx#stx-pair?
                                                                _tl1156812041_)
                                                               (let ((_e1156912044_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl1156812041_)))
                         (let ((_hd1157012048_ (##car _e1156912044_))
                               (_tl1157112051_ (##cdr _e1156912044_)))
                           (if (gx#stx-null? _tl1157112051_)
                               ((lambda (_L12054_)
                                  (if (fxzero? _d11547_)
                                      _L12054_
                                      (let ((_g1206712075_
                                             (lambda (_g1206812071_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1206812071_))))
                                        (let ((_g1206612094_
                                               (lambda (_g1206812079_)
                                                 ((lambda (_L12082_)
                                                    (let ()
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'list)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons (gx#datum->syntax '#f 'unquote) '()))
                          (cons _L12082_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g1206812079_))))
                                          (_g1206612094_
                                           (_generate11483_
                                            _L12054_
                                            (fx1- _d11547_)))))))
                                _hd1157012048_)
                               (_g1155012027_ _g1155712031_))))
                       (_g1155012027_ _g1155712031_))
                   (_g1155012027_ _g1155712031_))
               (_g1155012027_ _g1155712031_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1155012027_
                                                _g1155712031_)))))
                                    (let ((_g1154812169_
                                           (lambda (_g1155712102_)
                                             (if (gx#stx-pair? _g1155712102_)
                                                 (let ((_e1155912105_
                                                        (gx#syntax-e
                                                         _g1155712102_)))
                                                   (let ((_hd1156012109_
                                                          (##car _e1155912105_))
                                                         (_tl1156112112_
                                                          (##cdr _e1155912105_)))
                                                     (if (gx#identifier?
                                                          _hd1156012109_)
                                                         (if (gx#free-identifier=?
                                                              |gerbil/core::<sugar>::<sugar:2>[1]#_g29406_|
                                                              _hd1156012109_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1156112112_)
                         (let ((_e1156212115_ (gx#syntax-e _tl1156112112_)))
                           (let ((_hd1156312119_ (##car _e1156212115_))
                                 (_tl1156412122_ (##cdr _e1156212115_)))
                             (if (gx#stx-null? _tl1156412122_)
                                 ((lambda (_L12125_)
                                    (let ((_g1213812146_
                                           (lambda (_g1213912142_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1213912142_))))
                                      (let ((_g1213712165_
                                             (lambda (_g1213912150_)
                                               ((lambda (_L12153_)
                                                  (let ()
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'list)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote)
                              (cons (gx#datum->syntax '#f 'quasiquote) '()))
                        (cons _L12153_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1213912150_))))
                                        (_g1213712165_
                                         (_generate11483_
                                          _L12125_
                                          (fx1+ _d11547_))))))
                                  _hd1156312119_)
                                 (_g1154912098_ _g1155712102_))))
                         (_g1154912098_ _g1155712102_))
                     (_g1154912098_ _g1155712102_))
                 (_g1154912098_ _g1155712102_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1154912098_
                                                  _g1155712102_)))))
                                      (_g1154812169_ _e11545_)))))))))))))
          (let ((_g1148511499_
                 (lambda (_g1148611495_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g1148611495_))))
            (let ((_g1148411541_
                   (lambda (_g1148611503_)
                     (if (gx#stx-pair? _g1148611503_)
                         (let ((_e1148811506_ (gx#syntax-e _g1148611503_)))
                           (let ((_hd1148911510_ (##car _e1148811506_))
                                 (_tl1149011513_ (##cdr _e1148811506_)))
                             (if (gx#stx-pair? _tl1149011513_)
                                 (let ((_e1149111516_
                                        (gx#syntax-e _tl1149011513_)))
                                   (let ((_hd1149211520_ (##car _e1149111516_))
                                         (_tl1149311523_
                                          (##cdr _e1149111516_)))
                                     (if (gx#stx-null? _tl1149311523_)
                                         ((lambda (_L11526_)
                                            (if (_simple-quote?11481_ _L11526_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'quote)
                                                      (cons _L11526_ '()))
                                                (_generate11483_ _L11526_ '0)))
                                          _hd1149211520_)
                                         (_g1148511499_ _g1148611503_))))
                                 (_g1148511499_ _g1148611503_))))
                         (_g1148511499_ _g1148611503_)))))
              (_g1148411541_ _stx11478_))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#delay|
      (lambda (_$stx12413_)
        (let ((_g1241812439_
               (lambda (_g1241912435_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1241912435_))))
          (let ((_g1241712480_
                 (lambda (_g1241912443_)
                   (if (gx#stx-pair? _g1241912443_)
                       (let ((_e1242812446_ (gx#syntax-e _g1241912443_)))
                         (let ((_hd1242912450_ (##car _e1242812446_))
                               (_tl1243012453_ (##cdr _e1242812446_)))
                           (if (gx#stx-pair? _tl1243012453_)
                               (let ((_e1243112456_
                                      (gx#syntax-e _tl1243012453_)))
                                 (let ((_hd1243212460_ (##car _e1243112456_))
                                       (_tl1243312463_ (##cdr _e1243112456_)))
                                   (if (gx#stx-null? _tl1243312463_)
                                       ((lambda (_L12466_)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'make-promise)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'lambda%)
                                                            (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L12466_ '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _hd1243212460_)
                                       (_g1241812439_ _g1241912443_))))
                               (_g1241812439_ _g1241912443_))))
                       (_g1241812439_ _g1241912443_)))))
            (let ((_g1241612520_
                   (lambda (_g1241912484_)
                     (if (gx#stx-pair? _g1241912484_)
                         (let ((_e1242112487_ (gx#syntax-e _g1241912484_)))
                           (let ((_hd1242212491_ (##car _e1242112487_))
                                 (_tl1242312494_ (##cdr _e1242112487_)))
                             (if (gx#stx-pair? _tl1242312494_)
                                 (let ((_e1242412497_
                                        (gx#syntax-e _tl1242312494_)))
                                   (let ((_hd1242512501_ (##car _e1242412497_))
                                         (_tl1242612504_
                                          (##cdr _e1242412497_)))
                                     (if (gx#stx-null? _tl1242612504_)
                                         ((lambda (_L12507_)
                                            (if (gx#stx-datum? _L12507_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'quote)
                                                      (cons _L12507_ '()))
                                                (_g1241712480_ _g1241912484_)))
                                          _hd1242512501_)
                                         (_g1241712480_ _g1241912484_))))
                                 (_g1241712480_ _g1241912484_))))
                         (_g1241712480_ _g1241912484_)))))
              (_g1241612520_ _$stx12413_))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#cut|
      (lambda (_stx12524_)
        (let ((_generate12527_
               (lambda (_rest12646_)
                 ((letrec ((_lp12649_
                            (lambda (_rest12652_ _hd12654_ _body12655_)
                              (let ((_g1265812670_
                                     (lambda (_g1265912666_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1265912666_))))
                                (let ((_g1265712681_
                                       (lambda (_g1265912674_)
                                         ((lambda ()
                                            (values (reverse _hd12654_)
                                                    (reverse _body12655_)
                                                    '#f))))))
                                  (let ((_g1265612767_
                                         (lambda (_g1265912685_)
                                           (if (gx#stx-pair? _g1265912685_)
                                               (let ((_e1266212688_
                                                      (gx#syntax-e
                                                       _g1265912685_)))
                                                 (let ((_hd1266312692_
                                                        (##car _e1266212688_))
                                                       (_tl1266412695_
                                                        (##cdr _e1266212688_)))
                                                   ((lambda (_L12698_ _L12700_)
                                                      (let ((_g1271712724_
                                                             (lambda (_g1271812720_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1271812720_))))
                                                        (let ((_g1271612735_
                                                               (lambda (_g1271812728_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda ()
                            (_lp12649_
                             _L12698_
                             _hd12654_
                             (cons _L12700_ _body12655_)))))))
                  (let ((_g1271512749_
                         (lambda (_g1271812739_)
                           (if (gx#identifier? _g1271812739_)
                               (if (gx#free-identifier=?
                                    |gerbil/core::<sugar>::<sugar:2>[1]#_g29409_|
                                    _g1271812739_)
                                   ((lambda ()
                                      (if (gx#stx-null? _L12698_)
                                          (let ((_tail12746_ (gx#genident)))
                                            (values (foldl cons
                                                           _tail12746_
                                                           _hd12654_)
                                                    (foldl cons
                                                           (list _tail12746_)
                                                           _body12655_)
                                                    '#t))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _stx12524_
                                           _L12700_))))
                                   (_g1271612735_ _g1271812739_))
                               (_g1271612735_ _g1271812739_)))))
                    (let ((_g1271412763_
                           (lambda (_g1271812753_)
                             (if (gx#identifier? _g1271812753_)
                                 (if (gx#free-identifier=?
                                      |gerbil/core::<sugar>::<sugar:2>[1]#_g29410_|
                                      _g1271812753_)
                                     ((lambda ()
                                        (let ((_arg12760_ (gx#genident)))
                                          (_lp12649_
                                           _L12698_
                                           (cons _arg12760_ _hd12654_)
                                           (cons _arg12760_ _body12655_)))))
                                     (_g1271512749_ _g1271812753_))
                                 (_g1271512749_ _g1271812753_)))))
                      (_g1271412763_ _L12700_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl1266412695_
                                                    _hd1266312692_)))
                                               (_g1265712681_
                                                _g1265912685_)))))
                                    (_g1265612767_ _rest12652_)))))))
                    _lp12649_)
                  _rest12646_
                  '()
                  '()))))
          (let ((_g1253012541_
                 (lambda (_g1253112537_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g1253112537_))))
            (let ((_g1252912642_
                   (lambda (_g1253112545_)
                     (if (gx#stx-pair? _g1253112545_)
                         (let ((_e1253312548_ (gx#syntax-e _g1253112545_)))
                           (let ((_hd1253412552_ (##car _e1253312548_))
                                 (_tl1253512555_ (##cdr _e1253312548_)))
                             ((lambda (_L12558_)
                                (if (if (gx#stx-list? _L12558_)
                                        (not (gx#stx-null? _L12558_))
                                        '#f)
                                    (let ((_g29407_
                                           (_generate12527_ _L12558_)))
                                      (begin
                                        (let ((_g29408_
                                               (values-count _g29407_)))
                                          (if (not (fx= _g29408_ 3))
                                              (error "Context expects 3 values"
                                                     _g29408_)))
                                        (let ((_hd12571_
                                               (values-ref _g29407_ 0))
                                              (_body12573_
                                               (values-ref _g29407_ 1))
                                              (_tail?12574_
                                               (values-ref _g29407_ 2)))
                                          (let ((_g1257612584_
                                                 (lambda (_g1257712580_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1257712580_))))
                                            (let ((_g1257512638_
                                                   (lambda (_g1257712588_)
                                                     ((lambda (_L12591_)
                                                        (let ()
                                                          (let ((_g1260412612_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1260512608_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1260512608_))))
                    (let ((_g1260312634_
                           (lambda (_g1260512616_)
                             ((lambda (_L12619_)
                                (let ()
                                  (let ()
                                    (if _tail?12574_
                                        (cons (gx#datum->syntax '#f 'lambda%)
                                              (cons _L12591_
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'apply)
                        _L12619_)
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons (gx#datum->syntax '#f 'lambda%)
                                              (cons _L12591_
                                                    (cons _L12619_ '())))))))
                              _g1260512616_))))
                      (_g1260312634_ _body12573_)))))
              _g1257712588_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1257512638_ _hd12571_))))))
                                    (_g1253012541_ _g1253112545_)))
                              _tl1253512555_)))
                         (_g1253012541_ _g1253112545_)))))
              (_g1252912642_ _stx12524_))))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#<>|
      (lambda (_$stx12772_)
        (let ((_g1277512782_
               (lambda (_g1277612778_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1277612778_))))
          (_g1277512782_ _$stx12772_))))
    (define |gerbil/core::<sugar>::<sugar:2>[:0:]#<...>|
      (lambda (_$stx12786_)
        (let ((_g1278912796_
               (lambda (_g1279012792_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1279012792_))))
          (_g1278912796_ _$stx12786_))))))
